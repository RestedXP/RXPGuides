RXP_ = RXP_ or {}
RXPGuides = {}
local versionText = "Version 3.0.0"
local addonVersion = 30000
local RXPG = RXPGuides
local version = select(4, GetBuildInfo())
local _,class = UnitClass("player")
local _,race = UnitRace("player")

local BackdropTemplate = BackdropTemplateMixin and "BackdropTemplate" or nil

if version < 20000 then
	RXP_.version = "CLASSIC"
elseif version > 20000 and version < 30000 then
    RXP_.version = "TBC"
else
    RXP_.version = "WOTLK"
end


RXP_.questQueryList = {}
RXP_.itemQueryList = {}
RXP_.questAccept = {}
RXP_.questTurnIn = {}

RXP_.font = GameFontNormal:GetFont()
local eventFrame = CreateFrame("Frame");
local questFrame = CreateFrame("Frame");
local f = CreateFrame("Frame", "RXPFrame", UIParent, BackdropTemplate)
f.BottomFrame = CreateFrame("Frame","$parent_bottomFrame",f, BackdropTemplate)

--eventFrame:RegisterEvent("QUEST_LOG_UPDATE")
eventFrame:RegisterEvent("PLAYER_LOGIN")
eventFrame:RegisterEvent("GET_ITEM_INFO_RECEIVED")
eventFrame:RegisterEvent("PLAYER_LEVEL_UP")
eventFrame:RegisterEvent("TAXIMAP_OPENED")
eventFrame:RegisterUnitEvent("UNIT_AURA","player")
eventFrame:RegisterUnitEvent("UNIT_PET","player")
eventFrame:RegisterEvent("TRAINER_SHOW")
eventFrame:RegisterEvent("TRAINER_CLOSED")

questFrame:RegisterEvent("QUEST_COMPLETE")
questFrame:RegisterEvent("QUEST_PROGRESS")
questFrame:RegisterEvent("QUEST_ACCEPT_CONFIRM")
questFrame:RegisterEvent("QUEST_GREETING")
questFrame:RegisterEvent("GOSSIP_SHOW")
questFrame:RegisterEvent("QUEST_DETAIL")
questFrame:RegisterEvent("QUEST_TURNED_IN")

RXPG_Debug = false

local SoMCount = 0
local function SoMCheck()
    if RXPCData and RXPCData.SoM == nil and SoMCount < 34 and version < 20000 then
        SoMCount = SoMCount+1
        local id = 0
        local n = 1
        while id do
           id = select(10,UnitBuff("player",n))
           n = n+1
           if id == 362859 then
              RXPCData.SoM = true
              if RXP_.currentGuide and RXP_.currentGuide.name then 
                RXP_:LoadGuide(RXP_.currentGuide)
              end
              RXP_.GenerateMenuTable()
              break
           end
        end
    end
end

function RXPG_init()
	RXPData = RXPData or {}
	RXPCData = RXPCData or {}
    RXPCData.hardcore = (RXP_.version == "CLASSIC") and RXPCData.hardcore
    SoMCheck()
    RXP_.RenderFrame()
	RXPCData.stepSkip = RXPCData.stepSkip or {}
	RXPData.numMapPins = RXPData.numMapPins or 7
	RXPData.worldMapPinScale = RXPData.worldMapPinScale or 1
	RXPData.distanceBetweenPins = RXPData.distanceBetweenPins or 1
	RXPData.worldMapPinBackgroundOpacity = RXPData.worldMapPinBackgroundOpacity or 0.35
    RXPData.arrowSize = RXPData.arrowSize or 1
    RXPData.windowSize = RXPData.windowSize or 1
    RXPData.arrowText = RXPData.arrowText or 9
    RXPCData.flightPaths = RXPCData.flightPaths or {}
    RXPData.batchSize = RXPData.batchSize or 5
    if RXPData.disableTrainerAutomation == nil then
        RXPData.disableTrainerAutomation = true
    end
    if RXPData.trainGenericSpells == nil then
        RXPData.trainGenericSpells = true
    end
	if not RXPData.addonVersion or RXPData.addonVersion < addonVersion then
		RXPData.addonVersion = addonVersion
	end
	RXPCData.phase = RXPCData.phase or 3
	RXPCData.SoM = RXPCData.SoM or true
	
    RXPData.anchorOrientation = RXPData.anchorOrientation or 1
    f:SetShown(not RXPCData.hideWindow)
    C_Timer.After(0.5,function()
        if RXP_.errorCount == RXP_.guideErrorCount then
            RXP_.errorCount = -1
            ScriptErrorsFrame:Hide()
        end
    end)
end

RXP_.errorCount = 0
RXP_.guideErrorCount = 0

hooksecurefunc(ScriptErrorsFrame,"DisplayMessage",function(self, msg, warnType, keepHidden, messageType)
    if ScriptErrorsFrame:IsForbidden() then return end
    if RXP_.errorCount >= 0 then
        if warnType == 0 and keepHidden == false and messageType == 1 and type(msg) == "string" and msg:match("RXPGuides\\Guides") then
            RXP_.guideErrorCount = RXP_.guideErrorCount + 1
        end
        RXP_.errorCount = RXP_.errorCount + 1
    end
end)

local startTime = GetTime()
local questProgressTimer = 0
local questTimer = 0

function RXP_.QuestAutoAccept(title)
	if title then
		local element = RXP_.questAccept[title]
		return element and element.step.active
	end
end

function RXP_.QuestAutoTurnIn(title)
	if title then
		local element = RXP_.questTurnIn[title]
		return (element and element.step.active) and element.reward
	end
end

RXP_.skillList = {}
local spellRequest = {}

local trainerUpdate = 0
local level = UnitLevel("player")

local function ProcessSpells(names,rank)
    local _,class = UnitClass("player")
    local _,race = UnitRace("player")
    local level = UnitLevel("player")
    local entries = {race,class}
    for _,entry in pairs(entries) do
        if RXP_.defaultSpellList[entry] then
            for spellLvl,spells in pairs(RXP_.defaultSpellList[entry]) do
                if spellLvl <= level then
                    for i,spellId in ipairs(spells) do
                        if not (spellRequest[spellId] or C_Spell.IsSpellDataCached(spellId)) then
                            C_Spell.RequestLoadSpellData(spellId)
                            spellRequest[spellId] = true
                        end
                        if names and rank and not(RXPCData.hardcore and RXP_.HCSpellList and RXP_.HCSpellList[spellId]) then
                            spellRequest[spellId] = nil
                            local sName = GetSpellInfo(spellId)
                            local sRank = GetSpellSubtext(spellId)
                            for id,name in pairs(names) do
                                if sName == name and sRank == rank[id] then
                                    BuyTrainerService(id)
                                end
                            end
                        end
                    end
                end
            end
        end
    end
end

local function OnTrainer()
	
    if not RXPData.disableTrainerAutomation then
        local level = UnitLevel("player")
        local i = GetNumTrainerServices()

        if not i or i == 0 or GetTime() - trainerUpdate > 15 then
            return
        end
        
        local names = {}
        local rank = {}
        
        for id = 1,i do
            local n, r, cat = GetTrainerServiceInfo(id)
            if cat == "available" then
                names[id] = n
                rank[id] = r
            end
        end
        
        ProcessSpells(names,rank)

        for spellName,spellRank in pairs(RXP_.skillList) do
            for id,name in pairs(names) do
                if name == spellName then
                    local r = rank[id]
                    r = r and tonumber(r:match("(%d+)")) or 0
                    if (r <= spellRank or spellRank == 0) then
                        BuyTrainerService(id)
                        return
                    end
                end
            end
        end
    end

end

local tTimer = 0
local function trainerFrameUpdate(self,t)
	tTimer = tTimer + t
	if tTimer >= 0.2 then
		tTimer = 0
		if GetTime() - trainerUpdate > 15 then
			self:SetScript("OnUpdate",nil)
		end
		OnTrainer()
	end
end


function RXP_.QuestAutomation(event,arg1,arg2)
    if IsControlKeyDown() == not (RXPData and RXPData.disableQuestAutomation) then
        return 
    end
    
	
    if event == "QUEST_ACCEPT_CONFIRM" and RXP_.QuestAutoAccept(arg2) then
		ConfirmAcceptQuest()
    elseif event == "QUEST_COMPLETE" or not event and QuestFrameRewardPanel and QuestFrameRewardPanel:IsShown() then
        local id = GetQuestID()
		local reward = RXP_.QuestAutoTurnIn(id)
		local choices = GetNumQuestChoices()
		if reward then
			if choices <= 1 then
				GetQuestReward(choices)
			elseif reward > 0 then
				GetQuestReward(reward)
			end
		end
	
    elseif (event == "QUEST_PROGRESS" or not event and QuestFrameProgressPanel and QuestFrameProgressPanel:IsShown()) and IsQuestCompletable() then
        CompleteQuest()
		--questProgressTimer = GetTime()

    elseif event == "QUEST_DETAIL" or not event and QuestFrameDetailPanel and QuestFrameDetailPanel:IsShown() then
        local id = GetQuestID()
		if RXP_.QuestAutoAccept(id) then
			AcceptQuest()
			HideUIPanel(QuestFrame)
		end
		
	elseif event == "QUEST_GREETING" or not event and QuestFrameGreetingPanel and QuestFrameGreetingPanel:IsShown() then
        local nActive = GetNumActiveQuests()
		local nAvailable = GetNumAvailableQuests()
        
		for i = 1, nActive do
			local title, isComplete = GetActiveTitle(i)
			if RXP_.QuestAutoTurnIn(title) and isComplete then
				return SelectActiveQuest(i)
			end
		end
		
        if GetNumGossipOptions() == 0 and nAvailable == 1 and nActive == 0 then
            SelectGossipAvailableQuest(1)
        else
            for i = 1, nAvailable do
                local title, isComplete = GetAvailableTitle(i)
                if RXP_.QuestAutoAccept(title) then
                    return SelectAvailableQuest(i)
                end
            end
		end
	elseif event == "GOSSIP_SHOW" or not event and GossipFrame and GossipFrame:IsShown() then
		local nActive = GetNumGossipActiveQuests()
		local nAvailable = GetNumGossipAvailableQuests()

		for i = 1, nActive do
			local title, level, isTrivial, isComplete = select(i * 6 - 5, GetGossipActiveQuests())
			if RXP_.QuestAutoTurnIn(title) and isComplete then
				return SelectGossipActiveQuest(i)
			end
		end
		
        if GetNumGossipOptions() == 0 and nAvailable == 1 and nActive == 0 then
            SelectGossipAvailableQuest(1)
        else
            for i = 1, nAvailable do
                local title = select(i * 7 - 6, GetGossipAvailableQuests())
                if RXP_.QuestAutoAccept(title) then
                    return SelectGossipAvailableQuest(i)
                end
            end
		end
	end
end


questFrame:SetScript("OnEvent",function(self,...)
    RXP_.QuestAutomation(...)
end)

eventFrame:SetScript("OnEvent",function(self,event,arg1,arg2,arg3,arg4)

	
	if event == "GET_ITEM_INFO_RECEIVED" and arg2 then
		if RXP_.itemQueryList[arg1] then
			RXP_.itemQueryList[arg1] = nil
			RXP_.updateStepText = true
		elseif GetTime() - startTime < 15 then
			RXP_.updateStepText = true
		end
		return
	elseif event == "QUEST_TURNED_IN" and (arg1 == 10551 or arg1 == 10552)  then
		C_Timer.After(1, function() RXP_.ReloadGuide() end)
	elseif event == "TRAINER_SHOW" then
		trainerUpdate = GetTime()
        OnTrainer()
		self:SetScript("OnUpdate",trainerFrameUpdate)
		return
	elseif event == "TRAINER_CLOSED" then
		self:SetScript("OnUpdate",nil)
		return
	elseif event == "PLAYER_LOGIN" then
		RXPG_init()
		RXP_.GenerateMenuTable()
        RXP_.CreateOptionsPanel()
		loadtime = GetTime()
        ProcessSpells()
		local guide = RXP_.GetGuideTable(RXPCData.currentGuideGroup,RXPCData.currentGuideName)
        if not guide and RXPData.autoLoadGuides then
            guide = RXP_.defaultGuide
            if RXP_.version ~= "CLASSIC" and (UnitLevel("player") == 58 and not guide.boost58) then
                guide = nil
            end
        end
		RXP_:LoadGuide(guide,true)
        if not RXP_.currentGuide then
            f:SetHeight(20)
            RXP_.UpdateBottomFrame()
            RXP_.noGuide = true
        end
		return
    elseif event == "TAXIMAP_OPENED" then
        local FPlist = C_TaxiMap.GetAllTaxiNodes(C_Map.GetBestMapForUnit("player"))
        for k,v in pairs(FPlist) do
            if v.nodeID then
                RXPCData.flightPaths[v.nodeID] = true
            end
        end
    elseif event == "PLAYER_LEVEL_UP" and RXP_.currentGuide then
        level = UnitLevel("player")
        local stepn = RXPCData.currentStep
        ProcessSpells()
        --RXP_:LoadGuide(RXP_.currentGuide)
        RXP_.SetStep(1)
        RXP_.SetStep(stepn)
    elseif event == "UNIT_AURA" then
        SoMCheck()
    elseif event == "UNIT_PET" then
        RXP_.petFamily = GetPetIcon() or RXP_.petFamily
	end
	

end)


function RXP_.GetGuideTable(guideGroup,guideName)
	if guideGroup and RXP_.guideList[guideGroup] and guideName and RXP_.guideList[guideGroup][guideName] then
		return RXP_.guides[RXP_.guideList[guideGroup][guideName]]
	end
end

--[[
local backdrop = {
 bgFile = "Interface/BUTTONS/WHITE8X8",
 --edgeFile = "Interface/BUTTONS/WHITE8X8",
 --edgeFile = "Interface/ARENAENEMYFRAME/UI-Arena-Border",
 edgeFile = RXP_.GetTexture("rxp-borders"),
 tile = true,
 edgeSize = 8,
 tileSize = 8,
 insets = {
	  left = 4,
	  right = 2,
	  top = 2,
	  bottom = 4,
 },
 }
 ]]

f:Show()

f:SetMovable(true)
f:SetClampedToScreen(true)
f:SetResizable(true)
f:SetMinResize(220,20)

local function SetStepFrameAnchor()
local frame = f.CurrentStepFrame
    local scale = f:GetScale()
    local function SetTop()
        frame:ClearAllPoints()
        frame:SetPoint("BOTTOMLEFT", f.GuideName,"TOPLEFT",0,2)
        frame:SetPoint("BOTTOMRIGHT",f.GuideName,"TOPRIGHT",0,2)
    end
    local function SetBottom()
       frame:ClearAllPoints()
       frame:SetPoint("TOPLEFT", f,"BOTTOMLEFT",3,0)
       frame:SetPoint("TOPRIGHT",f,"BOTTOMRIGHT",-3,0)
    end
    
    if RXPData.anchorOrientation < 0 then
        SetBottom()
        if frame:GetBottom()*scale < 0 then
           SetTop()
        end
        if (frame:GetTop()*scale > GetScreenHeight()) then
           SetBottom()
        end
    else
        SetTop()
        if (frame:GetTop()*scale > GetScreenHeight()) then
           SetBottom()
        end
        if frame:GetBottom()*scale < 0 then
           SetTop()
        end
    end
end

f.OnMouseDown = function(self, button)
    if RXPData.lockFrames then
        return
	elseif IsAltKeyDown() then
		f:StartSizing("BOTTOMRIGHT")
		f:SetScript("OnUpdate",RXP_.UpdateBottomFrame)
		isResizing = true
	else
		f:StartMoving()
	end
end

f.OnMouseUp = function(self,button)
	f:StopMovingOrSizing()
	if isResizing then
        RXP_.SetStep(RXPCData.currentStep)
		f:SetScript("OnUpdate",nil)
	end
    SetStepFrameAnchor()
	isResizing = false
end


local isResizing
f:SetScript("OnMouseDown", f.OnMouseDown)
f:SetScript("OnMouseUp", f.OnMouseUp)
f:EnableMouse(1)

RXP_.stepPos = {}



function StepScroll(n)
	local value
	if n == 1 or not RXP_.stepPos[n] then
		value = 0
	else
		value = RXP_.stepPos[n]/RXP_.stepPos[0]*f.Steps.f1:GetHeight()-2
		local smax = f.Steps.f1:GetHeight()-f.BottomFrame:GetHeight()+10
		if value > smax then
			value = smax
		end
	end	
	f.SF.ScrollBar:SetValue(value)

end




RXP_.width,RXP_.height = 235,125

f:SetWidth(RXP_.width)
f:SetHeight(RXP_.height) 	
f:SetPoint("LEFT",0,35)
f:SetFrameStrata("BACKGROUND")




local defaultColors = {}
defaultColors.background = {12/255,12/255,27/255,1}
defaultColors.bottomFrameBG = {18/255,18/255,40/255,1}
defaultColors.bottomFrameHighlight = {54/255,62/255,109/255,1}
defaultColors.mapPins = {206/210,123/210,1,1}
defaultColors.tooltip = "|cFFCE7BFF" --AARRGGBB

local hardcoreColors = {}
hardcoreColors.background = {19/255,0/255,0/255,1}
hardcoreColors.bottomFrameBG = {31/255,0/255,0/255,1}
hardcoreColors.bottomFrameHighlight = {81/255,0/255,0/255,1}
hardcoreColors.mapPins = {0.9,0.1,0.1,1}
hardcoreColors.tooltip = "|c0000C1FF" --AARRGGBB

RXP_.colors = defaultColors


RXP_.defaultTextures = "Interface/AddOns/RXPGuides/Textures/"
RXP_.hardcoreTextures = "Interface/AddOns/RXPGuides/Textures/Hardcore/"
RXP_.texturePath = RXP_.defaultTextures


function RXP_.GetTexture(name)
    return RXP_.texturePath..name
end

function RXP_.RenderFrame()
    local path
    local colors
    if RXPCData.hardcore then
        path = RXP_.hardcoreTextures
        colors = hardcoreColors
    else
        path = RXP_.defaultTextures
        colors = defaultColors
    end
    if path == RXP_.texturePath then return end
    RXP_.GenerateMenuTable()
    RXP_.colors = colors
    RXP_.texturePath = path
    f.backdropEdge.edgeFile = RXP_.GetTexture("rxp-borders")
    RXP_.guideNameBackdrop.edgeFile = RXP_.GetTexture("rxp-borders")
    f.BottomFrame:ClearBackdrop()
    f.BottomFrame:SetBackdrop(f.backdropEdge)
    f.BottomFrame:SetBackdropColor(unpack(RXP_.colors.background))

    f.GuideName:ClearBackdrop()
    f.GuideName:SetBackdrop(RXP_.guideNameBackdrop)

    f.GuideName.bg:SetTexture(RXP_.GetTexture("rxp-banner"))
    f.GuideName.icon:SetTexture(RXP_.GetTexture("rxp_logo-64"))
    f.GuideName.classIcon:SetTexture(RXP_.GetTexture(class))
    f.GuideName.cog:SetNormalTexture(RXP_.GetTexture("rxp_cog-32"))
    
    RXP_.arrowFrame.texture:SetTexture(RXP_.GetTexture("rxp_navigation_arrow-1"))
    RXP_.UpdateScrollBar()
    if RXP_.currentGuide then
        RXP_.ReloadGuide()
    end
end


local function SetColor(ref,a,r,g,b)
    local rr,rg,rb,ra = unpack(ref)
    r = r or rr
    g = g or rg
    b = b or rb
    a = a or ra
    return r,g,b,a
end


f.backdropEdge = {
 bgFile = "Interface/BUTTONS/WHITE8X8",
 --edgeFile = "Interface/BUTTONS/WHITE8X8",
 --edgeFile = "Interface/ARENAENEMYFRAME/UI-Arena-Border",
 edgeFile = RXP_.GetTexture("rxp-borders"),
 tile = true,
 edgeSize = 8,
 tileSize = 8,
 insets = {
	  left = 4,
	  right = 2,
	  top = 2,
	  bottom = 4,
 },
 }




local backdrop = {bgFile = "Interface/BUTTONS/WHITE8X8",
	tile = true, tileSize = 16, 
	--edgeFile = "Interface/Tooltips/UI-Tooltip-Border", 
	--edgeSize = 16, insets = {left = 4, right = 4, top = 4, bottom = 4}
}

f.GuideName = CreateFrame("Frame","$parentGuideName",f, BackdropTemplate)
f.CurrentStepFrame = CreateFrame("Frame", nil, f)
--f.CurrentStepFrame:SetBackdrop(backdrop)
--f.CurrentStepFrame:SetBackdropColor(0.3,0.01,0.01)
f.CurrentStepFrame:SetPoint("BOTTOMLEFT", f.GuideName,"TOPLEFT",0,2)
f.CurrentStepFrame:SetPoint("BOTTOMRIGHT",f.GuideName,"TOPRIGHT",0,2)





f.CurrentStepFrame:SetHeight(25)
f.CurrentStepFrame:SetScript("OnMouseDown", f.OnMouseDown)
f.CurrentStepFrame:SetScript("OnMouseUp", f.OnMouseUp)
f.CurrentStepFrame:EnableMouse(1)

local function ClearTable(tab)
    if #tab > 1 then
        while #tab > 0 do
            table.remove(tab)
        end
    else
        for k in pairs(tab) do
            tab[k] = nil
        end
    end
    return tab
end


f.CurrentStepFrame.frame = {}

function f.ClearFrameData()

	for i,stepframe in ipairs(f.CurrentStepFrame.frame) do
		--frame:SetHeight(0)
		stepframe:Hide()
		stepframe:SetScript("OnUpdate",nil)
		stepframe:SetScript("OnEvent",nil)
		stepframe:UnregisterAllEvents()
        stepframe.callback = nil
		if stepframe.step then
			stepframe.step.frame = nil
			stepframe.step.active = nil
			stepframe.step = nil
			stepframe.sticky = nil
			stepframe.index = nil
		end
		for j,frame in ipairs(stepframe.elements) do
			--element:SetHeight(0)
			if frame.step then
				if not frame.step.sticky then
					frame.element.completed = nil
				end
				frame.element.frame = nil
				frame.element.skip = nil
			end
            frame.step = nil
            frame.index = nil
            frame.element = nil
            frame.callback = nil
			frame:Hide()
			frame:UnregisterAllEvents()
			frame:SetScript("OnUpdate",nil)
			frame:SetScript("OnEvent",nil)
            frame:SetScript("OnEnter",nil)
            frame:SetScript("OnLeave",nil)
            frame:SetScript("OnMouseDown",nil)
            frame:SetMouseClickEnabled(false)
			frame.button:SetChecked(false)
            frame.highlight:Hide()
		end
	end
end
RXP_.MainFrame = f

f.CurrentStepFrame.activeSteps = {}
local isUpdating
function RXP_.UpdateStepCompletion()
	RXP_.updateSteps = false
	
	local n = 0
	local update
	
	for i,step in ipairs(f.CurrentStepFrame.activeSteps) do
		local completed = true
		if not step.completed then
			for j,element in ipairs(step.elements) do
				if not (element.completed or element.skip) then
					completed = false
					break
				end
			end
		end
		
		local completewith = step.completewith
		if completewith and not completed then
			local guide = RXP_.currentGuide
			if completewith == "next" then
				completewith = step.index+1
			else
				completewith = guide.labels[completewith]
			end
			if completewith then
				if guide.steps[completewith] and guide.steps[completewith].sticky then
					if RXPCData.stepSkip[completewith] then
						completed = true
					end
				else
					if RXPCData.currentStep > completewith then
						completed = true
					end
				end
			end
		end
		
		if completed then
			for j,element in ipairs(step.elements) do
				if element.OnStepCompletion then
					element:OnStepCompletion()
				end
			end
			if step.sticky then
				RXPCData.stepSkip[step.index] = true
				update = true
				step.active = nil
			elseif step.index >= RXPCData.currentStep then
				step.completed = true
				RXP_.UpdateBottomFrame(nil,nil,step.index)
				if step.index == RXPCData.currentStep then
					RXP_.loadNextStep = true
				end
				return
			end
		end
	end
	
	if update then
		--print('opt',RXPCData.currentStep)
		return RXP_.SetStep(RXPCData.currentStep)
	end
end

function RXP_.SetStep(n,n2)
    if type(n) == "table" then n = n2 end
	local guide = RXP_.currentGuide
    if not guide then return end
	local group = guide.group

	--print(n)
	if n > #guide.steps then
		local isComplete = true
		local completedStep
		for i,step in pairs(f.CurrentStepFrame.activeSteps) do
			if step.sticky and not RXPCData.stepSkip[i] then
				isComplete = false
			end
		end
		if isComplete then
			return RXPG[group].next()
		else
			n = #guide.steps
		end
	end
	RXPCData.currentStep = n
	--isUpdating = true


	if not guide.steps[n].active then
		for _,element in ipairs(guide.steps[n]) do
			if element.OnStepActivation then
				element:OnStepActivation()
			end
		end
	end


	RXPCData.stepSkip[n+1] = nil
	
	if guide.steps[n].sticky and n < #guide.steps then
		return RXP_.SetStep(n+1)
	end
	
	for i,step in pairs(f.CurrentStepFrame.activeSteps) do
		step.active = nil
		if n < #guide.steps then
			step.completed = nil
		end
	end
	
    local activeSteps = f.CurrentStepFrame.activeSteps
	ClearTable(activeSteps)
    ClearTable(RXP_.questAccept)
	ClearTable(RXP_.questTurnIn)
	f.ClearFrameData()
	local level = UnitLevel("player")
    local scrollHeight = 1
    
	for i = 1,n-1 do
		local step = guide.steps[i]
		if step.sticky then
            local req = guide.labels[step.requires]
            if step.requires and req then
                req = guide.steps[req]
                while req and req.requires and not RXPCData.stepSkip[req.index] and not req.active do
                    req = guide.steps[guide.labels[req.requires]]
                end
            end
            step.reqFulfilled = not(req and (req.active or (req.sticky and not RXPCData.stepSkip[req.index])))
            if not RXPCData.stepSkip[i] and	step.reqFulfilled and level >= step.level then
                table.insert(activeSteps,step)
                if n > 1 then scrollHeight = n-1 end
                --f.Steps.frame[i]:SetAlpha(0.66)
                step.active = true
            end        
		end
	end
    
	
	local step = guide.steps[n]
    local req = step.requires and guide.labels[step.requires] and guide.steps[guide.labels[step.requires]]
	if step.completed and n < #guide.steps then
		return RXP_.SetStep(n+1)
	elseif step and not step.completed and not(req and #activeSteps > 0 and (req.active or not(req.reqFulfilled))) and level >= step.level then
		table.insert(activeSteps,step)
		f.Steps.frame[n]:SetAlpha(1)
		step.active = true
        scrollHeight = n
	end
	
	if #activeSteps == 0 then 
		if n >= #guide.steps then
			return RXPG[group].next()
		else
			return RXP_.SetStep(n+1)
		end
	end
	
	local totalHeight = 0
	local c = 0
	local heightDiff = f:GetHeight() - f.CurrentStepFrame:GetHeight()
	for i,step in pairs(activeSteps) do
		
		local index = step.index
		c = c+1
		local stepframe = f.CurrentStepFrame.frame[c]
		if not stepframe then
			f.CurrentStepFrame.frame[c] = CreateFrame("Frame","$parent_frame"..c,f.CurrentStepFrame, BackdropTemplate)
			stepframe = f.CurrentStepFrame.frame[c]
			--stepframe:SetBackdropBorderColor(0.1,0.5,0.1)
			stepframe.elements = {}
		end
        stepframe:ClearAllPoints()
		if c == 1 then
			stepframe:SetPoint("TOPLEFT",f.CurrentStepFrame,0,0)
			stepframe:SetPoint("TOPRIGHT",f.CurrentStepFrame,0,0)
		else
			stepframe:SetPoint("TOPLEFT",f.CurrentStepFrame.frame[c-1],"BOTTOMLEFT",0,-5)
			stepframe:SetPoint("TOPRIGHT",f.CurrentStepFrame.frame[c-1],"BOTTOMRIGHT",0,-5)
		end
		if not stepframe.number then
			stepframe.number = CreateFrame("Frame","$parent_number",stepframe, BackdropTemplate)
			stepframe.number:SetPoint("TOPLEFT",stepframe,7,5)
			stepframe.number.text = stepframe.number:CreateFontString(nil,"OVERLAY")
			--stepframe.number.text:SetFontObject(GameFontNormalSmall)
			stepframe.number.text:ClearAllPoints()
			stepframe.number.text:SetPoint("CENTER",stepframe.number,2,1)
			stepframe.number.text:SetJustifyH("CENTER")
			stepframe.number.text:SetJustifyV("CENTER")
			stepframe.number.text:SetTextColor(1,1,1)
			stepframe.number.text:SetFont(RXP_.font, 9)
		end
        if stepframe.hardcore ~= RXPCData.hardcore or not stepframe.hardcore then
            stepframe:ClearBackdrop()
            stepframe:SetBackdrop(f.backdropEdge)
            stepframe:SetBackdropColor(unpack(RXP_.colors.background))
            stepframe.number:ClearBackdrop()
            stepframe.number:SetBackdrop(f.backdropEdge)
            stepframe.number:SetBackdropColor(unpack(RXP_.colors.background))
        end
		stepframe.number.text:SetText("Step "..tostring(index))
		stepframe.number:SetSize(stepframe.number.text:GetStringWidth()+10,17)
		stepframe.step = step
		stepframe.index = index
		stepframe.sticky = step.sticky
        
		if step.active then
			stepframe:Show()
		else
			stepframe:Hide()
		end
		
		local e = 0
		local frameHeight = 0
		for j,element in ipairs(step.elements) do
			e = j
			local elementFrame = stepframe.elements[e]
			if not stepframe.elements[e] then
				stepframe.elements[e] = CreateFrame("Frame","$parent_"..e,stepframe, BackdropTemplate)
				elementFrame = stepframe.elements[e]
				--elementFrame:SetHeight(0)
				--elementFrame:SetWidth(300)
				local button = CreateFrame("CheckButton", "$parentCheck", elementFrame, "ChatConfigCheckButtonTemplate");
				elementFrame.button = button
                button:SetSize(12,12)
				button:SetScript("PostClick",function(self) 
					local parent = self:GetParent()
					local element = parent.element 
					if element and not element.optional then
						element.skip = self:GetChecked()
					end
					RXP_.updateSteps = true
					RXP_.updateMap = true
				end)
                
                --
                
                button:SetPushedTexture(nil)
                button:SetHighlightTexture("Interface/MINIMAP/UI-Minimap-ZoomButton-Highlight", "ADD")
                
                
				elementFrame.text = getglobal(elementFrame.button:GetName() .. 'Text')
				elementFrame.text:SetParent(elementFrame)
				
				
				elementFrame.text:SetJustifyH("LEFT")
				elementFrame.text:SetJustifyV("CENTER")
				elementFrame.text:SetTextColor(1,1,1)
				elementFrame.text:SetFont(RXP_.font, 11)
				
				--[[
				elementFrame.text:SetJustifyH("LEFT")
				elementFrame.text:SetJustifyV("CENTER")
				elementFrame.text:SetTextColor(1,1,1)
				elementFrame.text:SetFont("Fonts\\FRIZQT__.TTF", 10)]]
				
				
				elementFrame.icon = elementFrame:CreateFontString(nil,"OVERLAY")
				elementFrame.icon:SetFontObject(GameFontNormalSmall)
                
                elementFrame:SetMouseMotionEnabled(true)
                local ht = elementFrame:CreateTexture(nil, "HIGHLIGHT")
                ht:SetAllPoints(elementFrame.text)
                ht:SetTexture("Interface\\Worldmap\\UI-QuestPoi-HighlightBar")
                ht:SetBlendMode("ADD")
                ht:Hide()
                elementFrame.highlight = ht
                
                local function tpOnEnter(self)         
                    if self:IsForbidden() or GameTooltip:IsForbidden() then return end
                    local element = self.element or self:GetParent().element
                    if element and element.tooltip then
                        GameTooltip:SetOwner(self, "ANCHOR_BOTTOM",0,-10)
                        GameTooltip:ClearLines()
                        GameTooltip:AddLine(element.tooltip,1,1,1)
                        GameTooltip:Show()
                    end
                end
                
                local function tpOnLeave(self)    
                    if self:IsForbidden() or GameTooltip:IsForbidden() then return end
                    local element = self.element or self:GetParent().element
                    if element and element.tooltip then
                        GameTooltip:Hide()
                    end
                end
                
                elementFrame:SetScript("OnEnter",tpOnEnter)
                elementFrame:SetScript("OnLeave",tpOnLeave)
                
                elementFrame.button:HookScript("OnEnter",tpOnEnter)
                elementFrame.button:HookScript("OnLeave",tpOnLeave)
			end
            if elementFrame.button.hardcore ~= RXPCData.hardcore or not elementFrame.hardcore then
                elementFrame.button:SetNormalTexture(RXP_.GetTexture("rxp-btn-blank-32"))
                elementFrame.button:SetCheckedTexture(RXP_.GetTexture("rxp-checked-32"))
                elementFrame.button:SetDisabledCheckedTexture(RXP_.GetTexture("rxp-checked-32"))
                elementFrame.button.hardcore = RXPCData.hardcore
			end
            elementFrame.step = step
			elementFrame.element = element
			elementFrame.index = index
			element.frame = elementFrame
			elementFrame.button:Enable()
			if element.tag then
				local events = element.event or RXPG[group].events[element.tag]
                elementFrame.callback = RXPG[group][element.tag]
				elementFrame.callback(elementFrame)
				if type(events) == "string" then
					if event == "OnUpdate" then
						elementFrame:SetScript("OnUpdate",elementFrame.callback)
					elseif type(events) == "table" then
						elementFrame:RegisterEvent(event)
						elementFrame:SetScript("OnEvent",RXP_.EventHandler)
					end
				elseif type(events) == "table" then
					for _,event in ipairs(events) do
						if event == "OnUpdate" then
							elementFrame:SetScript("OnUpdate",elementFrame.callback)
						else
							elementFrame:RegisterEvent(event)
							elementFrame:SetScript("OnEvent",RXP_.EventHandler)
						end
					end
				end
			end
			local spacing = 0
			

		end
		for n = e+1,#stepframe.elements do
			stepframe.elements[n]:Hide()
		end
	end
    RXP_.UnitScanUpdate()
	RXP_.UpdateText()
	RXP_.updateSteps = true
	RXP_.updateMap = true
	StepScroll(scrollHeight)
end

function RXP_.EventHandler(self,event,...)
    --print(event,self.index,self.element.tag)
    if self.callback and self.step and self.step.active then
        self.callback(self,event,...)
    else
        print('!!!')
        self.callback = nil
        self:UnregisterEvent(event)
    end
end

function RXP_.UnitScanUpdate()
    if unitscan_targets and not RXPData.disableUnitscan then
        for unit,elements in pairs(RXP_.currentGuide.unitscan) do
            local enabled
            for _,element in pairs(elements) do
                if element.step.active then
                    enabled = true
                    break
                end
            end
            
            if enabled then
                if not unitscan_targets[unit] then
                    DEFAULT_CHAT_FRAME:AddMessage(LIGHTYELLOW_FONT_COLOR_CODE .. '<unitscan> +' .. unit)
                end
                unitscan_targets[unit] = true
            else
                if unitscan_targets[unit] then
                    DEFAULT_CHAT_FRAME:AddMessage(LIGHTYELLOW_FONT_COLOR_CODE .. '<unitscan> -' .. unit)
                end
                unitscan_targets[unit] = nil
            end
            
        end
    end
end

function RXP_.UpdateText()
    RXP_.updateStepText = false
    local guide = RXP_.currentGuide
    if not guide then return end
    local group = guide.group


    --StepScroll(n)
    local totalHeight = 0
    local c = 0
    local heightDiff = f:GetHeight() - f.CurrentStepFrame:GetHeight()
    for i,step in pairs(f.CurrentStepFrame.activeSteps) do
        
        local index = step.index
        c = c+1
        local stepframe = f.CurrentStepFrame.frame[c]
        
        stepframe:ClearAllPoints()
        if c == 1 then
            stepframe:SetPoint("TOPLEFT",f.CurrentStepFrame,0,0)
            stepframe:SetPoint("TOPRIGHT",f.CurrentStepFrame,0,0)
        else
            stepframe:SetPoint("TOPLEFT",f.CurrentStepFrame.frame[c-1],"BOTTOMLEFT",0,-5)
            stepframe:SetPoint("TOPRIGHT",f.CurrentStepFrame.frame[c-1],"BOTTOMRIGHT",0,-5)
        end

        stepframe.number.text:SetText("Step "..index)
        stepframe.number:SetSize(stepframe.number.text:GetStringWidth()+10,17)
        
        local e = 0
        local frameHeight = 0
        for j,element in ipairs(step.elements) do
            e = j
            local elementFrame = stepframe.elements[e]
            
            elementFrame:Show()

            local spacing = 0
            
            if element.text then
                elementFrame:SetAlpha(1)
                local text = elementFrame.text
                text:SetText(element.text)
                local h = math.ceil(elementFrame.text:GetStringHeight()*1.1)+1
                --print('sh:',h)
                elementFrame:SetHeight(h)
                frameHeight = frameHeight + h
                
                elementFrame.button:ClearAllPoints()
                --elementFrame.button:SetPoint("TOPLEFT",elementFrame, 4, -1);
                elementFrame.button:SetPoint("TOPLEFT",elementFrame, 6, -1);
                elementFrame.text:ClearAllPoints()
                --elementFrame.text:SetPoint("TOPLEFT",elementFrame.button,"TOPRIGHT",8,-2)
                elementFrame.text:SetPoint("TOPLEFT",elementFrame.button,"TOPRIGHT",11,-1)
                elementFrame.text:SetPoint("RIGHT",stepframe,-5,0)
                
                elementFrame.icon:ClearAllPoints()
                --elementFrame.icon:SetPoint("TOPLEFT",elementFrame.button,"TOPRIGHT",-3,-2)
                elementFrame.icon:SetPoint("TOPLEFT",elementFrame.button,"TOPRIGHT",0,-1)
                if element.textOnly then
                    elementFrame.button:SetChecked(true)
                    elementFrame.button:Hide()
                    element.completed = true
                else
                    elementFrame.button:Show()
                end

            else
                elementFrame:SetAlpha(0)
                elementFrame.button:Hide()
                elementFrame:SetHeight(1)
                element.completed = true
                spacing = 1
            end
            elementFrame:ClearAllPoints()
            if e == 1 then
                elementFrame:SetPoint("TOPLEFT",stepframe,0,-10+spacing)
                elementFrame:SetPoint("TOPRIGHT",stepframe,0,-10+spacing)
            else
                elementFrame:SetPoint("TOPLEFT",stepframe.elements[e-1],"BOTTOMLEFT",0,0+spacing)
                elementFrame:SetPoint("TOPRIGHT",stepframe.elements[e-1],"BOTTOMRIGHT",0,0+spacing)
            end
            if element.tag and element.text then
                local icon = element.icon or RXP_.icons[element.tag] or ""
                elementFrame.icon:SetText(icon)
                elementFrame.icon:Show()
            else
                elementFrame.icon:Hide()
            end
        end

        frameHeight = math.ceil(frameHeight +18)
        stepframe:SetHeight(frameHeight)
        totalHeight = totalHeight+frameHeight+5
    end
    f.CurrentStepFrame:SetHeight(totalHeight-5)
end

RXP_.updateActiveQuest = {}
RXP_.updateInactiveQuest = {}

local tickTimer = 0


updateFrame = CreateFrame("Frame")


local eventType
local updateTick = 0
local updateStart = 0

updateFrame:SetScript("OnUpdate",function(self,diff)
    updateTick = updateTick + diff
    if updateTick > 0.15 then
        updateTick = 0
        updateStart = GetTime()
        local activeQuestUpdate = 0
        local skip
        local event = ""
        
        if not RXP_.loadNextStep then
            for ref,func in pairs(RXP_.updateActiveQuest) do
                func(ref)
                RXP_.updateActiveQuest[ref] = nil
                activeQuestUpdate = activeQuestUpdate + 1
            end
            if activeQuestUpdate > 0 then
                event = event .. "/activeQ"
            end
        end
       	if RXP_.nextStep then 
			skip = true
			RXP_.SetStep(RXP_.nextStep)
            RXP_.QuestAutomation()
			RXP_.updateBottomFrame = true
			RXP_.nextStep = nil
        elseif RXP_.loadNextStep then
            RXP_.loadNextStep = false
            RXP_.SetStep(RXPCData.currentStep+1)
            RXP_.QuestAutomation()
            skip = true
            RXP_.updateBottomFrame = true
            event = event .. "/loadNext"
        elseif activeQuestUpdate == 0 then
            if RXP_.updateSteps then
                RXP_.UpdateStepCompletion()
                event = event .. "/stepComplete"
            elseif RXP_.updateStepText then
                RXP_.updateStepText = false
                local updateText
                for n in pairs(RXP_.stepUpdateList) do
                    if RXP_.currentGuide.steps[n] then
                        if RXP_.currentGuide.steps[n].active then
                            updateText = true
                        end
                        RXP_.UpdateBottomFrame(nil,nil,n)
                        if not RXP_.updateStepText then
                            RXP_.stepUpdateList[n] = nil
                        end
                    end
                end
                if updateText then
                    RXP_.UpdateText()
                end
                event = event .. "/updateText"
                skip = true
            elseif RXP_.updateBottomFrame or GetTime() - tickTimer > 5 then
                RXP_.UpdateBottomFrame()
                RXP_.UpdateText()
                SetStepFrameAnchor()
                tickTimer = GetTime()
                event = event .. "/bottomFrame"
                skip = true
            else
                inactiveQuestUpdate = true
            end
        end
        
        if not skip then
            if RXP_.updateMap then
                RXP_.UpdateMap()
                event = event .. "/map"
            elseif activeQuestUpdate == 0 then
                for ref,func in pairs(RXP_.updateInactiveQuest) do
                    activeQuestUpdate = activeQuestUpdate + 1
                    if activeQuestUpdate > 4 then
                        break
                    else
                        func(ref)
                        RXP_.updateInactiveQuest[ref] = nil
                    end
                end
                if activeQuestUpdate > 0 then
                    event = event .. "/inactiveQ"
                end
            end
            RXP_.UpdateGotoSteps()
        end
        
        if event ~= "" then
            eventType = event
        end
    end
end)

--[[
df = CreateFrame("Frame")

df:SetScript("OnUpdate",function()
    local ct = GetTime()
    if eventType and ct ~= updateStart then
        local totalTime = ct - updateStart
        print(format("%.6f",totalTime),eventType)
        eventType = nil
    end
end)]]


ff1 = f
--f.BottomFrame:SetBackdropColor(12/255,12/255,27/255,1)


f.BottomFrame:SetBackdrop(f.backdropEdge)
f.BottomFrame:SetBackdropColor(unpack(RXP_.colors.background))

f.BottomFrame:SetPoint("TOPLEFT", f, 3, -3)
f.BottomFrame:SetPoint("BOTTOMRIGHT", f,-3, 3)

RXP_.guideNameBackdrop = {
-- bgFile = "Interface/BUTTONS/WHITE8X8",
 edgeFile = RXP_.GetTexture("rxp-borders"),
 tile = true,
 edgeSize = 8,
 tileSize = 8,
 insets = {
	  left = 4,
	  right = 2,
	  top = 2,
	  bottom = 4,
 },
}



f.GuideName:SetBackdrop(RXP_.guideNameBackdrop)

--f.GuideName:SetBackdropColor(unpack(RXP_.colors.background))
f.GuideName:SetPoint("BOTTOMLEFT",f.BottomFrame,"TOPLEFT",0,-9)
f.GuideName:SetPoint("BOTTOMRIGHT",f.BottomFrame,"TOPRIGHT",0,-9)
f.GuideName:SetHeight(35)
f.GuideName.text = f.GuideName:CreateFontString(nil,"OVERLAY")
--f.GuideName.text:SetFontObject(GameFontNormalSmall)
f.GuideName.text:ClearAllPoints()
f.GuideName.text:SetPoint("LEFT",f.GuideName,29,0)
f.GuideName.text:SetPoint("RIGHT",f.GuideName,0,0)
f.GuideName.text:SetJustifyH("CENTER")
f.GuideName.text:SetJustifyV("CENTER")
f.GuideName.text:SetTextColor(1,1,1)
f.GuideName.text:SetFont(RXP_.font, 11)
f.GuideName.text:SetText("Welcome to RestedXP Guides\nRight click to pick a guide")
f.GuideName:SetFrameLevel(6)

f.GuideName.bg = f.GuideName:CreateTexture("$parentBG","BACKGROUND")
f.GuideName.bg:SetTexture("Interface/AddOns/RXPGuides/Textures/rxp-banner")
f.GuideName.bg:SetPoint("TOPLEFT",4,-2)
f.GuideName.bg:SetPoint("BOTTOMRIGHT",-2,4)

f.GuideName.icon = f.GuideName:CreateTexture("RXPIcon","ARTWORK")
f.GuideName.icon:SetTexture("Interface/AddOns/RXPGuides/Textures/rxp_logo-64")
f.GuideName.icon:SetPoint("CENTER",f.GuideName,"LEFT",16,0)
f.GuideName.icon:SetSize(42,42)


f.GuideName.classIcon = f.GuideName:CreateTexture("RXPClassIcon","OVERLAY")
f.GuideName.classIcon:SetTexture("Interface/AddOns/RXPGuides/Textures/"..class)
f.GuideName.classIcon:SetPoint("CENTER",f.GuideName.icon,"BOTTOMRIGHT",-4,10)
f.GuideName.classIcon:SetSize(24,24)

--[[
f.GuideName.x = f.GuideName:CreateTexture("RXPClose","ARTWORK")
f.GuideName.x:SetTexture("Interface/AddOns/RXPGuides/Textures/rxp_close_btn_32")
f.GuideName.x:SetPoint("CENTER",f.GuideName,"TOPRIGHT",-5,-3)
f.GuideName.x:SetSize(24,24)


f.GuideName.cog = f.GuideName:CreateTexture("RXPCogwheel","ARTWORK")
f.GuideName.cog:SetTexture("Interface/AddOns/RXPGuides/Textures/rxp_cog-64")
--f.GuideName.cog:SetPoint("CENTER",f.GuideName,"TOPRIGHT",-22,-3)
f.GuideName.cog:SetPoint("CENTER",f.GuideName,"TOPRIGHT",-5,-3)
f.GuideName.cog:SetSize(18,18)
]]


f.GuideName.cog = CreateFrame("Button", "$parentCogwheel", f)
f.GuideName.cog:SetFrameLevel(f.GuideName:GetFrameLevel()+1)
f.GuideName.cog:SetWidth(24)
f.GuideName.cog:SetHeight(24)
f.GuideName.cog:SetPoint("CENTER",f.GuideName,"TOPRIGHT",-8,-8)
f.GuideName.cog:SetNormalTexture("Interface/AddOns/RXPGuides/Textures/rxp_cog-32")
--f.GuideName.cog:SetPushedTexture("Interface/Buttons/UI-Panel-MinimizeButton-Down")
f.GuideName.cog:SetHighlightTexture("Interface/MINIMAP/UI-Minimap-ZoomButton-Highlight", "ADD")
f.GuideName.cog:Hide()
f.GuideName.cog:SetScript("OnClick", function(self)
    RXP_.DropDownMenu()
end)
local buttonToggle = 0
f.GuideName.cog:HookScript("OnEnter", function(self)
    buttonToggle = GetTime()
end)
f.GuideName.cog:HookScript("OnLeave", function(self)
    self:Hide()
end)



RXP_.MenuFrame = CreateFrame("Frame", "RXPG_MenuFrame", UIParent, "UIDropDownMenuTemplate")


function RXP_.DropDownMenu()
    EasyMenu(RXP_.menuList, RXP_.MenuFrame, "cursor", 0 , 0, "MENU");
end


f.GuideName:SetScript("OnMouseDown",function(self,button)
    if button == "RightButton" then
        RXP_.DropDownMenu()
    else
        f.OnMouseDown(self,button)
    end
end)

f.GuideName:SetScript("OnMouseUp",function(self,button)
    if button ~= "RightButton" then
        f.OnMouseUp(self,button)
    end
end)

f.GuideName:SetScript("OnEnter",function()
	f.GuideName.cog:Show()
end)
f.GuideName:SetScript("OnLeave",function()
    if GetTime() - buttonToggle > 0.1 then
        f.GuideName.cog:Hide()
    end
end)


--f.Text:SetAutoFocus(false)
f.SF = CreateFrame("ScrollFrame", "$parentSF", f.BottomFrame, "UIPanelScrollFrameTemplate")
f.SF:SetPoint("TOPLEFT", f.BottomFrame,5, -5)
f.SF:SetPoint("BOTTOMRIGHT", f.BottomFrame,-20, 7)
f.SF.ScrollBar:SetPoint("TOPLEFT",f.SF,"TOPRIGHT",0,-18)

--[[
local prefix = "Interface\\MAINMENUBAR\\"
local s = f.SF.ScrollBar.ScrollDownButton
s.Normal:SetTexture(prefix.."UI-MainMenu-ScrollDownButton-Up-Old")
s.Highlight:SetTexture(prefix.."UI-MainMenu-ScrollDownButton-Highlight-Old")
s.Pushed:SetTexture(prefix.."UI-MainMenu-ScrollDownButton-Down-Old")
s.Disabled:SetTexture(prefix.."UI-MainMenu-ScrollDownButton-Disabled-Old")
s = f.SF.ScrollBar.ScrollUpButton
s.Normal:SetTexture(prefix.."UI-MainMenu-ScrollUpButton-Up-Old")
s.Highlight:SetTexture(prefix.."UI-MainMenu-ScrollUpButton-Highlight-Old")
s.Pushed:SetTexture(prefix.."UI-MainMenu-ScrollUpButton-Down-Old")
s.Disabled:SetTexture(prefix.."UI-MainMenu-ScrollUpButton-Disabled-Old")
]]


function RXP_.UpdateScrollBar()
    prefix = RXP_.GetTexture("Scrollbar/")

    local s = f.SF.ScrollBar.ScrollDownButton
    s.Normal:SetTexture(prefix.."Down-Normal")
    s.Highlight:SetTexture(prefix.."Down-Highlight")--?
    s.Pushed:SetTexture(prefix.."Down-Pushed")
    s.Disabled:SetTexture(prefix.."Down-Disabled")
    s = f.SF.ScrollBar.ScrollUpButton
    s.Normal:SetTexture(prefix.."Up-Normal")
    s.Highlight:SetTexture(prefix.."Up-Highlight")
    s.Pushed:SetTexture(prefix.."Up-Pushed")
    s.Disabled:SetTexture(prefix.."Up-Disabled")
    f.SF.ScrollBar:SetThumbTexture(prefix.."Knob")
end

RXP_.UpdateScrollBar()

--f.SF.ScrollBar:SetWidth(5)


hooksecurefunc(f.SF.ScrollBar,"SetValue",function(self,value)
	local h = math.floor(f.Steps:GetHeight()+10)
	local scroll = h-f.BottomFrame:GetHeight()
    local zero = RXPData.hideCompletedSteps and RXPCData.currentStep and RXPCData.currentStep > 1 and RXP_.stepPos[RXPCData.currentStep-1]+RXPCData.currentStep or 0
	if scroll < zero then scroll = zero end
	if scroll <= value then f.SF.ScrollBar.ScrollDownButton:Disable() end
	f.SF.ScrollBar:SetMinMaxValues(zero,scroll)
end)




f.Steps = CreateFrame("Frame", "$parent_steps", f.BottomFrame, BackdropTemplate)
f.Steps.frame = {}
f.Steps:SetWidth(f:GetWidth()-35)
--f.Steps:SetBackdrop(backdrop)
--f.Steps:SetBackdropColor(0.1,0.1,0.1)




--f.Text:SetSize(180, 170)

--f.Steps:SetHeight(100)
--f.Steps:SetPoint("TOPLEFT", f.CurrentStepFrame,"TOPLEFT",0,10)
--f.Steps:SetPoint("TOPRIGHT",f.SF,"TOPLEFT",10,0)
--f.Steps:SetPoint("TOPLEFT", f.SF)
--f.Steps:SetPoint("BOTTOMRIGHT", f.SF)
--f.Steps:SetSize(500,700)



--f.Steps:SetPoint("TOPLEFT",f.CurrentStepFrame,"BOTTOMLEFT",0,-5)
--f.Text:SetMaxLetters(99999)
--f.Text:SetFontObject(GameFontNormal)





f.SF:SetScrollChild(f.Steps)
--f.Steps:SetFrameLevel(f.SF:GetFrameLevel()+2)

f.bottomBackdrop = {
    bgFile = "Interface\\Buttons\\WHITE8x8",
    edgeFile = "Interface\\Buttons\\WHITE8x8", edgeSize = 1,
    insets = {left = 0, right = 0, top = -1, bottom = -1}
}

local currentAlpha

function RXP_.GetGuideName(guide)
    if not guide then
        guide = RXP_.currentGuide
    end
    local som = RXPCData.SoM
    if som and guide.somname then
        return guide.somname
    elseif not som and guide.eraname then
        return guide.eraname
    else
        return guide.displayName
    end
end

function RXP_:LoadGuide(guide,OnLoad)
	RXP_.loadNextStep = false
    if not guide then
		if OnLoad then
			return
		else
			return error('Guide not found')
		end
	end
    
    if RXP_.noGuide then
        f:SetHeight(RXP_.height)
        RXP_.UpdateBottomFrame()
        RXP_.noGuide = nil
    end
    
	startTime = GetTime()
	CloseDropDownMenus()
	tickTimer = GetTime()
	if not (OnLoad and RXPCData and RXPCData.currentStep) then
		RXPCData.currentStep = 1
		RXPCData.stepSkip = {}
	end
	local totalHeight = 0
	local nframes = 0
	
    ClearTable(RXP_.stepUpdateList)
	RXP_.currentGuide = {}
	
    for k,v in pairs(guide) do
		RXP_.currentGuide[k] = v
	end
	RXP_.currentGuide.steps = {}
	for n,step in ipairs(guide.steps) do
		if RXP_.AldorScryerCheck(step) and RXP_.PhaseCheck(step) and RXP_.HardcoreCheck(step) and RXP_.SeasonCheck(step) then
			table.insert(RXP_.currentGuide.steps,step)
		end
	end
	guide = RXP_.currentGuide
	
	RXP_.currentGuideName = guide.name
	RXPCData.currentGuideName = guide.name
	RXPCData.currentGuideGroup = guide.group
	f.GuideName.text:SetText(RXP_.GetGuideName(guide))
	--local nameWidth = f.GuideName.text:GetStringWidth()+10
	--f.GuideName:SetWidth(nameWidth)
	--f:SetWidth(math.max(f:GetWidth(),nameWidth+45))
	--f:SetMinResize(math.max(nameWidth+45,220),20)
    guide.labels = {}

	
    --[[
    if unitscan_targets then
        local unitList = {}
        for npc,steps in pairs(guide.unitscan) do
            if not unitscan_targets[npc] then
                unitList[npc] = steps
            end
        end
        guide.unitscan = unitList
    end]]
    
	guide.steps[#guide.steps].lastStep = true
	
	for n,step in ipairs(guide.steps) do
		step.index = n
		if step.completewith then
			step.sticky = true
		end
        step.level = tonumber(step.level) or 0
		if step.label then
			guide.labels[step.label] = n
		end


		nframes = nframes + 1
		f.Steps.frame[n] = f.Steps.frame[n] or CreateFrame("Frame","$parent_frame_"..n,f.Steps, BackdropTemplate)
		local frame = f.Steps.frame[n]
		frame:Show()
		frame.step = step
		frame:SetAlpha(0.66)
		frame:ClearAllPoints()
		local anchor
		if n == 1 then
			anchor = f.Steps
			frame:SetPoint("TOPLEFT",anchor,"TOPLEFT",2,-3)
			frame:SetPoint("TOPRIGHT",anchor,"TOPRIGHT",2,-3)
		else
			anchor = f.Steps.frame[n-1]
			frame:SetPoint("TOPLEFT",anchor,"BOTTOMLEFT",0,-3)
			frame:SetPoint("TOPRIGHT",anchor,"BOTTOMRIGHT",0,-3)
		end
		--frame:SetBackdrop(f.bottomBackdrop)
        frame:ClearBackdrop()
        frame:SetBackdrop(backdrop)
		frame:SetBackdropColor(unpack(RXP_.colors.bottomFrameBG))
		
		frame:SetScript("OnEnter",function(self)
			currentAlpha = self:GetAlpha()
			self:SetAlpha(1)
			self:SetBackdropColor(unpack(RXP_.colors.bottomFrameHighlight))
		end)
		frame:SetScript("OnLeave",function(self)
			self:SetBackdropColor(unpack(RXP_.colors.bottomFrameBG))
			self:SetAlpha(currentAlpha)
		end)
        frame.timer = 0
        frame.index = n
        frame.guide = guide
		frame:SetScript("OnMouseDown",function(self,button)
            if button == "RightButton" or GetTime() - self.timer <= 0.5 then
                self.timer = 0
                local n = self.index
                local menuList = {
                    {notCheckable = 1, text = "Go to step "..n,func = RXP_.SetStep, arg1 = n},
                    {notCheckable = 1, text = "Select another guide",func = RXP_.DropDownMenu},
                    {text = "Reload Guide", notCheckable = 1, func = RXP_.LoadGuide, arg1 = RXP_.currentGuide},
                    {text = "Options...",notCheckable = 1,func = SlashCmdList.RXPG},
                    {text = "Close",notCheckable = 1,func = function(self) self:Hide() end},
                }
                EasyMenu(menuList, RXP_.MenuFrame, "cursor", 0 , 0, "MENU");
            else
                self.timer = GetTime()
            end
		end)
		
		
		if not frame.text then
			frame.text = frame:CreateFontString(nil,"OVERLAY") 
		end
		
		if not frame.number then
			frame.number = CreateFrame("Frame","$parent_number",frame, BackdropTemplate)
			--frame.number:SetBackdrop(backdrop)
			--frame.number:SetBackdropColor(20/255,25/255,67/255)
			frame.number:SetPoint("BOTTOMRIGHT",frame)
			frame.number.text = frame.number:CreateFontString(nil,"OVERLAY")
			frame.number.text:SetFontObject(GameFontNormalSmall)
			frame.number.text:ClearAllPoints()
			frame.number.text:SetPoint("CENTER",frame.number,0,0)
			frame.number.text:SetJustifyH("CENTER")
			frame.number.text:SetJustifyV("CENTER")
			frame.number.text:SetTextColor(1,1,1,1)
			frame.number.text:SetFont(RXP_.font, 8)
			local prefix = ""
			if n < 10 then prefix = "0" end
			frame.number.text:SetText(prefix..tostring(n))
			frame.number:SetSize(frame.number.text:GetStringWidth()+2,10)
		end
		
		frame.text:SetFontObject(GameFontNormalSmall)
		frame.text:ClearAllPoints()
		frame.text:SetPoint("TOPLEFT",frame,0,-5)
		frame.text:SetPoint("BOTTOMRIGHT",frame.number,"BOTTOMLEFT",0,0)
		frame.text:SetJustifyH("LEFT")
		frame.text:SetJustifyV("TOP")
		frame.text:SetTextColor(1,1,1,1)
		frame.text:SetFont(RXP_.font, 9)
		
		--frame.text:SetHeight(1000)
		
		--frame.text:SetText(text)
		
	
		frame:SetHeight(20)
		
	end
	if #f.Steps.frame > nframes then
		for i = nframes+1,#f.Steps.frame do
			f.Steps.frame[i]:Hide()
		end
	end
	f.Steps.f1 = f.Steps.f1 or CreateFrame("Frame",nil,f.Steps)
	f.Steps.f1:ClearAllPoints()
	f.Steps.f1:SetPoint("TOPLEFT",f.Steps.frame[1],0,10)
	f.Steps.f1:SetPoint("BOTTOMRIGHT",f.Steps.frame[nframes])
    f.Steps.f1:Hide()
	f.Steps:SetHeight(200)
	RXP_.UpdateBottomFrame()
	--RXP_.updateBottomFrame = true
	RXP_.SetStep(RXPCData.currentStep)
end

function RXP_.ReloadGuide()
    return RXP_:LoadGuide(RXP_.GetGuideTable(RXPCData.currentGuideGroup,RXPCData.currentGuideName))
end

function RXP_.UpdateBottomFrame(self,inc,stepn,updateText)
	--print(type(stepn),stepn)
	if RXP_.stepPos[0] and ((not self and stepn) or (self and self.step)) then
		local stepNumber = stepn or self.step.index
		local frame = f.Steps.frame[stepNumber]
		if not frame then return end
		local step = frame.step
		local fheight
        local hideStep = step.level > level or step.hideStep
        
		local text
		for i,element in ipairs(frame.step.elements) do
			if element.requestFromServer then
				if not element.element then
                    element.element = element
                end
				RXPG[RXP_.currentGuide.group][element.tag](element)
				if element.requestFromServer then
					RXP_.updateStepText = true
					RXP_.stepUpdateList[element.step.index] = true
				end
			end
			local rawtext = element.tooltipText or element.text
			if hideStep then
                text = ""
            elseif rawtext and not element.hideTooltip then
				if not text then
					text = "   "..rawtext
				else
					text = text.."\n   "..rawtext
				end
			end
		end
		
        frame.text:SetText(text)
        
        if hideStep then
            fheight = 1
            frame:SetAlpha(0)
        else
            fheight = math.ceil(frame.text:GetStringHeight() + 8)
            frame:SetAlpha(1)
        end
		
		local hDiff = fheight - frame:GetHeight()
		frame:SetHeight(fheight)
		
		for n = stepNumber+1, #RXP_.stepPos do
			RXP_.stepPos[n] = RXP_.stepPos[n]+hDiff
		end
		RXP_.stepPos[0] = RXP_.stepPos[0]+hDiff
		
	else
		RXP_.updateBottomFrame = false
		local totalHeight = 0
		for n,frame in ipairs(f.Steps.frame) do
			if not frame:IsShown() then break end
			local text
			local step = frame.step
            local hideStep = step.level > level
			local fheight
			for i,element in ipairs(frame.step.elements) do
				if not self then
					local stepDiff = element.step.index-RXPCData.currentStep
					element.element = element
					if element.requestFromServer then
						RXPG[RXP_.currentGuide.group][element.tag](element)
						RXP_.updateStepText = RXP_.updateStepText or not element.requestFromServer
                        RXP_.stepUpdateList[element.step.index] = not element.requestFromServer
					elseif element.tag and (stepDiff <= 8 and stepDiff >= 0) then
						RXPG[RXP_.currentGuide.group][element.tag](element)
					end
				end
				local rawtext = element.tooltipText or element.text
				if hideStep then
                    text = ""
                elseif rawtext and not element.hideTooltip and rawtext ~= "" then
					if not text then
						text = "   "..rawtext
					else
						text = text.."\n   "..rawtext
					end
				end
			end
            
            if step.completed or (not step.sticky and RXPCData.currentStep > step.index) or RXPCData.stepSkip[step.index] then
                frame:SetAlpha(0.5)
            else
                frame:SetAlpha(1)
            end
            if hideStep then
                frame.text:SetText(text)
                fheight = 1
                frame:SetAlpha(0)
            else
                frame.text:SetText(text)
                fheight = math.ceil(frame.text:GetStringHeight() + 8)
            end
            
			frame:SetHeight(fheight)
			totalHeight = totalHeight + fheight+2
			RXP_.stepPos[n] = totalHeight-5
		end
		RXP_.stepPos[0] = totalHeight
		--print(f.Steps.frame[#f.Steps.frame]:GetBottom(),totalHeight)
	end
	if RXP_.currentGuide then
		f.Steps:SetHeight(f.Steps.f1:GetHeight())
	end
	local w = f:GetWidth()-35
	f.Steps:SetWidth(w)
	if f.BottomFrame:GetHeight() < 35 then
		f.BottomFrame:Hide()
	else
		f.BottomFrame:Show()
	end
    
end



local function IsGuideActive(guide)
    local som = RXPCData and RXPCData.SoM
    if guide.era and som or guide.som and not som or (RXPCData.phase > 2 and som and guide["era/som"]) then
        --print('-',guide.name,not guide.som,not guide.era,som)
        return false
    end
    return true
end

function RXP_.GenerateMenuTable()
	RXP_.menuList = {
		{
			text = "Available Guides",
			isTitle = 1,
			notCheckable = 1,
		},
	}

    local groupList = {}
    local unusedGuides = {}
    for group in pairs(RXP_.guideList) do
        if group:sub(1,1) ~= "*" then
            table.insert(groupList,group)
        else
            table.insert(unusedGuides,group)
        end
    end
    table.sort(groupList)
    table.sort(unusedGuides)
   

	local menuIndex = 1
    
    local function createMenu(group)
        local t = RXP_.guideList[group]
        menuIndex = menuIndex+1
        
        if not t.sorted_ then
            t.sorted_ = true
            table.sort(t.names_)
        end
        local item = { text = group, notCheckable = 1, hasArrow = true, menuList = {}}
        local submenuIndex = 0
        for j,guideName in ipairs(t.names_) do
            local guide = RXP_.GetGuideTable(group,guideName)
            if IsGuideActive(guide) then
                submenuIndex = submenuIndex +1
                guide.menuIndex = menuIndex
                guide.submenuIndex = submenuIndex
                local subitem = {}
                subitem.text = RXP_.GetGuideName(guide)
                subitem.func = RXP_.LoadGuide
                subitem.arg1 = guide
                subitem.notCheckable = 1
                table.insert(item.menuList,subitem)
            end
        end
        
        table.insert(RXP_.menuList,item)
    end
    
	for _,group in ipairs(groupList) do
        createMenu(group)
	end
    
    if not (RXPData and RXPData.hideUnusedGuides) and #unusedGuides > 0 then
        table.insert(RXP_.menuList,{text = "Unused Guides",notCheckable = 1,isTitle = 1})
        for _,group in ipairs(unusedGuides) do
            createMenu(group)
        end
    end
    
    table.insert(RXP_.menuList,{text = "",notCheckable = 1,isTitle = 1})
--    table.insert(RXP_.menuList,{text = "Toggle Hardcore Mode",notCheckable = 1,func = RXP_.HardcoreToggle})
    if RXP_.version == "CLASSIC" then
        local hctext
        if RXPData and RXPCData.hardcore then
            hctext = "Deactivate Hardcore mode"
        else
            hctext = "Activate Hardcore mode"
        end
        table.insert(RXP_.menuList,{text = hctext,notCheckable = 1,func = RXP_.HardcoreToggle})
    end
    table.insert(RXP_.menuList,{text = "Options...",notCheckable = 1,func = SlashCmdList.RXPG})
    table.insert(RXP_.menuList,{text = "Close",notCheckable = 1,func = function(self) self:Hide() end})
end

local hardcoreButton
function RXP_.HardcoreToggle()
    if RXPData and RXP_.version == "CLASSIC" then
        RXPCData.hardcore = not RXPCData.hardcore
        RXP_.RenderFrame()
        if hardcoreButton then
            hardcoreButton:SetChecked(RXPCData.hardcore)
        end
    end
end

SLASH_RXPG1 = "/rxp"
SLASH_RXPG2 = "/rxpg"
SLASH_RXPG3 = "/rxpguides"
	
SlashCmdList["RXPG"] = function(msg)
	InterfaceOptionsFrame_OpenToCategory(RXPOptions)
    InterfaceOptionsFrame_OpenToCategory(RXPOptions)
end 


function RXP_.CreateOptionsPanel()
    local panel = CreateFrame("Frame","RXPOptions")
    panel.name = "RXP Guides"
    InterfaceOptions_AddCategory(panel)

    panel.title = panel:CreateFontString(nil, "ARTWORK", "GameFontNormalLarge")
    panel.title:SetPoint("TOPLEFT", 16, -16)
    panel.title:SetText("RestedXP Guides")
    
	
	panel.subtext = panel:CreateFontString(nil, "ARTWORK", "GameFontHighlightSmall")
	panel.subtext:SetPoint("TOPLEFT", panel.title, "BOTTOMLEFT", 0, -8)
	panel.subtext:SetText(versionText)
	
    panel.icon = panel:CreateTexture()
    panel.icon:SetTexture("Interface/AddOns/RXPGuides/Textures/rxp_logo-64")
    panel.icon:SetPoint("TOPRIGHT",-5,-5)
    --panel.icon:SetSize(64,64)
    
    
    local index = 0
    local options = {}
    local button = CreateFrame("CheckButton", "$parentQuestTurnIn", panel, "ChatConfigCheckButtonTemplate");
    table.insert(options,button)
    index = index + 1
    button:SetPoint("TOPLEFT",panel.title,"BOTTOMLEFT",0,-25)
    button:SetScript("PostClick",function(self) 
        RXPData.disableQuestAutomation = not self:GetChecked()
    end)
    button:SetChecked(not RXPData.disableQuestAutomation)
    button.Text:SetText("Quest auto accept/turn in")
    button.tooltip = "Holding the Control key modifier also toggles the quest the quest auto accept feature on and off"
    
    
    button = CreateFrame("CheckButton", "$parentTrainer", panel, "ChatConfigCheckButtonTemplate");
    table.insert(options,button)
    button:SetPoint("TOPLEFT",options[index],"BOTTOMLEFT",0,0)
    index = index + 1
    button:SetScript("PostClick",function(self) 
        RXPData.disableTrainerAutomation = not self:GetChecked()
    end)
    button:SetChecked(not RXPData.disableTrainerAutomation)
    button.Text:SetText("Trainer automation")
    button.tooltip = "Allows the guide to buy useful leveling spells automatically"
    
    
    
    button = CreateFrame("CheckButton", "$parentFP", panel, "ChatConfigCheckButtonTemplate");
    table.insert(options,button)
    button:SetPoint("TOPLEFT",options[index],"BOTTOMLEFT",0,0)
    index = index + 1
    button:SetScript("PostClick",function(self) 
        RXPData.disableFPAutomation = not self:GetChecked()
    end)
    button:SetChecked(not RXPData.disableFPAutomation)
    button.Text:SetText("Flight Path automation")
    button.tooltip = "Allows the guide to automatically fly you to your destination"  
    
    
    button = CreateFrame("CheckButton", "$parentArrow", panel, "ChatConfigCheckButtonTemplate");
    table.insert(options,button)
    button:SetPoint("TOPLEFT",options[index],"BOTTOMLEFT",0,0)
    index = index + 1
    button:SetScript("PostClick",function(self)
        local checkbox = self:GetChecked()
        RXP_.arrowFrame:SetShown(RXP_.currentGuide and checkbox)
        RXPData.disableArrow = not checkbox
    end)
    button:SetChecked(not RXPData.disableArrow)
    button.Text:SetText("Enable waypoint arrow")
    button.tooltip = "Show/Hide the waypoint arrow" 
    
    button = CreateFrame("CheckButton", "$parentMiniMapPin", panel, "ChatConfigCheckButtonTemplate");
    table.insert(options,button)
    button:SetPoint("TOPLEFT",options[index],"BOTTOMLEFT",0,0)
    index = index + 1
    button:SetScript("PostClick",function(self)
        RXPData.hideMiniMapPins = self:GetChecked()
        RXP_.UpdateMap()
    end)
    button:SetChecked(RXPData.hideMiniMapPins)
    button.Text:SetText("Hide Mini Map Pins")
    --button.tooltip = "" 


    button = CreateFrame("CheckButton", "$parentUnusedGuides", panel, "ChatConfigCheckButtonTemplate");
    table.insert(options,button)
    button:SetPoint("TOPLEFT",options[index],"BOTTOMLEFT",0,0)
    index = index + 1
    button:SetScript("PostClick",function(self)
        RXPData.hideUnusedGuides = not self:GetChecked()
        RXP_.GenerateMenuTable()
    end)
    button:SetChecked(not RXPData.hideUnusedGuides)
    button.Text:SetText("Show unused guides")
    button.tooltip = "Displays guides that are not applicable for your class/race such as starting zones for other races" 
    

    button = CreateFrame("CheckButton", "$parentAutoLoad", panel, "ChatConfigCheckButtonTemplate");
    table.insert(options,button)
    button:SetPoint("TOPLEFT",options[index],"BOTTOMLEFT",0,0)
    index = index + 1
    button:SetScript("PostClick",function(self) 
        RXPData.autoLoadGuides = self:GetChecked()
    end)
    button:SetChecked(RXPData.autoLoadGuides)
    button.Text:SetText("Auto load starting zone guides")
    button.tooltip = "Automatically picks a suitable guide whenever you log in for the first time on a character" 
    --
    button = CreateFrame("CheckButton", "$parentHideWindow", panel, "ChatConfigCheckButtonTemplate");
    table.insert(options,button)
    button:SetPoint("TOPLEFT",options[index],"BOTTOMLEFT",0,0)
    index = index + 1
    button:SetScript("PostClick",function(self) 
        local hide = self:GetChecked()
        RXPCData.hideWindow = hide
        f:SetShown(not hide)
    end)
    button:SetChecked(RXPCData.hideWindow)
    button.Text:SetText("Hide Window")
    button.tooltip = "Hides the main window" 
    
    
    
    button = CreateFrame("CheckButton", "$parentLock", panel, "ChatConfigCheckButtonTemplate");
    table.insert(options,button)
    button:SetPoint("TOPLEFT",options[index],"BOTTOMLEFT",0,0)
    index = index + 1
    button:SetScript("PostClick",function(self) 
        RXPData.lockFrames = self:GetChecked()
    end)
    button:SetChecked(RXPData.lockFrames)
    button.Text:SetText("Lock Frames")
    button.tooltip = "Disable dragging/resizing, use alt+left click on the main window to resize it" 
   --
    button = CreateFrame("CheckButton", "$parentShowUpcoming", panel, "ChatConfigCheckButtonTemplate");
    table.insert(options,button)
    button:SetPoint("TOPLEFT",options[index],"BOTTOMLEFT",0,0)
    index = index + 1
    button:SetScript("PostClick",function(self) 
        local show = self:GetChecked()
        if show then
            f:SetHeight(RXP_.height)
        else
            f:SetHeight(10)
        end
        RXP_.updateBottomFrame = true
    end)
    button:SetChecked(f.BottomFrame:GetHeight() >= 35)
    button.Text:SetText("Show step list")
    button.tooltip = "Show/Hide the bottom frame listing all the steps of the current guide" 
  --
    button = CreateFrame("CheckButton", "$parentHideCompleted", panel, "ChatConfigCheckButtonTemplate");
    table.insert(options,button)
    button:SetPoint("TOPLEFT",options[index],"BOTTOMLEFT",0,0)
    index = index + 1
    button:SetScript("PostClick",function(self)
        RXPData.hideCompletedSteps = self:GetChecked()
        f.SF.ScrollBar:SetValue(0)
    end)
    button:SetChecked(RXPData.hideCompletedSteps)
    button.Text:SetText("Hide completed steps")
    button.tooltip = "Only shows current and future steps on the step list window" 
  --
    button = CreateFrame("CheckButton", "$parentMapCircle", panel, "ChatConfigCheckButtonTemplate");
    table.insert(options,button)
    button:SetPoint("TOPLEFT",options[index],"BOTTOMLEFT",0,0)
    index = index + 1
    button:SetScript("PostClick",function(self)
        RXPData.mapCircle = self:GetChecked()
        RXP_.updateMap = true
    end)
    button:SetChecked(RXPData.mapCircle)
    button.Text:SetText("Highlight active map pins")
    button.tooltip = "Show a targeting circle around active map pins"  
  --
    if QuestieLoader then
        button = CreateFrame("CheckButton", "$parentSkipPreReqs", panel, "ChatConfigCheckButtonTemplate");
        table.insert(options,button)
        button:SetPoint("TOPLEFT",options[index],"BOTTOMLEFT",0,0)
        index = index + 1
        button:SetScript("PostClick",function(self) 
            RXPData.skipMissingPreReqs = self:GetChecked()
        end)
        button:SetChecked(RXPData.skipMissingPreReqs)
        button.Text:SetText("Skip quests with missing pre-requisites")
        button.tooltip = "Automatically skip tasks in which you don't have the required quest pre-requisites\n(Requires Questie)"
    end
   --
    if unitscan_targets then
        button = CreateFrame("CheckButton", "$parentUnitscan", panel, "ChatConfigCheckButtonTemplate");
        table.insert(options,button)
        button:SetPoint("TOPLEFT",options[index],"BOTTOMLEFT",0,0)
        index = index + 1
        button:SetScript("PostClick",function(self)
            RXPData.disableUnitscan = not self:GetChecked()
        end)
        button:SetChecked(not RXPData.disableUnitscan)
        button.Text:SetText("Unitscan integration")
        button.tooltip = "Automatically adds important npcs to your unitscan list"   
    end
   
    if RXP_.version == "CLASSIC" then
        button = CreateFrame("CheckButton", "$parentHC", panel, "ChatConfigCheckButtonTemplate");
        hardcoreButton = button
        table.insert(options,button)
        button:SetPoint("TOPLEFT",options[index],"BOTTOMLEFT",0,0)
        index = index + 1
        button:SetScript("PostClick",function(self)
            RXPCData.hardcore = self:GetChecked()
            RXP_.RenderFrame()
        end)
        button:SetChecked(RXPCData.hardcore)
        button.Text:SetText("Hardcore mode")
        button.tooltip = "Adjust the leveling routes to the deathless ruleset"
        
        button = CreateFrame("CheckButton", "$parentSoM", panel, "ChatConfigCheckButtonTemplate");
        table.insert(options,button)
        button:SetPoint("TOPLEFT",options[index],"BOTTOMLEFT",0,0)
        index = index + 1
        button:SetScript("PostClick",function(self)
            RXPCData.SoM = self:GetChecked()
            RXP_.GenerateMenuTable()
            RXP_.ReloadGuide()
        end)
        button:SetChecked(RXPCData.SoM)
        button.Text:SetText("Season of Mastery")
        button.tooltip = "Adjust the leveling routes to the Season of Mastery changes (+40% quest xp)"
        
    end

    local SliderUpdate = function(self, value)
        self.ref[self.key] = value
        self.Text:SetText(format(self.defaultText,value))
        RXPFrame:SetScale(RXPData.windowSize)
        local size = RXPData.arrowSize
        RXP_.arrowFrame:SetSize(32*size,32*size)
        RXP_.arrowFrame.text:SetFont(RXP_.font, RXPData.arrowText)
        RXPData.numMapPins = math.floor(RXPData.numMapPins)
        RXP_.updateMap = true
		if self.key == "phase" and RXP_.currentGuide then
            RXP_.ReloadGuide()
		end
        SetStepFrameAnchor()
    end
    
    local CreateSlider = function(ref,key,smin,smax,text,tooltip,anchor,x,y,steps,minText,maxText)
        local slider,dvalue
        
        slider = CreateFrame("Slider", "$parentArrowSlider", panel, "OptionsSliderTemplate")
        slider:SetPoint("TOPLEFT", anchor, "BOTTOMLEFT", x, y)
        slider:SetOrientation('HORIZONTAL')
        if steps then
            slider:SetValueStep(steps)
            slider:SetStepsPerPage(steps)
            slider:SetObeyStepOnDrag(true)
        end
        slider:SetThumbTexture("Interface/Buttons/UI-SliderBar-Button-Horizontal")
        slider.ref = ref
        slider.key = key
        dvalue = ref[key] or smin
        
        slider.defaultText = text
        slider.tooltipText = tooltip
        slider:SetScript("OnValueChanged", SliderUpdate)
        
        slider:SetMinMaxValues(smin,smax)
        SliderUpdate(slider,dvalue)
        slider:SetValue(dvalue)
        
        slider.Low:SetText(minText or tostring(smin));
        slider.High:SetText(maxText or tostring(smax));
        return slider
    end
    local slider
    slider = CreateSlider(RXPData,"arrowSize",0.2,2,"Arrow Scale: %.2f","Scale of the Waypoint Arrow",panel.title,315,-25,0.05)
    slider = CreateSlider(RXPData,"arrowText",5,20,"Arrow Text Size: %d","Size of the waypoint arrow text",slider,0,-25,1)
    slider = CreateSlider(RXPData,"windowSize",0.2,2,"Window Scale: %.2f","Scale of the Main Window, use alt+left click on the main window to resize it",slider,0,-25,0.05)
    slider = CreateSlider(RXPData,"numMapPins",1,20,"Number of Map Pins: %d","Number of map pins shown on the world map",slider,0,-25,1,"1","20")
    slider = CreateSlider(RXPData,"worldMapPinScale",0.05,1,"Map Pin Scale: %.2f","Adjusts the size of the world map pins",slider,0,-25, 0.05, "0.05", "1")
    slider = CreateSlider(RXPData,"distanceBetweenPins",0.05,2,"Distance Between Pins: %.2f","If two or more steps are very close together, this addon will group them into a single pin on the map. Adjust this range to determine how close together two steps must be to form a group.",slider,0,-25, 0.05, "0.05", "2")
    slider = CreateSlider(RXPData,"worldMapPinBackgroundOpacity",0, 1,"Map Pin Background Opacity: %.2f","The opacity of the black circles on the map and mini map",slider,0,-25, 0.05, "0", "1")
    slider = CreateSlider(RXPData,"anchorOrientation",-1,1,"Current step frame anchor","Sets the current step frame to grow from bottom to top or top to bottom by default",slider,0,-25,2,"Bottom","Top")
    
    slider = CreateSlider(RXPData,"batchSize",1,100,"Batching window size: %d ms","Adjusts the batching window tolerance, used for hearthstone batching",slider,0,-25, 1, "1", "100")
    
    if RXP_.version == "CLASSIC" then
        slider = CreateSlider(RXPCData,"phase",1, 6,"Content phase: %d","Adjusts the guide routes to match the content phase\nPhase 2: Dire Maul quests\nPhase 3: Thorium Brotherhood quests (BWL)\nPhase 4: ZG/Silithus quests\nPhase 5: AQ quests\nPhase 6: Eastern Plaguelands quests",slider,0,-25, 1, "1", "6")
    end
end

function RXP_.UpdateQuestButton(index)
    local button = RXP_.questLogButton
    local anchor = QuestLogExDetailScrollChildFrame or QuestLogDetailScrollChildFrame
    if not anchor or anchor:IsForbidden() then return end
    if not button then
        button = CreateFrame("Button", "$parentRXP", anchor)
        button:SetWidth(32)
        button:SetHeight(32)
        button:SetPoint("TOPRIGHT",anchor,"TOPRIGHT",0,0)
        button:SetNormalTexture("Interface/AddOns/RXPGuides/Textures/rxp_logo-64")
        RXP_.questLogButton = button
        
        local function tpOnEnter(self)
            if self:IsForbidden() or GameTooltip:IsForbidden() then return end
            GameTooltip:SetOwner(self, "ANCHOR_BOTTOM",0,-10)
            GameTooltip:ClearLines()
            GameTooltip:AddLine(self.tooltip)
            GameTooltip:Show()
        end
        local function tpOnLeave(self)
            if self:IsForbidden() or GameTooltip:IsForbidden() then return end
            GameTooltip:Hide()
        end
        button:SetScript("OnEnter",tpOnEnter)
        button:SetScript("OnLeave",tpOnLeave)
        
    end
    local questLogTitleText, level, questTag, isHeader, isCollapsed, isComplete, frequency, questID = GetQuestLogTitle(index);
    local showButton
    local function GetGuideList(list)
        if RXPData and RXPCData.hardcore then
            list = list:gsub("\n#.*","")
        else
            list = list:gsub("\n!.*","")
        end
        if RXPCData and RXPCData.SoM then
            list = list:gsub("\n[!#]?%-.*","")
        else
            list = list:gsub("\n[!#]?%+.*","")
        end
        
        list = list:gsub("(\n?)([#!%-%+]*)%[?(%S*)%]? (.*)",function(newline,prefix,phase,suffix)
            if phase ~= "" and not RXP_.PhaseCheck(phase) then
                return ""
            end
            return newline..suffix
        end)
        list = list:gsub("\n\n","\n")
        return list
    end
    
    if questID then
        local tooltip = ""
        local separator = ""
        if RXP_.pickUpList[questID] then
            local pickUpList = GetGuideList(RXP_.pickUpList[questID])
            if pickUpList ~= "" then
                tooltip = format("%s%s%sQuest is being picked up at:|r%s",tooltip,RXP_.icons.accept,RXP_.colors.tooltip,pickUpList)
                showButton = true
                separator = "\n\n"
            end
        end
        if RXP_.turnInList[questID] then
            local turnInList = GetGuideList(RXP_.turnInList[questID])
            if turnInList ~= "" then
                tooltip = format("%s%s%s%sQuest is being turned in at:|r%s",tooltip,separator,RXP_.icons.turnin,RXP_.colors.tooltip,turnInList)
                showButton = true
            end
        end
        button.tooltip = tooltip
    end
    
    if showButton then
        button:Show()
    else
        button:Hide()
    end
end

hooksecurefunc("QuestLog_SetSelection",RXP_.UpdateQuestButton)

local HSframe = CreateFrame("Frame");
local currentFPS = GetCVar("maxfps")
local HSstart = 0
local batchingWindow = 0.005

local function SwitchBindLocation()
	if GetTime() - HSstart > 10 - batchingWindow then
		ConfirmBinder()
		HSframe:SetScript("OnUpdate",nil)
		SetCVar("maxfps",currentFPS)
		HSstart = 0
	end
end

local function StartHSTimer()
	if HSstart == 0 then
        batchingWindow = RXPData.batchSize / 1e3
		currentFPS = GetCVar("maxfps")
		SetCVar("maxfps",0)
		HSstart = GetTime()
		HSframe:SetScript("OnUpdate",SwitchBindLocation)
	end
end

hooksecurefunc("UseContainerItem",function(...)
	if GetContainerItemID(...) == 6948 then
		StartHSTimer()
	end
end)

hooksecurefunc("UseAction",function(...)
	local event,id = GetActionInfo(...)
	if event == "item" and id == 6948 or event == "macro" and IsCurrentSpell(8690) then
		StartHSTimer()
	end
end)

RXP_.QL = {}
function RXP_.GetQuestLog()
    local guide = RXP_.currentGuide
    local name = RXPCData.currentGuideName
    local group = RXPGuides[RXPCData.currentGuideGroup]
    local QL = RXP_.QL
    local qError
	local eStep
    RXP_.next = group.next

    if (RXPCData.SoM and guide.era or not RXPCData.SoM and guide.som or RXPCData.SoM and RXPCData.phase > 2 and guide["era/som"]) or not guide then
        return
    end
    for ns,step in ipairs(guide.steps) do
        for en,element in pairs(step.elements) do
            if element.tag == "accept" then
                QL[element.questId] = element.text or tostring(element.questId)
            elseif element.tag == "turnin" or element.tag == "abandon" then
                QL[element.questId] = nil
            end
        end
        local nQuests = 0
        for n in pairs(QL) do
            nQuests = nQuests + 1
        end
        if nQuests > 20 then
            qError = true
			eStep = step
            break
        end
    end
    local n = 0
    print("\n\nGuide: "..name)
    for i,v in pairs(QL) do
        print(format("%s (%d)",v:gsub("^Accept ",""),i))
        n = n+1
    end
    print("QuestLog length: "..n)   
    
    if qError then
        print(format("Error at step %d: Quest log length greater than 20",eStep.index))
    else
        if group.next() then
            return RXP_.GetQuestLog()
		else
			print(format("Error at step %d",eStep.index))
        end
    end

end
