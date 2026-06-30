local addonName, addon = ...
local L = addon.locale.Get

addon.professions = addon.professions or {}

-- Local renaming
local aProf = addon.professions
local profSession = aProf.profSession

addon.professions.GUI = {}

--Groups many radio buttons to one press
---...: All radio buttons to group together
local function groupRadioButtons(...)
    local args = {...}
    for _, radioButton in ipairs(args) do
        radioButton:SetScript("OnClick", function(self)
            for _, otherRadioButton in ipairs(args) do
                otherRadioButton:SetChecked(false)
            end
            self:SetChecked(true)
        end)
    end
end

--GUI
local printed = false --last minute variable for a gui bugfix, will be properly resolved
function addon.professions.GUI.createGUI()
    --Not local so I can access it from other files
    aProf.GUI.guiFrame = CreateFrame("Frame", "ProfessionsFrame", UIParent, "BasicFrameTemplateWithInset")
    local guiFrame = aProf.GUI.guiFrame --Localized for ease of access
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

    local function createCheckButton(parent, name)
        local checkButton = CreateFrame("CheckButton", name, parent, "UIRadioButtonTemplate");
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

    groupRadioButtons(blacksmithingButton, leatherworkingButton, tailoringButton, alchemyButton, enchantingButton, engineeringButton, testButton)

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
    moneyEditBox:SetScript("OnEscapePressed", function (self)
        self:ClearFocus()
    end)

    local selectSkillLevelFrame = CreateFrame("Slider", "selectSkillLevelFrame", guiFrame, "UISliderTemplateWithLabels")
    selectSkillLevelFrame:SetPoint("TOPLEFT", guiFrame, "TOPLEFT", 20, -150)
    selectSkillLevelFrame:SetSize(300, 20)
    selectSkillLevelFrame:SetMinMaxValues(1, 300)
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

    guiFrame.calculateMethodText = guiFrame:CreateFontString(nil, "OVERLAY", "GameFontNormal")
    guiFrame.calculateMethodText:SetPoint("TOPLEFT", guiFrame, "TOPLEFT", 10, -220)
    guiFrame.calculateMethodText:SetText("Select calculation method:")

    local minimumPriceMethod = createCheckButton(guiFrame, "Minimum price")
    local averagePriceMethod = createCheckButton(guiFrame, "Average price")

    guiFrame.minimumPriceMethodText = guiFrame:CreateFontString(nil, "OVERLAY", "GameFontNormal")
    guiFrame.minimumPriceMethodText:SetPoint("TOPLEFT", guiFrame, "TOPLEFT", 10, -250)
    guiFrame.minimumPriceMethodText:SetText("Minimum price")
    minimumPriceMethod:SetSize(20, 20)
    minimumPriceMethod:SetPoint("LEFT", guiFrame.minimumPriceMethodText, "RIGHT", 10, 0)

    guiFrame.averagePriceMethodText = guiFrame:CreateFontString(nil, "OVERLAY", "GameFontNormal")
    guiFrame.averagePriceMethodText:SetPoint("LEFT", minimumPriceMethod, "RIGHT", 10, 0)
    guiFrame.averagePriceMethodText:SetText("Average price")
    averagePriceMethod:SetSize(20, 20)
    averagePriceMethod:SetPoint("LEFT", guiFrame.averagePriceMethodText, "RIGHT", 10, 0)

    groupRadioButtons(minimumPriceMethod, averagePriceMethod)

    guiFrame.methodText = guiFrame:CreateFontString(nil, "OVERLAY", "GameFontNormal")
    guiFrame.methodText:SetPoint("TOPLEFT", guiFrame, "TOPLEFT", 10, -280)
    guiFrame.methodText:SetText("Select greed method:")

    local moneyGreedyMethod = createCheckButton(guiFrame, "Money")
    local percentageGreedyMethod = createCheckButton(guiFrame, "Percentage")
    local moneyAndPercentageGreedyMethod = createCheckButton(guiFrame, "Money & Percentage")

    guiFrame.moneyGreedyMethodText = guiFrame:CreateFontString(nil, "OVERLAY", "GameFontNormal")
    guiFrame.moneyGreedyMethodText:SetPoint("TOPLEFT", guiFrame, "TOPLEFT", 10, -310)
    guiFrame.moneyGreedyMethodText:SetText("Money")
    moneyGreedyMethod:SetSize(20, 20)
    moneyGreedyMethod:SetPoint("LEFT", guiFrame.moneyGreedyMethodText, "RIGHT", 10, 0)

    guiFrame.percentageGreedyMethodText = guiFrame:CreateFontString(nil, "OVERLAY", "GameFontNormal")
    guiFrame.percentageGreedyMethodText:SetPoint("LEFT", moneyGreedyMethod, "RIGHT", 10, 0)
    guiFrame.percentageGreedyMethodText:SetText("Percentage")
    percentageGreedyMethod:SetSize(20, 20)
    percentageGreedyMethod:SetPoint("LEFT", guiFrame.percentageGreedyMethodText, "RIGHT", 10, 0)

    guiFrame.moneyAndPercentageMethodText = guiFrame:CreateFontString(nil, "OVERLAY", "GameFontNormal")
    guiFrame.moneyAndPercentageMethodText:SetPoint("LEFT", percentageGreedyMethod, "RIGHT", 10, 0)
    guiFrame.moneyAndPercentageMethodText:SetText("Money & Percentage")
    moneyAndPercentageGreedyMethod:SetSize(20, 20)
    moneyAndPercentageGreedyMethod:SetPoint("LEFT", guiFrame.moneyAndPercentageMethodText, "RIGHT", 10, 0)

    groupRadioButtons(moneyGreedyMethod, percentageGreedyMethod, moneyAndPercentageGreedyMethod)

    local setButtonFrame = CreateFrame("Button", "SetButtonFrame", guiFrame, "UIPanelButtonTemplate")
    setButtonFrame:SetPoint("TOPLEFT", guiFrame, "TOPLEFT", 20, -330)
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
        RXPCData.professions.segmentRange = selectSegmentFrame:GetValue()
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
    resultTextFrame:SetSize(400, 300)

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

    guiFrame.printText = CreateFrame("EditBox")
    guiFrame.printText:SetEnabled(false)
    guiFrame.printText:SetMultiLine(true)
    guiFrame.printText:SetAutoFocus(false)
    guiFrame.printText:SetFontObject("GameFontNormal")
    guiFrame.printText.Text = guiFrame.printText:CreateFontString(nil, "OVERLAY", "GameFontNormal")
    guiFrame.printText.Text:SetPoint("TOPLEFT", guiFrame.printText, "TOPLEFT", 10, -10)
    guiFrame.printText.Text:SetWidth(resultTextFrame:GetWidth() - 20)
    guiFrame.printText.Text:SetNonSpaceWrap(true)
    guiFrame.printText:SetPoint("TOPLEFT", resultTextFrame, "BOTTOMLEFT", 0, -10)
    guiFrame.printText:SetSize(resultTextFrame:GetWidth(), resultTextFrame:GetHeight())
    resultTextFrame:SetScrollChild(guiFrame.printText)
    guiFrame.printText:SetScript("OnEscapePressed", function (self)
        self:ClearHighlightText()
        self:ClearFocus()
        self:SetEnabled(false)
    end)
    local textToPrint = ""


    local printButtonFrame = CreateFrame("Button", "printButtonFrame", scanButtonFrame, "UIPanelButtonTemplate")
    printButtonFrame:SetPoint("LEFT", scanButtonFrame, "RIGHT")
    printButtonFrame:SetSize(120, 40)
    printButtonFrame:SetText("Print scan results")
    printButtonFrame:RegisterForClicks("LeftButtonUp")
    printButtonFrame:SetScript("OnClick", function (self)
        textToPrint = ""
        guiFrame.printText.Text:SetText("")

        --Get calculation method type: 1 - minimum | 2 - average
        local calculationMethod = 1 -- minimum by default
        if minimumPriceMethod:GetChecked() then calculationMethod = 1
        elseif averagePriceMethod:GetChecked() then calculationMethod = 2
        end

        --Get greed method type: 1 - money | 2 - percentage | 3 - mone and percentage
        local greedMethod = 1 --money by defualt
        if moneyGreedyMethod:GetChecked() then greedMethod = 1
        elseif percentageGreedyMethod:GetChecked() then greedMethod = 2
        elseif moneyAndPercentageGreedyMethod:GetChecked() then greedMethod = 3
        end

        local recipeKnapsack, materialKnapsack, backpackKnapsack, skillLevelsGained, moneySpent
        local minSegment, maxSegment = aProf.calculateSegmentRange(RXPCData.professions.profession1.skillLevel, RXPCData.professions.segmentRange)
        if true then--not printed then
            --Calculate prices
            aProf.calculateRecipePrice(RXPCData.professions.profession1.name, calculationMethod)

            --Use selected methods
            if greedMethod == 1 then
                recipeKnapsack, materialKnapsack, backpackKnapsack, skillLevelsGained, moneySpent =
                aProf.gatherRecipesToBuyGreedyMoney(
                    RXPCData.professions.profession1.name,
                    RXPCData.professions.profession1.skillLevel,
                    maxSegment, RXPCData.professions.money
                )
            elseif greedMethod == 2 then
                recipeKnapsack, materialKnapsack, backpackKnapsack, skillLevelsGained, moneySpent =
                aProf.gatherRecipesToBuyGreedy(
                    RXPCData.professions.profession1.name,
                    RXPCData.professions.profession1.skillLevel,
                    maxSegment, RXPCData.professions.money
                )
            else -- 3
                recipeKnapsack, materialKnapsack, backpackKnapsack, skillLevelsGained, moneySpent =
                aProf.gatherRecipesToBuyGreedyMoneyAndPercentage(
                    RXPCData.professions.profession1.name,
                    RXPCData.professions.profession1.skillLevel,
                    maxSegment, RXPCData.professions.money
                )
            end
            textToPrint = aProf.greedyToString(recipeKnapsack, materialKnapsack, backpackKnapsack, skillLevelsGained, moneySpent)
            textToPrint = textToPrint .. "==========\n"
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

    --Setup
    moneyEditBox:SetNumber(1000000)
    minimumPriceMethod:SetChecked(true)
    moneyGreedyMethod:SetChecked(true)

    --guiFrame:Hide()
end