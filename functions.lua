zcc.functions = {}
zcc.functions.__index = zcc.functions
zcc.functions.events = {}
zcc.stepUpdateList = {}

zcc.functions.events.collect = "BAG_UPDATE"
zcc.functions.events.accept = "QUEST_ACCEPTED"
zcc.functions.events.turnin = "QUEST_TURNED_IN"
zcc.functions.events.complete = "QUEST_LOG_UPDATE"
zcc.functions.events.collect = "BAG_UPDATE"
zcc.functions.events.fp = "UI_INFO_MESSAGE"
zcc.functions.events.hs = "UNIT_SPELLCAST_SUCCEEDED"
zcc.functions.events.home = "HEARTHSTONE_BOUND"
zcc.functions.events.fly = "ZONE_CHANGED"
zcc.functions.events.deathskip = "CONFIRM_XP_LOSS"
zcc.functions.events.xp = "PLAYER_XP_UPDATE"
zcc.functions.events.vendor = {"MERCHANT_SHOW","MERCHANT_CLOSED"}
zcc.functions.events.trainer = {"TRAINER_SHOW","TRAINER_CLOSED"}
zcc.functions.events.stable = {"PET_STABLE_SHOW","PET_STABLE_CLOSED"}
zcc.functions.events.tame = {"UNIT_SPELLCAST_SUCCEEDED","UNIT_SPELLCAST_START"}



RXPG = {}

local timer = GetTime()
local nrequests = 0
function zcc.GetQuestName(id,ref)
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
			zcc.questQueryList[id] = true
		end
	elseif ref then
		zcc.UpdateStepText(ref)
	end
	return quest
end

function zcc.GetQuestObjectives(id,ref)
	local ctime = GetTime()
	if ctime - timer > 0.66 then
		timer = ctime
		nrequests = 0
	end
	nrequests = nrequests + 1
	if nrequests < 4 or HaveQuestData(id) then
		return C_QuestLog.GetQuestObjectives(id)	
	elseif ref then
		zcc.UpdateStepText(ref)
	end
end

function zcc.GetItemName(id)
	local name = GetItemInfo(id)
	if not name then
		zcc.itemQueryList[id] = true
	end
	return name
end


function zcc.SetElementComplete(self,disable)
	if not self.element.completed then
		self.element.completed = true
		zcc.updateSteps = true
		zcc.updateMap = true
	end
	if self.button then
		--print('----ok',disable)
		self.button:SetChecked(true)
		if disable then
			self.button:Disable()
		end
	end
end

function zcc.SetElementIncomplete(self)
	if self.element.completed then
		self.element.completed = false
		zcc.updateMap = true
	end
	if self.button then
		self.button:Enable()
		if not self.element.skip then
			self.button:SetChecked(false)
		end
	end
end

function zcc.UpdateStepText(self)
	zcc.updateStepText = true
	zcc.stepUpdateList[self.step.index] = self
end

function zcc.AldorScryerCheck(step)
	if step.aldor then
		name, description, standingID = GetFactionInfoByID(932)
		return (standingID and standingID >= 5),"Aldor"
	elseif step.scryer then
		name, description, standingID = GetFactionInfoByID(934)
		return standingID and standingID >= 5,"Scryers"
	end
	return true
end

function zcc.GetNpcId(unit)
	if not unit then
		unit = "target"
	end
	local _, _, _, _, _, npcId = strsplit('-', UnitGUID(unit) or '')
	return tonumber(npcId)
end


local HBD = LibStub("HereBeDragons-2.0")
local HBDPins = LibStub("HereBeDragons-Pins-2.0")


function zcc.functions.accept(self,...)
	if type(self) == "number" then --on parse
		local element = {}
		element.tag = "accept"
		local text,id = ...
		id = tonumber(id)
		if not id then return error("Error parsing guide "..zcc.currentGuideName.." at line "..tostring(self)..":\nInvalid quest ID") end

		element.questId = id
		--element.title = zcc.GetQuestName(id)
		if text and text ~= "" then
			element.text = text
		else		
			element.text = "Accept *quest*"
			element.requestFromServer = true
		end
		--print("Q1",element.text)
		element.tooltipText = zcc.icons.accept..element.text
		--print(element.rawtext)
		return element
	else
		local event,questId = ...
		local id = self.element.questId
		local quest = zcc.GetQuestName(id,self)
		if quest then
			self.element.title = quest
			self.element.text = self.element.text:gsub("%*quest%*",quest)
			if self.element.requestFromServer then
				self.element.requestFromServer = nil
				zcc.UpdateStepText(self)
			end
		else
			self.element.title = ""
			self.element.requestFromServer = true
		end

		self.element.tooltipText = zcc.icons.accept..self.element.text
		
		
		if IsQuestFlaggedCompleted(id) or C_QuestLog.IsOnQuest(id) then
			zcc.SetElementComplete(self,true)
		elseif self.element.completed then
			zcc.SetElementIncomplete(self)
		end
		
	end
	
end

function zcc.functions.turnin(self,...)
	 
	if type(self) == "number" then --on parse
		local element = {}
		element.tag = "turnin"
		local text,id = ...
		id = tonumber(id)
		if not id then return error("Error parsing guide "..zcc.currentGuideName.." at line "..tostring(self)..":\nInvalid quest ID") end
		
		element.questId = id
		--element.title = zcc.GetQuestName(id)
		if text and text ~= "" then
			element.text = text
		else
			element.text = "Turn in *quest*"
			element.requestFromServer = true
		end
		element.tooltipText = zcc.icons.turnin..element.text
		return element
	else
		local event,questId = ...
		local id = self.element.questId
		local quest = zcc.GetQuestName(id,self)
		if quest then
			self.element.title = quest
			self.element.text = self.element.text:gsub("%*quest%*",quest)
			if self.element.requestFromServer then
				self.element.requestFromServer = nil
				zcc.UpdateStepText(self)
			end
		else
			self.element.title = ""
			self.element.requestFromServer = true
		end
		self.element.tooltipText = zcc.icons.turnin..self.element.text
		zcc.UpdateStepText(self)
		
		local isComplete = IsQuestFlaggedCompleted(id)
		if isComplete then
			zcc.SetElementComplete(self,true)
		elseif questId == id then --repeatable quests
			zcc.SetElementComplete(self)
		end
	end

end

function zcc.functions.complete(self,...)
	if type(self) == "number" then --on parse
		local element = {}
		element.tag = "complete"
		local text,id,obj = ...
		id = tonumber(id)
		if not id then return error("Error parsing guide "..zcc.currentGuideName.." at line "..tostring(self)..":\nInvalid quest ID") end
		
		element.obj = tonumber(obj)

		--element.title = zcc.GetQuestName(id)
		--local objectives = zcc.GetQuestObjectives(id)--queries the server for items/creature names associated with the quest
		element.questId = id
		if text and text ~= "" then
			--element.rawtext = text:gsub("%*quest%*",element.title)
			element.text = element.rawtext
			element.tooltipText = zcc.icons.complete..element.text
		else
			element.text = ""
			element.requestFromServer = true
		end
		
		return element
	else

		local icon = zcc.icons.complete
		local id = self.element.questId
		local objectives = zcc.GetQuestObjectives(id,self)
		

		--print(text)
		local objtext
		local isQuestComplete = IsQuestFlaggedCompleted(id)
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
			zcc.UpdateStepText(self)
			return
		end
		
		
		local quest = zcc.GetQuestName(id,self)
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
		
		zcc.UpdateStepText(self)

		if completed then	
			zcc.SetElementComplete(self,true)
		else
			zcc.SetElementIncomplete(self)
		end
	end
	
end

local lastZone
function zcc.functions.goto(self,...)
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
		element.radius = tonumber(radius)
		radius = element.radius
		element.zone = zcc.mapId[zone]
		element.wx,element.wy,element.instance = HBD:GetWorldCoordinatesFromZone(x/100, y/100, element.zone)
		element.arrow = true
		element.parent = true
		if not (zone and x and y) then return error("Error parsing guide "..zcc.currentGuideName.." at line "..tostring(self)..": Invalid coordinates or map name") end

		element.text = text
		element.textOnly = true
		
		if radius then
			if radius > 0 then
				if not text or text == "" then
					element.text = string.format("Go to %.2f,%.2f (%s)",element.x,element.y,zone)
				end
				element.parent = nil
				element.textOnly = nil
				element.tooltipText = zcc.icons.goto..element.text
			elseif radius <= 0 then
				element.arrow = nil
			end
		end
		return element
	end
end


function zcc.functions.hs(self,...)
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
		element.tooltipText = zcc.icons.hs..element.text
		return element
	end
	local event,unit,_,id = ...
	if event == "UNIT_SPELLCAST_SUCCEEDED" and unit == "player" and id == 8690 then
		zcc.SetElementComplete(self)
	end
end

function zcc.functions.home(self,...)
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
		element.tooltipText = zcc.icons.home..element.text
		return element
	end
	local event = ...
	if event == "HEARTHSTONE_BOUND" then
		zcc.SetElementComplete(self)
	end
end

function zcc.functions.fp(self,...)
	if type(self) == "number" then --on parse
		local element = {}
		local text,location = ...
		element.tag = "home"
		if text and text ~= "" then
			element.text = text
		else
			element.textOnly = true
			element.text = "Get the "..location.." flight path"
		end
		element.tooltipText = zcc.icons.fp..element.text
		return element
	end
	local event,arg1,arg2 = ...
	if event == "UI_INFO_MESSAGE" and arg2 == ERR_NEWTAXIPATH then
		zcc.SetElementComplete(self)
	end
end

function zcc.functions.fly(self,...)
	if type(self) == "number" then --on parse
		local element = {}
		local text,location = ...
		element.tag = "home"
		if text and text ~= "" then
			element.text = text
		else
			element.textOnly = true
			element.text = "Fly to "..location
		end
		element.tooltipText = zcc.icons.fly..element.text
		return element
	end
	local event = ...
	if event == "ZONE_CHANGED" and UnitOnTaxi("player") then
		zcc.SetElementComplete(self)
	end
end


--

--"CONFIRM_XP_LOSS,PLAYER_UNGHOST"
function zcc.functions.deathskip(self,...)
	if type(self) == "number" then --on parse
		local element = {}
		local text = ...
		element.tag = "deathskip"
		if text and text ~= "" then
			element.text = text
		else
			element.text = "Die and respawn at the graveyard"
		end
		element.tooltipText = zcc.icons.deathskip..element.text
		return element
	end
	local event = ...
	if event == "CONFIRM_XP_LOSS" then
		zcc.SetElementComplete(self)
	end
end

function zcc.functions.collect(self,...)
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
		element.itemName = zcc.GetItemName(id)
		
		if text and text ~= "" then
			element.rawtext = text
			element.tooltipText = zcc.icons.collect..element.rawtext
		else
			element.requestFromServer = true
			element.text = " "
		end
		return element
	end

	local name = zcc.GetItemName(self.element.id)
	
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
		self.element.tooltipText = zcc.icons.collect..self.element.rawtext
		self.element.text = string.format("%s\n%s: %d/%d",self.element.rawtext,self.element.itemName,count,self.element.qty)
	else
		self.element.text = string.format("%s: %d/%d",self.element.itemName,count,self.element.qty)
		self.element.tooltipText = zcc.icons.collect..self.element.text
	end
	zcc.UpdateStepText(self)
	
	if count >= self.element.qty then
		zcc.SetElementComplete(self,true)
	else
		zcc.SetElementIncomplete(self)
	end
end

function zcc.functions.xp(self,...)
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
			if element.xp then
				if element.xp <= 0 then
					element.text = string.format("Grind until you are %s xp away from level %s",xp,level)
					element.level = element.level
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
		element.tooltipText = zcc.icons.xp..element.text
		return element
	end
	local currentXP = UnitXP("player")
	local maxXP = UnitXPMax("player")
	local level = UnitLevel("player")
	

	if (element.xp < 0 and (level >= element.level or (level == element.level-1 and currentXP >= maxXP - element.xp))) or			
	   (element.xp >= 0 and ((level > element.level) or (element.level == level and element.xp >= currentXP))) then
		zcc.SetElementComplete(self,true)
	end

end

function zcc.functions.vendor(self,...)
	if type(self) == "number" then --on parse
		local element = {}
		local text,id = ...
		element.id = tonumber(id)
		if text and text ~= "" then
			element.text = text
		else
			element.text = "Sell junk/resupply"
		end
		element.tooltipText = zcc.icons.vendor..element.text
		return element
	end
	
	local event = ...
	local id = self.element.id
	
	if event == "MERCHANT_SHOW" then
		self.element.activity = zcc.GetNpcId()
	elseif event == "MERCHANT_CLOSED" and (self.activity == id or not id) then
		self.element.activity = nil
		zcc.SetElementComplete(self)
	end
end

function zcc.functions.trainer(self,...)
	if type(self) == "number" then --on parse
		local element = {}
		local text,id = ...
		element.id = tonumber(id)
		if text and text ~= "" then
			element.text = text
		else
			element.text = "Train skills"
		end
		element.tooltipText = zcc.icons.trainer..element.text
		return element
	end
	
	local event = ...
	local id = self.element.id
	
	if event == "TRAINER_SHOW" then
		self.element.activity = zcc.GetNpcId()
	elseif event == "TRAINER_CLOSED" and (self.activity == id or not id) then
		self.element.activity = nil
		zcc.SetElementComplete(self)
	end
end

function zcc.functions.stable(self,...)
	if type(self) == "number" then --on parse
		local element = {}
		local text,id = ...
		element.id = tonumber(id)
		if text and text ~= "" then
			element.text = text
		else
			element.text = "Stablee your pet"
		end
		element.tooltipText = zcc.icons.stable..element.text
		return element
	end
	
	local event = ...
	local id = self.element.id
	
	if event == "PET_STABLE_SHOW" then
		self.element.activity = zcc.GetNpcId()
	elseif event == "PET_STABLE_CLOSED" and (self.activity == id or not id) then
		self.element.activity = nil
		zcc.SetElementComplete(self)
	end
end

function zcc.functions.tame(self,...)
	if type(self) == "number" then --on parse
		local element = {}
		local text,id = ...
		element.id = tonumber(id)
		if text and text ~= "" then
			element.text = text
		else
			element.text = "-"
		end
		element.tooltipText = zcc.icons.tame..element.text
		return element
	end
	
	local event,unit,guid,spellId = ...
	local id = self.element.id
	
	if spellId == 1515 and unit == "player" then
		if event == "UNIT_SPELLCAST_START" then
			self.element.petId = id
		elseif id and event == "UNIT_SPELLCAST_SUCCEEDED" and id == self.element.petId then
			self.element.petId = nil
			zcc.SetElementComplete(self)
			return
		end
	end
end



function Guidelime.Zarant.TameBeast(self,args,event,target,guid,spellId)
	if not self then 
		return "UNIT_SPELLCAST_SUCCEEDED,UNIT_SPELLCAST_START,UNIT_SPELLCAST_FAILED"
	end
	if spellId == 1515 then
		if event == "UNIT_SPELLCAST_FAILED" then
			self.petId = nil
			return
		end
		for i,v in ipairs(args) do
			local id = tonumber(v)
			if event == "UNIT_SPELLCAST_START" and (id == self.NpcId(target) or id == self.NpcId()) then
				self.petId = id
			elseif id and event == "UNIT_SPELLCAST_SUCCEEDED" and (id == self.NpcId(target) or id == self.NpcId() or id == self.petId) then
				self.petId = nil
				self:SkipStep()
				return
			end
		end
	end
end



function zcc.functions.next(skip)
	if skip and (type(skip) == "number" or (skip.step and not skip.step.active)) then 
		return 
	end
	local guide = zcc.currentGuide
	if guide.next then
		local group = guide.group
		local next = guide.next:gsub("^(.+)\\",function(grp)
			group = grp
			return ""
		end)
		local nextGuide = zcc.GetGuideTable(group,next)
		if nextGuide then
			return zcc:LoadGuide(nextGuide)
		end
	end
end
