
zcc = zcc or {}
zcc.guidegroup = "Z1"
zcc.questQueryList = {}
zcc.itemQueryList = {}
local eventFrame = CreateFrame("Frame");
local f = CreateFrame("Frame", "GC_Editor", UIParent)
f.BottomFrame = CreateFrame("Frame","$parent_bottomFrame",f)

eventFrame:RegisterEvent("QUEST_LOG_UPDATE")
eventFrame:RegisterEvent("PLAYER_LOGIN")
eventFrame:RegisterEvent("GET_ITEM_INFO_RECEIVED")
eventFrame:RegisterEvent("PLAYER_ENTERING_WORLD")


GC_Debug = false


function GC_init()
	RXPData = RXPData or {}
	RXPData.stepSkip = RXPData.stepSkip or {}
	RXPData.numMapPins = RXPData.numMapPins or 7
end


local startTime = GetTime()


eventFrame:SetScript("OnEvent",function(self,event,arg1,arg2,arg3,arg4)

	if event == "QUEST_LOG_UPDATE" then
		local update
		for id,v in pairs(zcc.questQueryList) do
			if C_QuestLog.GetQuestInfo(id) then
				update = true 
				zcc.questQueryList[id] = nil
			end
		end
		if update then
			zcc.updateStepText = true
			--SetStep(RXPData.currentStep)
		end
	elseif event == "GET_ITEM_INFO_RECEIVED" and arg2 then
		if zcc.itemQueryList[arg1] then
			zcc.itemQueryList[arg1] = nil
			zcc.updateStepText = true
		elseif GetTime() - startTime < 15 then
			zcc.updateStepText = true
		end
	elseif event == "PLAYER_LOGIN" then
		GC_init()
		zcc.GenerateMenuTable()
		loadtime = GetTime()
	end

	--debugMsg(event)

end)


function zcc.GetGuideTable(guideGroup,guideName)
	return zcc.guides[zcc.guideList[guideGroup][guideName]]
end


zcc.icons = {
accept = "|TInterface/GossipFrame/AvailableQuestIcon:0|t",
turnin = "|TInterface/GossipFrame/ActiveQuestIcon:0|t",
collect = "|TInterface/GossipFrame/VendorGossipIcon:0|t",
combat = "|TInterface/GossipFrame/BattleMasterGossipIcon:0|t",
complete = "|TInterface/GossipFrame/HealerGossipIcon:0|t",
vendor = "|TInterface/GossipFrame/BankerGossipIcon:0|t",
reputation = "|TInterface/GossipFrame/WorkOrderGossipIcon:0|t",
fly = "|TInterface/GossipFrame/TaxiGossipIcon:0|t",
--home = "|TInterface/GossipFrame/PetitionGossipIcon:0|t",
fp = "|TInterface/MINIMAP/TRACKING/OBJECTICONS:0:0:0:0:256:64:160:191:32:63|t",
hs = "|TInterface/MINIMAP/TRACKING/Innkeeper:0|t",
trainer = "|TInterface/GossipFrame/TrainerGossipIcon:0|t",
arrow = "|TInterface/MINIMAP/MinimapArrow:0|t",
marker = "|TInterface/WORLDSTATEFRAME/ColumnIcon-FlagCapture2:0|t",
goto = "|TInterface/MINIMAP/POIICONS:0:0:0:0:128:128:96:112:0:15|t",
deathskip = "|TInterface/MINIMAP/POIICONS:0:0:0:0:128:128:112:127:0:15|t",
home = "|TInterface/MINIMAP/POIICONS:0:0:0:0:128:128:64:79:0:15|t",
xp = "|TInterface/PETBATTLES/BattleBar-AbilityBadge-Strong-Small:0|t",
}
local icons = zcc.icons




local backdrop = {
     bgFile = "Interface/Tooltips/UI-Tooltip-Background",
     edgeFile = "Interface/GLUES/Common/Glue-Tooltip-Border",
     tile = true,
     edgeSize = 8,
     tileSize = 8,
     insets = {
          left = 5,
          right = 5,
          top = 5,
          bottom = 5,
     },
}




f:Show()

f:SetMovable(true)
f:SetClampedToScreen(true)
f:SetResizable(true)
f:SetMinResize(200,20)
local isResizing

f.OnMouseDown = function(self, button)
	if IsAltKeyDown() then
		f:StartSizing("BOTTOMRIGHT")
		isResizing = true
		f:SetScript("OnUpdate",zcc.UpdateBottomFrame)
	else
		f:StartMoving()
	end
end

f.OnMouseUp = function(self,button)
	f:StopMovingOrSizing()
	if isResizing then
		isResizing = nil
		f:SetScript("OnUpdate",nil)
	end
end



local isResizing
f:SetScript("OnMouseDown", f.OnMouseDown)
f:SetScript("OnMouseUp", f.OnMouseUp)
f:EnableMouse(1)

zcc.stepPos = {}



function StepScroll(n)
	local value
	if n == 1 or not zcc.stepPos[n] then
		value = 0
	else
		value = zcc.stepPos[n]/zcc.stepPos[0]*f.Steps.f1:GetHeight()-2
		local smax = f.Steps.f1:GetHeight()-f.BottomFrame:GetHeight()+10
		if value > smax then
			value = smax
		end
	end	
	f.SF.ScrollBar:SetValue(value)

end







f:SetScript("OnShow", function(self)
	UpdateWindow()
end)



local width,height = 250,250

f:SetWidth(width)
f:SetHeight(height) 	
--f:SetSize(150, 150)
f:SetPoint("LEFT",15,0)
f:SetFrameStrata("BACKGROUND")
--f:SetBackdrop(backdrop)
--f:SetBackdropColor(0,0,0)
--[[
f.Close = CreateFrame("Button", "$parentClose", f)
f.Close:SetWidth(24)
f.Close:SetHeight(24)
f.Close:SetPoint("TOPRIGHT",0,0)
f.Close:SetNormalTexture("Interface/Buttons/UI-Panel-MinimizeButton-Up")
f.Close:SetPushedTexture("Interface/Buttons/UI-Panel-MinimizeButton-Down")
f.Close:SetHighlightTexture("Interface/Buttons/UI-Panel-MinimizeButton-Highlight", "ADD")
f.Close:SetScript("OnClick", function(self)
     f:Hide()
end)
f.Select = CreateFrame("Button", "$parentSelect", f, "UIPanelButtonTemplate")
f.Select:SetWidth(70)
f.Select:SetHeight(14)
f.Select:SetPoint("RIGHT", f.Close, "LEFT")
f.Select:SetText("Select All")
]]


--[[
f.GuideNameFrame = CreateFrame("Frame", "$parentGuideNameFrame", f)
f.GuideNameFrame:SetWidth(70)
f.GuideNameFrame:SetHeight(14)
f.GuideNameFrame:SetPoint("BOTTOMLEFT",f,"BOTTOMLEFT",0,0)
f.GuideNameFrame.text = f.GuideNameFrame:CreateFontString(nil,"OVERLAY") 
f.GuideNameFrame.text:SetFontObject(GameFontNormal)
f.GuideNameFrame.text:SetPoint("TOPLEFT",5,5)
f.GuideNameFrame.text:SetJustifyH("RIGHT")
f.GuideNameFrame.text:SetJustifyV("TOP")
f.GuideNameFrame.text:SetText("1234567")

]]
f.backdropEdge = {
 bgFile = "Interface/BUTTONS/WHITE8X8",
 --edgeFile = "Interface/BUTTONS/WHITE8X8",
 --edgeFile = "Interface/ARENAENEMYFRAME/UI-Arena-Border",
 edgeFile = "Interface/GLUES/Common/Glue-Tooltip-Border",
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




local backdrop = {bgFile = "Interface/Tooltips/UI-Tooltip-Background", 
	tile = true, tileSize = 16, 
	--edgeFile = "Interface/Tooltips/UI-Tooltip-Border", 
	--edgeSize = 16, insets = {left = 4, right = 4, top = 4, bottom = 4}
}


f.CurrentStepFrame = CreateFrame("Frame", nil, f)
--f.CurrentStepFrame:SetBackdrop(backdrop)
--f.CurrentStepFrame:SetBackdropColor(0.3,0.01,0.01)
f.CurrentStepFrame:SetPoint("BOTTOMLEFT", f,"TOPLEFT",10,0)
f.CurrentStepFrame:SetPoint("BOTTOMRIGHT",f,"TOPRIGHT",-10,0)
f.CurrentStepFrame:SetHeight(20)
f.CurrentStepFrame:SetScript("OnMouseDown", f.OnMouseDown)
f.CurrentStepFrame:SetScript("OnMouseUp", f.OnMouseUp)
f.CurrentStepFrame:EnableMouse(1)

local uniquealyzer = 1;
function createCheckbutton(parent, x_loc, y_loc, displayname)
   uniquealyzer = uniquealyzer + 1;
   
   local checkbutton = CreateFrame("CheckButton", "my_addon_checkbutton_0" .. uniquealyzer, parent, "ChatConfigCheckButtonTemplate");
   checkbutton:SetPoint("TOPLEFT", x_loc, y_loc);
   getglobal(checkbutton:GetName() .. 'Text'):SetText(displayname);
   
   return checkbutton;
end


f.CurrentStepFrame.frame = {}
function f.ClearFrameData()
	
	for i,stepframe in ipairs(f.CurrentStepFrame.frame) do
		--frame:SetHeight(0)
		stepframe:Hide()
		stepframe:SetScript("OnUpdate",nil)
		stepframe:SetScript("OnEvent",nil)
		stepframe:UnregisterAllEvents()
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
				frame.step = nil
				frame.element = nil
				frame.index = nil
			end
			frame:Hide()
			frame:UnregisterAllEvents()
			frame:SetScript("OnUpdate",nil)
			frame:SetScript("OnEvent",nil)
			frame.button:SetChecked(false)
		end
	end
end
zcc.MainFrame = f
local currentGuide
f.CurrentStepFrame.activeSteps = {}
local isUpdating
function zcc.UpdateStepCompletion()
	zcc.updateSteps = false
	
	local n = 0
	local update
	
	for i,step in ipairs(f.CurrentStepFrame.activeSteps) do
		local completed = zcc.AldorScryerCheck(step)
		if not step.completed then
			for j,element in ipairs(step.elements) do
				if not element.completed then
					completed = false
					break
				end
			end
		end
		
		local completewith = step.completewith
		if completewith and not completed then
			local guide = zcc.currentGuide
			if completewith == "next" then
				completewith = step.index+1
			else
				completewith = guide.labels[completewith]
			end
			if completewith then
				if guide.steps[completewith].sticky then
					if RXPData.stepSkip[completewith] then
						completed = true
					end
				else
					if RXPData.currentStep > completewith then
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
				RXPData.stepSkip[step.index] = true
				update = true
				step.active = nil
			elseif step.index >= RXPData.currentStep then
				--print('ok',RXPData.currentStep)
				return SetStep(step.index+1)
			end
		end
	end
	
	if update then
		--print('opt',RXPData.currentStep)
		return SetStep(RXPData.currentStep)
	end
end

function SetStep(n)
	local guide = zcc.currentGuide
	if n > #guide.steps or not guide then return print('error1A',guide) end
	local group = guide.group
	RXPData.currentStep = n
	--isUpdating = true


	if not guide.steps[n].active then
		for _,element in ipairs(guide.steps[n]) do
			if element.OnStepActivation then
				element:OnStepActivation()
			end
		end
	end

	RXPData.stepSkip[n+1] = nil
	if guide.steps[n].sticky then
		return SetStep(n+1)
	end
	
	for i,step in pairs(f.CurrentStepFrame.activeSteps) do
		step.active = nil
		step.completed = nil
	end
	
	f.CurrentStepFrame.activeSteps = {}
	f.ClearFrameData()
	
	for i = 1,n-1 do
		local step = guide.steps[i]
		if step.sticky and not RXPData.stepSkip[i] then
			table.insert(f.CurrentStepFrame.activeSteps,step)
			--f.Steps.frame[i]:SetAlpha(0.66)
			step.active = true
		end
		--ClearMapPins(i)
	end
	
	table.insert(f.CurrentStepFrame.activeSteps,guide.steps[n])
	f.Steps.frame[n]:SetAlpha(1)
	guide.steps[n].active = true

	local totalHeight = 0
	local c = 0
	local heightDiff = f:GetHeight() - f.CurrentStepFrame:GetHeight()
	
	for i,step in pairs(f.CurrentStepFrame.activeSteps) do
		
		local index = step.index
		c = c+1
		local stepframe = f.CurrentStepFrame.frame[c]
		if not stepframe then
			f.CurrentStepFrame.frame[c] = CreateFrame("Frame","$parent_frame_"..c,f.CurrentStepFrame)
			stepframe = f.CurrentStepFrame.frame[c]
			stepframe:SetBackdrop(f.backdropEdge)
			stepframe:SetBackdropColor(9/255,12/255,43/255,0.75)
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
			stepframe.number = CreateFrame("Frame","$parent_number",stepframe)
			stepframe.number:SetBackdrop(f.backdropEdge)
			stepframe.number:SetBackdropColor(111/300,44/300,150/300,1)
			stepframe.number:SetPoint("TOPLEFT",stepframe,7,5)
			stepframe.number.text = stepframe.number:CreateFontString(nil,"OVERLAY")
			stepframe.number.text:SetFontObject(GameFontNormalSmall)
			stepframe.number.text:ClearAllPoints()
			stepframe.number.text:SetPoint("CENTER",stepframe.number,2,1)
			stepframe.number.text:SetJustifyH("CENTER")
			stepframe.number.text:SetJustifyV("CENTER")
			stepframe.number.text:SetTextColor(1,1,1)
			stepframe.number.text:SetFont("Fonts\\FRIZQT__.TTF", 9)
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
				stepframe.elements[e] = CreateFrame("Frame","$parent_"..e,stepframe)
				elementFrame = stepframe.elements[e]
				--elementFrame:SetHeight(0)
				--elementFrame:SetWidth(300)
				elementFrame.button = CreateFrame("CheckButton", "$parent_check", elementFrame, "ChatConfigCheckButtonTemplate");
				elementFrame.button:SetSize(16,16)
				elementFrame.button:SetScript("PostClick",function(self) 
					local parent = self:GetParent()
					local element = parent.element 
					if element then
						element.completed = self:GetChecked()
					end
					if element.completed then
						element.skip = true
					else
						element.skip = false
					end
					zcc.updateSteps = true
					zcc.updateMap = true
				end)
				elementFrame.text = getglobal(elementFrame.button:GetName() .. 'Text')
				elementFrame.text:SetParent(elementFrame)
				
				
				elementFrame.text:SetJustifyH("LEFT")
				elementFrame.text:SetJustifyV("CENTER")
				elementFrame.text:SetTextColor(1,1,1)
				elementFrame.text:SetFont("Fonts\\FRIZQT__.TTF", 11)
				
				
				elementFrame.text:SetJustifyH("LEFT")
				elementFrame.text:SetJustifyV("CENTER")
				elementFrame.text:SetTextColor(1,1,1)
				elementFrame.text:SetFont("Fonts\\FRIZQT__.TTF", 11)
				
				
				elementFrame.icon = elementFrame:CreateFontString(nil,"OVERLAY")
				elementFrame.icon:SetFontObject(GameFontNormalSmall)
--				elementFrame.icon:SetJustifyH("LEFT")
--				elementFrame.icon:SetJustifyV("CENTER")
			end
			elementFrame.step = step
			elementFrame.element = element
			elementFrame.index = index
			element.frame = elementFrame
			elementFrame.button:Enable()
			if element.tag then
				local events = element.event or RXPG[group].events[element.tag]
				RXPG[group][element.tag](elementFrame)
				if type(events) == "string" then
					if event == "OnUpdate" then
						elementFrame:SetScript("OnUpdate",RXPG[group][element.tag])
					elseif type(events) == "table" then
						elementFrame:RegisterEvent(event)
						elementFrame:SetScript("OnEvent",RXPG[group][element.tag])
					end
				elseif type(events) == "table" then
					for _,event in ipairs(events) do
						if event == "OnUpdate" then
							elementFrame:SetScript("OnUpdate",RXPG[group][element.tag])
						else
							elementFrame:RegisterEvent(event)
							elementFrame:SetScript("OnEvent",RXPG[group][element.tag])
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
	zcc.UpdateText()
	zcc.updateSteps = true
	zcc.updateMap = true
	StepScroll(n)
end

function zcc.UpdateText()
zcc.updateStepText = false

local guide = zcc.currentGuide
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

	stepframe.number.text:SetText("Step "..tostring(index))
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
			elementFrame.button:SetPoint("TOPLEFT",elementFrame, 4, -1);
			elementFrame.text:ClearAllPoints()
			elementFrame.text:SetPoint("TOPLEFT",elementFrame.button,"TOPRIGHT",8,-2)
			elementFrame.text:SetPoint("RIGHT",stepframe,-5,0)
			
			elementFrame.icon:ClearAllPoints()
			elementFrame.icon:SetPoint("TOPLEFT",elementFrame.button,"TOPRIGHT",-3,-2)
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
			local icon = element.icon or zcc.icons[element.tag]
			if icon then elementFrame.icon:SetText(icon) end
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

C_Timer.After(16,function() zcc.updateBottomFrame = true end)

C_Timer.NewTicker(0.3473,function() 
	if zcc.updateSteps then
		zcc.UpdateStepCompletion()
	elseif zcc.updateStepText then
		for n,element in pairs(zcc.stepUpdateList) do
			zcc.UpdateBottomFrame(element)
			--print('ub',n)
			zcc.stepUpdateList[n] = nil
		end
		zcc.UpdateText()
	elseif zcc.updateMap then
		zcc.UpdateMap()
	elseif zcc.updateBottomFrame then
		zcc.UpdateBottomFrame()
	else
		zcc.UpdateGotoSteps()
	end
end)


f.BottomFrame:SetBackdrop(f.backdropEdge)
f.BottomFrame:SetBackdropColor(9/255,12/255,43/255,0.75)
f.BottomFrame:SetPoint("TOPLEFT", f, 10, -10)
f.BottomFrame:SetPoint("BOTTOMRIGHT", f,-10, 10)





f.GuideName = CreateFrame("Frame","$parent_guideName",f)
f.GuideName:SetBackdrop(f.backdropEdge)
f.GuideName:SetBackdropColor(111/300,44/300,150/300,1)
f.GuideName:SetPoint("TOPLEFT",f.BottomFrame,7,7)
f.GuideName.text = f.GuideName:CreateFontString(nil,"OVERLAY")
--f.GuideName.text:SetFontObject(GameFontNormalSmall)
f.GuideName.text:ClearAllPoints()
f.GuideName.text:SetPoint("CENTER",f.GuideName,2,1)
f.GuideName.text:SetJustifyH("CENTER")
f.GuideName.text:SetJustifyV("CENTER")
f.GuideName.text:SetTextColor(1,1,1)
f.GuideName.text:SetFont("Fonts\\FRIZQT__.TTF", 10)
f.GuideName.text:SetText("Click here to pick a guide")
f.GuideName:SetSize(f.GuideName.text:GetStringWidth()+12,21)
f.GuideName:SetFrameLevel(6)

zcc.MenuFrame = CreateFrame("Frame", "RXPG_MenuFrame", UIParent, "UIDropDownMenuTemplate")

-- Make the menu appear at the cursor: 


f.GuideName:SetScript("OnEnter",function()
	f.GuideName:SetBackdropColor(111/200,44/200,150/200,1)
	
end)
f.GuideName:SetScript("OnMouseDown",function()
EasyMenu(zcc.menuList, zcc.MenuFrame, "cursor", 0 , 0, "MENU");
end)
 F2 = f.BottomFrame
f.GuideName:SetScript("OnLeave",function()
	f.GuideName:SetBackdropColor(111/300,44/300,150/300,1)
end)


--f.Text:SetAutoFocus(false)
f.SF = CreateFrame("ScrollFrame", "$parent_DF", f.BottomFrame, "UIPanelScrollFrameTemplate")
f.SF:SetPoint("TOPLEFT", f.BottomFrame,5, -5)
f.SF:SetPoint("BOTTOMRIGHT", f.BottomFrame,-20, 7)
f.SF.ScrollBar:SetPoint("TOPLEFT",f.SF,"TOPRIGHT",0,-18)
--f.SF.ScrollBar:SetWidth(5)


hooksecurefunc(f.SF.ScrollBar,"SetValue",function(self,value)
	local h = math.floor(f.Steps:GetHeight()+10)
	local scroll = h-f.BottomFrame:GetHeight()
	if scroll < 0 then scroll = 0 end
	if scroll <= value then f.SF.ScrollBar.ScrollDownButton:Disable() end
	f.SF.ScrollBar:SetMinMaxValues(0,scroll)
end)




f.Steps = CreateFrame("Frame", "$parent_steps", f.BottomFrame)
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



local currentAlpha
function zcc:LoadGuide(guide,OnLoad)
	startTime = GetTime()
	CloseDropDownMenus()
	if not guide then
		return error('Guide not found')
	end
	if not (OnLoad and RXPData.currentStep) then
		RXPData.currentStep = 1
	end
	RXPData.stepSkip = {}
	local totalHeight = 0
	local nframes = 0
	zcc.currentGuide = guide
	zcc.currentGuideName = guide.name
	f.GuideName.text:SetText(guide.displayName)
	local nameWidth = f.GuideName.text:GetStringWidth()+10
	f.GuideName:SetWidth(nameWidth)
	nameWidth = math.max(f:GetWidth(),nameWidth+45)
	f:SetWidth(nameWidth)
	f:SetMinResize(nameWidth,20)
	if not guide.labels then
		guide.labels = {}
	end
	
	for n,step in ipairs(guide.steps) do
		step.index = n
		if step.label then
			guide.labels[step.label] = n
		end


		nframes = nframes + 1
		f.Steps.frame[n] = f.Steps.frame[n] or CreateFrame("Frame","$parent_frame_"..n,f.Steps)
		local frame = f.Steps.frame[n]
		frame.step = step
		frame:SetAlpha(0.66)
		frame:ClearAllPoints()
		local anchor
		if n == 1 then
			anchor = f.Steps
			frame:SetPoint("TOPLEFT",anchor,"TOPLEFT",2,-3)
			frame:SetPoint("TOPRIGHT",anchor,"TOPRIGHT",-10,-3)
		else
			anchor = f.Steps.frame[n-1]
			frame:SetPoint("TOPLEFT",anchor,"BOTTOMLEFT",0,-3)
			frame:SetPoint("TOPRIGHT",anchor,"BOTTOMRIGHT",0,-3)
		end
		frame:SetBackdrop(backdrop)
		frame:SetBackdropColor(9/255,12/255,43/255)
		
		frame:SetScript("OnEnter",function()
			currentAlpha = frame:GetAlpha()
			frame:SetAlpha(1)
			frame:SetBackdropColor(54/255,62/255,109/255)
		end)
		frame:SetScript("OnLeave",function()
			frame:SetBackdropColor(9/255,12/255,43/255)
			frame:SetAlpha(currentAlpha)
		end)
		frame:SetScript("OnMouseDown",function()
			step.completionState = {}
			SetStep(n,guide)
		end)
		
		
		if not frame.text then
			frame.text = frame:CreateFontString(nil,"OVERLAY") 
		end
		
		if not frame.number then
			frame.number = CreateFrame("Frame","$parent_number",frame)
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
			frame.number.text:SetFont("Fonts\\FRIZQT__.TTF", 9)
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
		frame.text:SetFont("Fonts\\FRIZQT__.TTF", 9)
		
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
	f.Steps:SetHeight(200)
	zcc.UpdateBottomFrame()
	--zcc.updateBottomFrame = true
	SetStep(RXPData.currentStep)
end

function zcc.UpdateBottomFrame(self)
	
	if self and self.step and zcc.stepPos[0] then
		local stepNumber = self.step.index
		local frame = f.Steps.frame[stepNumber]
		local step = frame.step
		local fheight
		local factionCheck, faction = zcc.AldorScryerCheck(step)
		if factionCheck then
			local text
			for i,element in ipairs(frame.step.elements) do
				if element.requestFromServer then
					element.element = element
					RXPG[zcc.currentGuide.group][element.tag](element)
					zcc.updateStepText = true
				end
				local rawtext = element.tooltipText or element.text
				if rawtext and not element.hideTooltip then
					if not text then
						text = "  "..rawtext
					else
						text = text.."\n  "..rawtext
					end
				end
			end
			frame.text:SetText(text)
			fheight = math.ceil(frame.text:GetStringHeight() + 8)
			frame:SetAlpha(1)
		else
			fheight = 1
			frame:SetAlpha(0)
		end
		
		local hDiff = fheight - frame:GetHeight()
		frame:SetHeight(fheight)
		
		for n = stepNumber+1, #zcc.stepPos do
			zcc.stepPos[n] = zcc.stepPos[n]+hDiff
		end
		zcc.stepPos[0] = zcc.stepPos[0]+hDiff
		
	else
		zcc.updateBottomFrame = false
		local totalHeight = 0
		for n,frame in ipairs(f.Steps.frame) do
			if not frame:IsShown() then break end
			local text
			local step = frame.step
			local fheight
			local factionCheck, faction = zcc.AldorScryerCheck(step)
			if factionCheck then
				for i,element in ipairs(frame.step.elements) do
					if not self and element.requestFromServer then
						element.element = element
						RXPG[zcc.currentGuide.group][element.tag](element)
					end
					local rawtext = element.tooltipText or element.text
					if rawtext and rawtext ~= "" then
						if not text then
							text = "   "..rawtext
						else
							text = text.."\n   "..rawtext
						end
					end
				end
				frame:SetAlpha(1)
				frame.text:SetText(text)
				fheight = math.ceil(frame.text:GetStringHeight() + 8)
			else
				fheight = 1
				frame:SetAlpha(0)
			end
			frame:SetHeight(fheight)
			totalHeight = totalHeight + fheight+2
			zcc.stepPos[n] = totalHeight-3
		end
		zcc.stepPos[0] = totalHeight
		--print(f.Steps.frame[#f.Steps.frame]:GetBottom(),totalHeight)
	end
	if zcc.currentGuide then
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



--[[
local panel = CreateFrame("Frame")
optionPanel.name = "RXPG"
InterfaceOptions_AddCategory(panel)
]]

function zcc.GenerateMenuTable()
	zcc.menuList = {
		{
			text = "Available Guides",
			isTitle = 1,
			notCheckable = 1,
		},
	}

	local menuIndex = 1
	for group,t in pairs(zcc.guideList) do
		menuIndex = menuIndex+1
		
		if not t.sorted_ then
			t.sorted_ = true
			table.sort(t.names_)
		end
		local item = { text = group, notCheckable = 1, hasArrow = true, menuList = {}}
		local submenuIndex = 0
		for j,guideName in ipairs(t.names_) do
			submenuIndex = submenuIndex +1
			local guide = zcc.GetGuideTable(group,guideName)
			guide.menuIndex = menuIndex
			guide.submenuIndex = submenuIndex
			local subitem = {}
			subitem.text = guide.displayName
			subitem.func = zcc.LoadGuide
			subitem.arg1 = guide
			subitem.notCheckable = 1
			table.insert(item.menuList,subitem)
		end
		
		table.insert(zcc.menuList,item)
	end
end



ff1 = f



SLASH_RXPG1 = "/rxpg"
	
	
SlashCmdList["RXPG"] = function(msg)
	--TODO: interface options panel
end 



