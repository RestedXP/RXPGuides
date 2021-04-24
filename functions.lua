RXP_.functions = {}
RXP_.functions.__index = RXP_.functions
RXP_.functions.events = {}
RXP_.stepUpdateList = {}

RXP_.functions.events.collect = {"BAG_UPDATE"}
RXP_.functions.events.accept = {"QUEST_ACCEPTED"}
RXP_.functions.events.turnin = {"QUEST_TURNED_IN"}
RXP_.functions.events.complete = {"QUEST_LOG_UPDATE"}
RXP_.functions.events.collect = {"BAG_UPDATE"}
RXP_.functions.events.fp = {"UI_INFO_MESSAGE"}
RXP_.functions.events.hs = {"UNIT_SPELLCAST_SUCCEEDED"}
RXP_.functions.events.home = {"HEARTHSTONE_BOUND"}
RXP_.functions.events.fly = {"PLAYER_CONTROL_LOST","TAXIMAP_OPENED"}
RXP_.functions.events.deathskip = {"CONFIRM_XP_LOSS"}
RXP_.functions.events.xp = {"PLAYER_XP_UPDATE","PLAYER_LEVEL_UP"}
RXP_.functions.events.vendor = {"MERCHANT_SHOW","MERCHANT_CLOSED"}
RXP_.functions.events.trainer = {"TRAINER_SHOW","TRAINER_CLOSED"}
RXP_.functions.events.stable = {"PET_STABLE_SHOW","PET_STABLE_CLOSED"}
RXP_.functions.events.tame = {"UNIT_SPELLCAST_SUCCEEDED","UNIT_SPELLCAST_START"}
RXP_.functions.events.money = {"PLAYER_MONEY"}
RXP_.functions.events.train = {"LEARNED_SPELL_IN_TAB","TRAINER_UPDATE"}
RXP_.functions.events.istrained = {"LEARNED_SPELL_IN_TAB","TRAINER_UPDATE"}
RXP_.functions.events.abandon = {"QUEST_LOG_UPDATE"}


local IsQuestCompleted = IsQuestFlaggedCompleted

if not IsQuestCompleted then
	IsQuestCompleted = C_QuestLog.IsQuestFlaggedCompleted
	if not IsQuestCompleted then
		IsQuestCompleted = function(id)
			return GetQuestsCompleted()[id]
		end
	end
end

local function ObjectivesComplete(id)
	for i = 1,GetNumQuestLogEntries() do
		local questLogTitleText, level, questTag, isHeader, isCollapsed, isComplete, frequency, questID = GetQuestLogTitle(i);
		if questID == id then
			if isComplete then
				return true
			else
				return false
			end
		end
	end
end

local timer = GetTime()
local nrequests = 0
function RXP_.GetQuestName(id,ref)
	local ctime = GetTime()
	if ctime - timer > 0.66 then
		timer = ctime
		nrequests = 0
	end
	nrequests = nrequests + 1
	local quest
	if nrequests < 4 or HaveQuestData(id) then
		quest = C_QuestLog.GetQuestInfo(id)
		if not quest then
			RXP_.questQueryList[id] = true
		end
	elseif ref then
		RXP_.UpdateStepText(ref)
	end
	return quest
end

function RXP_.GetQuestObjectives(id,ref)
	local ctime = GetTime()
	if ctime - timer > 0.66 then
		timer = ctime
		nrequests = 0
	end
	nrequests = nrequests + 1
	if nrequests < 4 or HaveQuestData(id) then
		return C_QuestLog.GetQuestObjectives(id)	
	elseif ref then
		RXP_.UpdateStepText(ref)
	end
end

function RXP_.GetItemName(id)
	local name = GetItemInfo(id)
	if not name then
		RXP_.itemQueryList[id] = true
	end
	return name
end


function RXP_.SetElementComplete(self,disable)
	if not self.element.completed then
		self.element.completed = true
		RXP_.updateSteps = true
		RXP_.updateMap = true
	end
	if self.button then
		--print('----ok',disable)
		self.button:SetChecked(true)
		if disable then
			self.button:Disable()
		end
	end
end

function RXP_.SetElementIncomplete(self)
	if self.element.completed then
		self.element.completed = false
		RXP_.updateMap = true
	end
	if self.button then
		self.button:Enable()
		if not self.element.skip then
			self.button:SetChecked(false)
		end
	end
end

function RXP_.UpdateStepText(self)
	RXP_.updateStepText = true
	RXP_.stepUpdateList[self.step.index] = self
end

function RXP_.AldorScryerCheck(step)
	if step.aldor then
		name, description, standingID = GetFactionInfoByID(932)
		return (standingID and standingID >= 5),"Aldor"
	elseif step.scryer then
		name, description, standingID = GetFactionInfoByID(934)
		return standingID and standingID >= 5,"Scryers"
	end
	return true
end

function RXP_.GetNpcId(unit)
	if not unit then
		unit = "target"
	end
	local _, _, _, _, _, npcId = strsplit('-', UnitGUID(unit) or '')
	return tonumber(npcId)
end


local HBD = LibStub("HereBeDragons-2.0")
local HBDPins = LibStub("HereBeDragons-Pins-2.0")


function RXP_.functions.accept(self,...)
	if type(self) == "number" then --on parse
		local element = {}
		element.tag = "accept"
		local text,id = ...
		id = tonumber(id)
		if not id then return error("Error parsing guide "..RXP_.currentGuideName.." at line "..tostring(self)..":\nInvalid quest ID") end
		element.title = ""
		element.questId = id
		--element.title = RXP_.GetQuestName(id)
		if text and text ~= "" then
			element.text = text
		else		
			element.text = "Accept *quest*"
			element.requestFromServer = true
		end
		--print("Q1",element.text)
		element.tooltipText = RXP_.icons.accept..element.text
		--print(element.rawtext)
		return element
	else
		local event,_,questId = ...
		local id = self.element.questId
		local quest = RXP_.GetQuestName(id,self)
		if quest then
			self.element.title = quest
			RXP_.questAccept[quest] = RXP_.questAccept[quest] or self.element.step
			self.element.text = self.element.text:gsub("%*quest%*",quest)
			if self.element.requestFromServer then
				self.element.requestFromServer = nil
				RXP_.UpdateStepText(self)
			end
		else
			self.element.title = ""
			self.element.requestFromServer = true
		end

		self.element.tooltipText = RXP_.icons.accept..self.element.text
		

		if IsQuestCompleted(id) or C_QuestLog.IsOnQuest(id) or (questId == id)  then
			RXP_.SetElementComplete(self,true)
		elseif self.element.completed then
			RXP_.SetElementIncomplete(self)
		end
		
	end
	
end

function RXP_.functions.turnin(self,...)
	 
	if type(self) == "number" then --on parse
		local element = {}
		element.tag = "turnin"
		local text,id = ...
		id = tonumber(id)
		if not id then return error("Error parsing guide "..RXP_.currentGuideName.." at line "..tostring(self)..":\nInvalid quest ID") end
		
		element.questId = id
		element.title = ""
		--element.title = RXP_.GetQuestName(id)
		if text and text ~= "" then
			element.text = text
		else
			element.text = "Turn in *quest*"
			element.requestFromServer = true
		end
		element.tooltipText = RXP_.icons.turnin..element.text
		return element
	else
		local event,questId = ...
		local id = self.element.questId
		local quest = RXP_.GetQuestName(id,self)
		if quest then
			self.element.title = quest
			RXP_.questTurnIn[quest] = RXP_.questTurnIn[quest] or self.element.step
			self.element.text = self.element.text:gsub("%*quest%*",quest)
			if self.element.requestFromServer then
				self.element.requestFromServer = nil
				RXP_.UpdateStepText(self)
			end
		else
			self.element.title = ""
			self.element.requestFromServer = true
		end
		self.element.tooltipText = RXP_.icons.turnin..self.element.text
		RXP_.UpdateStepText(self)
		
		local isComplete = IsQuestCompleted(id)
		if isComplete then
			RXP_.SetElementComplete(self,true)
		elseif questId == id then --repeatable quests
			RXP_.SetElementComplete(self)
		end
	end

end

function RXP_.functions.complete(self,...)
	if type(self) == "number" then --on parse
		local element = {}
		element.tag = "complete"
		local text,id,obj = ...
		id = tonumber(id)
		if not id then return error("Error parsing guide "..RXP_.currentGuideName.." at line "..tostring(self)..":\nInvalid quest ID") end
		
		element.obj = tonumber(obj)

		--element.title = RXP_.GetQuestName(id)
		--local objectives = RXP_.GetQuestObjectives(id)--queries the server for items/creature names associated with the quest
		element.questId = id
		if text and text ~= "" then
			--element.rawtext = text:gsub("%*quest%*",element.title)
			element.text = element.rawtext
			element.tooltipText = RXP_.icons.complete..element.text
		else
			element.text = ""
			element.requestFromServer = true
		end
		
		return element
	else

		local icon = RXP_.icons.complete
		local id = self.element.questId
		local objectives = RXP_.GetQuestObjectives(id,self)
		

		--print(text)
		local objtext
		local isQuestComplete = IsQuestCompleted(id) or ObjectivesComplete(id)
		local skip

		
		local completed
		if objectives and #objectives > 0 then
			if self.element.obj and self.element.obj <= #objectives then
				local obj = objectives[self.element.obj]
				local t = obj.text
				if obj.type == "event" then 
					if isQuestComplete then
						t = string.format(t..": %d/%d",obj.numRequired,obj.numRequired)
					else
						t = string.format(t..": %d/%d",obj.numFulfilled,obj.numRequired)
					end
				elseif isQuestComplete then
					t = t:gsub(": %d+/(%d+)",": %1/%1")
				end
				completed = obj.finished
				objtext = t
			else
				completed = true
				for i,obj in pairs(objectives) do
					local t = obj.text
					completed = completed and obj.finished
					if obj.type == "event" then 
						if isQuestComplete then
							t = string.format(t..": %d/%d",obj.numRequired,obj.numRequired)
						else
							t = string.format(t..": %d/%d",obj.numFulfilled,obj.numRequired)
						end
					elseif isQuestComplete then
						t = t:gsub(": %d+/(%d+)",": %1/%1")
					end
					if objtext then
						objtext = objtext.."\n"..t
					else
						objtext = t
					end
				end
			end
		else
			self.element.text = "Error: invalid quest ID"
			self.element.tooltipText = nil
			RXP_.UpdateStepText(self)
			return
		end
		
		
		local quest = RXP_.GetQuestName(id,self)
		if quest then
			self.element.title = quest
		else
			self.element.title = ""
		end
		local prefix = objtext:sub(1,1)
		if not quest or prefix == " " or prefix == ":" then
			--print('ding')
			self.element.requestFromServer = true
		elseif quest then
			self.element.requestFromServer = nil
		end
		
		if self.element.rawtext then
			self.element.rawtext = self.element.text:gsub("%*quest%*",self.element.title)
		end
		local text = self.element.rawtext
		
		completed = completed or isQuestComplete

		if text then
			text = text.."\n\n"..objtext
			self.element.tooltipText = icon..text:gsub("\n","\n   ")
		else
			self.element.tooltipText = icon..objtext:gsub("\n","\n   "..icon)
			text = objtext
		end
		--print(text)
		self.element.text = text
		
		RXP_.UpdateStepText(self)

		if completed then	
			RXP_.SetElementComplete(self,true)
		else
			RXP_.SetElementIncomplete(self)
		end
	end
	
end

local lastZone
function RXP_.functions.goto(self,...)
	if type(self) == "number" then --on parse
		local element = {}
		element.tag = "goto"
		local text,zone,x,y,radius = ...
		if zone then
			lastZone = zone
		else
			zone = lastZone
		end
		element.x = tonumber(x)
		element.y = tonumber(y)
		if not (element.x and element.y and zone and RXP_.mapId[zone]) then
			error("Error parsing guide "..RXP_.currentGuideName.." at line "..tostring(self)..": Invalid coordinates or map name")
		end
		element.zone = RXP_.mapId[zone]
		element.radius = tonumber(radius)
		radius = element.radius
		element.wx,element.wy,element.instance = HBD:GetWorldCoordinatesFromZone(element.x/100, element.y/100, element.zone)
		element.arrow = true
		element.parent = true
		

		element.text = text
		element.textOnly = true
		
		if radius then
			if radius > 0 then
				if not text or text == "" then
					element.text = string.format("Go to %.2f,%.2f (%s)",element.x,element.y,zone)
				end
				element.parent = nil
				element.textOnly = nil
				element.tooltipText = RXP_.icons.goto..element.text
			elseif radius <= 0 then
				element.arrow = nil
			end
		end
		return element
	end
end


function RXP_.functions.hs(self,...)
	if type(self) == "number" then --on parse
		local element = {}
		element.tag = "hs"
		local text,location = ...
		if text and text ~= "" then
			element.text = text
		else
			element.textOnly = true
			element.text = "Set your Hearthstone to "..location
		end
		element.tooltipText = RXP_.icons.hs..element.text
		return element
	end
	local event,unit,_,id = ...
	if event == "UNIT_SPELLCAST_SUCCEEDED" and unit == "player" and id == 8690 then
		RXP_.SetElementComplete(self)
	end
end

function RXP_.functions.home(self,...)
	if type(self) == "number" then --on parse
		local element = {}
		local text,location = ...
		element.tag = "home"
		if text and text ~= "" then
			element.text = text
		else
			element.textOnly = true
			element.text = "Set your Hearthstone to "..location
		end
		element.tooltipText = RXP_.icons.home..element.text
		return element
	end
	local event = ...
	if event == "HEARTHSTONE_BOUND" then
		RXP_.SetElementComplete(self)
	end
end

function RXP_.functions.fp(self,...)
	if type(self) == "number" then --on parse
		local element = {}
		local text,location = ...
		element.tag = "fp"
		if text and text ~= "" then
			element.text = text
		else
			element.textOnly = true
			element.text = "Get the "..location.." flight path"
		end
		
		element.tooltipText = RXP_.icons.fp..element.text
		return element
	end
	local event,arg1,arg2 = ...
	if event == "UI_INFO_MESSAGE" and arg2 == ERR_NEWTAXIPATH then
		RXP_.SetElementComplete(self)
	end
end

RXP_.taxiTime = 0
hooksecurefunc("TakeTaxiNode", function(index)
    RXP_.taxiTime = GetTime()
end)

function RXP_.functions.fly(self,...)
	if type(self) == "number" then --on parse
		local element = {}
		local text,location = ...
		element.tag = "fly"
		if text and text ~= "" then
			element.text = text
		else
			element.textOnly = true
			element.text = "Fly to "..location
		end
		element.location = location
		element.tooltipText = RXP_.icons.fly..element.text
		return element
	end
	local event = ...
	if event == "PLAYER_CONTROL_LOST" and GetTime() - RXP_.taxiTime < 1.5 then
		RXP_.SetElementComplete(self)
	elseif event == "TAXIMAP_OPENED" and not RXPData.disableAutoFP and self.element.location then
		for i = 1,NumTaxiNodes() do
			local name = TaxiNodeName(i)
			if name and name:match(self.element.location) then
				return TakeTaxiNode(i)
			end
		end
	end
end


--

--"CONFIRM_XP_LOSS,PLAYER_UNGHOST"
function RXP_.functions.deathskip(self,...)
	if type(self) == "number" then --on parse
		local element = {}
		local text = ...
		element.tag = "deathskip"
		if text and text ~= "" then
			element.text = text
		else
			element.text = "Die and respawn at the graveyard"
		end
		element.tooltipText = RXP_.icons.deathskip..element.text
		return element
	end
	local event = ...
	if event == "CONFIRM_XP_LOSS" then
		RXP_.SetElementComplete(self)
	end
end

function RXP_.functions.collect(self,...)
	if type(self) == "number" then --on parse
		local element = {}
		element.tag = "collect"
		local text,id,qty = ...
		id = tonumber(id)
		if not id then
			error('Error parsing guide at line'..self..': No item ID provided')
		end
		
		element.id = id
		qty = tonumber(qty)
		element.qty = qty or 1
		element.itemName = RXP_.GetItemName(id)
		
		if text and text ~= "" then
			element.rawtext = text
			element.tooltipText = RXP_.icons.collect..element.rawtext
		else
			element.requestFromServer = true
			element.text = " "
		end
		return element
	end

	local name = RXP_.GetItemName(self.element.id)
	
	if name then
		self.element.requestFromServer = nil
	else
		name = ""
		self.element.requestFromServer = true
	end
	self.element.itemName = name
	
	local count = GetItemCount(self.element.id)
	if count > self.element.qty then
		count = self.element.qty
	end
	
	if self.element.rawtext then
		self.element.tooltipText = RXP_.icons.collect..self.element.rawtext
		self.element.text = string.format("%s\n%s: %d/%d",self.element.rawtext,self.element.itemName,count,self.element.qty)
	else
		self.element.text = string.format("%s: %d/%d",self.element.itemName,count,self.element.qty)
		self.element.tooltipText = RXP_.icons.collect..self.element.text
	end
	RXP_.UpdateStepText(self)
	
	if count >= self.element.qty then
		RXP_.SetElementComplete(self,true)
	else
		RXP_.SetElementIncomplete(self)
	end
end

function RXP_.functions.xp(self,...)
	if type(self) == "number" then --on parse
		local element = {}
		local text,str = ...
		
		str = str:gsub(" ","")
		local level,xp = str:match("(%d+)([%+%.%-]?%d*)")
		element.xp = tonumber(xp)
		element.level = tonumber(level)
		
		if text and text ~= "" then
			element.text = text
		else
			if element.xp and element.xp ~= 0 then
				if element.xp < 0 then
					element.text = string.format("Grind until you are %d xp away from level %s",-1*element.xp,level)
				elseif element.xp >= 1 then
					element.text = string.format("Grind until you are %s xp into level %s",xp,level)
				else
					element.text = string.format("Grind until you are %.0f% into level %s",element.xp*100,level)
				end
			else
				element.text = "Grind to level "..tostring(level)
			end
		end
		if not element.xp then element.xp = 0 end
		element.tooltipText = RXP_.icons.xp..element.text
		return element
	end
	local currentXP = UnitXP("player")
	local maxXP = UnitXPMax("player")
	local level = UnitLevel("player")
	local element = self.element

	if (element.xp < 0 and (level >= element.level or (level == element.level-1 and currentXP >= maxXP + element.xp))) or			
	   (element.xp >= 1 and ((level > element.level) or (element.level == level and currentXP >= element.xp))) or
	   (element.xp >= 0 and element.xp < 1 and ((level > element.level) or (element.level == level and currentXP >= maxXP*element.xp)))
	   then
		RXP_.SetElementComplete(self,true)
	end

end

function RXP_.functions.vendor(self,...)
	if type(self) == "number" then --on parse
		local element = {}
		local text,id = ...
		element.id = tonumber(id)
		if text and text ~= "" then
			element.text = text
		else
			element.text = "Sell junk/resupply"
		end
		element.tooltipText = RXP_.icons.vendor..element.text
		return element
	end
	
	local event = ...
	local id = self.element.id
	
	if event == "MERCHANT_SHOW" then
		self.element.activity = RXP_.GetNpcId()
	elseif event == "MERCHANT_CLOSED" and (self.activity == id or not id) then
		self.element.activity = nil
		RXP_.SetElementComplete(self)
	end
end

function RXP_.functions.trainer(self,...)
	if type(self) == "number" then --on parse
		local element = {}
		local text,id = ...
		element.id = tonumber(id)
		if text and text ~= "" then
			element.text = text
		else
			element.text = "Train skills"
		end
		element.tooltipText = RXP_.icons.trainer..element.text
		return element
	end
	
	local event = ...
	local id = self.element.id
	
	if event == "TRAINER_SHOW" then
		self.element.activity = RXP_.GetNpcId()
	elseif event == "TRAINER_CLOSED" and (self.activity == id or not id) then
		self.element.activity = nil
		RXP_.SetElementComplete(self)
	end
end

function RXP_.functions.stable(self,...)
	if type(self) == "number" then --on parse
		local element = {}
		local text,id = ...
		element.id = tonumber(id)
		if text and text ~= "" then
			element.text = text
		else
			element.text = "Stablee your pet"
		end
		element.tooltipText = RXP_.icons.stable..element.text
		return element
	end
	
	local event = ...
	local id = self.element.id
	
	if event == "PET_STABLE_SHOW" then
		self.element.activity = RXP_.GetNpcId()
	elseif event == "PET_STABLE_CLOSED" and (self.activity == id or not id) then
		self.element.activity = nil
		RXP_.SetElementComplete(self)
	end
end

function RXP_.functions.tame(self,...)
	if type(self) == "number" then --on parse
		local element = {}
		local text,id = ...
		element.id = tonumber(id)
		if text and text ~= "" then
			element.text = text
		else
			element.text = "-"
		end
		element.tooltipText = RXP_.icons.tame..element.text
		return element
	end
	
	local event,unit,guid,spellId = ...
	local id = self.element.id
	
	if spellId == 1515 and unit == "player" then
		if event == "UNIT_SPELLCAST_START" then
			self.element.petId = id
		elseif id and event == "UNIT_SPELLCAST_SUCCEEDED" and id == self.element.petId then
			self.element.petId = nil
			RXP_.SetElementComplete(self)
			return
		end
	end
end

function RXP_.functions.money(self,...)
	if type(self) == "number" then --on parse
		local element = {}
		local text,money = ...
		local prefix = money:sub(1,1)
		if prefix == "<" then
			element.greaterThan = false
		elseif prefix == ">" then
			element.greaterThan = true
		else
			error("Error parsing guide "..RXP_.currentGuideName.." at line "..tostring(self)..": Invalid arguments")
		end
		element.money = tonumber(money:match("(%d+%.?%d*)"))
		if element.money then
			element.money = element.money * 1e4
		else
			error("Error parsing guide "..RXP_.currentGuideName.." at line "..tostring(self)..": Invalid arguments")
		end
		element.textOnly = true
		if text and text ~= "" then
			element.text = text
		end
		return element
	end
	
	if GetMoney() >= self.element.money then
		self.element.step.completed = self.element.greaterThan
	else
		self.element.step.completed = not(self.element.greaterThan)
	end
	if self.element.step.completed then
		RXP_.updateSteps = true
	end
end


function RXP_.functions.next(skip)
	if skip and (type(skip) == "number" or (skip.step and not skip.step.active)) then 
		return 
	end
	local guide = RXP_.currentGuide
	if guide.next then
		local group = guide.group
		local next = guide.next:gsub("^(.+)\\",function(grp)
			group = grp
			return ""
		end)
		local nextGuide = RXP_.GetGuideTable(group,next)
		if nextGuide then
			return RXP_:LoadGuide(nextGuide)
		end
	end
end

function RXP_.functions.istrained(self,...)
	return {textOnly = true } --todo
end


function RXP_.functions.train(self,...)
	if type(self) == "number" then --on parse
		local element = {}
		local text,id = ...
		element.id = tonumber(id)
		if not C_Spell.IsSpellDataCached(element.id) then
			C_Spell.RequestLoadSpellData(element.id)
		end
		if text and text ~= "" then
			element.text = text
		else
			element.text = "-"
		end
		element.tooltipText = RXP_.icons.trainer..element.text
		return element
	end
	
	if IsPlayerSpell(self.element.id) then
		RXP_.SetElementComplete(self)
	end
end

function RXP_.functions.istrained(self,...)
	if type(self) == "number" then --on parse
		local element = {}
		local args = {...}
		args[1] = nil
		element.id = args
		for _,id in pairs(args) do
			if not C_Spell.IsSpellDataCached(id) then
				C_Spell.RequestLoadSpellData(id)
			end
		end
		element.textOnly = true
		return element
	end
	
	for _,id in pairs(self.element.id) do
		if IsPlayerSpell(id) then
			self.element.step.completed = true
			RXP_.updateSteps = true
			return
		end
	end
end

function RXP_.functions.abandon(self,...)
	if type(self) == "number" then --on parse
		local element = {}
		element.tag = "accept"
		local text,id = ...
		id = tonumber(id)
		if not id then return error("Error parsing guide "..RXP_.currentGuideName.." at line "..tostring(self)..":\nInvalid quest ID") end
		element.title = ""
		element.questId = id
		--element.title = RXP_.GetQuestName(id)
		if text and text ~= "" then
			element.text = text
		else		
			element.text = "Abandon *quest*"
			element.requestFromServer = true
		end
		--print("Q1",element.text)
		element.tooltipText = RXP_.icons.abandon..element.text
		--print(element.rawtext)
		return element
	else
		local event,_,questId = ...
		local id = self.element.questId
		local quest = RXP_.GetQuestName(id,self)
		if quest then
			self.element.title = quest
			self.element.text = self.element.text:gsub("%*quest%*",quest)
			if self.element.requestFromServer then
				self.element.requestFromServer = nil
				RXP_.UpdateStepText(self)
			end
		else
			self.element.title = ""
			self.element.requestFromServer = true
		end

		self.element.tooltipText = RXP_.icons.accept..self.element.text
		

		if not C_QuestLog.IsOnQuest(id) then
			RXP_.SetElementComplete(self,true)
		else
			RXP_.SetElementIncomplete(self)
		end
		
	end
	
end
