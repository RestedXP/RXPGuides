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
			if steptag == "name" then
				RXP_.currentGuideName = value
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
			element = {text = line:sub(2,-1),step = step, hideTooltip = true}
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


z1 = [[
#name 1-12 TestGuide

step
	.accept 456
step
	#sticky
	.complete 456
step
	.accept 458
step
	.turnin 456
step
	.complete 459
	.complete 6026
step
	.accept 4495
step
	#sticky
	.goto Teldrassil,60.9,42.0
	.accept 457
step
	.goto Teldrassil,50.9,52.0 >> Goto here
	>> ExampleText 1
	.checkbox >> Example checkbox
]]

--RXPG.RegisterGuide("Z1",z1)


RXPG.RegisterGuide("Zarant 50+ route 2",[[
<< Alliance
#name 55-58 Western/Eastern Plaguelands
--#next 58-59 Silithus
step
    .goto Stormwind City,78.1,18.0
    >>Skip this step if you're not level 56
    .accept 6182 -->> Accept The First and the Last
step
    .goto Stormwind City,75.9,59.8
    >>Skip this step if you're not level 56
    .turnin 6182 -->> Turn in The First and the Last
    .accept 6183 -->> Accept Honor the Dead
    .turnin 6183 -->> Turn in Honor the Dead
    .accept 6184 -->> Accept Flint Shadowmore
step
    .goto Ironforge,38.4,55.1
    >>Speak to Royal Historian Archesonus
    .turnin 3701 -->> Turn in The Smoldering Ruins of Thaurissan
step
    .fly >> Fly to Southshore
step
    .home >> Set your Hearthstone to Southshore
step
    .fly >> Fly to Western Plaguelands
step
    .goto Western Plaguelands,42.9,84.5
    >>Speak to High Priestess MacDonnell
    .accept 5219 -->> Accept Target: Dalson's Tears
    .accept 9474 -->> Accept The Mark of the Lightbringer
step
    .goto Western Plaguelands,42.8,84.0
    >>Speak to Commander Ashlam Valorfist
    .accept 5097 -->> Accept All Along the Watchtowers
step
    .goto Western Plaguelands,43.4,84.8
    >>Speak to Nathaniel Dumah
    .accept 5903 -->> Accept A Plague Upon Thee
step
    .goto Western Plaguelands,43.6,84.5
    >>Speak to Flint Shadowmore
    .turnin 6184 -->> Turn in Flint Shadowmore
    .accept 6185 -->> Accept The Eastern Plagues
step
    .goto Western Plaguelands,46.6,71.2
    .complete 5097,4
step
    .goto Western Plaguelands,53.7,64.7
    >>Speak to Mulgris Deepriver
    .accept 4984 -->> Accept The Wildlife Suffers Too
step
    .goto Western Plaguelands,47.8,50.8
    .turnin 5058 -->> Turn in Mrs. Dalson Diary
step
    .goto Western Plaguelands,46.0,52.4
    .complete 5219,1
step
    .goto Western Plaguelands,46.2,52.1
    .turnin 5219 -->> Turn in Target: Dalson's Tears
    .accept 5220 -->> Accept Return to Chillwind Camp
step
	#sticky
	#completewith next
    .goto Western Plaguelands,46.9,51.5
    .collect 12738,1 -->> Collect Dalson Outhouse Key (x1)
step
    .goto Western Plaguelands,48.2,49.7
    .collect 12739,1 -->> Collect Dalson Cabinet Key (x1)
step
    .goto Western Plaguelands,47.4,49.7
    .turnin 5060 -->> Turn in Locked Away
step
    .goto Western Plaguelands,46.0,47.7
    .complete 4984,1
step
    .goto Western Plaguelands,38.4,54.1
    >>Speak to Janice Felstone
    .turnin 5050 -->> Turn in Good Luck Charm
    .accept 5051 -->> Accept Two Halves Become One
step
    .goto Western Plaguelands,36.9,58.2
    .complete 5051,1
step
    .goto Western Plaguelands,38.4,54.1
    .turnin 5051 -->> Turn in Two Halves Become One
step
    .goto Western Plaguelands,44.3,63.2
    .complete 5097,3
step
    .goto Western Plaguelands,42.3,66.2
    .complete 5097,2
step
    .goto Western Plaguelands,40.1,71.6
    .complete 5097,1
step
    .goto Western Plaguelands,42.7,84.0
    >>Speak to Commander Ashlam Valorfist
    .turnin 5097 -->> Turn in All Along the Watchtowers
    .accept 211 -->> Accept Alas, Andorhal
    .accept 5533 -->> Accept Scholomance
step
    .goto Western Plaguelands,42.7,83.7
    >>Speak to Alchemist Arbington
    .turnin 5533 -->> Turn in Scholomance
    .accept 5537 -->> Accept Skeletal Fragments
step
    .goto Western Plaguelands,42.9,84.4
    >>Speak to High Priestess MacDonnell
    .turnin 5220 -->> Turn in Return to Chillwind Camp
    .accept 5222 -->> Accept Target: Writhing Haunt
step
    .goto Western Plaguelands,53.1,66.0
    .complete 5222,1
step
    .goto Western Plaguelands,53.0,65.7
    .turnin 5222 -->> Turn in Target: Writhing Haunt
    .accept 5223 -->> Accept Return to Chillwind Camp
step
    .goto Western Plaguelands,53.7,64.7
    >>Speak to Mulgris Deepriver
    .turnin 4984 -->> Turn in The Wildlife Suffers Too
    .accept 4985 -->> Accept The Wildlife Suffers Too
step
    .goto Eastern Plaguelands,7.6,43.6
    >>Speak to Tirion Fordring
    .accept 5542 -->> Accept Demon Dogs
    .accept 5543 -->> Accept Blood Tinged Skies
    .accept 5544 -->> Accept Carrion Grubbage
step
    .goto Eastern Plaguelands,27.0,73.9
    .complete 6185,1
step
    .goto Eastern Plaguelands,28.8,79.8
    .complete 6185,2
step
    .goto Eastern Plaguelands,28.8,74.9
    .complete 6185,4
step
    .goto Eastern Plaguelands,27.3,75.0
    .complete 6185,3
step
    .goto Eastern Plaguelands,36.4,90.8
    .accept 5149 -->> Accept Pamela's Doll
step
    .goto Eastern Plaguelands,39.2,91.6
    .complete 5149,1
step
    .goto Eastern Plaguelands,36.4,90.9
    >>Speak to Pamela Redpath
    .turnin 5149 -->> Turn in Pamela's Doll
    .accept 5152 -->> Accept Auntie Marlene
    .accept 5241 -->> Accept Uncle Carlin
step
    .goto Eastern Plaguelands,40.8,68.1
    .complete 5543,1
    .complete 5542,1
step
    .goto Eastern Plaguelands,81.6,59.3
    .complete 5542,2
step
    .goto Eastern Plaguelands,81.6,59.3
    .fp >> Get the Light's Hope Chapel flight path
step
    .goto Eastern Plaguelands,81.4,59.9
    >>Speak to Carlin Redpath
    .turnin 5241 -->> Turn in Uncle Carlin
    .accept 5211 -->> Accept Defenders of Darrowshire
step
    .goto Eastern Plaguelands,79.7,63.6
    >>Speak to Caretaker Alen
    .accept 5281 -->> Accept The Restless Souls
    .accept 6021 -->> Accept Zaeldarr the Outcast
step
    .goto Eastern Plaguelands,34.0,28.1
    .complete 5903,1
step
    .goto Eastern Plaguelands,14.5,33.6
    >>Speak to Egan
    .turnin 5281 -->> Turn in The Restless Souls
    .accept 5282 -->> Accept The Restless Souls
step
    .goto Eastern Plaguelands,23.5,37.4
    .complete 5542,3
step
    .goto Eastern Plaguelands,23.5,37.4
    .complete 5544,1
step
    .goto Eastern Plaguelands,7.6,43.7
    >>Speak to Tirion Fordring
    .turnin 5542 -->> Turn in Demon Dogs
    .turnin 5543 -->> Turn in Blood Tinged Skies
    .turnin 5544 -->> Turn in Carrion Grubbage
    .accept 5742 -->> Accept Redemption
step
    .goto Eastern Plaguelands,7.6,43.7
    .complete 5742,1
step
    .goto Eastern Plaguelands,7.6,43.7
    .turnin 5742 -->> Turn in Redemption
    .accept 5781 -->> Accept Of Forgotten Memories
step
    .goto Eastern Plaguelands,27.4,84.9
    .complete 6021,1
step
    .goto Eastern Plaguelands,27.3,85.2
    .accept 6024 -->> Accept Hameya's Plea
step
    .goto Eastern Plaguelands,28.4,86.6
    .complete 5781,1
step
    .goto Eastern Plaguelands,7.6,43.7
    >>Speak to Tirion Fordring
    .turnin 5781 -->> Turn in Of Forgotten Memories
    .accept 5845 -->> Accept Of Lost Honor
step
    #sticky
    #completewith next
    .hs >> Hearth to Southshore
step
    .fly >> Fly to Western Plaguelands
step
    .goto Western Plaguelands,43.0,84.5
    >>Speak to High Priestess MacDonnell
    .turnin 5223 -->> Turn in Return to Chillwind Camp
    .accept 5225 -->> Accept Target: Gahrron's Withering
step
    .goto Western Plaguelands,43.4,84.8
    >>Speak to Nathaniel Dumah
    .turnin 5903 -->> Turn in A Plague Upon Thee
    .accept 5904 -->> Accept A Plague Upon Thee
step
    .goto Western Plaguelands,43.6,84.6
    >>Speak to Flint Shadowmore
    .turnin 6185 -->> Turn in The Eastern Plagues
    .accept 6186 -->> Accept The Blightcaller Cometh
step
    .goto Western Plaguelands,49.2,78.6
    >>Speak to Marlene Redpath
    .turnin 5152 -->> Turn in Auntie Marlene
    .accept 5153 -->> Accept A Strange Historian
step
    .goto Western Plaguelands,49.6,76.8
    .complete 5153,1
step
    .goto Western Plaguelands,39.5,66.9
    >>Speak to Chromie
    .turnin 5153 -->> Turn in A Strange Historian
    .accept 5154 -->> Accept The Annals of Darrowshire
    .accept 4971 -->> Accept A Matter of Time
step
    .goto Western Plaguelands,46.7,62.3
    .complete 4971,1
step
    .goto Western Plaguelands,43.4,69.6
    .complete 5154,1
step
    .goto Western Plaguelands,39.5,66.8
    .turnin 4971 -->> Turn in A Matter of Time
    .accept 4972 -->> Accept Counting Out Time
    .turnin 5154 -->> Turn in The Annals of Darrowshire
    .accept 5210 -->> Accept Brother Carlin
step
    .goto Western Plaguelands,41.3,67.1
    .complete 4972,1
step
    .goto Western Plaguelands,39.4,66.9
    .turnin 4972 -->> Turn in Counting Out Time
step
    .goto Western Plaguelands,42.4,68.0
    .complete 5537,1
step
    .goto Western Plaguelands,45.3,69.2
    .complete 211,1
step
    .goto Western Plaguelands,42.7,83.9
    >>Speak to Alchemist Arbington
    .turnin 5537 -->> Turn in Skeletal Fragments
    .turnin 211 -->> Turn in Alas, Andorhal
step
    .fly >> Fly to Eastern Plaguelands
step
    .home >> Set your Hearthstone to Light's Hope Chapel
step
    .goto Eastern Plaguelands,81.5,59.8
    >>Speak to Carlin Redpath
    .turnin 5210 -->> Turn in Brother Carlin
    .accept 5181 -->> Accept Villains of Darrowshire
    .accept 5168 -->> Accept Heroes of Darrowshire
step
    .goto Eastern Plaguelands,79.7,63.7
    >>Speak to Caretaker Alen
    .turnin 6021 -->> Turn in Zaeldarr the Outcast
step
    .goto Eastern Plaguelands,71.3,34.0
    .complete 5845,1
step
    .goto Eastern Plaguelands,70.8,16.2
    .complete 6024,1
step
    .goto Eastern Plaguelands,51.2,49.9
    .complete 5181,1
step
    .goto Eastern Plaguelands,53.9,65.8
    .complete 5181,2
step
    .goto Eastern Plaguelands,28.1,86.1
    .turnin 6024 -->> Turn in Hameya's Plea
step
    .goto Eastern Plaguelands,7.6,43.6
    >>Speak to Tirion Fordring
    .turnin 5845 -->> Turn in Of Lost Honor
    .accept 5846 -->> Accept Of Love and Family
step
    .goto Western Plaguelands,63.3,49.5
    .complete 4985,1
step
    .goto Western Plaguelands,63.8,57.2
    .complete 5168,2
step
    .goto Western Plaguelands,62.8,58.7
    .complete 5225,1
step
    .goto Western Plaguelands,62.9,58.5
    .turnin 5225 -->> Turn in Target: Gahrron's Withering
    .accept 5226 -->> Accept Return to Chillwind Camp
step
    .goto Western Plaguelands,53.7,64.7
    .turnin 4985 -->> Turn in The Wildlife Suffers Too
step << Warrior/Hunter/Rogue/Priest/Druid/Mage
    .goto Western Plaguelands,53.7,64.7
    .accept 4986 -->> Accept Glyphed Oaken Branch
step
    .goto Western Plaguelands,48.4,31.9
    .turnin 5904 -->> Turn in A Plague Upon Thee
    .accept 6389 -->> Accept A Plague Upon Thee
step
    .goto Western Plaguelands,51.9,28.2
    >>Speak to Kirsta Deepshadow
    .accept 6004 -->> Accept Unfinished Business
step
    .goto Western Plaguelands,51.8,44.3
    .complete 6004,1
    .complete 6004,2
    .complete 6004,3
    .complete 6004,4
step
    .goto Western Plaguelands,51.9,28.1
    .turnin 6004 -->> Turn in Unfinished Business
    .accept 6023 -->> Accept Unfinished Business
step
    .goto Western Plaguelands,55.1,23.5
    .complete 6023,2
step
    .goto Western Plaguelands,55.1,23.5
    .complete 9474,1
step
    .goto Western Plaguelands,57.8,36.2
    .complete 6023,1
step
    .goto Western Plaguelands,51.9,28.0
    .turnin 6023 -->> Turn in Unfinished Business
    .accept 6025 -->> Accept Unfinished Business
step
    .goto Western Plaguelands,45.7,18.8
    .complete 6025,1
step
    .goto Western Plaguelands,42.5,18.9
    .complete 5168,1
step
    .goto Western Plaguelands,51.9,28.0
    .turnin 6025 -->> Turn in Unfinished Business
step
    .hs >> Hearth to Light's Hope Chapel
step
    .goto Eastern Plaguelands,81.5,59.8
    .turnin 5168 -->> Turn in Heroes of Darrowshire
    .turnin 5181 -->> Turn in Villains of Darrowshire
    .turnin 5211 -->> Turn in Defenders of Darrowshire
step
    .fly >> Fly to Wester Plaguelands
step
    .goto Western Plaguelands,42.9,84.5
    >>Speak to High Priestess MacDonnell
    .turnin 5226 -->> Turn in Return to Chillwind Camp
    .turnin 9474 -->> Turn in The Mark of the Lightbringer
step
    .goto Western Plaguelands,42.7,84.0
    .turnin 5238 -->> Turn in Mission Accomplished!
step
    .goto Western Plaguelands,43.4,84.8
    >>Speak to Nathaniel Dumah
    .turnin 6389 -->> Turn in A Plague Upon Thee
step
    .goto Western Plaguelands,65.7,75.4
    >>Speak to Artist Renfray
    .turnin 5846 -->> Turn in Of Love and Family
step
    .goto Stormwind City,78.1,18.2
    .fly >> Fly to Stormwind
    .turnin 6186 -->> Turn in The Blightcaller Cometh
]])

