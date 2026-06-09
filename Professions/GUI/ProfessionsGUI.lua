local addonName, addon = ...
local L = addon.locale.Get

addon.professions = addon.professions or {}

-- Local renaming
local aProf = addon.professions
local profSession = aProf.profSession

addon.professions.GUI = {}

--GUI
local printed = false --last minute variable for a gui bugfix, will be properly resolved
function addon.professions.GUI.createGUI()
    local guiFrame = CreateFrame("Frame", "ProfessionsFrame", UIParent, "BasicFrameTemplateWithInset")
    guiFrame:SetSize(500, 700)
    guiFrame:SetPoint("BOTTOMLEFT", UIParent, "CENTER")
    guiFrame.TitleBg:SetHeight(30)
    guiFrame.title = guiFrame:CreateFontString(nil, "OVERLAY", "GameFontHighlight")
    guiFrame.title:SetPoint("CENTER", guiFrame.TitleBg, "CENTER", 0, 6)
    guiFrame.title:SetText("Professions guide - Debugging screen")
    guiFrame:EnableMouse(true)
    guiFrame:SetMovable(true)
    guiFrame:RegisterForDrag("LeftButton")
    guiFrame:SetScript("OnDragStart", function (self)
        self:StartMoving()
    end)
    guiFrame:SetScript("OnDragStop", function (self)
        self:StopMovingOrSizing()
    end)

    guiFrame.descriptionText = guiFrame:CreateFontString(nil, "OVERLAY", "GameFontNormal")
    guiFrame.descriptionText:SetPoint("TOPLEFT", guiFrame, "TOPLEFT", 10, -30)
    guiFrame.descriptionText:SetText("Select profession:")

    local function createCheckButton(parent, displayname)
        local checkButton = CreateFrame("CheckButton", nil, parent, "UIRadioButtonTemplate");
        return checkButton;
    end

    local blacksmithingButton = createCheckButton(guiFrame, "Blacksmithing")
    local leatherworkingButton = createCheckButton(guiFrame, "Leatherworking")
    local tailoringButton = createCheckButton(guiFrame, "Tailoring")
    local alchemyButton = createCheckButton(guiFrame, "Alchemy")
    local enchantingButton = createCheckButton(guiFrame, "Enchanting")
    local engineeringButton = createCheckButton(guiFrame, "Engineering")
    local testButton = createCheckButton(guiFrame, "Test")

    guiFrame.blacksmithingText = guiFrame:CreateFontString(nil, "OVERLAY", "GameFontNormal")
    guiFrame.blacksmithingText:SetPoint("TOPLEFT", guiFrame, "TOPLEFT", 10, -60)
    guiFrame.blacksmithingText:SetText("Blacksmithing")
    blacksmithingButton:SetSize(20, 20)
    blacksmithingButton:SetPoint("LEFT", guiFrame.blacksmithingText, "RIGHT", 10, 0)

    guiFrame.leatherworkingText = guiFrame:CreateFontString(nil, "OVERLAY", "GameFontNormal")
    guiFrame.leatherworkingText:SetPoint("LEFT", blacksmithingButton, "RIGHT", 10, 0)
    guiFrame.leatherworkingText:SetText("Leatherworking")
    leatherworkingButton:SetSize(20, 20)
    leatherworkingButton:SetPoint("LEFT", guiFrame.leatherworkingText, "RIGHT", 10, 0)

    guiFrame.tailoringText = guiFrame:CreateFontString(nil, "OVERLAY", "GameFontNormal")
    guiFrame.tailoringText:SetPoint("LEFT", leatherworkingButton, "RIGHT", 10, 0)
    guiFrame.tailoringText:SetText("Tailoring")
    tailoringButton:SetSize(20, 20)
    tailoringButton:SetPoint("LEFT", guiFrame.tailoringText, "RIGHT", 10, 0)

    guiFrame.alchemyText = guiFrame:CreateFontString(nil, "OVERLAY", "GameFontNormal")
    guiFrame.alchemyText:SetPoint("LEFT", tailoringButton, "RIGHT", 10, 0)
    guiFrame.alchemyText:SetText("Alchemy")
    alchemyButton:SetSize(20, 20)
    alchemyButton:SetPoint("LEFT", guiFrame.alchemyText, "RIGHT", 10, 0)

    guiFrame.enchantingText = guiFrame:CreateFontString(nil, "OVERLAY", "GameFontNormal")
    guiFrame.enchantingText:SetPoint("TOPLEFT", guiFrame.blacksmithingText, "BOTTOMLEFT", 0, -10)
    guiFrame.enchantingText:SetText("Enchanting")
    enchantingButton:SetSize(20, 20)
    enchantingButton:SetPoint("CENTER", blacksmithingButton, "CENTER", 0, -22)

    guiFrame.engineeringText = guiFrame:CreateFontString(nil, "OVERLAY", "GameFontNormal")
    guiFrame.engineeringText:SetPoint("TOPLEFT", guiFrame.leatherworkingText, "BOTTOMLEFT", 0, -10)
    guiFrame.engineeringText:SetText("Engineering")
    engineeringButton:SetSize(20, 20)
    engineeringButton:SetPoint("CENTER", leatherworkingButton, "CENTER", 0, -22)

    guiFrame.testText = guiFrame:CreateFontString(nil, "OVERLAY", "GameFontNormal")
    guiFrame.testText:SetPoint("TOPLEFT", guiFrame.tailoringText, "BOTTOMLEFT", 0, -10)
    guiFrame.testText:SetText("Test")
    testButton:SetSize(20, 20)
    testButton:SetPoint("CENTER", tailoringButton, "CENTER", 0, -22)

    local function onRadioButtonPress(self)
        blacksmithingButton:SetChecked(false)
        leatherworkingButton:SetChecked(false)
        tailoringButton:SetChecked(false)
        alchemyButton:SetChecked(false)
        enchantingButton:SetChecked(false)
        engineeringButton:SetChecked(false)
        testButton:SetChecked(false)

        self:SetChecked(true)
    end

    blacksmithingButton:SetScript("OnClick", onRadioButtonPress)
    leatherworkingButton:SetScript("OnClick", onRadioButtonPress)
    tailoringButton:SetScript("OnClick", onRadioButtonPress)
    alchemyButton:SetScript("OnClick", onRadioButtonPress)
    enchantingButton:SetScript("OnClick", onRadioButtonPress)
    engineeringButton:SetScript("OnClick", onRadioButtonPress)
    testButton:SetScript("OnClick", onRadioButtonPress)

    guiFrame.moneyText = guiFrame:CreateFontString(nil, "OVERLAY", "GameFontNormal")
    guiFrame.moneyText:SetPoint("TOPLEFT", guiFrame.enchantingText, "BOTTOMLEFT", 0, -10)
    guiFrame.moneyText:SetText("Money:")

    local moneyEditBox = CreateFrame("EditBox", "moneyEditBoxFrame", guiFrame, "InputBoxTemplate")
    moneyEditBox:SetSize(50, 20)
    moneyEditBox:SetPoint("LEFT", guiFrame.moneyText, "RIGHT", 10, 0)
    moneyEditBox:SetNumeric(true)

    guiFrame.moneyTextCopper = guiFrame:CreateFontString(nil, "OVERLAY", "GameFontNormal")
    guiFrame.moneyTextCopper:SetPoint("LEFT", moneyEditBox, "RIGHT", 10, 0)
    guiFrame.moneyTextCopper:SetText("in copper")

    moneyEditBox:SetScript("OnEditFocusLost", function (self)
        self:EnableKeyboard(false)
    end)
    moneyEditBox:SetScript("OnEnter", function (self)
        self:EnableKeyboard(true)
    end)
    moneyEditBox:SetScript("OnEnterPressed", function (self)
        self:EnableKeyboard(false)
    end)

    local selectSkillLevelFrame = CreateFrame("Slider", "selectSkillLevelFrame", guiFrame, "UISliderTemplateWithLabels")
    selectSkillLevelFrame:SetPoint("TOPLEFT", guiFrame, "TOPLEFT", 20, -150)
    selectSkillLevelFrame:SetSize(300, 20)
    selectSkillLevelFrame:SetMinMaxValues(0, 300)
    selectSkillLevelFrame:SetValue(20)
    selectSkillLevelFrame:SetValueStep(1)
    selectSkillLevelFrame:SetObeyStepOnDrag(true)
    selectSkillLevelFrame.Text:SetText("Select Skill level (" .. selectSkillLevelFrame:GetValue() .. ")")
    selectSkillLevelFrame:SetScript("OnValueChanged", function (self, value, userInput)
        self:SetValue(value)
        self.Text:SetText("Select Skill level  (" .. self:GetValue() .. ")")
    end)

    local selectSegmentFrame = CreateFrame("Slider", "SelectSegmentFrame", guiFrame, "UISliderTemplateWithLabels")
    selectSegmentFrame:SetPoint("TOPLEFT", guiFrame, "TOPLEFT", 20, -180)
    selectSegmentFrame:SetSize(300, 20)
    selectSegmentFrame:SetMinMaxValues(5, 300)
    selectSegmentFrame:SetValue(75)
    selectSegmentFrame:SetValueStep(5)
    selectSegmentFrame:SetObeyStepOnDrag(true)
    selectSegmentFrame.Text:SetText("Segment Range (" .. selectSegmentFrame:GetValue() .. ")")
    selectSegmentFrame:SetScript("OnValueChanged", function (self, value, userInput)
        self:SetValue(value)
        self.Text:SetText("Segment Range (" .. self:GetValue() .. ")")
    end)

    local setButtonFrame = CreateFrame("Button", "SetButtonFrame", guiFrame, "UIPanelButtonTemplate")
    setButtonFrame:SetPoint("TOPLEFT", guiFrame, "TOPLEFT", 20, -210)
    setButtonFrame:SetSize(100, 40)
    setButtonFrame:SetText("Set parameters")
    setButtonFrame:RegisterForClicks("LeftButtonUp")
    setButtonFrame:SetScript("OnClick", function (self)
        local professionName = ""
        if blacksmithingButton:GetChecked() then professionName = "Blacksmithing"
        elseif leatherworkingButton:GetChecked() then professionName = "Leatherworking"
        elseif tailoringButton:GetChecked() then professionName = "Tailoring"
        elseif alchemyButton:GetChecked() then professionName = "Alchemy"
        elseif enchantingButton:GetChecked() then professionName = "Enchanting"
        elseif engineeringButton:GetChecked() then professionName = "Engineering"
        elseif testButton:GetChecked() then professionName = "Testing" end
        aProf.setPlayerData(professionName, selectSkillLevelFrame:GetValue())
        profSession.segmentRange = selectSegmentFrame:GetValue()
        print("Segment range", profSession.segmentRange)
        RXPCData.professions.money = tonumber(moneyEditBox:GetText())
    end)

    local ahNotShowingMessageFrame = CreateFrame("MessageFrame", "ahNotShowingMessageFrame", UIParent)
    ahNotShowingMessageFrame:SetPoint("TOP")
    ahNotShowingMessageFrame:SetSize(200, 200)
    ahNotShowingMessageFrame:SetFont("fonts/arialn.ttf", 20, "")
    ahNotShowingMessageFrame:AddMessage("AH must be open to scan!", 1, 0, 0)
    ahNotShowingMessageFrame:Hide()
    ahNotShowingMessageFrame:RegisterEvent("AUCTION_HOUSE_SHOW")
    ahNotShowingMessageFrame:SetScript("OnEvent", function (self, event)
        if event == "AUCTION_HOUSE_SHOW" then
            ahNotShowingMessageFrame:Hide()
        end
    end)

    local resultTextFrame = CreateFrame("ScrollFrame", "scrollTextFrame", guiFrame, "UIPanelScrollFrameTemplate")
    resultTextFrame:SetPoint("TOPLEFT", setButtonFrame, "BOTTOMLEFT", 0, -10)
    resultTextFrame:SetSize(400, 400)

    local scanButtonFrame = CreateFrame("Button", "ScanButtonFrame", setButtonFrame, "UIPanelButtonTemplate")
    scanButtonFrame:SetPoint("LEFT", setButtonFrame, "RIGHT")
    scanButtonFrame:SetSize(200, 40)
    scanButtonFrame:SetText("Scan Auction House")
    scanButtonFrame:RegisterForClicks("LeftButtonUp")
    scanButtonFrame:SetScript("OnClick", function (self)
        printed = false
        if not profSession.isInitialized then
            error("Profession session not initialized", 2)
        end
        if not profSession.ahIsShowing then
            ahNotShowingMessageFrame:Show()
        else
            guiFrame.printText.Text:SetText("")
            if RXPCData.professions.profession1.name ~= "testing" then
                aProf:fullScan()
            else
                aProf:testScan()
            end
        end
    end)

    --guiFrame.printText = guiFrame:CreateFontString(nil, "OVERLAY", "GameFontNormal")
    guiFrame.printText = CreateFrame("Frame")
    guiFrame.printText.Text = guiFrame.printText:CreateFontString(nil, "OVERLAY", "GameFontNormal")
    guiFrame.printText.Text:SetPoint("TOPLEFT", guiFrame.printText, "TOPLEFT", 10, -10)
    guiFrame.printText:SetPoint("TOPLEFT", setButtonFrame, "BOTTOMLEFT", 0, -10)
    guiFrame.printText:SetSize(resultTextFrame:GetWidth(), resultTextFrame:GetHeight() * 2)
    resultTextFrame:SetScrollChild(guiFrame.printText)
    local textToPrint = ""


    local printButtonFrame = CreateFrame("Button", "printButtonFrame", scanButtonFrame, "UIPanelButtonTemplate")
    printButtonFrame:SetPoint("LEFT", scanButtonFrame, "RIGHT")
    printButtonFrame:SetSize(120, 40)
    printButtonFrame:SetText("Print scan results")
    printButtonFrame:RegisterForClicks("LeftButtonUp")
    printButtonFrame:SetScript("OnClick", function (self)
        textToPrint = ""
        local recipeKnapsack, materialKnapsack, backpackKnapsack, skillLevelsGained, moneySpent
        local minSegment, maxSegment = aProf.calculateSegmentRange(RXPCData.professions.profession1.skillLevel, profSession.segmentRange)
        if not printed then
            recipeKnapsack, materialKnapsack, backpackKnapsack, skillLevelsGained, moneySpent =
            aProf.gatherRecipesToBuyGreedy(
            RXPCData.professions.profession1.name,
            RXPCData.professions.profession1.skillLevel,
            maxSegment, RXPCData.professions.money
            )
            textToPrint = aProf.greedyToString(recipeKnapsack, materialKnapsack, backpackKnapsack, skillLevelsGained, moneySpent)
            textToPrint = textToPrint .. "==========\n"
            --guiFrame.printText:SetText(textToPrint)
            guiFrame.printText.Text:SetText(textToPrint)
        end
        printed = true
    end)

    SLASH_prof1 = '/prof'
    SlashCmdList['prof'] = function()
        if not guiFrame:IsShown() then
            guiFrame:Show()
        end
    end

    --guiFrame:Hide()
end