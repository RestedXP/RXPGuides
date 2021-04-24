RXP_.guides = {}
RXP_.guideList = {}

local _, race = UnitRace("player")
local _,class = UnitClass("player")
local faction = UnitFactionGroup("player")

local function applies(text)
	if text then
		local isMatch
		for str in string.gmatch(text, "[^/]+") do			
			local v = true
			for entry in string.gmatch(str, "%w+") do
				local state = true
				if entry:sub(1,1) == "!" then
					entry = entry:sub(2,-1)
					state = false
				end
				v = v and ((strupper(entry) == class or entry == race or entry == faction) == state)
			end
			isMatch = isMatch or v
		end
		return isMatch
	end
	return true
end
RXP_.applies = applies
local RXPG = RXPGuides
function RXPG.RegisterGuide(guideGroup,text)
	--print(27,guideGroup,text)

	if not RXPG[guideGroup] then
		RXPG[guideGroup] = {}
		setmetatable(RXPG[guideGroup],RXP_.functions)
	end

	local guide = {}
	guide.group = guideGroup
	local currentStep = 0
	guide.steps = {}

	local lastElement
	local step
	local skip
	local linenumber = 0

	local function parseLine(line)
		local classtag 
		line = line:gsub("%s*<<%s*(.+)",function(t) 
			classtag = t
			return ""
		end)
		if classtag and not applies(classtag) then
			return
		end
		
		local steptag,assignment,value = line:match("^#(%S+)%s*(=?)%s*(.*)")
		if steptag and steptag ~= "" then
			if not step[steptag] then
				if assignment == "=" then
					step[steptag] = RXPG[guide.group][value]
				else
					step[steptag] = value
				end
			end
			return
		end
		
		local element
		local text 
		line = line:gsub("%s*>>%s*(.*)",function(t)
			if t ~= "" then
				text = t
			end
			return ""
		end)
		
		line:gsub("^%.(%S+)%s*(.*)",function(tag,args)
			local t = {}
			args = args:gsub("%s+,",",")
			for arg in string.gmatch(args, "[^,]+") do
				table.insert(t,arg)
			end
			--print(tag,args,type(guide))
			if RXPG[guide.group][tag] then
				element = RXPG[guide.group][tag](linenumber,text,unpack(t))
				element.tag = tag
				element.step = step
				if element.parent then
					element.parent = lastElement
				end
			else
				error("Error parsing guide "..RXP_.currentGuideName.." at line "..linenumber..": Invalid function call (."..tag..")")
			end
		end)
		
		if text then 
			if not element then
				element = {text = text, textOnly = true, step = step}
			end
			lastElement = element
		elseif line:sub(1,1) == "+" then
			element = {text = line:sub(2,-1),step = step}
			lastElement = element
		elseif line:sub(1,1) == "*" then
			element = {text = line:sub(2,-1),step = step, hideTooltip = true, textOnly = true}
		--else
			--error('Error parsing guide at line '..linenumber..'/ '..guide.name)
		end
		
		table.insert(step.elements,element)
	end


	for line in string.gmatch(text, "[^\n\r]+") do
		linenumber = linenumber +1
		line = line:gsub("%-%-.*","")
		line = line:gsub("^%s+","")
		line = line:gsub("%s+$","")
		--print(line)
		if line:sub(1,4) == "step" then
			if not RXP_.currentGuideName then error("Error parsing guide: Guide has no name") end
			local classtag = line:match("<<%s*(.+)")
			if classtag and not applies(classtag) then
				skip = true
			else
				skip = false
				currentStep = currentStep + 1
				guide.steps[currentStep] = {}
				guide.steps[currentStep].elements = {}
				step = guide.steps[currentStep]
				step.index = currentStep
				lastElement = nil
			end			
		elseif currentStep > 0 and not skip then
			parseLine(line)
		elseif currentStep == 0 then
			local classtag = line:match("<<%s*(.+)")
			if classtag and not applies(classtag) then
				return
			end
			line:gsub("^#(%S+)%s*(=?)%s*(.*)",function(tag,assignment,value)
				--print(tag,string.len(tag))
				if tag and tag ~= "" and not guide[tag] then
					if assignment == "=" then
						guide[tag] = RXPG[guide.group][value]
					else
						guide[tag] = value
					end
					if tag == "name" then
						RXP_.currentGuideName = value
					end
				end
			end)
		end
	end
	--print(guide)
	if not guide.name then
		print('Guide has no name')
	end

	local affix = function(smin,smax)
		if smax:len() == 1 then
			smax = "0"..smax
		end
		return "0"..smin.."-"..smax
	end

	guide.displayName = guide.name
	guide.name = guide.name:gsub("^(%d)-(%d%d?)",affix)
	if guide.next then
	guide.next = guide.next:gsub("^(%d)-(%d%d?)",affix)
	end
	
	if not RXP_.guideList[guide.group] then
		RXP_.guideList[guide.group] = {}
		RXP_.guideList[guide.group].names_ = {}
	end
	local list = RXP_.guideList[guide.group]

	table.insert(RXP_.guides,guide)
	table.insert(list.names_,guide.name)
	list[guide.name] = #RXP_.guides
end

--parser

