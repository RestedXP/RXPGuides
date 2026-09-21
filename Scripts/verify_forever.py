"""Offline Lua 5.1 syntax, manifest and API-adapter regression checks.

Run with Python and lupa installed. This does not emulate the WoW client.
"""
from pathlib import Path
import re
from collections import Counter
import json
from lupa.lua51 import LuaRuntime

ROOT = Path(__file__).resolve().parents[1]

def manifests():
    errors = []
    active = {'camelot', 'mainline'}
    def allowed(line):
        for op, values in re.findall(r'\[(AllowLoadGameType|ExcludeLoadGameType) ([^\]]+)\]', line):
            matches = bool(active.intersection(re.split(r'[,\s]+', values)))
            if (op == 'AllowLoadGameType' and not matches) or (op == 'ExcludeLoadGameType' and matches):
                return False
        return True
    def walk(path, loaded, stack):
        if path in stack:
            errors.append(f'Include cycle: {path}')
            return
        if not path.is_file():
            errors.append(f'Missing: {path.relative_to(ROOT)}')
            return
        if path.suffix == '.lua':
            loaded.append(path)
            return
        text = path.read_text(encoding='utf-8-sig')
        if path.suffix == '.toc':
            refs = [re.split(r'\s+\[', l.strip())[0] for l in text.splitlines()
                    if l.strip() and not l.lstrip().startswith('#') and allowed(l)]
        else:
            text = re.sub(r'<!--.*?-->', '', text, flags=re.S)
            refs = re.findall(r'<(?:Script|Include)\b[^>]*\bfile="([^"]+)"', text)
        for ref in refs:
            rel = ref.replace('\\', '/')
            target = path.parent / rel
            if not target.is_file():
                target = ROOT / rel
            walk(target.resolve(), loaded, stack + [path])
    for name in ('RXPGuides.toc', 'RXPGuides_Camelot.toc', 'RXPGuides-beta.toc', 'RXPGuides1_Camelot.toc'):
        loaded = []
        walk(ROOT / name, loaded, [])
        duplicates = [str(p.relative_to(ROOT)) for p, count in Counter(loaded).items() if count > 1]
        if duplicates:
            errors.append(f'{name}: duplicate loads: {duplicates}')
        for path in loaded:
            if 'Guides/Talents/classic-' in path.as_posix():
                for prerequisite in ('TalentsForever.lua', 'DB/TalentCompatibility.lua'):
                    if ROOT / prerequisite not in loaded or loaded.index(ROOT / prerequisite) >= loaded.index(path):
                        errors.append(f'{name}: talent payload lacks earlier Forever adapter: {prerequisite}')
        if ROOT / 'Talents.lua' in loaded:
            errors.append(f'{name}: obsolete Classic talent API module loaded on Forever')
        print(f'{name}: {len(loaded)} Lua loads')
    assert not errors, '\n'.join(errors)

def syntax():
    lua = LuaRuntime(unpack_returned_tuples=True)
    compile_lua = lua.eval('function(s,n) local f,e=loadstring(s,n); return f~=nil,e end')
    files = list(ROOT.rglob('*.lua'))
    for p in files:
        ok, error = compile_lua(p.read_text(encoding='utf-8-sig'), str(p))
        assert ok, error
    print(f'Lua 5.1 syntax: {len(files)} files passed')

def adapters():
    lua = LuaRuntime(unpack_returned_tuples=True)
    lua.execute('''
        addon = {}
        function GetBuildInfo() return '1.60.1', '69913', '', 16001 end
        secret = newproxy(true)
        getmetatable(secret).__eq = function() error('secret comparison') end
        function issecretvalue(v) return rawequal(v, secret) end
        Settings = {RegisterCanvasLayoutCategory = function() end}
        originalSettings = Settings
        function UnitName() return unitName end
        function UnitGUID() return unitGUID end
        function UnitPosition() return posX, posY, posZ, instance end
        C_QuestLog = {
            GetInfo = function() return quest end,
            IsComplete = function(id) assert(id == 42); return true end,
        }
        C_Spell = {GetSpellCooldown = function() return cooldown end}
        C_ActionBar = {GetActionCooldown = function() return cooldown end}
        Enum = {SpellBookSpellBank = {Player = 0, Pet = 1}}
        C_SpellBook = {
            IsSpellInSpellBook = function(id, bank, overrides)
                assert(id == 123 and type(bank) == 'number' and overrides == false)
                return bank == 1
            end,
            IsSpellKnown = function(id, bank) assert(id == 123 and bank == 0); return true end,
        }
        C_MerchantFrame = {GetItemInfo = function() return merchant end}
        C_EventUtils = {IsEventValid = function(e) return e == 'QUEST_LOG_UPDATE' end}
    ''')
    lua.execute(ROOT.joinpath('libs/compatibility.lua').read_text(), 'RXPGuides', lua.globals().addon)
    lua.execute('''
        assert(addon.isForever and Settings == originalSettings)
        quest = {title='Example',level=12,suggestedGroup=2,isHeader=false,isCollapsed=false,frequency=1,questID=42}
        local title,level,group,header,collapsed,done,freq,id = addon.GetQuestLogTitle(1)
        assert(title=='Example' and level==12 and group==2 and not header and not collapsed and done and freq==1 and id==42)
        quest = {isHeader=true,title='Zone'}
        assert(addon.GetQuestLogTitle(1)=='Zone')
        quest = nil; assert(addon.GetQuestLogTitle(1)==nil)
        cooldown = {startTime=10,duration=25,isEnabled=true,modRate=1}
        local s,d,e,m = addon.GetSpellCooldown(123)
        assert(s==10 and d==25 and e==1 and m==1)
        assert(select(2,addon.GetActionCooldown(1))==25)
        cooldown.isEnabled=false; assert(select(3,addon.GetSpellCooldown(123))==0)
        cooldown.startTime=secret; assert(addon.GetSpellCooldown(123)==nil)
        assert(addon.GetActionCooldown(1)==nil)
        cooldown=nil; assert(addon.GetSpellCooldown(123)==nil)
        assert(addon.IsSpellKnown(123,true) and not addon.IsSpellKnown(123,false))
        assert(addon.IsPlayerSpellKnown(123))
        merchant={name='Bread',texture=11,price=15,stackCount=5,numAvailable=-1,isPurchasable=true,isUsable=true,hasExtendedCost=false}
        local n,t,p,q,a,b,u,x=addon.GetMerchantItemInfo(1)
        assert(n=='Bread' and t==11 and p==15 and q==5 and a==-1 and b and u and x==false)
        merchant=nil; assert(addon.GetMerchantItemInfo(1)==nil)
        unitGUID=secret; unitName=secret
        assert(addon.GetUnitGUID('target')==nil and addon.GetUnitName('target')==nil)
        unitGUID='Creature-1'; unitName='Example'
        assert(addon.GetUnitGUID('target')=='Creature-1' and addon.GetUnitName('target')=='Example')
        posX=secret; assert(addon.GetUnitPosition('player')==nil)
        posX=1; posY=2; posZ=3; instance=0
        assert(select(4,addon.GetUnitPosition('player'))==0)
        assert(addon.IsEventValid('QUEST_LOG_UPDATE') and not addon.IsEventValid('OLD_EVENT'))
        assert(not addon.IsEventValid(nil))
        Enum.BankType = {Character=0, Account=2}
        C_Bank = {
            FetchPurchasedBankTabIDs=function(kind) assert(kind==0); return {6,7} end,
            CanUseBank=function(kind) assert(kind==0); return bankOpen end,
        }
        assert(#addon.GetCharacterBankBags()==2 and addon.GetCharacterBankBags()[2]==7)
        bankOpen=false; assert(not addon.IsCharacterBankOpen())
        bankOpen=true; assert(addon.IsCharacterBankOpen())
        addon.isForever=false; BANK_CONTAINER=-1; NUM_BAG_SLOTS=4; NUM_BANKBAGSLOTS=2
        Enum.BagIndex={Bank=-1}
        assert(#addon.GetCharacterBankBags()==3 and addon.GetCharacterBankBags()[3]==6)
        BankFrame={IsShown=function() return false end}
        assert(not addon.IsCharacterBankOpen())
        AuraUtil={UnpackAuraData=function(a) return a.name,a.icon,a.applications,nil,a.duration,a.expirationTime,nil,nil,nil,a.spellId end}
        assert(addon.UnpackPublicAuraData({name=secret})==nil)
        assert(addon.UnpackPublicAuraData({name='Buff',spellId=secret})==nil)
        assert(select(10,addon.UnpackPublicAuraData({name='Buff',spellId=123}))==123)
        C_Secrets={ShouldAurasBeSecret=function() return true end}
        assert(not addon.AreAurasReadable())
        C_Secrets=nil; assert(addon.AreAurasReadable())
        C_Spell=nil; function GetSpellCooldown() return 2,3,0,1 end
        assert(select(2,addon.GetSpellCooldown(123))==3)
        C_QuestLog=nil; function GetQuestLogTitle() return 'Classic',1,nil,false,false,nil,nil,7 end
        assert(select(8,addon.GetQuestLogTitle(1))==7)
        C_SpellBook=nil
        function IsSpellKnown(id,pet) return pet end
        function IsPlayerSpell(id) return id==123 end
        assert(addon.IsSpellKnown(123,true) and addon.IsPlayerSpellKnown(123))
    ''')
    lua.execute('''
        local modern = {
            IsForbidden=function() return false end,
            IsTooltipType=function() return true end,
            GetPrimaryTooltipData=function() return {hyperlink='item:123'} end,
        }
        TooltipUtil={GetDisplayedItem=function(tooltip)
            assert(tooltip==modern)
            return 'Modern item',tooltip:GetPrimaryTooltipData().hyperlink,123
        end}
        assert(select(2,addon.GetTooltipItem(modern))=='item:123')
        local legacy = {
            IsForbidden=function() return false end,
            GetItem=function() return 'Legacy item','item:456' end,
        }
        assert(select(2,addon.GetTooltipItem(legacy))=='item:456')
        modern.IsForbidden=function() return true end
        assert(addon.GetTooltipItem(modern)==nil)
        TooltipUtil=nil
        modern.IsForbidden=function() return false end
        assert(addon.GetTooltipItem(modern)==nil)
        assert(select(2,addon.GetTooltipItem(legacy))=='item:456')
    ''')
    print('Modern/legacy adapters, absent data, secret-value and tooltip regressions passed')

def module_regressions():
    lua = LuaRuntime(unpack_returned_tuples=True)
    settings = ROOT.joinpath('SettingsPanel.lua').read_text(encoding='utf-8')
    start = settings.index('local function copy(')
    end = settings.index('addon.settings.copy = copy', start)
    lua.execute(settings[start:end] + '\ncopySettings = copy')
    lua.execute('''
        local source = {enabled=true, frameSizes={width=300}, minimap={hide=false}}
        source.alias = source.frameSizes
        source.self = source
        local result = copySettings(source)
        assert(result ~= source and result.enabled)
        assert(result.frameSizes ~= source.frameSizes and result.frameSizes.width==300)
        assert(result.alias==result.frameSizes and result.self==result)
        result.frameSizes.width=400
        assert(source.frameSizes.width==300 and result.minimap.hide==false)
    ''')
    tips = ROOT.joinpath('Tips.lua').read_text(encoding='utf-8')
    start = tips.index('function addon.tips:CatalogActionBars()')
    end = tips.index('function addon.tips:ACTIONBAR_SLOT_CHANGED()', start)
    lua.execute('''
        addon={tips={}}; session={}; ActionBars={'Action'}
        function issecretvalue() return false end
        ActionButton1={action=1}; ActionButton2={action=2}; ActionButton3={action=3}
        function HasAction(slot) return true end
        function GetActionInfo(slot)
            if slot==1 then return 'macro',7 end
            if slot==2 then return 'spell',456 end
            return 'empty'
        end
        function GetMacroSpell(id) assert(id==7); return 123 end
    ''')
    lua.execute(tips[start:end])
    lua.execute('''
        addon.tips:CatalogActionBars()
        assert(session.actionBarMap['spell:123'].slot==1)
        assert(session.actionBarMap['spell:456'].slot==2)
        local count=0; for _ in pairs(session.actionBarMap) do count=count+1 end
        assert(count==2)
    ''')
    timers = ROOT.joinpath('Timers.lua').read_text(encoding='utf-8')
    start = timers.index('function addon.GetFlightHash(')
    end = timers.index('local function GetFlightTime(', start)
    lua.execute('''
        addon.IsSecretValue=function() return false end
        function TaxiGetNodeSlot(index,leg,source) assert(index==5 and leg==1 and source==false); return 2 end
        function TaxiNodePosition(slot) return slot/10,0.5 end
    ''')
    lua.execute(timers[start:end])
    lua.execute('''
        assert(addon.GetFlightHash(5,1)==math.floor(0.2*4096)+2048*4096)
        TaxiGetNodeSlot=nil
        assert(addon.GetFlightHash(5,1)==nil)
        function TaxiGetDestX() return 0.2 end
        function TaxiGetDestY() return 0.5 end
        assert(addon.GetFlightHash(5,1)==math.floor(0.2*4096)+2048*4096)
    ''')
    print('Nested profile copy, modern action bars, and modern/legacy taxi routes passed')

def auction_regressions():
    lua = LuaRuntime(unpack_returned_tuples=True)
    source = ROOT.joinpath('ItemUpgrades.lua').read_text(encoding='utf-8')
    start = source.index('function addon.itemUpgrades.AH:ReadModernAuctionSnapshot(')
    end = source.index('function addon.itemUpgrades.AH:Scan(retries', start)
    lua.execute('''
        addon={player={level=20},itemUpgrades={AH={}}}
        Enum={ItemQuality={Uncommon=2},ItemClass={Weapon=2,Armor=4}}
        session={equippableSlots={INVTYPE_HEAD=true}}
        now=1000; AHCacheTTL=1200; shown=true
        function time() return now end
        function getAuctionHouseFrame() return {IsShown=function() return shown end} end
        timers={}; C_Timer={After=function(delay,callback) timers[#timers+1]={delay,callback} end}
        function runTimer()
            assert(#timers>0)
            table.remove(timers,1)[2]()
        end
        function finishAHScan(cancelled)
            finished=cancelled and 'cancelled' or 'complete'
            ahSession.isScanning=false; ahSession.sentQuery=false; ahSession.modernWaiting=false
        end
        function reset()
            ahSession={scanGeneration=1,isScanning=true,scanData={}}
            finished=nil; timers={}; requested=0; loads=0; missing=false; shown=true
        end
        rows={
            {link='item:1:suffixA',price=200,quality=2,usable=true,level=19,class=4},
            {link='item:1:suffixA',price=100,quality=2,usable=true,level=19,class=4},
            {link='item:1:suffixB',price=300,quality=2,usable=true,level=19,class=4},
            {link='item:bid',price=0,quality=2,usable=true,level=19,class=4},
            {link='item:poor',price=10,quality=0,usable=true,level=19,class=4},
            {link='item:high',price=10,quality=2,usable=true,level=21,class=4},
            {link='item:unusable',price=10,quality=2,usable=false,level=19,class=4},
            {link='item:other',price=10,quality=2,usable=true,level=19,class=7},
        }
        C_Item={RequestLoadItemDataByID=function() loads=loads+1 end}
        C_AuctionHouse={
            ReplicateItems=function() requested=requested+1 end,
            GetNumReplicateItems=function() return #rows end,
            GetReplicateItemInfo=function(i)
                local r=assert(rows[i+1], 'replicate indices are zero-based')
                return 'Item',42,1,r.quality,r.usable,r.level,nil,0,0,r.price,0,nil,nil,nil,nil,0,1
            end,
            GetReplicateItemLink=function(i) if not missing then return rows[i+1].link end end,
        }
        function GetItemInfoInstant(link)
            for _,r in ipairs(rows) do
                if r.link==link then return 1,nil,nil,'INVTYPE_HEAD',42,r.class end
            end
        end
    ''')
    lua.execute(source[start:end])
    lua.execute('''
        local ah=addon.itemUpgrades.AH
        reset(); ah:ScanModernAuctions(1)
        assert(requested==1 and ahSession.modernWaiting and not finished)
        ah:REPLICATE_ITEM_LIST_UPDATE()
        assert(finished=='complete')
        assert(ahSession.scanData['item:1:suffixA'].lowestPrice==100)
        assert(ahSession.scanData['item:1:suffixB'].lowestPrice==300)
        local n=0; for _ in pairs(ahSession.scanData) do n=n+1 end; assert(n==2)
        runTimer(); assert(finished=='complete') -- old request timeout is harmless
        ahSession.isScanning=true; ah:ScanModernAuctions(1)
        assert(requested==1 and finished=='complete') -- cached snapshot

        reset(); ah:ScanModernAuctions(1)
        finishAHScan(true) -- UI cancellation leaves the server request pending
        ahSession.scanGeneration=2; ahSession.isScanning=true; finished=nil
        ah:ScanModernAuctions(2)
        assert(requested==1 and ahSession.modernWaiting)
        runTimer(); assert(not finished) -- cancelled scan's timeout is stale
        ah:REPLICATE_ITEM_LIST_UPDATE()
        assert(finished=='complete' and ahSession.modernRequestAt==nil)
        runTimer(); assert(finished=='complete')

        reset(); ah:ScanModernAuctions(1); runTimer()
        assert(finished=='cancelled')
        now=now+61; ahSession.scanGeneration=2; ahSession.isScanning=true; finished=nil
        ah:ScanModernAuctions(2)
        assert(requested==2 and ahSession.modernWaiting) -- lost responses allow retry
        ah:REPLICATE_ITEM_LIST_UPDATE(); assert(finished=='complete')

        reset(); ahSession.modernSnapshotAt=now-AHCacheTTL-1
        ah:ScanModernAuctions(1); runTimer()
        assert(finished=='cancelled') -- a throttled refresh cannot wait forever

        reset(); missing=true; ah:ReadModernAuctionSnapshot(1)
        assert(not finished and loads>0)
        missing=false; runTimer(); assert(finished=='complete')
        reset(); missing=true; ah:ReadModernAuctionSnapshot(1)
        for i=1,10 do runTimer() end
        assert(finished=='cancelled') -- unavailable data is not reported complete

        reset(); shown=false; ah:ReadModernAuctionSnapshot(1)
        assert(finished=='cancelled' and next(ahSession.scanData)==nil)
        reset(); ah:ReadModernAuctionSnapshot(0)
        assert(not finished and next(ahSession.scanData)==nil)

        -- More than one batch, followed by a new scan: stale callbacks must stop.
        local one=rows[1]; rows={}; for i=1,201 do rows[i]=one end
        reset(); ah:ReadModernAuctionSnapshot(1)
        assert(not finished and #timers==1)
        ahSession.scanGeneration=2; ahSession.scanData={}; runTimer()
        assert(not finished and next(ahSession.scanData)==nil)
        reset(); ah:ReadModernAuctionSnapshot(1); runTimer()
        assert(finished=='complete')
    ''')
    start = source.index('local function calculate(itemLink, scanData)')
    end = source.index('local function analyzeSlotUpgrade(', start)
    lua.execute(source[start:end] + '\ncalculateAuction = calculate')
    lua.execute('''
        reset(); ahSession.pendingItemInfo={}
        function addon.itemUpgrades:GetItemData(link)
            assert(link=='item:1:suffixB')
            return scoredItem
        end
        function addon.itemUpgrades:CompareItemWeight(link)
            assert(link=='item:1:suffixB'); return {{Ratio=2,WeightIncrease=5}}
        end
        local row={itemID=1,lowestPrice=100}
        scoredItem={unusable=true}; calculateAuction('item:1:suffixB',row)
        assert(row.totalWeight==nil)
        scoredItem={totalWeight=10,itemEquipLoc='INVTYPE_HEAD'}
        calculateAuction('item:1:suffixB',row)
        assert(row.totalWeight==10 and row.weightPerCopper==0.1 and row.ratio==2)
    ''')
    start = source.index('function addon.itemUpgrades.AH:Setup()')
    end = source.index('function addon.itemUpgrades.AH:AUCTION_HOUSE_SHOW()', start)
    lua.execute('''
        modern=true; function hasModernAuctionHouse() return modern end
        addon.settings={profile={enableItemUpgradesAH=true}}
        addon.game='CLASSIC'; registered={}
        function addon.itemUpgrades.AH:RegisterEvent(event) registered[event]=true end
    ''')
    lua.execute(source[start:end])
    lua.execute('''
        reset(); addon.itemUpgrades.AH:Setup()
        assert(registered.REPLICATE_ITEM_LIST_UPDATE and registered.AUCTION_HOUSE_CLOSED)
        assert(not registered.AUCTION_ITEM_LIST_UPDATE)
        modern=false; registered={}; reset()
        function CanSendAuctionQuery() return true end
        function QueryAuctionItems() end
        function GetNumAuctionItems() end
        function GetAuctionItemInfo() end
        addon.itemUpgrades.AH:Setup()
        assert(registered.AUCTION_ITEM_LIST_UPDATE and not registered.REPLICATE_ITEM_LIST_UPDATE)
    ''')
    print('Modern auction snapshots, variants, filtering, batching, cancellation, timeout and backend selection regressions passed')

def forever_talent_regressions():
    lua = LuaRuntime(unpack_returned_tuples=True)
    def to_lua(value):
        if isinstance(value, dict):
            return lua.table_from({k: to_lua(v) for k, v in value.items()})
        if isinstance(value, list):
            return lua.table_from([to_lua(v) for v in value])
        return value
    fixture = json.loads(ROOT.joinpath('Scripts/fixtures/forever-warrior-69913.json').read_text())
    lua.globals().fixture = to_lua(fixture)
    lua.execute('''
        addon={isForever=true,game='CLASSIC',player={class='WARRIOR'},locale={Get=function(s) return s end},
            settings={profile={enableTalentGuides=true,hightlightTalentPlan=true,upcomingTalentCount=5}},
            comms={PrettyPrint=function(message) lastMessage=message end}}
        function addon:NewModule() return {} end
        function GetMaxPlayerLevel() return 60 end
        level=19; combat=false; locked=false; points=30; purchases=0
        function UnitLevel() return level end
        function InCombatLockdown() return combat end
        RXPCData={}; nodes={}; entries={}; definitions={}
        for _,tree in ipairs(fixture.trees) do
            for _,row in ipairs(tree.nodes) do
                local node={ID=row.nodeID,isVisible=true,maxRanks=row.maxRanks,
                    currentRank=0,ranksPurchased=0,entryIDs={}}
                nodes[row.nodeID]=node
                for _,entry in ipairs(row.entries) do
                    table.insert(node.entryIDs,entry.entryID)
                    entries[entry.entryID]={definitionID=entry.definitionID,maxRanks=entry.maxRanks}
                    definitions[entry.definitionID]={spellID=entry.spellID}
                end
            end
        end
        function resetRanks()
            for _,node in pairs(nodes) do node.currentRank=0; node.ranksPurchased=0 end
            purchases=0; points=30; lastMessage=nil
        end
        currentTreeID=1117
        C_Traits={
            GetConfigInfo=function(id) if id==1 then return {treeIDs={currentTreeID}} end end,
            GetTreeNodes=function(tree)
                assert(tree==currentTreeID); local ids={}; for id in pairs(nodes) do ids[#ids+1]=id end; return ids
            end,
            GetNodeInfo=function(config,id) assert(config==1); return nodes[id] end,
            GetEntryInfo=function(config,id) assert(config==1); return entries[id] end,
            GetDefinitionInfo=function(id) return definitions[id] end,
            CanPurchaseRank=function(config,node,entry) assert(config==1); return points>0 end,
            CommitConfig=function() error('preview must not commit talents') end,
        }
        C_Spell={GetSpellName=function(id) return tostring(id) end}
        frame={
            IsShown=function() return true end,IsLocked=function() return locked end,
            GetConfigID=function() return 1 end,GetTalentButtonByNodeID=function() end,
            PurchaseRank=function(_,id)
                nodes[id].currentRank=nodes[id].currentRank+1
                nodes[id].ranksPurchased=nodes[id].ranksPurchased+1
                points=points-1; purchases=purchases+1; return true
            end,
        }
        PlayerSpellsFrame={TalentsFrame=frame}
    ''')
    lua.execute(ROOT.joinpath('TalentsForever.lua').read_text(encoding='utf-8'), 'RXPGuides', lua.globals().addon)
    lua.execute(ROOT.joinpath('DB/TalentCompatibility.lua').read_text(encoding='utf-8'), 'RXPGuides', lua.globals().addon)
    lua.execute(ROOT.joinpath('Guides/Talents/classic-warrior.lua').read_text(encoding='utf-8'), 'RXPGuides', lua.globals().addon)
    lua.execute('''
        local talents=addon.talents
        assert(talents:IsSupported())
        local count,compatible=0,0
        for _,guide in pairs(talents.guides) do
            local plan,reason=talents:ResolveGuide(guide,1)
            if plan then
                assert(#plan.steps==21); compatible=compatible+1
                for _,step in ipairs(plan.steps) do
                    if step.spellID==12290 then assert(step.nodeID==105952) end -- moved Improved Overpower
                end
            else
                assert(reason)
            end
            count=count+1
        end
        assert(count==6 and compatible==2)
        RXPCData.foreverTalentGuide='WARRIOR - Arms 10-30'
        local guide=talents:GetCurrentGuide()
        assert(talents:ResolveGuide(guide,2)==nil)
        nodes[105939].maxRanks=4
        assert(talents:ResolveGuide(guide,1)==nil) -- no longer enough Cruelty ranks
        nodes[105939].maxRanks=5
        nodes[105939].isVisible=false
        assert(talents:ResolveGuide(guide,1)==nil)
        nodes[105939].isVisible=true
        local extra={ID=999,isVisible=true,maxRanks=5,currentRank=0,ranksPurchased=0,entryIDs=nodes[105939].entryIDs}
        nodes[999]=extra
        assert(talents:ResolveGuide(guide,1)==nil) -- duplicate spell identity
        nodes[999]=nil
        talents:PreviewGuide(); assert(purchases==10) -- stop at character level
        talents:PreviewGuide(); assert(purchases==10) -- already staged
        resetRanks(); points=2
        talents:PreviewGuide(); assert(purchases==2)
        resetRanks(); combat=true
        talents:PreviewGuide(); assert(purchases==0)
        combat=false; locked=true
        talents:PreviewGuide(); assert(purchases==0)
        locked=false; nodes[105959].ranksPurchased=1
        talents:PreviewGuide(); assert(purchases==0 and lastMessage)
        resetRanks()
        local label={Hide=function(self) self.shown=false end,Show=function(self) self.shown=true end,
            SetPoint=function() end,SetText=function(self,text) self.text=text end}
        local button={CreateFontString=function() return label end}
        frame.GetTalentButtonByNodeID=function(_,id) if id==105939 then return button end end
        talents:DrawTalents()
        assert(label.shown and label.text=='10, 11, 12, 13, 14')
        RXPCData.foreverTalentGuide=nil; talents:DrawTalents()
        assert(not label.shown) -- changing the plan clears pooled-button labels
        -- Synthetic choices exercise the adapter; no shipped guide is changed.
        talents.RegisterGuide({class='WARRIOR',key='test-choice',name='Choice test',steps={
            {level=10,spellID=12320,rank=1,optional=true},
            {level=10,spellID=16462,rank=1,optional=true},
            {level=11,spellID=12290,rank=1},
        }})
        RXPCData.foreverTalentGuide='test-choice'
        local choices=talents:ResolveGuide(talents:GetCurrentGuide(),1)
        assert(#choices.steps==2 and #choices.steps[1].choices==2)
        resetRanks(); talents:PreviewGuide()
        assert(purchases==0 and lastMessage) -- never choose an alternative automatically
        nodes[105957].currentRank=1; nodes[105957].ranksPurchased=1
        talents:PreviewGuide(); assert(purchases==1) -- honor the manually selected alternative
        nodes[105939].isVisible=false
        assert(talents:ResolveGuide(talents:GetCurrentGuide(),1)==nil)
        nodes[105939].isVisible=true
    ''')
    data = json.loads(ROOT.joinpath('Scripts/fixtures/forever-traits-69913.json').read_text())
    lua.globals().mage = to_lua(data['classes']['mage'])
    lua.execute('''
        addon.player.class='MAGE'; addon.talents.guides={}; currentTreeID=mage.treeID
        nodes={}; entries={}; definitions={}
        for _,row in ipairs(mage.nodes) do
            local node={ID=row.nodeID,isVisible=true,maxRanks=row.entries[1].maxRanks,
                currentRank=0,ranksPurchased=0,entryIDs={}}
            nodes[row.nodeID]=node
            for _,entry in ipairs(row.entries) do
                table.insert(node.entryIDs,entry.entryID)
                entries[entry.entryID]={definitionID=entry.definitionID,maxRanks=entry.maxRanks}
                definitions[entry.definitionID]={spellID=entry.spellID}
            end
        end
    ''')
    lua.execute(ROOT.joinpath('Guides/Talents/classic-mage.lua').read_text(encoding='utf-8'), 'RXPGuides', lua.globals().addon)
    lua.execute('''
        local count,compatible=0,0
        for _,guide in pairs(addon.talents.guides) do
            local plan,reason=addon.talents:ResolveGuide(guide,1)
            if plan then assert(#plan.steps==13); compatible=compatible+1 else assert(reason) end
            count=count+1
        end
        assert(count==8 and compatible==2)
        RXPCData.foreverTalentGuide='MAGE - AoE 10-22'
        frame.GetTalentButtonByNodeID=function() end
        resetRanks(); addon.talents:PreviewGuide(); assert(purchases==9) -- duplicate rank in original guide is preserved
    ''')
    audit = json.loads(ROOT.joinpath('Scripts/fixtures/forever-plan-audit-69913.json').read_text())
    for class_name in data['classes']:
        lua.globals().addon.player['class'] = class_name.upper()
        lua.globals().addon.talents['guides'] = lua.table()
        lua.execute(ROOT.joinpath(f'Guides/Talents/classic-{class_name}.lua').read_text(encoding='utf-8'),
                    'RXPGuides', lua.globals().addon)
        expected = [g for g in audit if g['class'] == class_name]
        guides = lua.globals().addon.talents['guides']
        assert len(list(guides.values())) == len(expected)
        for plan in expected:
            guide = guides[class_name.upper() + ' - ' + plan['name']]
            actual = [(step['level'], step['spellID'], step['rank']) for step in guide['steps'].values()]
            assert actual == [(step['level'], step['spellID'], step['rank']) for step in plan['steps']]
    print('Forever Warrior/Mage identities, previews, rank limits, ambiguity and combat regressions passed')
    print('All 31 original talent plans parse without changing their levels, spell identities or ranks')

def inventory_regressions():
    lua = LuaRuntime(unpack_returned_tuples=True)
    source = ROOT.joinpath('InventoryManager.lua').read_text(encoding='utf-8')
    start = source.index('local function UpdateModernBagItems(')
    end = source.index("if _G['ContainerFrame_UpdateAll'] then", start)
    lua.execute('''
        hookedFrames={}; inventoryManager={IsJunkIconEnabled=function() return true end}
        function IsJunk(id,bag,slot) assert(bag==0 and slot==1); return id==123 end
        function GetContainerItemID(bag,slot) assert(bag==0 and slot==1); return 123 end
        hooks=0; iconShown=false
        local function makeButton(slot,icon)
            return {GetBagID=function() return 0 end,GetID=function() return slot end,
                OnClick=function() end,HookScript=function() hooks=hooks+1 end,JunkIcon=icon}
        end
        button=makeButton(1,{SetShown=function(_,shown) iconShown=shown end})
        invalid=makeButton(-1,nil)
        modern={EnumerateValidItems=function() return ipairs({invalid,button}) end,
            GetChildren=function() error('must use valid-item iterator') end}
        legacy={GetChildren=function() return {},makeButton(1,nil),button end}
    ''')
    lua.execute(source[start:end] + '\nupdateBagItems = UpdateModernBagItems')
    lua.execute('''
        updateBagItems(modern,function() end)
        assert(hooks==1 and iconShown)
        updateBagItems(modern,function() end)
        assert(hooks==1) -- repeated updates do not duplicate click hooks
        updateBagItems(legacy,function() end)
        assert(hooks==2) -- frames without JunkIcon remain usable
        inventoryManager.IsJunkIconEnabled=function() return false end
        updateBagItems(modern,function() end)
        assert(iconShown==false)
    ''')
    start = source.index('local function ProcessJunk(')
    end = source.index('inventoryManager.ProcessJunk = ProcessJunk', start)
    lua.execute('''
        BACKPACK_CONTAINER=0; NUM_BAG_FRAMES=0
        MerchantFrame={IsShown=function() return true end,selectedTab=1}
        inventoryManager.IsMerchantAutomationEnabled=function() return true end
        function GetContainerNumSlots() return 1 end
        function GetContainerItemInfo() return nil,2,locked,quality end
        function GetItemInfo() return nil,nil,nil,nil,nil,nil,nil,nil,nil,nil,price end
        function IsJunk() return true end
        function GetMoney() return 100 end
        sold=0; picked=0
        function PickupContainerItem() picked=picked+1 end
        function PickupMerchantItem() sold=sold+1 end
    ''')
    lua.execute(source[start:end] + '\nprocessJunk = ProcessJunk')
    lua.execute('''
        quality=1; price=nil; locked=false
        assert(processJunk(true)==0 and sold==0)
        price=10; locked=true
        assert(processJunk(true)==20 and sold==0 and picked==0)
        locked=false; assert(processJunk(true)==20 and sold==1 and picked==1)
    ''')
    print('Modern inventory iteration, pooled buttons, uncached prices and locked-item regressions passed')

def talent_snapshot_regressions():
    lua = LuaRuntime(unpack_returned_tuples=True)
    lua.execute('''
        addon={isForever=true,player={class='HUNTER'},comms={PrettyPrint=function() end}}
        function GetBuildInfo() return '1.60.1','69913','',16001 end
        function GetLocale() return 'enUS' end
        available=true; missing=false
        C_SpecializationInfo={
            GetActiveSpecGroup=function() return 2 end,
            GetCombatConfigIDForSpecGroup=function(group) assert(group==2); return 99 end,
        }
        C_Traits={
            GetConfigInfo=function(id) assert(id==99); if available then return {treeIDs={123}} end end,
            GetGroupDisplayInfoByTreeID=function(id) assert(id==123); return {{groupID=4,orderIndex=1,displayName='Beasts'}} end,
            GetTreeNodes=function(id) assert(id==123); return {10} end,
            GetNodeInfo=function(config,node)
                assert(config==99 and node==10)
                return {posX=20,posY=30,type=0,isVisible=true,maxRanks=5,currentRank=2,groupIDs={4},entryIDs={11}}
            end,
            GetEntryInfo=function(config,entry) assert(config==99 and entry==11); return {definitionID=12,maxRanks=5} end,
            GetDefinitionInfo=function(id) assert(id==12); if not missing then return {spellID=13} end end,
        }
        C_Spell={GetSpellName=function(id) assert(id==13); return 'Talent' end}
    ''')
    source = ROOT.joinpath('SettingsPanel.lua').read_text(encoding='utf-8')
    block = source.split('-- BEGIN FOREVER TALENT SNAPSHOT', 1)[1].split('-- END FOREVER TALENT SNAPSHOT', 1)[0]
    lua.execute(block)
    lua.execute('''
        local snapshot=addon.foreverTalents:Snapshot()
        assert(snapshot.complete and snapshot.nodeCount==1 and snapshot.specGroup==2)
        local node=snapshot.trees[1].nodes[1]
        assert(node.nodeID==10 and node.currentRank==2 and node.groups[1]==4)
        assert(node.entries[1].spellID==13 and node.entries[1].name=='Talent')
        addon.foreverTalents:SaveSnapshot()
        assert(RXPCData.foreverTalentSnapshot.complete)
        available=false
        local data,reason=addon.foreverTalents:Snapshot()
        assert(not data and reason)
        available=true; missing=true
        assert(not addon.foreverTalents:Snapshot().complete)
    ''')
    print('Read-only talent snapshot, active spec group and missing-data regressions passed')

def guide_restore_regressions():
    lua = LuaRuntime(unpack_returned_tuples=True)
    source = ROOT.joinpath('RXPGuides.lua').read_text(encoding='utf-8')
    start = source.index('local function LoadEmbeddedGuides(start,limit,guide)')
    end = source.index('function addon:OnInitialize()', start)
    lua.execute('''
        now=1; busy=1; loads=0; embeddedLoads=0
        function GetTime() return now end
        function debugprofilestop() return 0 end
        updateFrame={SetScript=function(self,k,v) self[k]=v end,
            GetScript=function(self,k) return self[k] end}
        currentGuideGroup='Saved group'; currentGuideName='Saved guide'; startStep=12; startStepId=99
        saved={group=currentGuideGroup,name=currentGuideName,steps={}}
        addon={embeddedGuides={},player={},addonLoaded=true}
        function addon.GetGuideTable(group,name)
            assert(group=='Saved group' and name=='Saved guide')
            return available and saved
        end
        function addon.SaveGuideProgress(g,step,id) assert(g==saved and step==12 and id==99) end
        function addon:LoadGuide(g,onLoad) assert(onLoad and g==saved); loads=loads+1; self.currentGuide=g end
        function addon.LoadEmbeddedGuides() embeddedLoads=embeddedLoads+1; addon.embeddedGuides={}; available=true end
    ''')
    lua.execute(source[start:end] + '\nstartCache=LoadCache')
    lua.execute('''
        available=true; startCache(); updateFrame.OnUpdate()
        assert(loads==1 and addon.currentGuide==saved) -- busy on the first rendered frame
        now=2; updateFrame.OnUpdate(); assert(not updateFrame.OnUpdate)
        -- Metadata can arrive after the initial restoration attempt.
        addon.currentGuide={empty=true}; addon.embeddedGuides={1}; available=false
        currentGuideGroup='Saved group'; currentGuideName='Saved guide'; startStep=12; startStepId=99
        busy=now; startCache(); updateFrame.OnUpdate()
        assert(embeddedLoads==1 and loads==1)
        now=3; busy=now; updateFrame.OnUpdate()
        assert(loads==2 and addon.currentGuide==saved)
        -- Once restored, retain the background parser's frame-sharing guard.
        addon.embeddedGuides={1}; updateFrame.OnUpdate(); assert(embeddedLoads==1)
    ''')
    print('Saved-guide restoration under continuous ticker activity and delayed metadata passed')

def targeting_regressions():
    lua = LuaRuntime(unpack_returned_tuples=True)
    source = ROOT.joinpath('Targeting.lua').read_text(encoding='utf-8')
    lua.execute('''
        addon={isForever=true,hasSecretValues=true,settings={profile={}},targeting={}}
        secret={}; combat=false; restricted=false; dead=false; player=false; pet=false
        health=100; marker=nil; grouped=false; leader=false; calls=0
        function issecretvalue(v) return rawequal(v,secret) end
        function InCombatLockdown() return combat end
        function UnitHealth() return health end
        function UnitIsDead() return dead end
        function UnitIsPlayer() return player end
        function UnitIsUnit() return pet end
        function IsInGroup() return grouped end
        function UnitIsGroupLeader() return leader end
        function GetRaidTargetIndex() return marker end
        function SetRaidTarget(unit,id) calls=calls+1; lastUnit=unit; lastMarker=id end
        Enum={AddOnRestrictionType={Combat=0,Encounter=1,ChallengeMode=2,PvPMatch=3,Map=4}}
        C_RestrictedActions={IsAddOnRestrictionActive=function() return restricted end}
        function addon.targeting:GetMarkerIndex(kind) return kind=='friendly' and 1 or 8 end
    ''')
    start = source.index('local function canUpdateRaidMarker()')
    end = source.index('function addon.targeting:Setup()', start)
    helpers = source[start:end]
    start = source.index('function addon.targeting:UpdateMarker(')
    end = source.index('addon.targeting.portraitCache =', start)
    lua.execute(helpers + source[start:end] + '\nconfigureButton=configureTargetButton')
    lua.execute('''
        local t=addon.targeting
        t:UpdateMarker('mob','nameplate1',1); assert(calls==0) -- live Forever rejects automatic marking
        addon.isForever=false
        t:UpdateMarker('mob','nameplate1',1); assert(calls==1 and lastMarker==8)
        t:UpdateMarker('friendly','target',1); assert(calls==2 and lastMarker==1)
        marker=3; t:UpdateMarker('mob','target',1); assert(calls==2)
        marker=secret; t:UpdateMarker('mob','target',1); assert(calls==2); marker=nil
        combat=true; t:UpdateMarker('mob','target',1); assert(calls==2); combat=false
        restricted=true; t:UpdateMarker('mob','target',1); assert(calls==2); restricted=false
        health=secret; t:UpdateMarker('mob','target',1); assert(calls==3); health=100; calls=2
        dead=secret; t:UpdateMarker('mob','target',1); assert(calls==2); dead=false
        player=true; t:UpdateMarker('mob','target',1); assert(calls==2); player=false
        pet=true; t:UpdateMarker('mob','target',1); assert(calls==2); pet=false
        grouped=true; t:UpdateMarker('mob','target',1); assert(calls==2)
        addon.settings.profile.enableNonLeadMarking=true
        t:UpdateMarker('mob','target',1); assert(calls==3)
        local button={attrs={unit='Old NPC',macrotext='old'},SetAttribute=function(self,k,v) self.attrs[k]=v end}
        addon.isForever=true
        configureButton(button,'Enemy NPC')
        assert(button.attrs.type=='macro' and not button.attrs.unit and button.attrs.macrotext=='/cleartarget\\n/targetexact Enemy NPC')
        addon.settings.profile.enableTargetMarking=true
        configureButton(button,'Friendly NPC','friendly',1)
        assert(not button.attrs.unit and button.attrs.macrotext=='/cleartarget\\n/targetexact Friendly NPC')
        assert(button.attrs.type2=='raidtarget' and button.attrs.unit2=='target')
        assert(button.attrs.marker2==1 and button.attrs.action2=='set-unmarked')
        addon.isForever=false; configureButton(button,'Legacy NPC')
        assert(button.attrs.type=='macro' and button.attrs.macrotext=='/cleartarget\\n/targetexact Legacy NPC')
        assert(not button.attrs.type2 and not button.attrs.unit2 and not button.attrs.marker2)
    ''')
    assert source.count('configureTargetButton(btn, targetName,') == 2
    assert 'StaticPopupDialogs["ADDON_ACTION_FORBIDDEN"] = nil' not in source
    assert 'UIParent:UnregisterEvent("ADDON_ACTION_FORBIDDEN")' not in source
    start = source.index('function addon.targeting.CheckTargetProximity()')
    end = source.index('function addon.targeting:ADDON_ACTION_FORBIDDEN(', start)
    lua.execute('''
        addon.isForever=true; addon.settings.profile.showTargetingOnProximity=true
        observed={}; proxmityPolling={scannedTargets={}}
        function shouldTargetCheck() return true end
        function GetTime() return 0 end
        function TargetUnit() error('Forbidden automatic targeting') end
        function addon.targeting:CheckNameplates() observed.plates=true end
        function addon.targeting:CheckNameplate(unit) observed[unit]=true end
    ''')
    lua.execute(source[start:end])
    lua.execute('''
        addon.targeting.CheckTargetProximity()
        assert(observed.plates and observed.target and observed.mouseover)
    ''')
    print('Forever protected-action guards, popup preservation, observed proximity and target buttons passed')

if __name__ == '__main__':
    syntax()
    manifests()
    adapters()
    module_regressions()
    auction_regressions()
    talent_snapshot_regressions()
    inventory_regressions()
    forever_talent_regressions()
    targeting_regressions()
    guide_restore_regressions()
