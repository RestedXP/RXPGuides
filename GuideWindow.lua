local RXPG = RXPGuides
local _,class = UnitClass("player")
local _,race = UnitRace("player")

local BackdropTemplate = BackdropTemplateMixin and "BackdropTemplate" or nil

RXP_.width,RXP_.height = 235,125 --Default width/height
RXP_.font = GameFontNormal:GetFont()

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

local goldAssistantColors = {}
goldAssistantColors.background = {32/255,18/255,0/255,1}
goldAssistantColors.bottomFrameBG = {48/255,27/255,0/255,1}
goldAssistantColors.bottomFrameHighlight = {125/255,71/255,0/255,1}
goldAssistantColors.mapPins = {0.9,0.1,0.1,1}
goldAssistantColors.tooltip = "|c0000C1FF" --AARRGGBB

RXP_.colors = defaultColors


RXP_.defaultTextures = "Interface/AddOns/RXPGuides/Textures/"
RXP_.hardcoreTextures = "Interface/AddOns/RXPGuides/Textures/Hardcore/"
RXP_.goldAssistantTextures = "Interface/AddOns/RXPGuides/Textures/GoldAssistant/"
RXP_.texturePath = RXP_.defaultTextures


local f = CreateFrame("Frame", "RXPFrame", UIParent, BackdropTemplate)

local BottomFrame = CreateFrame("Frame","$parent_bottomFrame",RXPFrame, BackdropTemplate)
local GuideName = CreateFrame("Frame","$parentGuideName",RXPFrame, BackdropTemplate)
local ScrollFrame = CreateFrame("ScrollFrame", "$parentSF", BottomFrame, "UIPanelScrollFrameTemplate")
local CurrentStepFrame = CreateFrame("Frame", nil, RXPFrame)
local ScrollChild = CreateFrame("Frame", "$parent_steps", BottomFrame, BackdropTemplate)
local MenuFrame = CreateFrame("Frame", "RXPG_MenuFrame", UIParent, "UIDropDownMenuTemplate")
RXPFrame.BottomFrame = BottomFrame
RXPFrame.GuideName = GuideName
RXPFrame.CurrentStepFrame = CurrentStepFrame
RXPFrame.ScrollFrame = ScrollFrame
RXPFrame.ScrollChild = ScrollChild
RXPFrame.MenuFrame = MenuFrame


function RXP_.GetTexture(name)
    return RXP_.texturePath..name
end

function RXP_.RenderFrame()
    local path
    local colors
    if RXPCData.hardcore then
        path = RXP_.hardcoreTextures
        colors = hardcoreColors
    elseif RXPCData.GA then
        path = RXP_.goldAssistantTextures
        colors = goldAssistantColors
    else
        path = RXP_.defaultTextures
        colors = defaultColors
    end
    if path == RXP_.texturePath then return end
    RXPFrame.GenerateMenuTable()
    RXP_.colors = colors
    RXP_.texturePath = path
    RXPFrame.backdropEdge.edgeFile = RXP_.GetTexture("rxp-borders")
    RXPFrame.guideNameBackdrop.edgeFile = RXP_.GetTexture("rxp-borders")
    BottomFrame:ClearBackdrop()
    BottomFrame:SetBackdrop(RXPFrame.backdropEdge)
    BottomFrame:SetBackdropColor(unpack(RXP_.colors.background))

    if RXPFrame.activeItemFrame then
        RXPFrame.activeItemFrame:ClearBackdrop()
        RXPFrame.activeItemFrame:SetBackdrop(RXPFrame.backdropEdge)
        RXPFrame.activeItemFrame:SetBackdropColor(unpack(RXP_.colors.background))
    end

    GuideName:ClearBackdrop()
    GuideName:SetBackdrop(RXPFrame.guideNameBackdrop)

    GuideName.bg:SetTexture(RXP_.GetTexture("rxp-banner"))
    GuideName.icon:SetTexture(RXP_.GetTexture("rxp_logo-64"))
    GuideName.classIcon:SetTexture(RXP_.GetTexture(class))
    GuideName.cog:SetNormalTexture(RXP_.GetTexture("rxp_cog-32"))
    
    RXP_.arrowFrame.texture:SetTexture(RXP_.GetTexture("rxp_navigation_arrow-1"))
    RXP_.UpdateScrollBar()
    if RXP_.currentGuide then
        RXP_.ReloadGuide()
    end
end


RXPFrame:Show()

RXPFrame:SetMovable(true)
RXPFrame:SetClampedToScreen(true)
RXPFrame:SetResizable(true)
RXPFrame:SetMinResize(220,20)

local function SetStepFrameAnchor()
local frame = CurrentStepFrame
    local scale = RXPFrame:GetScale()
    local function SetTop()
        frame:ClearAllPoints()
        frame:SetPoint("BOTTOMLEFT", GuideName,"TOPLEFT",0,2)
        frame:SetPoint("BOTTOMRIGHT",GuideName,"TOPRIGHT",0,2)
    end
    local function SetBottom()
       frame:ClearAllPoints()
       frame:SetPoint("TOPLEFT", RXPFrame,"BOTTOMLEFT",3,0)
       frame:SetPoint("TOPRIGHT",RXPFrame,"BOTTOMRIGHT",-3,0)
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

RXPFrame.SetStepFrameAnchor = SetStepFrameAnchor

RXPFrame.OnMouseDown = function(self, button)
    if RXPData.lockFrames then
        return
    elseif IsAltKeyDown() and not(RXP_.currentGuide and RXP_.currentGuide.hidewindow) then
        RXPFrame:StartSizing("BOTTOMRIGHT")
        RXPFrame:SetScript("OnUpdate",RXPFrame.BottomFrame.UpdateFrame)
        isResizing = true
    else
        RXPFrame:StartMoving()
    end
end

RXPFrame.OnMouseUp = function(self,button)
    RXPFrame:StopMovingOrSizing()
    if isResizing then
        RXPCData.frameHeight = RXPFrame:GetHeight()
        RXP_.SetStep(RXPCData.currentStep)
        RXPFrame:SetScript("OnUpdate",nil)
    end
    SetStepFrameAnchor()
    RXP_.UpdateItemFrame()
    isResizing = false
end


local isResizing
RXPFrame:SetScript("OnMouseDown", RXPFrame.OnMouseDown)
RXPFrame:SetScript("OnMouseUp", RXPFrame.OnMouseUp)
RXPFrame:EnableMouse(1)

local stepPos = {}

function StepScroll(n)
    local value
    if n == 1 or not stepPos[n] then
        value = 0
    else
        value = stepPos[n]/stepPos[0]*ScrollChild.f1:GetHeight()-2
        local smax = ScrollChild.f1:GetHeight()-BottomFrame:GetHeight()+10
        if value > smax then
            value = smax
        end
    end
    ScrollFrame.ScrollBar:SetValue(value)

end


RXPFrame:SetWidth(RXP_.width)
RXPFrame:SetHeight(RXP_.height)
RXPFrame:SetPoint("LEFT",0,35)
RXPFrame:SetFrameStrata("BACKGROUND")

RXPFrame.backdropEdge = {
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



--RXPFrame.CurrentStepFrame:SetBackdrop(backdrop)
--RXPFrame.CurrentStepFrame:SetBackdropColor(0.3,0.01,0.01)
CurrentStepFrame:SetPoint("BOTTOMLEFT", GuideName,"TOPLEFT",0,2)
CurrentStepFrame:SetPoint("BOTTOMRIGHT",GuideName,"TOPRIGHT",0,2)

CurrentStepFrame:SetHeight(25)
CurrentStepFrame:SetScript("OnMouseDown", RXPFrame.OnMouseDown)
CurrentStepFrame:SetScript("OnMouseUp", RXPFrame.OnMouseUp)
CurrentStepFrame:EnableMouse(1)

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

CurrentStepFrame.framePool = {}

local function ClearFrameData()

    for i,stepframe in ipairs(CurrentStepFrame.framePool) do
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

local activeSteps = {}
RXPFrame.activeSteps = activeSteps


function RXP_.UpdateStepCompletion()
    RXP_.updateSteps = false
    if RXP_.currentGuide.empty then return end

    local n = 0
    local update

    for i,step in ipairs(activeSteps) do
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
                RXPFrame.BottomFrame.UpdateFrame(nil,nil,step.index)
                if step.index == RXPCData.currentStep then
                    RXP_.loadNextStep = true
                end
                return
            end
        end
    end

    if update then
        return RXP_.SetStep(RXPCData.currentStep)
    end
end

function RXP_.SetStep(n,n2,loopback)
    if type(n) == "table" then n = n2 end
    local guide = RXP_.currentGuide
    if not guide then return end
    local group = guide.group

    --print(n)
    if n > #guide.steps then
        if guide.loop then
            if loopback then
                return
            else
                return RXP_.SetStep(1,nil,true)
            end
        end
        local isComplete = true
        local completedStep
        for i,step in pairs(activeSteps) do
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

    for i,step in pairs(activeSteps) do
        step.active = nil
        if n < #guide.steps then
            step.completed = nil
        end
    end

    ClearTable(activeSteps)
    ClearTable(RXP_.questAccept)
    ClearTable(RXP_.questTurnIn)
    ClearTable(RXP_.activeItems)
    ClearFrameData()
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
            if not RXPCData.stepSkip[i] and    step.reqFulfilled and level >= step.level then
                table.insert(activeSteps,step)
                if n > 1 then scrollHeight = n-1 end
                --ScrollChild.framePool[i]:SetAlpha(0.66)
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
        ScrollChild.framePool[n]:SetAlpha(1)
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
    local heightDiff = RXPFrame:GetHeight() - CurrentStepFrame:GetHeight()
    for i,step in pairs(activeSteps) do

        local index = step.index
        c = c+1
        local stepframe = CurrentStepFrame.framePool[c]
        if not stepframe then
            CurrentStepFrame.framePool[c] = CreateFrame("Frame","$parent_frame"..c,CurrentStepFrame, BackdropTemplate)
            stepframe = CurrentStepFrame.framePool[c]
            --stepframe:SetBackdropBorderColor(0.1,0.5,0.1)
            stepframe.elements = {}
            --RXP_.CreateActiveItemFrame(stepframe)
        end
        stepframe:ClearAllPoints()
        if c == 1 then
            stepframe:SetPoint("TOPLEFT",CurrentStepFrame,0,0)
            stepframe:SetPoint("TOPRIGHT",CurrentStepFrame,0,0)
        else
            stepframe:SetPoint("TOPLEFT",CurrentStepFrame.framePool[c-1],"BOTTOMLEFT",0,-5)
            stepframe:SetPoint("TOPRIGHT",CurrentStepFrame.framePool[c-1],"BOTTOMRIGHT",0,-5)
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
            stepframe.hardcore = RXPCData.hardcore
            stepframe:ClearBackdrop()
            stepframe:SetBackdrop(RXPFrame.backdropEdge)
            stepframe:SetBackdropColor(unpack(RXP_.colors.background))
            stepframe.number:ClearBackdrop()
            stepframe.number:SetBackdrop(RXPFrame.backdropEdge)
            stepframe.number:SetBackdropColor(unpack(RXP_.colors.background))
        end
        
        local titletext = step.title or "Step "..tostring(index)
        
        if titletext == "" then
            stepframe.number:SetAlpha(0)
            stepframe.number:SetSize(10,17)
        else
            stepframe.number:SetAlpha(1)
            stepframe.number.text:SetText(titletext)
            stepframe.number:SetSize(stepframe.number.text:GetStringWidth()+10,17)
        end
        
        stepframe.step = step
        stepframe.index = index
        stepframe.sticky = step.sticky

        local e = 0
        local frameHeight = 0
        for j,element in ipairs(step.elements or {}) do
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
                        elementFrame:SetScript("OnEvent",CurrentStepFrame.EventHandler)
                    end
                elseif type(events) == "table" then
                    for _,event in ipairs(events) do
                        if event == "OnUpdate" then
                            elementFrame:SetScript("OnUpdate",elementFrame.callback)
                        else
                            elementFrame:RegisterEvent(event)
                            elementFrame:SetScript("OnEvent",CurrentStepFrame.EventHandler)
                        end
                    end
                end
            end
            local spacing = 0


        end
        for n = e+1,#stepframe.elements do
            stepframe.elements[n]:Hide()
        end
        if step.active then
            stepframe:Show()
            if step.activeItems then
                for i,v in pairs(step.activeItems) do
                    RXP_.activeItems[i] = v
                end
            end
        else
            stepframe:Hide()
        end
    end
    RXP_.UpdateItemFrame()
    RXP_.UnitScanUpdate()
    CurrentStepFrame.UpdateText()
    RXP_.updateSteps = true
    RXP_.updateMap = true
    StepScroll(scrollHeight)
end

function CurrentStepFrame.EventHandler(self,event,...)
    --print(event,self.index,self.element.tag)
    if self.callback and self.step and self.step.active then
        self.callback(self,event,...)
    else
        print('!!!')--ok
        self.callback = nil
        self:UnregisterEvent(event)
    end
end

function CurrentStepFrame.UpdateText()
    RXP_.updateStepText = false
    local guide = RXP_.currentGuide
    if not guide then return end
    local group = guide.group


    --StepScroll(n)
    local totalHeight = 0
    local c = 0
    local heightDiff = RXPFrame:GetHeight() - CurrentStepFrame:GetHeight()
    for i,step in pairs(activeSteps) do

        local index = step.index
        c = c+1
        local stepframe = CurrentStepFrame.framePool[c]

        stepframe:ClearAllPoints()
        if c == 1 then
            stepframe:SetPoint("TOPLEFT",CurrentStepFrame,0,0)
            stepframe:SetPoint("TOPRIGHT",CurrentStepFrame,0,0)
        else
            stepframe:SetPoint("TOPLEFT",CurrentStepFrame.framePool[c-1],"BOTTOMLEFT",0,-5)
            stepframe:SetPoint("TOPRIGHT",CurrentStepFrame.framePool[c-1],"BOTTOMRIGHT",0,-5)
        end

        stepframe.number.text:SetText("Step "..index)
        stepframe.number:SetSize(stepframe.number.text:GetStringWidth()+10,17)

        local e = 0
        local frameHeight = 0
        for j,element in ipairs(step.elements or {}) do
            e = j
            local elementFrame = stepframe.elements[e]

            elementFrame:Show()

            local spacing = 0
            if step.hidewindow then
                elementFrame:SetAlpha(0)
                elementFrame.button:Hide()
                elementFrame:SetHeight(1)
                spacing = 1
            elseif element.text then
                elementFrame:SetAlpha(1)
                local text = elementFrame.text
                text:SetText(element.text)
                local h = math.ceil(elementFrame.text:GetStringHeight()*1.1)+1
                --print('sh:',h)
                elementFrame:SetHeight(h)
                frameHeight = frameHeight + h

                elementFrame.button:ClearAllPoints()
                elementFrame.button:SetPoint("TOPLEFT",elementFrame, 6, -1);
                elementFrame.text:ClearAllPoints()
                elementFrame.text:SetPoint("TOPLEFT",elementFrame.button,"TOPRIGHT",11,-1)
                elementFrame.text:SetPoint("RIGHT",stepframe,-5,0)
                elementFrame.icon:ClearAllPoints()
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

        if step.hidewindow then
            stepframe:SetAlpha(0)
            frameHeight = 1
            stepframe:EnableMouse(false)
        else
            stepframe:EnableMouse(true)
            stepframe:SetAlpha(1)
            frameHeight = math.ceil(frameHeight +18)
        end
        stepframe:SetHeight(frameHeight)
        totalHeight = totalHeight+frameHeight+5
    end
    CurrentStepFrame:SetHeight(totalHeight-5)
end


BottomFrame:SetBackdrop(RXPFrame.backdropEdge)
BottomFrame:SetBackdropColor(unpack(RXP_.colors.background))

BottomFrame:SetPoint("TOPLEFT", RXPFrame, 3, -3)
BottomFrame:SetPoint("BOTTOMRIGHT", RXPFrame,-3, 3)

RXPFrame.guideNameBackdrop = {
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

GuideName:SetBackdrop(RXPFrame.guideNameBackdrop)

--GuideName:SetBackdropColor(unpack(RXP_.colors.background))
GuideName:SetPoint("BOTTOMLEFT",BottomFrame,"TOPLEFT",0,-9)
GuideName:SetPoint("BOTTOMRIGHT",BottomFrame,"TOPRIGHT",0,-9)
GuideName:SetHeight(35)
GuideName.text = GuideName:CreateFontString(nil,"OVERLAY")
--GuideName.text:SetFontObject(GameFontNormalSmall)
GuideName.text:ClearAllPoints()
GuideName.text:SetPoint("LEFT",GuideName,29,0)
GuideName.text:SetPoint("RIGHT",GuideName,0,0)
GuideName.text:SetJustifyH("CENTER")
GuideName.text:SetJustifyV("CENTER")
GuideName.text:SetTextColor(1,1,1)
GuideName.text:SetFont(RXP_.font, 11)
GuideName.text:SetText("Welcome to RestedXP Guides\nRight click to pick a guide")
GuideName:SetFrameLevel(6)

GuideName.bg = GuideName:CreateTexture("$parentBG","BACKGROUND")
GuideName.bg:SetTexture("Interface/AddOns/RXPGuides/Textures/rxp-banner")
GuideName.bg:SetPoint("TOPLEFT",4,-2)
GuideName.bg:SetPoint("BOTTOMRIGHT",-2,4)

GuideName.icon = GuideName:CreateTexture("RXPIcon","ARTWORK")
GuideName.icon:SetTexture("Interface/AddOns/RXPGuides/Textures/rxp_logo-64")
GuideName.icon:SetPoint("CENTER",GuideName,"LEFT",16,0)
GuideName.icon:SetSize(42,42)


GuideName.classIcon = GuideName:CreateTexture("RXPClassIcon","OVERLAY")
GuideName.classIcon:SetTexture("Interface/AddOns/RXPGuides/Textures/"..class)
GuideName.classIcon:SetPoint("CENTER",GuideName.icon,"BOTTOMRIGHT",-4,10)
GuideName.classIcon:SetSize(24,24)


GuideName.cog = CreateFrame("Button", "$parentCogwheel", RXPFrame)
GuideName.cog:SetFrameLevel(GuideName:GetFrameLevel()+1)
GuideName.cog:SetWidth(24)
GuideName.cog:SetHeight(24)
GuideName.cog:SetPoint("CENTER",GuideName,"TOPRIGHT",-8,-8)
GuideName.cog:SetNormalTexture("Interface/AddOns/RXPGuides/Textures/rxp_cog-32")
--GuideName.cog:SetPushedTexture("Interface/Buttons/UI-Panel-MinimizeButton-Down")
GuideName.cog:SetHighlightTexture("Interface/MINIMAP/UI-Minimap-ZoomButton-Highlight", "ADD")
GuideName.cog:Hide()
GuideName.cog:SetScript("OnClick", function(self)
    RXPFrame.DropDownMenu()
end)
local buttonToggle = 0
GuideName.cog:HookScript("OnEnter", function(self)
    buttonToggle = GetTime()
end)
GuideName.cog:HookScript("OnLeave", function(self)
    self:Hide()
end)



function RXPFrame.DropDownMenu()
    EasyMenu(RXPFrame.menuList, MenuFrame, "cursor", 0 , 0, "MENU");
end


GuideName:SetScript("OnMouseDown",function(self,button)
    if button == "RightButton" then
        RXPFrame.DropDownMenu()
    else
        RXPFrame.OnMouseDown(self,button)
    end
end)

GuideName:SetScript("OnMouseUp",function(self,button)
    if button ~= "RightButton" then
        RXPFrame.OnMouseUp(self,button)
    end
end)

GuideName:SetScript("OnEnter",function()
    GuideName.cog:Show()
end)
GuideName:SetScript("OnLeave",function()
    if GetTime() - buttonToggle > 0.1 then
        GuideName.cog:Hide()
    end
end)


ScrollFrame:SetPoint("TOPLEFT", BottomFrame,5, -5)
ScrollFrame:SetPoint("BOTTOMRIGHT", BottomFrame,-20, 7)
ScrollFrame.ScrollBar:SetPoint("TOPLEFT",ScrollFrame,"TOPRIGHT",0,-18)


function RXP_.UpdateScrollBar()
    prefix = RXP_.GetTexture("Scrollbar/")

    local s = ScrollFrame.ScrollBar.ScrollDownButton
    s.Normal:SetTexture(prefix.."Down-Normal")
    s.Highlight:SetTexture(prefix.."Down-Highlight")--?
    s.Pushed:SetTexture(prefix.."Down-Pushed")
    s.Disabled:SetTexture(prefix.."Down-Disabled")
    s = ScrollFrame.ScrollBar.ScrollUpButton
    s.Normal:SetTexture(prefix.."Up-Normal")
    s.Highlight:SetTexture(prefix.."Up-Highlight")
    s.Pushed:SetTexture(prefix.."Up-Pushed")
    s.Disabled:SetTexture(prefix.."Up-Disabled")
    ScrollFrame.ScrollBar:SetThumbTexture(prefix.."Knob")
end

RXP_.UpdateScrollBar()

hooksecurefunc(ScrollFrame.ScrollBar,"SetValue",function(self,value)
    local h = math.floor(ScrollChild:GetHeight()+10)
    local scroll = h-BottomFrame:GetHeight()
    local zero = RXPData.hideCompletedSteps and RXPCData.currentStep and RXPCData.currentStep > 1 and stepPos[RXPCData.currentStep-1]+RXPCData.currentStep or 0
    if scroll < zero then scroll = zero end
    if scroll <= value then ScrollFrame.ScrollBar.ScrollDownButton:Disable() end
    ScrollFrame.ScrollBar:SetMinMaxValues(zero,scroll)
end)


ScrollChild.framePool = {}
ScrollChild:SetWidth(RXPFrame:GetWidth()-35)


ScrollFrame:SetScrollChild(ScrollChild)

RXPFrame.bottomBackdrop = {
    bgFile = "Interface\\Buttons\\WHITE8x8",
    edgeFile = "Interface\\Buttons\\WHITE8x8", edgeSize = 1,
    insets = {left = 0, right = 0, top = -1, bottom = -1}
}

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

RXPFrame.bottomMenu = {
    {notCheckable = 1, text = "Go to step 1",func = RXP_.SetStep, arg1 = 1},
    {notCheckable = 1, text = "Select another guide",func = RXPFrame.DropDownMenu},
    {text = "Reload Guide", notCheckable = 1, func = RXP_.LoadGuide, arg1 = RXP_.currentGuide},
    {text = "Options...",notCheckable = 1,func = SlashCmdList.RXPG},
    {text = "Close",notCheckable = 1,func = function(self) self:Hide() end},
}

local emptyGuide = {empty = true, hidewindow = true, name = "", group = "", 
displayName = "Welcome to RestedXP Guides\nRight click to pick a guide",
steps = {{hidewindow = true, text = ""}},
}

function RXP_:LoadGuide(guide,OnLoad)
    RXP_.loadNextStep = false
    if not guide then
        return
    end

    if (guide.farm and not RXPCData.GA or not guide.farm and RXPCData.GA) and not guide.empty then
        return RXP_:LoadGuide(emptyGuide)
    end
    
    if RXPCData.frameHeight then 
        RXPFrame:SetHeight(RXPCData.frameHeight)
    end
    if RXP_.noGuide then
        RXPFrame:SetHeight(RXP_.height)
        RXPFrame.BottomFrame.UpdateFrame()
        RXP_.noGuide = nil
    end

    startTime = GetTime()
    CloseDropDownMenus()
    RXP_.tickTimer = GetTime()
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
        if RXP_.AldorScryerCheck(step) and RXP_.PhaseCheck(step) and RXP_.HardcoreCheck(step) and RXP_.SeasonCheck(step) and RXP_.IsStepShown(step) then
            table.insert(RXP_.currentGuide.steps,step)
        end
    end
    guide = RXP_.currentGuide

    RXP_.currentGuideName = guide.name
    RXPCData.currentGuideName = guide.name
    RXPCData.currentGuideGroup = guide.group
    local guidename = RXP_.GetGuideName(guide)
    if guide.subgroup then
        GuideName.text:SetText(guidename.."\n"..guide.subgroup)
    else
        GuideName.text:SetText(guidename)
    end

    guide.labels = {}
    
    local lastStep = guide.steps[#guide.steps]
    if lastStep then
        lastStep.lastStep = true
    end

    for n,step in ipairs(guide.steps) do
        step.index = n
        if step.completewith then
            step.sticky = true
        end
        if step.requires then
            local requirement = guide.labels[step.requires]
            if requirement then
                local requiredStep = guide.steps[requirement]
                if requiredStep.sticky and not requiredStep.completewith and not step.sticky then
                    step.label = step.label or n
                    requiredStep.completewith = step.label
                end
            end
        end
        step.level = tonumber(step.level) or 0
        if step.label then
            guide.labels[step.label] = n
        end
        

        nframes = nframes + 1
        ScrollChild.framePool[n] = ScrollChild.framePool[n] or CreateFrame("Frame","$parent_frame_"..n,ScrollChild, BackdropTemplate)
        local frame = ScrollChild.framePool[n]
        frame:Show()
        frame.step = step
        frame:SetAlpha(0.66)
        frame:ClearAllPoints()
        local anchor
        if n == 1 then
            anchor = ScrollChild
            frame:SetPoint("TOPLEFT",anchor,"TOPLEFT",2,-3)
            frame:SetPoint("TOPRIGHT",anchor,"TOPRIGHT",2,-3)
        else
            anchor = ScrollChild.framePool[n-1]
            frame:SetPoint("TOPLEFT",anchor,"BOTTOMLEFT",0,-3)
            frame:SetPoint("TOPRIGHT",anchor,"BOTTOMRIGHT",0,-3)
        end
        --frame:SetBackdrop(RXPFrame.bottomBackdrop)
        frame:ClearBackdrop()
        frame:SetBackdrop(backdrop)
        frame:SetBackdropColor(unpack(RXP_.colors.bottomFrameBG))

        frame:SetScript("OnEnter",function(self)
            self.currentAlpha = self:GetAlpha()
            self:SetAlpha(1)
            self:SetBackdropColor(unpack(RXP_.colors.bottomFrameHighlight))
        end)
        frame:SetScript("OnLeave",function(self)
            self:SetBackdropColor(unpack(RXP_.colors.bottomFrameBG))
            self:SetAlpha(self.currentAlpha)
        end)
        frame.timer = 0
        frame.index = n
        frame.guide = guide
        frame:SetScript("OnMouseDown",function(self,button)
            if button == "RightButton" or GetTime() - self.timer <= 0.5 then
                self.timer = 0
                local n = self.index
                local bottomMenu = RXPFrame.bottomMenu
                bottomMenu[1].text = "Go to step "..n
                bottomMenu[1].arg1 = n
                EasyMenu(bottomMenu, MenuFrame, "cursor", 0 , 0, "MENU");
            else
                self.timer = GetTime()
            end
        end)


        if not frame.text then
            frame.text = frame:CreateFontString(nil,"OVERLAY")
        end

        if not frame.number then
            frame.number = CreateFrame("Frame","$parent_number",frame, BackdropTemplate)
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
    if #ScrollChild.framePool > nframes then
        for i = nframes+1,#ScrollChild.framePool do
            ScrollChild.framePool[i]:Hide()
        end
    end
    ScrollChild.f1 = ScrollChild.f1 or CreateFrame("Frame",nil,ScrollChild)
    ScrollChild.f1:ClearAllPoints()
    ScrollChild.f1:SetPoint("TOPLEFT",ScrollChild.framePool[1],0,10)
    ScrollChild.f1:SetPoint("BOTTOMRIGHT",ScrollChild.framePool[nframes])
    ScrollChild.f1:Hide()
    ScrollChild:SetHeight(200)
    RXPFrame.BottomFrame.UpdateFrame()
    RXP_.SetStep(RXPCData.currentStep)
end

function RXP_.ReloadGuide()
    return RXP_:LoadGuide(RXP_.GetGuideTable(RXPCData.currentGuideGroup,RXPCData.currentGuideName))
end

function BottomFrame.UpdateFrame(self,inc,stepn,updateText)
    local level = UnitLevel("player")
    if stepPos[0] and ((not self and stepn) or (self and self.step)) then
        local stepNumber = stepn or self.step.index
        local frame = ScrollChild.framePool[stepNumber]
        if not frame then return end
        local step = frame.step
        local fheight
        local hideStep = step.level > level or step.hidewindow

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
        step.text = text
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

        for n = stepNumber+1, #stepPos do
            stepPos[n] = stepPos[n]+hDiff
        end
        stepPos[0] = stepPos[0]+hDiff

    else
        RXP_.updateBottomFrame = false
        local totalHeight = 0
        for n,frame in ipairs(ScrollChild.framePool) do
            if not frame:IsShown() then break end
            local text
            local step = frame.step
            local hideStep = step.level > level
            local fheight
            for i,element in ipairs(frame.step.elements or {}) do
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
            step.text = text
            frame:SetHeight(fheight)
            totalHeight = totalHeight + fheight+2
            stepPos[n] = totalHeight-5
        end
        stepPos[0] = totalHeight
        --print(ScrollChild.framePool[#ScrollChild.framePool]:GetBottom(),totalHeight)
    end
    local guide = RXP_.currentGuide
    if guide then
        ScrollChild:SetHeight(ScrollChild.f1:GetHeight())
    end
    local w = RXPFrame:GetWidth()-35
    ScrollChild:SetWidth(w)
    local bottomFrameHeight = BottomFrame:GetHeight()
    if bottomFrameHeight < 35 then
        BottomFrame:Hide()
    elseif guide and guide.hidewindow then
        if RXPFrame:GetHeight() > 10 then
            RXPCData.frameHeight = RXPFrame:GetHeight()
        end
        RXPFrame:SetHeight(10)
        BottomFrame:Hide()
    elseif not BottomFrame:IsShown() then
        if RXPCData.frameHeight then
            RXPFrame:SetHeight(RXPCData.frameHeight)
        end
        BottomFrame:Show()
    end

end

local function IsGuideActive(guide)
    local som = RXPCData and RXPCData.SoM
    if (guide.era and som or guide.som and not som) or (som and RXPCData.phase and RXPCData.phase > 2 and guide["era/som"]) or (not RXP_.PhaseCheck(guide)) then
        --print('-',guide.name,not guide.som,not guide.era,som)
        return false
    end

    return true
end

function RXPFrame.GenerateMenuTable()
    local menuList = {}

    local groupList = {}
    local farmGuides = {}
    local unusedGuides = {}

    for group in pairs(RXP_.guideList) do
        local firstChar = group:sub(1,1)
        if RXPCData and RXPCData.GA then 
            if firstChar == "+" then
                table.insert(farmGuides,group)
            end
        elseif firstChar ~= "+" then
            if firstChar ~= "*" then
                table.insert(groupList,group)
            else
                table.insert(unusedGuides,group)
            end
        end
    end
    
    table.sort(farmGuides)
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
        item.subgroups = {}
        item.subtable = {}
        local submenuIndex = 0
        for j,guideName in ipairs(t.names_) do
            local guide = RXP_.GetGuideTable(group,guideName)
            if IsGuideActive(guide) then
                if guide.subgroup then
                    local subgroup = guide.subgroup
                    local subtable = item.subtable[subgroup]
                    if not subtable then
                        local subname = subgroup:gsub("^(%d)-(%d%d?)",RXP_.affix)
                        subtable = { text = subgroup, notCheckable = 1, hasArrow = true, menuList = {}}
                        item.subtable[subname] = subtable
                        table.insert(item.subgroups,subname)
                    end
                    local subitem = {}
                    subitem.text = RXP_.GetGuideName(guide)
                    subitem.func = RXP_.LoadGuide
                    subitem.arg1 = guide
                    subitem.notCheckable = 1
                    table.insert(subtable.menuList,subitem)
                else
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
        end
        
        if #item.subgroups > 0 then
            table.sort(item.subgroups)
            for i,subgroup in ipairs(item.subgroups) do
                table.insert(item.menuList,item.subtable[subgroup])
            end
        else
            item.subgroups = nil
            item.subtable = nil
        end

        table.insert(menuList,item)
    end

    if #groupList > 0 then
         table.insert(menuList,{text = "Available Guides", isTitle = 1, notCheckable = 1, } )
        for _,group in ipairs(groupList) do
            createMenu(group)
        end
    end

    if #farmGuides > 0 then
        table.insert(menuList,{text = "Gold Farming Guides",notCheckable = 1,isTitle = 1})
        for _,group in ipairs(farmGuides) do
            createMenu(group)
        end
    end

    if not (RXPData and RXPData.hideUnusedGuides) and #unusedGuides > 0 then
        table.insert(menuList,{text = "Unused Guides",notCheckable = 1,isTitle = 1})
        for _,group in ipairs(unusedGuides) do
            createMenu(group)
        end
    end

    table.insert(menuList,{text = "",notCheckable = 1,isTitle = 1})

    if RXP_.version == "CLASSIC" then
        local hctext
        if RXPData and RXPCData.hardcore then
            hctext = "Deactivate Hardcore mode"
        else
            hctext = "Activate Hardcore mode"
        end
        table.insert(menuList,{text = hctext,notCheckable = 1,func = RXP_.HardcoreToggle})
    end
    
    if RXP_.farmGuides > 0 then
        local text
        if RXPCData and RXPCData.GA then
            text = "Activate the Quest Guide mode"
        else
            text = "Activate the Gold Assistant mode"
        end
        table.insert(menuList,{text = text,notCheckable = 1,func = RXP_.GAToggle})
    end
    
    
    table.insert(menuList,{text = "Options...",notCheckable = 1,func = SlashCmdList.RXPG})
    table.insert(menuList,{text = "Close",notCheckable = 1,func = function(self) self:Hide() end})
    RXPFrame.menuList = menuList
end
