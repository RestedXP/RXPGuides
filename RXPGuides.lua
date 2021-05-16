RXP_ = RXP_ or {}
RXPGuides = {}
local RXPG = RXPGuides
local version = select(4, GetBuildInfo())
local _,class = UnitClass("player")

local BackdropTemplate = "BackdropTemplate"
if version < 20500 or version >= 30000 then
	BackdropTemplate = nil
    error("Unsupported version")
end


RXP_.questQueryList = {}
RXP_.itemQueryList = {}
RXP_.questAccept = {}
RXP_.questTurnIn = {}

RXP_.font = GameFontNormal:GetFont()
local eventFrame = CreateFrame("Frame");
local f = CreateFrame("Frame", "RXPFrame", UIParent, BackdropTemplate)
f.BottomFrame = CreateFrame("Frame","$parent_bottomFrame",f, BackdropTemplate)

eventFrame:RegisterEvent("QUEST_LOG_UPDATE")
eventFrame:RegisterEvent("PLAYER_LOGIN")
eventFrame:RegisterEvent("GET_ITEM_INFO_RECEIVED")

eventFrame:RegisterEvent("QUEST_COMPLETE")
eventFrame:RegisterEvent("QUEST_PROGRESS")
eventFrame:RegisterEvent("QUEST_ACCEPT_CONFIRM")
eventFrame:RegisterEvent("QUEST_GREETING")
eventFrame:RegisterEvent("GOSSIP_SHOW")
eventFrame:RegisterEvent("QUEST_DETAIL")
eventFrame:RegisterEvent("TRAINER_SHOW")
eventFrame:RegisterEvent("TRAINER_CLOSED")
eventFrame:RegisterEvent("QUEST_TURNED_IN")
eventFrame:RegisterEvent("PLAYER_LEVEL_UP")



RXPG_Debug = false


function RXPG_init()
	RXPData = RXPData or {}
	RXPCData = RXPCData or {}
	RXPCData.stepSkip = RXPCData.stepSkip or {}
	RXPData.numMapPins = RXPData.numMapPins or 7
    RXPData.arrowSize = RXPData.arrowSize or 1
    RXPData.windowSize = RXPData.windowSize or 1
    RXPData.trainGenericSpells = RXPData.trainGenericSpells or true
    RXPData.anchorOrientation = RXPData.anchorOrientation or 1
    f:SetShown(not RXPCData.hideWindow)
    --RXP_.arrowFrame:SetShown(not RXPData.disableArrow)
end


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

local trainerUpdate = 0
function RXP_.BuySpells(id,level)
	local name, rank, category, expanded = GetTrainerServiceInfo(id)
	if category ~= "available" then
		return
	end
    
    if RXPData.trainGenericSpells then
        for spellLvl,spells in pairs(RXP_.defaultSpellList[class]) do
            if spellLvl <= level then
                for i,spellId in pairs(spells) do
                    if IsSpellKnown(spellId) then
                        spells[i] = nil
                    elseif C_Spell.IsSpellDataCached(spellId) then
                        local sName = GetSpellInfo(spellId)
                        local sRank = GetSpellSubtext(spellId)
                        if sName == name and sRank == rank then
                            BuyTrainerService(id)
                            return
                        end
                    end
                end
            end
        end
    end
    
    if not RXPData.disableTrainerAutomation then
        rank = rank and tonumber(rank:match("(%d+)")) or 0
        for spellName,spellRank in pairs(RXP_.skillList) do
            if name == spellName and (rank <= spellRank or spellRank == 0) then
                BuyTrainerService(id)
                return
            end
        end
    end
end

local function OnTrainer()
	local level = UnitLevel("player")
	local n = GetNumTrainerServices()

	if not n or n == 0 or GetTime() - trainerUpdate > 15 then
		return
	end

	for id = 1,n do
		RXP_.BuySpells(id,level)
	end

end

local tTimer = 0
local function trainerFrameUpdate(self,t)
	tTimer = tTimer + t
	if tTimer >= 0.4 then
		tTimer = 0
		if GetTime() - trainerUpdate > 15 then
			self:SetScript("OnUpdate",nil)
		end
		OnTrainer()
	end
end

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
		C_Timer.After(1, function() RXP_:LoadGuide(RXP_.currentGuide,true) end)
	elseif event == "TRAINER_SHOW" then
		self:SetScript("OnUpdate",trainerFrameUpdate)
		trainerUpdate = GetTime()
		return
	elseif event == "TRAINER_CLOSED" then
		self:SetScript("OnUpdate",nil)
		return
	elseif event == "PLAYER_LOGIN" then
		RXPG_init()
		RXP_.GenerateMenuTable()
        RXP_.CreateOptionsPanel()
		loadtime = GetTime()
		local guide = RXP_.GetGuideTable(RXPCData.currentGuideGroup,RXPCData.currentGuideName)
        if not guide and RXPData.autoLoadGuides then
            guide = RXP_.defaultGuide
            if UnitLevel("player") ~= 58 or not guide.boost58 then
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
    elseif event == "PLAYER_LEVEL_UP" then
        RXP_.SetStep(RXPCData.currentStep)
	end
	
	if IsControlKeyDown() == not (RXPData and RXPData.disableQuestAutomation) then return end
	
	if event == "QUEST_COMPLETE" then
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
		
	elseif event == "QUEST_PROGRESS" and IsQuestCompletable() then
		CompleteQuest()
		--questProgressTimer = GetTime()
		
	elseif event == "QUEST_DETAIL" then
		local id = GetQuestID()
		if RXP_.QuestAutoAccept(id) then
			AcceptQuest()
			HideUIPanel(QuestFrame)
		end
		
	elseif event == "QUEST_ACCEPT_CONFIRM" and RXP_.QuestAutoAccept(arg2)then
		ConfirmAcceptQuest() 
		StaticPopup_Hide("QUEST_ACCEPT")
		
	elseif event == "QUEST_GREETING" then
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
	elseif event == "GOSSIP_SHOW" then
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

end)


function RXP_.GetGuideTable(guideGroup,guideName)
	if guideGroup and RXP_.guideList[guideGroup] and guideName and RXP_.guideList[guideGroup][guideName] then
		return RXP_.guides[RXP_.guideList[guideGroup][guideName]]
	end
end


local backdrop = {
 bgFile = "Interface/BUTTONS/WHITE8X8",
 --edgeFile = "Interface/BUTTONS/WHITE8X8",
 --edgeFile = "Interface/ARENAENEMYFRAME/UI-Arena-Border",
 edgeFile = "Interface/AddOns/RXPGuides/Textures/rxp-borders",
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
--f:SetSize(150, 150)
f:SetPoint("LEFT",0,35)
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
f.GuideNameFrame = CreateFrame("Frame", "$parentGuideNameFrame", f, BackdropTemplate)
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

local colors = {}
RXP_.colors = colors
colors.background = {12/255,12/255,27/255,1}
colors.bottomFrameBG = {18/255,18/255,40/255,1}
colors.bottomFrameHighlight = {54/255,62/255,109/255,1}
colors.mapPins = {206/255,123/255,1,1}

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
 edgeFile = "Interface/AddOns/RXPGuides/Textures/rxp-borders",
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



f.CurrentStepFrame.frame = {}
function f.ClearFrameData()
	RXP_.questAccept = {}
	RXP_.questTurnIn = {}
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
				frame.element.skip = nil
				frame.step = nil
				frame.element = nil
				frame.index = nil
			end
			frame:Hide()
			frame:UnregisterAllEvents()
			frame:SetScript("OnUpdate",nil)
			frame:SetScript("OnEvent",nil)
            frame:SetScript("OnEnter",nil)
            frame:SetScript("OnLeave",nil)
            frame:SetMouseClickEnabled(false)
			frame.button:SetChecked(false)
		end
	end
end
RXP_.MainFrame = f
local currentGuide
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
				if guide.steps[completewith].sticky then
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
	
	f.CurrentStepFrame.activeSteps = {}
	f.ClearFrameData()
	local level = UnitLevel("player")
    local scrollHeight = 1
    
	for i = 1,n-1 do
		local step = guide.steps[i]
		local req
		if step.requires then
			req = guide.steps[guide.labels[step.requires]]
			while req and req.requires and not RXPCData.stepSkip[guide.steps[guide.labels[req.requires]].index] do
				req = guide.steps[guide.labels[req.requires]]
			end
		end
		
		if step.sticky and not RXPCData.stepSkip[i] and	not(req and (req.active or (req.sticky and not RXPCData.stepSkip[req.index]))) and level >= step.level then
			table.insert(f.CurrentStepFrame.activeSteps,step)
            if n > 1 then scrollHeight = n-1 end
			--f.Steps.frame[i]:SetAlpha(0.66)
			step.active = true
		end
		--ClearMapPins(i)
	end
	
	local step = guide.steps[n]
	if step.completed and n < #guide.steps then
		return RXP_.SetStep(n+1)
	elseif step and not step.completed and not(step.requires and #f.CurrentStepFrame.activeSteps > 0 and guide.steps[guide.labels[step.requires]].active) and level >= step.level then
		table.insert(f.CurrentStepFrame.activeSteps,step)
		f.Steps.frame[n]:SetAlpha(1)
		step.active = true
        scrollHeight = n
	end
	
	if #f.CurrentStepFrame.activeSteps == 0 then 
		if n >= #guide.steps then
			return RXPG[group].next()
		else
			return RXP_.SetStep(n+1)
		end
	end
	
	local totalHeight = 0
	local c = 0
	local heightDiff = f:GetHeight() - f.CurrentStepFrame:GetHeight()
	for i,step in pairs(f.CurrentStepFrame.activeSteps) do
		
		local index = step.index
		c = c+1
		local stepframe = f.CurrentStepFrame.frame[c]
		if not stepframe then
			f.CurrentStepFrame.frame[c] = CreateFrame("Frame","$parent_frame"..c,f.CurrentStepFrame, BackdropTemplate)
			stepframe = f.CurrentStepFrame.frame[c]
			stepframe:SetBackdrop(f.backdropEdge)
			stepframe:SetBackdropColor(unpack(colors.background))
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
			stepframe.number:SetBackdrop(f.backdropEdge)
			stepframe.number:SetBackdropColor(unpack(colors.background))
			stepframe.number:SetPoint("TOPLEFT",stepframe,7,5)
			stepframe.number.text = stepframe.number:CreateFontString(nil,"OVERLAY")
			stepframe.number.text:SetFontObject(GameFontNormalSmall)
			stepframe.number.text:ClearAllPoints()
			stepframe.number.text:SetPoint("CENTER",stepframe.number,2,1)
			stepframe.number.text:SetJustifyH("CENTER")
			stepframe.number.text:SetJustifyV("CENTER")
			stepframe.number.text:SetTextColor(1,1,1)
			stepframe.number.text:SetFont(RXP_.font, 9)
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
                button:SetNormalTexture("Interface/AddOns/RXPGuides/Textures/rxp-btn-blank-32")
                button:SetCheckedTexture("Interface/AddOns/RXPGuides/Textures/rxp-checked-32")
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
                    local element = self.element or self:GetParent().element
                    if element and element.tooltip then
                        GameTooltip:SetOwner(self, "ANCHOR_BOTTOM",0,-10)
                        GameTooltip:ClearLines()
                        GameTooltip:AddLine(element.tooltip,1,1,1)
                        GameTooltip:Show()
                    end
                end
                
                local function tpOnLeave(self)
                    local element = self.element or self:GetParent().element
                    if element and element.tooltip then
                        GameTooltip:Hide()
                    end
                end
                
                elementFrame:SetScript("OnEnter",tpOnEnter)
                elementFrame:SetScript("OnLeave",tpOnLeave)
                
                elementFrame.button:HookScript("OnEnter",tpOnEnter)
                elementFrame.button:HookScript("OnLeave",tpOnLeave)
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
	RXP_.UpdateText()
	RXP_.updateSteps = true
	RXP_.updateMap = true
	StepScroll(scrollHeight)
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
			local icon = element.icon or RXP_.icons[element.tag]
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


tickTimer = 0
C_Timer.NewTicker(0.1473,function() 
	if RXP_.loadNextStep then
		RXP_.loadNextStep = false
		RXP_.SetStep(RXPCData.currentStep+1)
	elseif RXP_.updateSteps then
		RXP_.UpdateStepCompletion()
	elseif RXP_.updateStepText then
		RXP_.updateStepText = false
		local updateText
		for n in pairs(RXP_.stepUpdateList) do
			if RXP_.currentGuide.steps[n].active then
				updateText = true
			end
			RXP_.UpdateBottomFrame(nil,nil,n)
			if not RXP_.updateStepText then
				RXP_.stepUpdateList[n] = nil
			end
		end
		if updateText then
			RXP_.UpdateText()
		end

		return
	elseif RXP_.updateBottomFrame or GetTime() - tickTimer > 5 then
		RXP_.UpdateBottomFrame()
        RXP_.UpdateText()
        SetStepFrameAnchor()
		tickTimer = GetTime()
		return
	end
	
	if RXP_.updateMap then
		RXP_.UpdateMap()
	end
    RXP_.UpdateGotoSteps()
	
end)

ff1 = f
f.BottomFrame:SetBackdrop(f.backdropEdge)
--f.BottomFrame:SetBackdropColor(12/255,12/255,27/255,1)
f.BottomFrame:SetBackdropColor(unpack(colors.background))

f.BottomFrame:SetPoint("TOPLEFT", f, 3, -3)
f.BottomFrame:SetPoint("BOTTOMRIGHT", f,-3, 3)






f.GuideName:SetBackdrop({
-- bgFile = "Interface/BUTTONS/WHITE8X8",
 edgeFile = "Interface/AddOns/RXPGuides/Textures/rxp-borders",
 tile = true,
 edgeSize = 8,
 tileSize = 8,
 insets = {
	  left = 4,
	  right = 2,
	  top = 2,
	  bottom = 4,
 },
})

--f.GuideName:SetBackdropColor(unpack(colors.background))
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
f.GuideName.text:SetText("Welcome to RestedXP Guides\nClick here to pick a guide")
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

-- Make the menu appear at the cursor: 

--[[
f.GuideName:SetScript("OnEnter",function()
	f.GuideName:SetBackdropColor(111/200,44/200,150/200,1)
	
end)
]]

function RXP_.DropDownMenu()
    EasyMenu(RXP_.menuList, RXP_.MenuFrame, "cursor", 0 , 0, "MENU");
end


f.GuideName:SetScript("OnMouseDown",function(self,button)
    if button == "RightButton" or RXP_.noGuide then
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

prefix = "Interface/AddOns/RXPGuides/Textures/Scrollbar/"

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

--f.SF.ScrollBar:SetWidth(5)


hooksecurefunc(f.SF.ScrollBar,"SetValue",function(self,value)
	local h = math.floor(f.Steps:GetHeight()+10)
	local scroll = h-f.BottomFrame:GetHeight()
	if scroll < 0 then scroll = 0 end
	if scroll <= value then f.SF.ScrollBar.ScrollDownButton:Disable() end
	f.SF.ScrollBar:SetMinMaxValues(0,scroll)
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

function RXP_:LoadGuide(guide,OnLoad)
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
	if not (OnLoad and RXPCData.currentStep) then
		RXPCData.currentStep = 1
		RXPCData.stepSkip = {}
	end
	local totalHeight = 0
	local nframes = 0
	RXP_.stepUpdateList = {}
	RXP_.currentGuide = {}
	for k,v in pairs(guide) do
		RXP_.currentGuide[k] = v
	end
	RXP_.currentGuide.steps = {}
	for n,step in ipairs(guide.steps) do
		if RXP_.AldorScryerCheck(step) then
			table.insert(RXP_.currentGuide.steps,step)
		end
	end
	guide = RXP_.currentGuide
	
	RXP_.currentGuideName = guide.name
	RXPCData.currentGuideName = guide.name
	RXPCData.currentGuideGroup = guide.group
	f.GuideName.text:SetText(guide.displayName)
	--local nameWidth = f.GuideName.text:GetStringWidth()+10
	--f.GuideName:SetWidth(nameWidth)
	--f:SetWidth(math.max(f:GetWidth(),nameWidth+45))
	--f:SetMinResize(math.max(nameWidth+45,220),20)
	if not guide.labels then
		guide.labels = {}
	end
	
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
        frame:SetBackdrop(backdrop)
		frame:SetBackdropColor(unpack(colors.bottomFrameBG))
		
		frame:SetScript("OnEnter",function()
			currentAlpha = frame:GetAlpha()
			frame:SetAlpha(1)
			frame:SetBackdropColor(unpack(colors.bottomFrameHighlight))
		end)
		frame:SetScript("OnLeave",function()
			frame:SetBackdropColor(unpack(colors.bottomFrameBG))
			frame:SetAlpha(currentAlpha)
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

function RXP_.UpdateBottomFrame(self,inc,stepn,updateText)
	--print(type(stepn),stepn)
	if RXP_.stepPos[0] and ((not self and stepn) or (self and self.step)) then
		local stepNumber = stepn or self.step.index
		local frame = f.Steps.frame[stepNumber]
		if not frame then return end
		local step = frame.step
		local fheight
		
		local text
		for i,element in ipairs(frame.step.elements) do
			if element.requestFromServer then
				element.element = element
				RXPG[RXP_.currentGuide.group][element.tag](element)
				if element.requestFromServer then
					RXP_.updateStepText = true
					RXP_.stepUpdateList[element.step.index] = true
				end
				
			end
			local rawtext = element.tooltipText or element.text
			if rawtext and not element.hideTooltip then
				if not text then
					text = "   "..rawtext
				else
					text = text.."\n   "..rawtext
				end
			end
		end
		frame.text:SetText(text)
		fheight = math.ceil(frame.text:GetStringHeight() + 8)
		frame:SetAlpha(1)
		
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
			local fheight
			for i,element in ipairs(frame.step.elements) do
				if not self then
					local stepDiff = element.step.index-RXPCData.currentStep
					element.element = element
					if element.requestFromServer then
						RXPG[RXP_.currentGuide.group][element.tag](element)
						RXP_.updateStepText = RXP_.updateStepText or not element.requestFromServer
					elseif element.tag and (stepDiff <= 8 and stepDiff >= 0) then
						RXPG[RXP_.currentGuide.group][element.tag](element)
					end
				end
				local rawtext = element.tooltipText or element.text
				if rawtext and not element.hideTooltip and rawtext ~= "" then
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
				frame.text:SetText(text)
				fheight = math.ceil(frame.text:GetStringHeight() + 8)
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
            submenuIndex = submenuIndex +1
            local guide = RXP_.GetGuideTable(group,guideName)
            guide.menuIndex = menuIndex
            guide.submenuIndex = submenuIndex
            local subitem = {}
            subitem.text = guide.displayName
            subitem.func = RXP_.LoadGuide
            subitem.arg1 = guide
            subitem.notCheckable = 1
            table.insert(item.menuList,subitem)
        end
        
        table.insert(RXP_.menuList,item)
    end
    
	for _,group in ipairs(groupList) do
        createMenu(group)
	end
    
    if not RXPData.hideUnusedGuides and #unusedGuides > 0 then
        table.insert(RXP_.menuList,{text = "Unused Guides",notCheckable = 1,isTitle = 1})
        for _,group in ipairs(unusedGuides) do
            createMenu(group)
        end
    end
    
    table.insert(RXP_.menuList,{text = "",notCheckable = 1,isTitle = 1})
    table.insert(RXP_.menuList,{text = "Options...",notCheckable = 1,func = SlashCmdList.RXPG})
    table.insert(RXP_.menuList,{text = "Close",notCheckable = 1,func = function(self) self:Hide() end})
end



--ff1 = f



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
    button.tooltip = "Allows the guide to buy specific spells automatically if the step tells you to\n(Steps marked with "..RXP_.icons.train..")"
    
    button = CreateFrame("CheckButton", "$parentTrainerGeneric", panel, "ChatConfigCheckButtonTemplate");
    table.insert(options,button)
    button:SetPoint("TOPLEFT",options[index],"BOTTOMLEFT",0,0)
    index = index + 1
    button:SetScript("PostClick",function(self) 
        RXPData.trainGenericSpells = self:GetChecked()
    end)
    button:SetChecked(RXPData.trainGenericSpells)
    button.Text:SetText("Train useful leveling spells")
    button.tooltip = "Allows the guide to automatically buy important spells used for leveling"
    
    
    
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
    
    button = CreateFrame("CheckButton", "$parentReverseAnchor", panel, "ChatConfigCheckButtonTemplate");
    table.insert(options,button)
    button:SetPoint("TOPLEFT",options[index],"BOTTOMLEFT",0,0)
    index = index + 1
    button:SetScript("PostClick",function(self) 
        local hide = self:GetChecked()
        RXPData.reverseAnchor = hide
        f:SetShown(not hide)
    end)
    button:SetChecked(RXPCData.reverseAnchor)
    button.Text:SetText("Grow downwards")
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
    if not QuestieLoader then
        button:Hide()
    end
   
   
   

    local SliderUpdate = function(self, value)
        self.ref[self.key] = value
        self.Text:SetText(format(self.defaultText,value))
        RXPFrame:SetScale(RXPData.windowSize)
        local size = RXPData.arrowSize
        RXP_.arrowFrame:SetSize(32*size,32*size)
        RXPData.numMapPins = math.floor(RXPData.numMapPins)
        RXP_.updateMap = true
        SetStepFrameAnchor()
    end
    
    local CreateSlider = function(ref,key,smin,smax,text,tooltip,anchor,x,y,minText,maxText,steps)
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
        dvalue = ref[key]
        
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
    slider = CreateSlider(RXPData,"arrowSize",0.2,2,"Arrow Scale: %.2f","Scale of the Waypoint Arrow",panel.title,280,-25)
    slider = CreateSlider(RXPData,"windowSize",0.2,2,"Window Scale: %.2f","Scale of the Main Window, use alt+left click on the main window to resize it",slider,0,-25)
    slider = CreateSlider(RXPData,"numMapPins",1,20,"Number of Map Pins: %d","Number of map pins shown on the world map",slider,0,-25)
    slider = CreateSlider(RXPData,"anchorOrientation",-1,1,"Current step frame anchor","Sets the current step frame to grow from bottom to top or top to bottom by default",slider,0,-25,"Bottom","Top",2)

end
