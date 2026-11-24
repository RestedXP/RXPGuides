local _, addon = ...

local CreateFrame, UIParent = CreateFrame, UIParent
local C_AuctionHouse = _G.C_AuctionHouse
-- Core.lua creates addon.ui.v2 before this module is loaded.
local AceGUI = LibStub("AceGUI-3.0")
local kindHeaderHeight, itemRowHeight, itemRowSpacing = 19, 37, 4
local columnTexture = "Interface\\FriendsFrame\\WhoFrame-ColumnTabs"
local kindHeaderTexture = "Interface\\AuctionFrame\\UI-AuctionFrame-Auction-Top"
local rowTexture = "Interface\\AuctionFrame\\UI-AuctionItemNameFrame"
local rowHighlightTexture = "Interface\\HelpFrame\\HelpFrameButton-Highlight"
local itemIconTexture = "Interface\\Buttons\\UI-Quickslot2"
local itemIconHighlightTexture = "Interface\\Buttons\\ButtonHilight-Square"
local buttonDividerTexture = "Interface\\FrameGeneral\\UI-Frame"

local function createAuctionHouseColumnButton(parent, text, width)
    if C_AuctionHouse then
        local button = CreateFrame("Button", nil, parent, "ColumnDisplayButtonShortTemplate")
        button:SetSize(width, 19)
        button:SetText(text)
        return button
    end

    local button = CreateFrame("Button", nil, parent)
    local theme = addon.v2:GetTheme()
    button:SetSize(width, 19)

    local left = button:CreateTexture(nil, "BACKGROUND")
    left:SetSize(5, 19)
    left:SetPoint("TOPLEFT")
    left:SetTexture(columnTexture)
    left:SetTexCoord(0, 0.078125, 0, 0.59375)

    local right = button:CreateTexture(nil, "BACKGROUND")
    right:SetSize(4, 19)
    right:SetPoint("TOPRIGHT")
    right:SetTexture(columnTexture)
    right:SetTexCoord(0.90625, 0.96875, 0, 0.59375)

    local middle = button:CreateTexture(nil, "BACKGROUND")
    middle:SetPoint("LEFT", left, "RIGHT")
    middle:SetPoint("RIGHT", right, "LEFT")
    middle:SetPoint("TOP", button, "TOP")
    middle:SetPoint("BOTTOM", button, "BOTTOM")
    middle:SetTexture(columnTexture)
    middle:SetTexCoord(0.078125, 0.90625, 0, 0.59375)

    local label = button:CreateFontString(nil, "ARTWORK")
    label:SetFont(theme.font, 10, "")
    label:SetPoint("LEFT", 8, 0)
    label:SetJustifyH("LEFT")
    label:SetText(text)
    button.Text = label

    return button
end

local function createAuctionHouseItemRow(parent, moneyFrameName)
    local row = CreateFrame("Button", nil, parent)
    local theme = addon.v2:GetTheme()
    row:SetHeight(itemRowHeight)

    local left = row:CreateTexture(nil, "BORDER")
    left:SetSize(10, itemRowHeight)
    left:SetPoint("LEFT", 34, 0)
    left:SetTexture(rowTexture)
    left:SetTexCoord(0, 0.078125, 0, 1)

    local right = row:CreateTexture(nil, "BORDER")
    right:SetSize(10, itemRowHeight)
    right:SetPoint("RIGHT")
    right:SetTexture(rowTexture)
    right:SetTexCoord(0.75, 0.828125, 0, 1)

    local middle = row:CreateTexture(nil, "BORDER")
    middle:SetPoint("LEFT", left, "RIGHT")
    middle:SetPoint("RIGHT", right, "LEFT")
    middle:SetPoint("TOP", row, "TOP")
    middle:SetPoint("BOTTOM", row, "BOTTOM")
    middle:SetTexture(rowTexture)
    middle:SetTexCoord(0.078125, 0.75, 0, 1)

    row:EnableMouse(true)
    row:SetScript("OnEnter", function(this) if this.OnEnter then this.OnEnter(this) end end)
    row:SetScript("OnLeave", function(this) if this.OnLeave then this.OnLeave(this) end end)
    row:SetScript("OnClick", function(this) if this.OnClick then this.OnClick(this) end end)

    row:SetHighlightTexture(rowHighlightTexture, "ADD")
    row.Highlight = row:GetHighlightTexture()
    row.Highlight:SetAllPoints(row)
    row.Highlight:SetTexCoord(0, 1, 0, 0.578125)

    row.Name = row:CreateFontString(nil, "ARTWORK")
    row.Name:SetFont(theme.font, 12, "")
    row.Name:SetSize(180, 32)
    row.Name:SetPoint("TOPLEFT", 41, 0)
    row.Name:SetJustifyH("LEFT")

    row.ItemIcon = CreateFrame("Button", nil, row)
    row.ItemIcon:SetSize(32, 32)
    row.ItemIcon:SetPoint("TOPLEFT", 1, -2)
    row.ItemIcon:SetNormalTexture(itemIconTexture)
    row.ItemIcon:GetNormalTexture():ClearAllPoints()
    row.ItemIcon:GetNormalTexture():SetSize(60, 60)
    row.ItemIcon:GetNormalTexture():SetPoint("CENTER")

    row.ItemIcon.IconTexture = row.ItemIcon:CreateTexture(nil, "BORDER")
    row.ItemIcon.IconTexture:SetAllPoints(row.ItemIcon)
    row.ItemIcon:SetHighlightTexture(itemIconHighlightTexture, "ADD")

    row.ItemIcon:SetScript("OnEnter", function(this)
        local itemRow = this:GetParent()

        if itemRow.OnEnter then itemRow.OnEnter(itemRow, this) end
    end)

    row.ItemIcon:SetScript("OnLeave", function(this)
        local itemRow = this:GetParent()

        if itemRow.OnLeave then itemRow.OnLeave(itemRow, this) end
    end)

    row.ItemIcon:SetScript("OnClick", function(this)
        local itemRow = this:GetParent()

        if itemRow.OnClick then itemRow.OnClick(itemRow, this) end
    end)

    row.ItemLevel = CreateFrame("Frame", nil, row)
    row.ItemLevel:SetSize(84, 32)
    row.ItemLevel:SetPoint("TOPLEFT", 300, 0)
    row.ItemLevel:EnableMouse(true)

    row.ItemLevel:SetScript("OnEnter", function(this)
        local itemRow = this:GetParent()

        if itemRow.OnEnter then itemRow.OnEnter(itemRow, this) end
    end)

    row.ItemLevel:SetScript("OnLeave", function(this)
        local itemRow = this:GetParent()

        if itemRow.OnLeave then itemRow.OnLeave(itemRow, this) end
    end)

    row.ItemLevel.Text = row.ItemLevel:CreateFontString(nil, "ARTWORK")
    row.ItemLevel.Text:SetFont(theme.font, 10, "")
    row.ItemLevel.Text:SetAllPoints(row.ItemLevel)
    row.ItemLevel.Text:SetJustifyH("CENTER")

    row.UpdateEP = CreateFrame("Frame", nil, row)
    row.UpdateEP:SetSize(204, itemRowHeight)
    row.UpdateEP:SetPoint("TOPLEFT", 386, 0)
    row.UpdateEP:EnableMouse(true)

    row.UpdateEP:SetScript("OnEnter", function(this)
        local itemRow = this:GetParent()
        if itemRow.OnEnter then itemRow.OnEnter(itemRow, this) end
    end)

    row.UpdateEP:SetScript("OnLeave", function(this)
        local itemRow = this:GetParent()
        if itemRow.OnLeave then itemRow.OnLeave(itemRow, this) end
    end)

    row.UpdateEP.Text = row.UpdateEP:CreateFontString(nil, "ARTWORK")
    row.UpdateEP.Text:SetFont(theme.font, 11, "")
    row.UpdateEP.Text:SetPoint("TOPLEFT")
    row.UpdateEP.Text:SetPoint("BOTTOMRIGHT", -10, 0)
    row.UpdateEP.Text:SetJustifyH("CENTER")
    row.UpdateEP.Text:SetJustifyV("MIDDLE")

    row.Buyout = CreateFrame("Frame", nil, row)
    row.Buyout:SetHeight(32)
    row.Buyout:SetPoint("LEFT", row.UpdateEP, "RIGHT")
    row.Buyout:SetPoint("RIGHT")

    row.Buyout.Money = CreateFrame("Frame", moneyFrameName, row.Buyout, "SmallMoneyFrameTemplate")
    row.Buyout.Money:SetPoint("RIGHT", 0, -6)
    row.Buyout.Money.staticMoney = 0
    MoneyFrame_SetType(row.Buyout.Money, "AUCTION")

    row.Buyout.Label = CreateFrame("Frame", nil, row.Buyout)
    row.Buyout.Label:SetSize(48, 13)
    row.Buyout.Label:SetPoint("RIGHT", row.Buyout.Money, "LEFT")

    local buyoutLabel = row.Buyout.Label:CreateFontString(nil, "ARTWORK")
    buyoutLabel:SetFont(theme.font, 10, "")
    buyoutLabel:SetAllPoints(row.Buyout.Label)
    buyoutLabel:SetJustifyH("LEFT")
    buyoutLabel:SetText(_G.BUYOUT_COST)

    return row
end

local function createAuctionHousePanelButton(parent, text)
    local button = CreateFrame("Button", nil, parent, "UIPanelButtonTemplate")
    button:SetSize(80, 22)
    button:SetText(text)
    button:GetFontString():SetFont(addon.v2:GetTheme().font, 12, "")

    if not C_AuctionHouse then
        local divider = button:CreateTexture(nil, "BORDER")
        divider:SetSize(13, 25)
        divider:SetPoint("TOPRIGHT", button, "TOPLEFT", 5, 1)
        divider:SetTexture(buttonDividerTexture)
        divider:SetTexCoord(0.0078125, 0.109375, 0.7578125, 0.953125)
    end

    return button
end

function addon.ui.v2:RegisterRXPV2AuctionHouseItemBlock()
    local Type, Version = "RXPV2AuctionHouseItemBlock", 1
    if not AceGUI or (AceGUI:GetWidgetVersion(Type) or 0) >= Version then return end

    local function resetRow(row)
        row:UnlockHighlight()

        row.nodeData = nil
        row.ItemLink = nil
        row.ItemID = nil
        row.OnEnter = nil
        row.OnLeave = nil
        row.OnClick = nil

        if row.ItemIcon.KindIcon then row.ItemIcon.KindIcon:Hide() end

        row:Hide()
    end

    local methods = {
        ["OnAcquire"] = function(this) this.frame:Show() end,

        ["OnRelease"] = function(this)
            this.frame:Hide()
            resetRow(this.frame.Best)
            resetRow(this.frame.Budget)
        end,

        ["SetResultCount"] = function(this, count)
            this:SetHeight(kindHeaderHeight + count * (itemRowHeight + itemRowSpacing))
        end,

        ["SetRowHandlers"] = function(this, handlers)
            this.frame.Best.OnEnter = handlers.OnEnter
            this.frame.Best.OnLeave = handlers.OnLeave
            this.frame.Best.OnClick = handlers.OnClick
            this.frame.Budget.OnEnter = handlers.OnEnter
            this.frame.Budget.OnLeave = handlers.OnLeave
            this.frame.Budget.OnClick = handlers.OnClick
        end
    }

    local function Constructor()
        -- SmallMoneyFrameTemplate creates named $parent regions, so each instance needs a unique global name.
        local moneyFramePrefix = Type .. AceGUI:GetNextWidgetNum(Type)
        local frame = CreateFrame("Frame", nil, UIParent)

        frame.Header = CreateFrame("Frame", nil, frame)
        frame.Header:SetHeight(kindHeaderHeight)
        frame.Header:SetPoint("TOPLEFT")
        frame.Header:SetPoint("TOPRIGHT")

        local headerTop = frame.Header:CreateTexture(nil, "BACKGROUND")
        headerTop:SetHeight(10)
        headerTop:SetPoint("TOPLEFT")
        headerTop:SetPoint("TOPRIGHT")
        headerTop:SetHorizTile(true)
        headerTop:SetTexture(kindHeaderTexture, true)
        headerTop:SetTexCoord(0, 1, 15 / 256, 25 / 256)

        local headerBottom = frame.Header:CreateTexture(nil, "BACKGROUND")
        headerBottom:SetPoint("TOPLEFT", headerTop, "BOTTOMLEFT")
        headerBottom:SetPoint("BOTTOMRIGHT")
        headerBottom:SetHorizTile(true)
        headerBottom:SetTexture(kindHeaderTexture, true)
        headerBottom:SetTexCoord(0, 1, 25 / 256, 15 / 256)

        frame.Header.Name = frame.Header:CreateFontString(nil, "OVERLAY")
        frame.Header.Name:SetFont(addon.v2:GetTheme().font, 12, "")
        frame.Header.Name:SetSize(260, kindHeaderHeight)
        frame.Header.Name:SetPoint("LEFT", 8, 0)
        frame.Header.Name:SetJustifyH("LEFT")

        frame.Best = createAuctionHouseItemRow(frame, moneyFramePrefix .. "BestMoneyFrame")
        frame.Best:SetPoint("TOPLEFT", frame.Header, "BOTTOMLEFT", 0, -itemRowSpacing)
        frame.Best:SetPoint("TOPRIGHT", frame.Header, "BOTTOMRIGHT", 0, -itemRowSpacing)

        frame.Budget = createAuctionHouseItemRow(frame, moneyFramePrefix .. "BudgetMoneyFrame")
        frame.Budget:SetPoint("TOPLEFT", frame.Best, "BOTTOMLEFT", 0, -itemRowSpacing)
        frame.Budget:SetPoint("TOPRIGHT", frame.Best, "BOTTOMRIGHT", 0, -itemRowSpacing)

        local widget = {frame = frame, type = Type}

        for method, func in pairs(methods) do widget[method] = func end

        return AceGUI:RegisterAsWidget(widget)
    end

    AceGUI:RegisterWidgetType(Type, Constructor, Version)
end

function addon.ui.v2:CreateAuctionHouse()
    if self.auctionHouse then return self.auctionHouse end

    self:RegisterRXPV2AuctionHouseItemBlock()
    local Type, Version = C_AuctionHouse and "RXPV2ForeverAH" or "RXPV2AuctionHouse", 1

    local methods = {
        ["OnAcquire"] = function(this)
            this.Results = AceGUI:Create("ScrollFrame")
            this.Results:SetLayout("Flow")

            this.Results.frame:SetParent(this.frame)
            this.Results.frame:SetPoint("TOPLEFT", 21, C_AuctionHouse and -77 or -74)
            this.Results.frame:SetPoint("BOTTOMRIGHT", -9, C_AuctionHouse and 29 or 37)
            if C_AuctionHouse then
                this.frame.ResultsInset:SetPoint("TOPLEFT", this.Results.scrollframe, "TOPLEFT", -6, 4)
                this.frame.ResultsInset:SetPoint("BOTTOMRIGHT", this.Results.scrollframe, "BOTTOMRIGHT", 6, -2)
                this.Results.scrollbar:SetPoint("TOPLEFT", this.Results.scrollframe, "TOPRIGHT", 8, -16)
                this.Results.scrollbar:SetPoint("BOTTOMLEFT", this.Results.scrollframe, "BOTTOMRIGHT", 8, 16)
                this.frame.ItemNameHeader:SetPoint("BOTTOMLEFT", this.Results.scrollframe, "TOPLEFT", -4, 3)
                this.frame.PriceHeader:SetPoint("BOTTOMLEFT", this.frame.UpgradeHeader, "BOTTOMRIGHT", -2, 0)
                this.frame.PriceHeader:SetPoint("BOTTOMRIGHT", this.Results.scrollframe, "TOPRIGHT", 4, 3)
            end
            this.Results.frame:Show()

            this.frame.Results = this.Results
            this.frame:Show()
        end,

        ["OnRelease"] = function(this)
            if C_AuctionHouse then
                this.frame.SearchStatus:Hide()
                this.frame.ResultsInset:ClearAllPoints()
                this.frame.ItemNameHeader:ClearAllPoints()
                this.frame.PriceHeader:ClearAllPoints()
                this.Results.scrollbar:SetPoint("TOPLEFT", this.Results.scrollframe, "TOPRIGHT", 4, -16)
                this.Results.scrollbar:SetPoint("BOTTOMLEFT", this.Results.scrollframe, "BOTTOMRIGHT", 4, 16)
            end
            if this.Results then AceGUI:Release(this.Results) end

            this.Results = nil
            this.frame.Results = nil
            this.frame.buyButton:SetScript("OnClick", nil)

            if addon.ui.v2.auctionHouse == this then addon.ui.v2.auctionHouse = nil end

            this.frame:Hide()
        end
    }

    local function Constructor()
        local frame = CreateFrame("Frame", nil, UIParent)

        if C_AuctionHouse then
            frame.ResultsInset = CreateFrame("Frame", nil, frame, "AuctionHouseBackgroundTemplate")
            frame.ResultsInset:SetFrameLevel(frame:GetFrameLevel())
            frame.ResultsInset.Background:ClearAllPoints()
            frame.ResultsInset.Background:SetPoint("TOPLEFT", 2, -2)
            frame.ResultsInset.Background:SetPoint("BOTTOMRIGHT", -2, 2)
            local stockBackground = _G.AuctionHouseFrame.BrowseResultsFrame.ItemList.Background
            local atlas = stockBackground:GetAtlas()
            if atlas then
                frame.ResultsInset.Background:SetAtlas(atlas)
            else
                frame.ResultsInset.Background:SetTexture(stockBackground:GetTexture())
                frame.ResultsInset.Background:SetTexCoord(stockBackground:GetTexCoord())
            end

            frame.SearchStatus = frame:CreateFontString(nil, "OVERLAY", "GameFontNormal")
            frame.SearchStatus:SetFont(addon.v2:GetTheme().font, 13, "")
            frame.SearchStatus:SetPoint("TOP", 0, -120)
            frame.SearchStatus:Hide()
        end

        local title = frame:CreateFontString(nil, "BACKGROUND")
        title:SetFont(addon.v2:GetTheme().font, 12, "")
        title:SetPoint("TOP", 0, C_AuctionHouse and -34 or -18)
        title:SetText(_G.MINIMAP_TRACKING_AUCTIONEER)
        if C_AuctionHouse then title:Hide() end
        frame.Title = title

        local itemName = createAuctionHouseColumnButton(frame, "Item Name", C_AuctionHouse and 306 or 260)
        if C_AuctionHouse then
            frame.ItemNameHeader = itemName
        else
            itemName:SetPoint("TOPLEFT", 65, -52)
        end

        local level = createAuctionHouseColumnButton(frame, _G.REQ_LEVEL_ABBR, C_AuctionHouse and 88 or 86)
        level:SetPoint("LEFT", itemName, "RIGHT", -2, 0)

        local upgradeEP = createAuctionHouseColumnButton(frame, "Upgrade/EP", C_AuctionHouse and 206 or 208)
        upgradeEP:SetPoint("LEFT", level, "RIGHT", -2, 0)

        local buyout = createAuctionHouseColumnButton(frame, _G.AUCTION_PRICE, 186)
        if C_AuctionHouse then
            frame.UpgradeHeader = upgradeEP
            frame.PriceHeader = buyout
        else
            buyout:SetPoint("LEFT", upgradeEP, "RIGHT", -2, 0)
        end

        local closeButton = createAuctionHousePanelButton(frame, _G.CLOSE)
        closeButton:SetPoint("BOTTOMRIGHT", -6, C_AuctionHouse and 6 or 14)
        closeButton:SetScript("OnClick", function(this) HideUIPanel(this:GetParent():GetParent()) end)

        local buyButton = createAuctionHousePanelButton(frame, _G.BUYOUT)
        buyButton:SetPoint("RIGHT", closeButton, "LEFT", C_AuctionHouse and -4 or 0, 0)

        local searchButton = createAuctionHousePanelButton(frame, _G.SEARCH)
        searchButton:SetPoint("RIGHT", buyButton, "LEFT", C_AuctionHouse and -4 or 0, 0)

        frame.searchButton = searchButton
        frame.buyButton = buyButton

        local widget = {frame = frame, content = frame, type = Type}

        for method, func in pairs(methods) do widget[method] = func end

        return AceGUI:RegisterAsContainer(widget)
    end

    AceGUI:RegisterWidgetType(Type, Constructor, Version)
    self.auctionHouse = AceGUI:Create(Type)
    self.auctionHouse.frame:Hide()

    return self.auctionHouse
end
