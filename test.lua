zcc.functions = {}
zcc.functions.__index = zcc.functions
zcc.functions.events = {}


zcc.functions.events.collect = {"BAG_UPDATE"}
zcc.functions.events.accept = {"QUEST_ACCEPTED"}
zcc.functions.events.turnin = {"QUEST_TURNED_IN"}
zcc.functions.events.complete = {"QUEST_LOG_UPDATE"}
zcc.functions.events.collect = {"BAG_UPDATE"}		
zcc.functions.events.deathskip = {"CONFIRM_XP_LOSS"}
		
RXPG = {}

function zcc.GetQuestName(id)
	quest = C_QuestLog.GetQuestInfo(id)
	if not quest then
		zcc.questQueryList[id] = true
	end
	return quest
end

function zcc.GetItemName(id)
	name = GetItemInfo(id)
	if not quest then
		zcc.itemQueryList[id] = true
	end
	return quest
end


function zcc.SetElementComplete(self,disable)
	if not self.element.completed then
		self.element.completed = true
		zcc.updateSteps = true
		zcc.updateMap = true
	end
	if self.button then
		print('----ok',disable)
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

function zcc.UpdateStepText()
	zcc.updateStepText = true
end

function zcc.functions.placeholder()

end

local HBD = LibStub("HereBeDragons-2.0")
local HBDPins = LibStub("HereBeDragons-Pins-2.0")

--[[
--text = line:match(">>%s*(.*%S)")
--line:sub("%s*>>.*","")
step
	#sticky
	.goto Teldrassil,45.0,50.0,30
	.accept 457 >> Accept The Balance of Nature // Teldrassil,45.0,50.0  
	.complete 457,1 >> asd   gfrdfgd sads e  
]]

--on parse:

--[[
if not zcc.guides[zcc.guidegroup] then
	zcc.guides[zcc.guidegroup] = {}
	--setmetatable(zcc[guidegroup],zcc.functions)
end]]



--functions:



function zcc.functions.accept(self,...)
	if type(self) == "number" then --on parse
		local element = {}
		local text,id = ...
		id = tonumber(id)
		if not id then return error("Error parsing guide "..zcc.currentGuideName.." at line "..tostring(self)..":\nInvalid quest ID") end

		element.questId = id
		element.title = zcc.GetQuestName(id)
		if text and text ~= "" then
			element.text = text
		else
			if element.title then
				element.text = "Accept "..element.title
			else
				element.text = "Accept *quest*"
			end
		end
		element.tooltipText = zcc.icons.accept..element.text
		--print(element.rawtext)
		return element
	else
		local event,questId = ...
		local id = self.element.questId
		self.element.title = zcc.GetQuestName(id) or ""
		self.element.text = self.element.text:gsub("*quest*",self.element.title)
		self.element.tooltipText = zcc.icons.accept..self.element.text
		zcc.UpdateStepText()
		
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
		local text,id = ...
		id = tonumber(id)
		if not id then return error("Error parsing guide "..zcc.currentGuideName.." at line "..tostring(self)..":\nInvalid quest ID") end
		
		element.questId = id
		element.title = zcc.GetQuestName(id)
		if text and text ~= "" then
			element.text = text
		else
			if element.title then
				element.text = "Turn in "..element.title
			else
				element.text = "Turn in *quest*"
			end
		end
		element.tooltipText = zcc.icons.turnin..element.text
		return element
	else
		local event,questId = ...
		local id = self.element.questId
		self.element.title = zcc.GetQuestName(id) or ""
		self.element.text = self.element.text:gsub("*quest*",self.element.title)
		self.element.tooltipText = zcc.icons.turnin..self.element.text
		zcc.UpdateStepText()
		
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
		local text,id,obj = ...
		id = tonumber(id)
		if not id then return error("Error parsing guide "..zcc.currentGuideName.." at line "..tostring(self)..":\nInvalid quest ID") end
		
		element.obj = tonumber(obj)

		element.title = zcc.GetQuestName(id)
		local objectives = C_QuestLog.GetQuestObjectives(id)--queries the server for items/creature names associated with the quest
		element.questId = id
		if text and text ~= "" then
			element.rawtext = text:gsub("*quest*",element.title)
			element.text = element.rawtext
			element.tooltipText = element.text
		else
			element.text = ""
		end
		
		return element
	else

		local icon = zcc.icons.complete
		local id = self.element.questId
		local objectives = C_QuestLog.GetQuestObjectives(id)
		self.element.title = zcc.GetQuestName(id) or ""
		if self.element.rawtext then
			self.element.rawtext = self.element.text:gsub("*quest*",self.element.title)
		end
		local text = self.element.rawtext
		local objtext
		local isQuestComplete = IsQuestFlaggedCompleted(id)
		local skip

		
		local completed
		if objectives then
			if self.element.obj then
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
			error('no objectives')
		end
		

		completed = completed or isQuestComplete
		if text then
			self.element.text = text.."\n"..objtext
			self.element.tooltipText = icon..text
		else
			self.element.tooltipText = icon..objtext:gsub("\n","\n   "..icon)
			text = objtext
			self.element.text = text
		end
		--print(text)

		zcc.UpdateStepText()
		
		if completed then	
			zcc.SetElementComplete(self,true)
		else
			zcc.SetElementIncomplete(self)
		end
	end
	
end

function zcc.functions.goto(self,...)
	if type(self) == "number" then --on parse
		local element = {}
		local text,zone,x,y,radius = ...
		element.x = tonumber(x)
		element.y = tonumber(y)
		element.radius = tonumber(radius)
		element.zone = zcc.mapId[zone]
		element.wx,element.wy,element.instance = HBD:GetWorldCoordinatesFromZone(x/100, y/100, element.zone)
		element.arrow = true
		element.parent = true
		if not (zone and x and y) then return error("Error parsing guide "..zcc.currentGuideName.." at line "..tostring(self)..": Invalid coordinates or map name") end
		if text and text ~= "" then
			element.text = text
			element.tooltipText = zcc.icons.goto..text
		elseif radius then
			element.text = string.format("Go to %.2f,%.2f (%s)",element.x,element.y,HBD:GetLocalizedMap(element.zone))
			element.tooltipText = zcc.icons.goto..element.text
		end
		return element
	end
end

function zcc.functions.marker(self,...)
	if type(self) == "number" then --on parse
		local element = {}
		local text,zone,x,y = ...
		element.x = tonumber(x)
		element.y = tonumber(y)
		element.zone = zcc.mapId[zone]
		element.wx,element.wy,element.instance = HBD:GetWorldCoordinatesFromZone(x/100, y/100, element.zone)
		element.textOnly = true
		element.parent = true
		if not (zone and x and y) then return error("Error parsing guide "..zcc.currentGuideName.." at line "..tostring(self)..": Invalid coordinates or map name") end
		if text and text ~= "" then
			element.text = text
		end
		return element
	end
end



function zcc.functions.hs(self,...)
	if type(self) == "number" then --on parse
		local element = {}
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

--"CONFIRM_XP_LOSS,PLAYER_UNGHOST"
function zcc.functions.deathskip(self,...)
	if type(self) == "number" then --on parse
		local element = {}
		local text = ...

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
		local text,id,qty = ...
		id = tonumber(id)
		if not id then
			error('Error parsing guide at line'..self..': No item ID provided')
		end
		
		element.id = id
		qty = tonumber(qty)
		element.qty = qty or 1
		self.element.itemName = GetItemName(id)
		
		if text and text ~= "" then
			element.rawtext = text
		else
			element.rawtext = string.format("Collect *item* (x%d)",element.qty)
		end
		element.text = text
		element.tooltipText = zcc.icons.collect..element.rawtext
		return element
	end

	self.element.itemName = GetItemName(self.element.id) or ""
	local count = GetItemCount(itemID)
	if count > element.qty then
		count = element.qty
	end
	self.element.rawtext:gsub("*item*",self.element.itemName)
	element.tooltipText = zcc.icons.collect..element.rawtext
	self.element.text = string.format("%s\n%s: %d/%d",self.element.rawtext,self.element.itemName,count,element.qty)
	
	if count >= element.qty then
		zcc.SetElementComplete(self,true)
	else
		zcc.SetElementIncomplete(self)
	end
end


