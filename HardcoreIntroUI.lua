local default_x = 420
local default_y = -60

local dungeons_enabled = false -- NOTE: Replace with settings variable
local intro_animations = true

local function createSubTitleFont(text, frame, x, y)
	local font_string = frame:CreateFontString(nil, "OVERLAY", "GameFontHighlightLarge")
	font_string:SetPoint("CENTER", frame, "CENTER", x, y)
	font_string:SetJustifyH("CENTER")
	font_string:SetWidth(350)
	font_string:SetTextColor(186 / 255, 186 / 255, 186 / 255)
	font_string:SetFont("Interface\\Addons\\RXPGuides\\Fonts\\BerlinSansFBDemi-Bold_wide5.ttf", 16, "")
	font_string:SetText(text)
	font_string:Show()
end

local function createLargeTitleFont(text, frame, x, y)
	local font_string = frame:CreateFontString(nil, "OVERLAY", "GameFontHighlightLarge")
	font_string:SetPoint("CENTER", frame, "CENTER", x, y)
	font_string:SetJustifyH("CENTER")
	font_string:SetWidth(350)
	font_string:SetTextColor(186 / 255, 186 / 255, 186 / 255)
	font_string:SetFont("Interface\\Addons\\RXPGuides\\Fonts\\BerlinSansFBDemi-Bold_wide5.ttf", 26, "OUTLINE")
	font_string:SetText(text)
	font_string:Show()
end

local function createDescriptionFont(text, frame, x, y)
	local font_string = frame:CreateFontString(nil, "OVERLAY", "GameFontNormal")
	font_string:SetPoint("CENTER", frame, "CENTER", x, y)
	font_string:SetJustifyH("CENTER")
	font_string:SetWidth(350)
	font_string:SetTextColor(145 / 255, 126 / 255, 97 / 255)
	font_string:SetFont("Fonts\\FRIZQT__.TTF", 12, "")
	font_string:SetText(text)
	font_string:Show()
end

local function createHardcoreUIFrame(
	frame_width,
	frame_height,
	zoom,
	background_cen_x,
	background_cen_y,
	parent,
	parent_anchor,
	frame_anchor,
	x_off,
	y_off,
	level
)
	local ratio = frame_height / frame_width
	local frame = CreateFrame("frame")

	parent:HookScript("OnHide", function()
		frame:Hide()
	end)
	frame:SetFrameLevel(level)
	frame:SetPoint(frame_anchor, parent, parent_anchor, x_off, y_off)
	frame:SetSize(frame_width, frame_height)
	-- frame:SetMovable(true)
	-- frame:EnableMouse(true)
	frame:Show()
	frame.textures = {}

	local tex_coords = {
		["background"] = {
			background_cen_x - zoom / 2,
			background_cen_x + zoom / 2,
			background_cen_y - zoom / 2 * ratio,
			background_cen_y + zoom / 2 * ratio,
		},
		["bottom_left_corner"] = { 0, 0.156, 1 - 0.272, 1 - (0.272 + 0.15) },
		["bottom_right_corner"] = { 0, 0.156, 1 - 0.272, 1 - (0.272 + 0.15) },
		["top_left_corner"] = { 0, 0.156, 1 - 0.272, 1 - (0.272 + 0.15) },
		["top_right_corner"] = { 0, 0.156, 1 - 0.272, 1 - (0.272 + 0.15) },
		["top_bar"] = { 0, 1, 1 - 0.0423, 1 - (0.0423 + 0.0423 / 2) },
		["bottom_bar"] = { 0, 1, 1 - 0.0402 / 3, 1 - 0.0402 },
		["right_bar"] = { 0.157, 0.157 + 0.0146, 1 - 0.298, 1 - (0.298 + 0.0307) },
		["left_bar"] = { 0.171, 0.171 + 0.0146, 1 - 0.298, 1 - (0.298 + 0.0307) },
		["skull_emblem"] = { 0.204, 0.204 + 0.0781, 1 - (0.348 + 0.0745), 1 - 0.348 },
		["top_left_dia_chain"] = { 0.279, 0.279 + 0.211, 1 - (0.0727 + 0.273), 1 - 0.0727 },
		["top_left_dia_chain2"] = { 0.279, 0.279 + 0.211, 1 - (0.0727 + 0.273), 1 - 0.0727 },
		["top_left_dia_chain3"] = { 0.279, 0.279 + 0.211, 1 - (0.0727 + 0.273), 1 - 0.0727 },
		["top_right_dia_chain"] = { 0.279, 0.279 + 0.211, 1 - (0.0727 + 0.273), 1 - 0.0727 },
		["top_right_dia_chain2"] = { 0.279, 0.279 + 0.211, 1 - (0.0727 + 0.273), 1 - 0.0727 },
		["top_right_dia_chain3"] = { 0.279, 0.279 + 0.211, 1 - (0.0727 + 0.273), 1 - 0.0727 },
		["top_left_dia_chain_shadow"] = { 0.279, 0.279 + 0.211, 1 - (0.0727 + 0.273), 1 - 0.0727 },
		["top_left_dia_chain2_shadow"] = { 0.279, 0.279 + 0.211, 1 - (0.0727 + 0.273), 1 - 0.0727 },
		["top_left_dia_chain3_shadow"] = { 0.279, 0.279 + 0.211, 1 - (0.0727 + 0.273), 1 - 0.0727 },
		["top_right_dia_chain_shadow"] = { 0.279, 0.279 + 0.211, 1 - (0.0727 + 0.273), 1 - 0.0727 },
		["top_right_dia_chain2_shadow"] = { 0.279, 0.279 + 0.211, 1 - (0.0727 + 0.273), 1 - 0.0727 },
		["top_right_dia_chain3_shadow"] = { 0.279, 0.279 + 0.211, 1 - (0.0727 + 0.273), 1 - 0.0727 },
		["vert_left_chain1"] = { 0.279, 0.279 + 0.211, 1 - (0.0727 + 0.273), 1 - 0.0727 },
		["vert_left_chain2"] = { 0.279, 0.279 + 0.211, 1 - (0.0727 + 0.273), 1 - 0.0727 },
		["vert_right_chain1"] = { 0.279, 0.279 + 0.211, 1 - (0.0727 + 0.273), 1 - 0.0727 },
		["vert_right_chain2"] = { 0.279, 0.279 + 0.211, 1 - (0.0727 + 0.273), 1 - 0.0727 },
	}

	local tex_sizes = {
		["background"] = { 1 * frame:GetWidth() / 375, 1 * frame:GetWidth() / 375 * ratio },
		["bottom_left_corner"] = { 0.1, 0.1 },
		["bottom_right_corner"] = { 0.1, 0.1 },
		["top_left_corner"] = { 0.1, 0.1 },
		["top_right_corner"] = { 0.1, 0.1 },
		["top_bar"] = { 1 * frame:GetWidth() / 375, 0.0175 },
		["bottom_bar"] = { 1 * frame:GetWidth() / 375, 0.0175 },
		["left_bar"] = { 0.0175, 1 * ratio * frame:GetWidth() / 375 },
		["right_bar"] = { 0.0175, 1 * ratio * frame:GetWidth() / 375 },
		["skull_emblem"] = { 0.2, 0.2 },
		["top_left_dia_chain"] = { 0.2, 0.2 },
		["top_left_dia_chain2"] = { 0.2, 0.2 },
		["top_left_dia_chain3"] = { 0.2, 0.2 },
		["top_right_dia_chain"] = { 0.2, 0.2 },
		["top_right_dia_chain2"] = { 0.2, 0.2 },
		["top_right_dia_chain3"] = { 0.2, 0.2 },
		["top_left_dia_chain_shadow"] = { 0.2, 0.2 },
		["top_left_dia_chain2_shadow"] = { 0.2, 0.2 },
		["top_left_dia_chain3_shadow"] = { 0.2, 0.2 },
		["top_right_dia_chain_shadow"] = { 0.2, 0.2 },
		["top_right_dia_chain2_shadow"] = { 0.2, 0.2 },
		["top_right_dia_chain3_shadow"] = { 0.2, 0.2 },
		["vert_left_chain1"] = { 0.2, 0.2 },
		["vert_left_chain2"] = { 0.2, 0.2 },
		["vert_right_chain1"] = { 0.2, 0.2 },
		["vert_right_chain2"] = { 0.2, 0.2 },
	}

	local tex_rots = {
		["background"] = 0,
		["bottom_left_corner"] = 0,
		["bottom_right_corner"] = 1.57,
		["top_left_corner"] = 3.14 + 1.57,
		["top_right_corner"] = 3.14,
		["top_bar"] = 0,
		["bottom_bar"] = 0,
		["left_bar"] = 0,
		["right_bar"] = 0,
		["skull_emblem"] = 0,
		["top_left_dia_chain"] = 0.6,
		["top_left_dia_chain2"] = 0.6,
		["top_right_dia_chain"] = -0.6 + 3.14 - 1.57,
		["top_right_dia_chain2"] = -0.6 + 3.14 - 1.57,
		["top_left_dia_chain_shadow"] = 0.6,
		["top_left_dia_chain2_shadow"] = 0.6,
		["top_right_dia_chain_shadow"] = -0.6 + 3.14 - 1.57,
		["top_right_dia_chain2_shadow"] = -0.6 + 3.14 - 1.57,
		["vert_left_chain1"] = -0.77 + 3.14,
		["vert_left_chain2"] = -0.77 + 3.14,
		["vert_right_chain1"] = -0.77 + 3.14,
		["vert_right_chain2"] = -0.77 + 3.14,
	}

	local tex_anchors = {
		["background"] = { "CENTER", "CENTER", 0, 0, 0 },
		["bottom_left_corner"] = { "BOTTOMLEFT", "BOTTOMLEFT", -5, -5, 5 },
		["bottom_right_corner"] = { "BOTTOMRIGHT", "BOTTOMRIGHT", 5, -5, 5 },
		["top_left_corner"] = { "TOPLEFT", "TOPLEFT", -5, 5, 5 },
		["top_right_corner"] = { "TOPRIGHT", "TOPRIGHT", 5, 5, 5 },
		["top_bar"] = { "TOP", "TOP", 0, 0, 1 },
		["bottom_bar"] = { "BOTTOM", "BOTTOM", 0, 0, 1 },
		["left_bar"] = { "LEFT", "LEFT", 0, 0, 1 },
		["right_bar"] = { "RIGHT", "RIGHT", 0, 0, 1 },
		["skull_emblem"] = { "CENTER", "TOP", 0, -45, 6 },
		["top_left_dia_chain"] = { "CENTER", "TOP", -140, -25, 4 },
		["top_left_dia_chain2"] = {
			"CENTER",
			"TOP",
			-140 + math.cos(0.4 - 0.21) * 70,
			-25 - math.sin(0.4 - 0.21) * 70,
			3,
		},
		["top_right_dia_chain"] = { "CENTER", "TOP", 140, -25, 4 },
		["top_right_dia_chain2"] = {
			"CENTER",
			"TOP",
			140 - math.cos(0.4 - 0.21) * 70,
			-25 - math.sin(0.4 - 0.21) * 70,
			3,
		},
		["top_left_dia_chain_shadow"] = { "CENTER", "TOP", -140, -25 - 8, 1 },
		["top_left_dia_chain2_shadow"] = {
			"CENTER",
			"TOP",
			-140 + math.cos(0.4 - 0.21) * 70,
			-25 - math.sin(0.4 - 0.21) * 70 - 8,
			1,
		},
		["top_right_dia_chain_shadow"] = { "CENTER", "TOP", 140, -25 - 8, 1 },
		["top_right_dia_chain2_shadow"] = {
			"CENTER",
			"TOP",
			140 - math.cos(0.4 - 0.21) * 70,
			-25 - math.sin(0.4 - 0.21) * 70 - 8,
			1,
		},
		["vert_left_chain1"] = { "BOTTOM", "TOPLEFT", 20, -10, 0 },
		["vert_left_chain2"] = { "BOTTOM", "TOPLEFT", 20, 60, 0 },
		["vert_right_chain1"] = { "BOTTOM", "TOPRIGHT", -20, -10, 0 },
		["vert_right_chain2"] = { "BOTTOM", "TOPRIGHT", -20, 60, 0 },
	}

	local tex_colors = {
		["top_left_dia_chain_shadow"] = { 0, 0, 0, 0.5 },
		["top_left_dia_chain2_shadow"] = { 0, 0, 0, 0.5 },
		["top_left_dia_chain3_shadow"] = { 0, 0, 0, 0.5 },
		["top_right_dia_chain_shadow"] = { 0, 0, 0, 0.5 },
		["top_right_dia_chain2_shadow"] = { 0, 0, 0, 0.5 },
		["top_right_dia_chain3_shadow"] = { 0, 0, 0, 0.5 },
	}

	for _, v in ipairs({
		"background",
		"bottom_left_corner",
		"bottom_right_corner",
		"top_left_corner",
		"top_right_corner",
		"top_bar",
		"bottom_bar",
		"left_bar",
		"right_bar",
		"skull_emblem",
		"top_left_dia_chain",
		"top_left_dia_chain2",
		"top_right_dia_chain",
		"top_right_dia_chain2",
		"top_left_dia_chain_shadow",
		"top_left_dia_chain2_shadow",
		"top_right_dia_chain_shadow",
		"top_right_dia_chain2_shadow",
		"vert_left_chain1",
		"vert_left_chain2",
		"vert_right_chain1",
		"vert_right_chain2",
	}) do
		frame.textures[v] = frame:CreateTexture(nil, "OVERLAY")
		local tex = frame.textures[v]
		local coords = tex_coords[v]
		local sizes = tex_sizes[v]
		local rot = tex_rots[v]
		local anchors = tex_anchors[v]
		tex:SetPoint(anchors[1], frame, anchors[2], anchors[3], anchors[4])
		tex:SetDrawLayer("OVERLAY", anchors[5])
		tex:SetHeight(375 * sizes[2])
		tex:SetWidth(375 * sizes[1])
		tex:SetTexture("Interface\\Addons\\RXPGuides\\Textures\\Hardcore\\intro_ui.tga")
		tex:SetTexCoord(coords[1], coords[2], coords[3], coords[4])
		tex:SetRotation(rot)
		if tex_colors[v] then
			tex:SetVertexColor(tex_colors[v][1], tex_colors[v][2], tex_colors[v][3], tex_colors[v][4])
		end
	end

	frame.black_glow_tex = frame:CreateTexture(nil, "OVERLAY")
	local tex = frame.black_glow_tex
	tex:SetPoint("CENTER", frame, "CENTER", 0, 0)
	tex:SetDrawLayer("OVERLAY", -1)
	tex:SetHeight(frame:GetHeight() * 1.1)
	tex:SetWidth(frame:GetWidth() * 1.1)
	tex:SetTexture("Interface\\Addons\\RXPGuides\\Textures\\blur_box.blp")
	tex:SetVertexColor(0, 0, 0, 1)

	frame:RegisterForDrag("LeftButton")
	frame:SetScript("OnDragStart", function(self, button)
		self:StartMoving()
	end)
	frame:SetScript("OnDragStop", function(self)
		self:StopMovingOrSizing()
	end)

	local function addCloudFX()
		local other_tex = frame:CreateTexture(nil, "OVERLAY")
		other_tex:SetDrawLayer("OVERLAY", 1)
		other_tex:SetHeight(frame:GetHeight())
		other_tex:SetPoint("CENTER", frame, "CENTER", 0, 0)
		other_tex:SetWidth(frame:GetWidth())
		other_tex:SetTexture("Interface\\Glues\\Models\\UI_Orc\\Cloud_Puffy_Mod.PNG")
		other_tex:SetVertexColor(1, 1, 1, 0.07)
		other_tex:SetTexCoord(0.5, 0.8, 0.5, 0.8)
		other_tex:Show()

		local c = random(-3.14, 3.14)
		local function iterateAnimation()
			c = c + 0.02
			local xmod = math.cos(c) / 10.0
			local ymod = math.sin(c / 2) / 20.0
			other_tex:SetTexCoord(0.5 + xmod, 0.8 + xmod, 0.5 + ymod, 0.8 + ymod)
		end

		local timer_handle = C_Timer.NewTicker(1 / 15, iterateAnimation)

		frame:HookScript("OnShow", function()
			if timer_handle then
				timer_handle:Cancel()
			end
			timer_handle = C_Timer.NewTicker(1 / 15, iterateAnimation)
		end)

		frame:HookScript("OnHide", function()
			if timer_handle then
				timer_handle:Cancel()
			end
		end)
	end

	addCloudFX()

	frame:HookScript("OnShow", function()
		local _y_off = y_off + 500
		local _y_vel = -20
		frame:SetPoint(frame_anchor, parent, parent_anchor, x_off, _y_off)
		local timer_handle = C_Timer.NewTicker(1 / 60, function(self)
			_y_vel = _y_vel - 4
			_y_off = _y_off + _y_vel
			if _y_off < y_off then
				_y_off = y_off
				-- PlaySound(968)
				self:Cancel()
			end
			frame:SetPoint(frame_anchor, parent, parent_anchor, x_off, _y_off)
		end)
	end)

	return frame
end

local function addHardcoreOptionButton(frame, title_text, description_text, tex_id, y_off, functor)
	local height = 50
	local width = 275
	local _ratio = height / width

	local hardcore_option_button_frame = CreateFrame("frame", nil, frame, "BackdropTemplate")
	hardcore_option_button_frame:SetPoint("TOP", frame, "TOP", 10, y_off)
	hardcore_option_button_frame:SetSize(width, height)
	hardcore_option_button_frame:EnableMouse(true)
	hardcore_option_button_frame:Show()

	local button_selected_glow = frame:CreateTexture(nil, "OVERLAY")
	button_selected_glow:SetDrawLayer("OVERLAY", 6)
	button_selected_glow:SetHeight(53)
	button_selected_glow:SetPoint("CENTER", hardcore_option_button_frame, "CENTER", 0, 0)
	button_selected_glow:SetWidth(290)
	button_selected_glow:SetTexture("Interface\\Addons\\RXPGuides\\Textures\\blur_box.blp")
	button_selected_glow:SetTexCoord(0, 1, 0, 1)
	button_selected_glow:SetVertexColor(0, 1, 0, 0.5)
	button_selected_glow:Hide()

	local circle_frame_tex = hardcore_option_button_frame:CreateTexture(nil, "OVERLAY")
	circle_frame_tex:SetDrawLayer("OVERLAY", 3)
	circle_frame_tex:SetHeight(hardcore_option_button_frame:GetHeight())
	circle_frame_tex:SetPoint("CENTER", hardcore_option_button_frame, "LEFT", 0, 0)
	circle_frame_tex:SetWidth(hardcore_option_button_frame:GetHeight())
	circle_frame_tex:SetTexture("Interface\\Addons\\RXPGuides\\Textures\\Hardcore\\intro_ui.tga")
	circle_frame_tex:SetVertexColor(1, 1, 1, 1)
	circle_frame_tex:SetTexCoord(0.284, 0.284 + 0.0781, 1 - (0.348 + 0.0745), 1 - 0.348)
	circle_frame_tex:Show()

	local logo_tex = hardcore_option_button_frame:CreateTexture(nil, "OVERLAY")
	logo_tex:SetDrawLayer("OVERLAY", 4)
	logo_tex:SetHeight(circle_frame_tex:GetHeight() * 0.85)
	logo_tex:SetPoint("CENTER", circle_frame_tex, "CENTER", 0, 1)
	logo_tex:SetWidth(circle_frame_tex:GetWidth() * 0.85)
	logo_tex:SetTexture(tex_id)
	logo_tex:SetVertexColor(1, 1, 1, 1)
	logo_tex:Show()
	logo_mask = hardcore_option_button_frame:CreateMaskTexture()
	logo_mask:SetPoint("CENTER", logo_tex, "CENTER", 0, 0)
	logo_mask:SetHeight(logo_tex:GetWidth() * 0.93)
	logo_mask:SetWidth(logo_tex:GetWidth() * 0.93)
	logo_mask:SetTexture(
		"Interface\\Addons\\RXPGuides\\Textures\\blur_mask.blp",
		"CLAMPTOBLACKADDITIVE",
		"CLAMPTOBLACKADDITIVE"
	)
	logo_tex:AddMaskTexture(logo_mask)

	hardcore_option_button_frame:SetBackdrop({
		bgFile = "Interface\\ChatFrame\\ChatFrameBackground",
		edgeFile = "Interface/Tooltips/UI-Tooltip-Border",
		edgeSize = 16,
		insets = { left = 4, right = 4, top = 4, bottom = 4 },
	})
	hardcore_option_button_frame:SetBackdropColor(14 / 255, 10 / 255, 7 / 255, 1.0)
	hardcore_option_button_frame:SetBackdropBorderColor(112 / 255, 112 / 255, 112 / 255)

	local transparent_paper = hardcore_option_button_frame:CreateTexture(nil, "ARTWORK")
	transparent_paper:SetDrawLayer("OVERLAY", 1)
	transparent_paper:SetHeight(hardcore_option_button_frame:GetHeight() - 5)
	transparent_paper:SetPoint("CENTER", hardcore_option_button_frame, "CENTER", 0, 0)
	transparent_paper:SetWidth(hardcore_option_button_frame:GetWidth() - 5)
	transparent_paper:SetTexture("Interface\\Addons\\RXPGuides\\Textures\\transparent_paper.blp")
	transparent_paper:SetVertexColor(1, 1, 1, 1)
	transparent_paper:SetTexCoord(0, 1, 0, 1 * _ratio)
	transparent_paper:Show()

	local function addOptionButtonTitle(title_text)
		local font_string = hardcore_option_button_frame:CreateFontString(nil, "OVERLAY", "GameFontHighlightLarge")
		font_string:SetDrawLayer("OVERLAY", 7)
		font_string:SetPoint("TOP", hardcore_option_button_frame, "TOP", 5, -5)
		font_string:SetJustifyH("LEFT")
		font_string:SetWidth(hardcore_option_button_frame:GetWidth() * 0.79)
		font_string:SetTextColor(0.8, 0.8, 0.8, 1)
		font_string:SetFont("Fonts\\blei00d.TTF", 15, "")
		font_string:SetText(title_text)
		font_string:Show()
		return font_string
	end

	local function addOptionDescription(description_text)
		local font_string = hardcore_option_button_frame:CreateFontString(nil, "OVERLAY", "GameFontHighlightLarge")
		font_string:SetDrawLayer("OVERLAY", 7)
		font_string:SetPoint("TOP", hardcore_option_button_frame, "TOP", 5, -20)
		font_string:SetJustifyH("LEFT")
		font_string:SetWidth(hardcore_option_button_frame:GetWidth() * 0.79)
		font_string:SetTextColor(210 / 255, 180 / 255, 140 / 255, 1)
		font_string:SetFont("Fonts\\blei00d.TTF", 11, "THICK")
		font_string:SetText(description_text)
		font_string:Show()
		return font_string
	end

	local check_circle_tex = hardcore_option_button_frame:CreateTexture(nil, "OVERLAY")
	check_circle_tex:SetDrawLayer("OVERLAY", 3)
	check_circle_tex:SetHeight(hardcore_option_button_frame:GetHeight() * 0.3)
	check_circle_tex:SetPoint("CENTER", hardcore_option_button_frame, "RIGHT", -15, 0)
	check_circle_tex:SetWidth(hardcore_option_button_frame:GetHeight() * 0.3)
	check_circle_tex:SetTexture("Interface\\Addons\\RXPGuides\\Textures\\Hardcore\\intro_ui.tga")
	check_circle_tex:SetVertexColor(1, 1, 1, 1)
	check_circle_tex:SetTexCoord(0.284, 0.284 + 0.0781, 1 - (0.348 + 0.0745), 1 - 0.348)
	check_circle_tex:Show()

	local check_mark_tex = hardcore_option_button_frame:CreateTexture(nil, "OVERLAY")
	check_mark_tex:SetDrawLayer("OVERLAY", 6)
	check_mark_tex:SetHeight(check_circle_tex:GetHeight() * 0.8)
	check_mark_tex:SetPoint("CENTER", check_circle_tex, "CENTER", 0, 0)
	check_mark_tex:SetWidth(check_circle_tex:GetHeight() * 0.8)
	check_mark_tex:SetTexture("Interface\\RAIDFRAME/ReadyCheck-Ready.PNG")
	check_mark_tex:Hide()

	hardcore_option_button_frame:HookScript("OnMouseDown", function()
		if check_mark_tex:IsShown() then
			check_mark_tex:Hide()
		else
			check_mark_tex:Show()
		end
		if button_selected_glow:IsShown() then
			button_selected_glow:Hide()
		else
			button_selected_glow:Show()
		end
		if functor then
			functor()
		else
			print("Not hooked yet")
		end
	end)

	addOptionButtonTitle(title_text)
	addOptionDescription(description_text)
end

local function addHardcoreDungeonOptionButton(frame, title_text, level_range, tex_id, x_off, y_off, tags)
	local height = 50
	local width = 275
	local _ratio = height / width

	local hardcore_option_button_frame = CreateFrame("frame", nil, frame, "BackdropTemplate")
	hardcore_option_button_frame:SetPoint("TOP", frame, "TOP", x_off, y_off)
	hardcore_option_button_frame:SetSize(width, height)
	hardcore_option_button_frame:EnableMouse(true)
	hardcore_option_button_frame:Show()

	local button_selected_glow = frame:CreateTexture(nil, "OVERLAY")
	button_selected_glow:SetDrawLayer("OVERLAY", 6)
	button_selected_glow:SetHeight(53)
	button_selected_glow:SetPoint("CENTER", hardcore_option_button_frame, "CENTER", 0, 0)
	button_selected_glow:SetWidth(290)
	button_selected_glow:SetTexture("Interface\\PetBattles/PetBattle-SelectedPetGlow.PNG")
	button_selected_glow:SetTexture("Interface\\Addons\\RXPGuides\\Textures\\blur_box.blp")
	button_selected_glow:SetVertexColor(0, 1, 0, 0.5)
	button_selected_glow:Hide()

	local circle_frame_tex = hardcore_option_button_frame:CreateTexture(nil, "OVERLAY")
	circle_frame_tex:SetDrawLayer("OVERLAY", 3)
	circle_frame_tex:SetHeight(hardcore_option_button_frame:GetHeight())
	circle_frame_tex:SetPoint("CENTER", hardcore_option_button_frame, "LEFT", 0, 0)
	circle_frame_tex:SetWidth(hardcore_option_button_frame:GetHeight())
	circle_frame_tex:SetTexture("Interface\\Addons\\RXPGuides\\Textures\\Hardcore\\intro_ui.tga")
	circle_frame_tex:SetVertexColor(1, 1, 1, 1)
	circle_frame_tex:SetTexCoord(0.284, 0.284 + 0.0781, 1 - (0.348 + 0.0745), 1 - 0.348)
	circle_frame_tex:Show()

	local logo_tex = hardcore_option_button_frame:CreateTexture(nil, "OVERLAY")
	logo_tex:SetDrawLayer("OVERLAY", 3)
	logo_tex:SetHeight(circle_frame_tex:GetHeight() * 0.85)
	logo_tex:SetPoint("CENTER", circle_frame_tex, "CENTER", 0, 1)
	logo_tex:SetWidth(circle_frame_tex:GetWidth() * 0.85)
	logo_tex:SetTexture(tex_id)
	logo_tex:SetVertexColor(1, 1, 1, 1)
	logo_tex:Show()
	logo_mask = hardcore_option_button_frame:CreateMaskTexture()
	logo_mask:SetPoint("CENTER", logo_tex, "CENTER", 0, 0)
	logo_mask:SetHeight(logo_tex:GetWidth() * 0.93)
	logo_mask:SetWidth(logo_tex:GetWidth() * 0.93)
	logo_mask:SetTexture(
		"Interface\\Addons\\RXPGuides\\Textures\\blur_mask.blp",
		"CLAMPTOBLACKADDITIVE",
		"CLAMPTOBLACKADDITIVE"
	)
	logo_tex:AddMaskTexture(logo_mask)

	hardcore_option_button_frame:SetBackdrop({
		bgFile = "Interface\\ChatFrame\\ChatFrameBackground",
		edgeFile = "Interface/Tooltips/UI-Tooltip-Border",
		edgeSize = 16,
		insets = { left = 4, right = 4, top = 4, bottom = 4 },
	})
	hardcore_option_button_frame:SetBackdropColor(14 / 255, 10 / 255, 7 / 255, 1)
	hardcore_option_button_frame:SetBackdropBorderColor(112 / 255, 112 / 255, 112 / 255)

	local transparent_paper = hardcore_option_button_frame:CreateTexture(nil, "OVERLAY")
	transparent_paper:SetDrawLayer("OVERLAY", 1)
	transparent_paper:SetHeight(hardcore_option_button_frame:GetHeight() - 5)
	transparent_paper:SetPoint("CENTER", hardcore_option_button_frame, "CENTER", 0, 0)
	transparent_paper:SetWidth(hardcore_option_button_frame:GetWidth() - 5)
	transparent_paper:SetTexture("Interface\\Addons\\RXPGuides\\Textures\\transparent_paper.blp")
	transparent_paper:SetVertexColor(1, 1, 1, 1)
	transparent_paper:SetTexCoord(0, 1, 0, 1 * _ratio)
	transparent_paper:Show()

	local function addOptionTitle(title_text)
		local font_string = hardcore_option_button_frame:CreateFontString(nil, "OVERLAY", "GameFontHighlightLarge")
		font_string:SetDrawLayer("OVERLAY", 5)
		font_string:SetPoint("TOP", hardcore_option_button_frame, "TOP", 5, -5)
		font_string:SetJustifyH("LEFT")
		font_string:SetWidth(hardcore_option_button_frame:GetWidth() * 0.79)
		font_string:SetTextColor(0.8, 0.8, 0.8)
		font_string:SetFont("Fonts\\blei00d.TTF", 15, "")
		font_string:SetText(
			title_text .. " (|cffffa500" .. level_range[1] .. "|r - |cff228B22" .. level_range[2] .. "|r)"
		)
		font_string:Show()
	end

	local check_circle_tex = hardcore_option_button_frame:CreateTexture(nil, "OVERLAY")
	check_circle_tex:SetDrawLayer("OVERLAY", 3)
	check_circle_tex:SetHeight(hardcore_option_button_frame:GetHeight() * 0.3)
	check_circle_tex:SetPoint("CENTER", hardcore_option_button_frame, "RIGHT", -15, 0)
	check_circle_tex:SetWidth(hardcore_option_button_frame:GetHeight() * 0.3)
	check_circle_tex:SetTexture("Interface\\Addons\\RXPGuides\\Textures\\Hardcore\\intro_ui.tga")
	check_circle_tex:SetVertexColor(1, 1, 1, 1)
	check_circle_tex:SetTexCoord(0.284, 0.284 + 0.0781, 1 - (0.348 + 0.0745), 1 - 0.348)
	check_circle_tex:Show()

	local check_mark_tex = hardcore_option_button_frame:CreateTexture(nil, "OVERLAY")
	check_mark_tex:SetDrawLayer("OVERLAY", 6)
	check_mark_tex:SetHeight(check_circle_tex:GetHeight() * 0.8)
	check_mark_tex:SetPoint("CENTER", check_circle_tex, "CENTER", 0, 0)
	check_mark_tex:SetWidth(check_circle_tex:GetHeight() * 0.8)
	check_mark_tex:SetTexture("Interface\\RAIDFRAME/ReadyCheck-Ready.PNG")
	check_mark_tex:Hide()

	local x_off = -90
	for _, v in ipairs(tags) do
		local logo_tex = hardcore_option_button_frame:CreateTexture(nil, "OVERLAY")
		logo_tex:SetDrawLayer("OVERLAY", 3)
		logo_tex:SetHeight(circle_frame_tex:GetHeight() * 0.46)
		logo_tex:SetPoint("CENTER", hardcore_option_button_frame, "CENTER", x_off, -8)
		logo_tex:SetWidth(circle_frame_tex:GetWidth() * 0.46)
		logo_tex:SetTexture(v[1])
		if v[2] == true then
			logo_tex:SetDesaturated(1)
		end
		logo_tex:Show()
		if v[3] == true then
			local star_logo = hardcore_option_button_frame:CreateTexture(nil, "OVERLAY")
			star_logo:SetDrawLayer("OVERLAY", 4)
			star_logo:SetHeight(circle_frame_tex:GetHeight() * 0.26)
			star_logo:SetPoint("CENTER", hardcore_option_button_frame, "CENTER", x_off + 9, 0)
			star_logo:SetWidth(circle_frame_tex:GetWidth() * 0.26)
			star_logo:SetTexture("Interface\\COMMON/ReputationStar.PNG")
			star_logo:SetTexCoord(0, 0.5, 0, 0.5)
			star_logo:Show()
		end
		x_off = x_off + 24
	end
	hardcore_option_button_frame.select = function()
		if check_mark_tex:IsShown() then
			check_mark_tex:Hide()
		else
			check_mark_tex:Show()
		end
		if button_selected_glow:IsShown() then
			button_selected_glow:Hide()
		else
			button_selected_glow:Show()
		end
		if functor then
			functor()
		else
			print("Not hooked yet")
		end
	end

	hardcore_option_button_frame:HookScript("OnMouseDown", function(self)
		self.select()
	end)

	addOptionTitle(title_text)
	return hardcore_option_button_frame
end

local function RXP_loadUltimateHardcoreSurvivalGuideFrame(survival_guide_functor)
	local frame = createHardcoreUIFrame(375, 320, 0.3, 0.5, 0.3, UIParent, "TOP", "TOP", default_x, default_y, 1)

	local function addSurvivalGuideButton()
		local button = CreateFrame("Button", nil, frame)
		button:SetPoint("CENTER", frame, "CENTER", 0, -130)
		button:SetWidth(165)
		button:SetHeight(35)

		button:SetText("Select Survival Guide")
		button:SetNormalFontObject("GameFontNormal")

		local ntex = button:CreateTexture()
		ntex:SetTexture("Interface/Buttons/UI-Panel-Button-Up")
		ntex:SetTexCoord(0, 0.625, 0, 0.6875)
		ntex:SetAllPoints()
		button:SetNormalTexture(ntex)

		local htex = button:CreateTexture()
		htex:SetTexture("Interface/Buttons/UI-Panel-Button-Highlight")
		htex:SetTexCoord(0, 0.625, 0, 0.6875)
		htex:SetAllPoints()
		button:SetHighlightTexture(htex)

		local ptex = button:CreateTexture()
		ptex:SetTexture("Interface/Buttons/UI-Panel-Button-Down")
		ptex:SetTexCoord(0, 0.625, 0, 0.6875)
		ptex:SetAllPoints()
		button:SetPushedTexture(ptex)

		button:SetScript("OnClick", function()
			if survival_guide_functor then
				survival_guide_functor()
			end
			frame:Hide()
		end)

		return button
	end

	local function addNewFeatureButton()
		local button = CreateFrame("Button", nil, frame)
		button:SetPoint("CENTER", frame, "TOP", 0, -125)
		button:SetWidth(165)
		button:SetHeight(35)
		local font_string = frame:CreateFontString(nil, "OVERLAY", "GameFontHighlightLarge")
		font_string:SetJustifyH("CENTER")
		font_string:SetWidth(350)
		font_string:SetTextColor(186 / 255, 186 / 255, 186 / 255)
        font_string:SetFont("Interface\\Addons\\RXPGuides\\Fonts\\BerlinSansFBDemi-Bold_wide5.ttf", 14, "OUTLINE, THICK")
		font_string:SetText("NEW FEATURE")
		button:SetFontString(font_string)

		local ntex = button:CreateTexture()
		ntex:SetTexture("Interface/Buttons/UI-Panel-Button-Up")
		ntex:SetTexCoord(0, 0.625, 0, 0.6875)
		ntex:SetAllPoints()
		button:SetNormalTexture(ntex)
		return button
	end

	local function addTitleFont()
		createLargeTitleFont("ULTIMATE HARDCORE\nSURVIVAL GUIDE", frame, 0, -15)
	end

	local function addDescriptionFont()
		createDescriptionFont(
			"Check out the new Ultimate Hardcore Surivival Guide,\nspecifically crafted to guide your character as safe as\n possible to max level. |cff228B22Including new features.|r",
			frame,
			0,
			-70
		)
	end

	local survival_guide_button = addSurvivalGuideButton()
	addNewFeatureButton()
	addTitleFont()
	addDescriptionFont()
	return frame
end

local function RXP_loadSpeedRunGuideSelector(parent_frame, background_cen_x, background_cen_y, zoom)
	local frame_width = parent_frame:GetWidth()
	local frame_height = 220
	local ratio = frame_height / frame_width
	local frame = CreateFrame("frame")

	parent_frame:HookScript("OnShow", function()
		frame:Show()
	end)

	parent_frame:HookScript("OnHide", function()
		frame:Hide()
	end)

	frame:SetPoint("TOP", parent_frame, "BOTTOM", 0, -40)
	frame:SetSize(frame_width, frame_height)
	frame:Show()
	frame.textures = {}
	background_cen_x = background_cen_x + 0.492 + 0.508 / 2
	background_cen_y = 1 - (background_cen_y + 0.110 + 0.286 / 2)

	local tex_coords = {
		["background"] = {
			background_cen_x - zoom / 2,
			background_cen_x + zoom / 2,
			background_cen_y - zoom / 2 * ratio,
			background_cen_y + zoom / 2 * ratio,
		},
		["bottom_left_corner"] = { 0, 0.156, 1 - 0.272, 1 - (0.272 + 0.15) },
		["bottom_right_corner"] = { 0, 0.156, 1 - 0.272, 1 - (0.272 + 0.15) },
		["top_left_corner"] = { 0, 0.156, 1 - 0.272, 1 - (0.272 + 0.15) },
		["top_right_corner"] = { 0, 0.156, 1 - 0.272, 1 - (0.272 + 0.15) },
		["top_bar"] = { 0, 1, 1 - 0.0423, 1 - (0.0423 + 0.0423 / 2) },
		["bottom_bar"] = { 0, 1, 1 - 0.0402 / 3, 1 - 0.0402 },
		["right_bar"] = { 0.157, 0.157 + 0.0146, 1 - 0.298, 1 - (0.298 + 0.0307) },
		["left_bar"] = { 0.171, 0.171 + 0.0146, 1 - 0.298, 1 - (0.298 + 0.0307) },
		["vert_left_chain1"] = { 0.279, 0.279 + 0.211, 1 - (0.0727 + 0.273), 1 - 0.0727 },
		["vert_left_chain2"] = { 0.279, 0.279 + 0.211, 1 - (0.0727 + 0.273), 1 - 0.0727 },
		["vert_right_chain1"] = { 0.279, 0.279 + 0.211, 1 - (0.0727 + 0.273), 1 - 0.0727 },
		["vert_right_chain2"] = { 0.279, 0.279 + 0.211, 1 - (0.0727 + 0.273), 1 - 0.0727 },
	}

	local tex_sizes = {
		["background"] = { 1, 1 * ratio },
		["bottom_left_corner"] = { 0.1, 0.1 },
		["bottom_right_corner"] = { 0.1, 0.1 },
		["top_left_corner"] = { 0.1, 0.1 },
		["top_right_corner"] = { 0.1, 0.1 },
		["top_bar"] = { 1, 0.0175 },
		["bottom_bar"] = { 1, 0.0175 },
		["left_bar"] = { 0.0175, 1 * ratio },
		["right_bar"] = { 0.0175, 1 * ratio },
		["vert_left_chain1"] = { 0.2, 0.2 },
		["vert_left_chain2"] = { 0.2, 0.2 },
		["vert_right_chain1"] = { 0.2, 0.2 },
		["vert_right_chain2"] = { 0.2, 0.2 },
	}

	local tex_rots = {
		["background"] = 0,
		["bottom_left_corner"] = 0,
		["bottom_right_corner"] = 1.57,
		["top_left_corner"] = 3.14 + 1.57,
		["top_right_corner"] = 3.14,
		["top_bar"] = 0,
		["bottom_bar"] = 0,
		["left_bar"] = 0,
		["right_bar"] = 0,
		["vert_left_chain1"] = -0.77 + 3.14,
		["vert_left_chain2"] = -0.77 + 3.14,
		["vert_right_chain1"] = -0.77 + 3.14,
		["vert_right_chain2"] = -0.77 + 3.14,
	}

	local tex_anchors = {
		["background"] = { "CENTER", "CENTER", 0, 0, 0 },
		["bottom_left_corner"] = { "BOTTOMLEFT", "BOTTOMLEFT", -5, -5, 5 },
		["bottom_right_corner"] = { "BOTTOMRIGHT", "BOTTOMRIGHT", 5, -5, 5 },
		["top_left_corner"] = { "TOPLEFT", "TOPLEFT", -5, 5, 5 },
		["top_right_corner"] = { "TOPRIGHT", "TOPRIGHT", 5, 5, 5 },
		["top_bar"] = { "TOP", "TOP", 0, 0, 1 },
		["bottom_bar"] = { "BOTTOM", "BOTTOM", 0, 0, 1 },
		["left_bar"] = { "LEFT", "LEFT", 0, 0, 1 },
		["right_bar"] = { "RIGHT", "RIGHT", 0, 0, 1 },
		["vert_left_chain1"] = { "BOTTOM", "TOPLEFT", 20, -10, 0 },
		["vert_left_chain2"] = { "BOTTOM", "TOPLEFT", 20, 60, 0 },
		["vert_right_chain1"] = { "BOTTOM", "TOPRIGHT", -20, -10, 0 },
		["vert_right_chain2"] = { "BOTTOM", "TOPRIGHT", -20, 60, 0 },
	}

	local tex_colors = {}

	for _, v in ipairs({
		"background",
		"bottom_left_corner",
		"bottom_right_corner",
		"top_left_corner",
		"top_right_corner",
		"top_bar",
		"bottom_bar",
		"left_bar",
		"right_bar",
		"vert_left_chain1",
		"vert_left_chain2",
		"vert_right_chain1",
		"vert_right_chain2",
	}) do
		frame.textures[v] = frame:CreateTexture(nil, "OVERLAY")
		local tex = frame.textures[v]
		local coords = tex_coords[v]
		local sizes = tex_sizes[v]
		local rot = tex_rots[v]
		local anchors = tex_anchors[v]
		tex:SetPoint(anchors[1], frame, anchors[2], anchors[3], anchors[4])
		tex:SetDrawLayer("OVERLAY", anchors[5])
		tex:SetHeight(frame:GetWidth() * sizes[2])
		tex:SetWidth(frame:GetWidth() * sizes[1])
		tex:SetTexture("Interface\\Addons\\RXPGuides\\Textures\\Hardcore\\intro_ui.tga")
		tex:SetTexCoord(coords[1], coords[2], coords[3], coords[4])
		tex:SetRotation(rot)
		if tex_colors[v] then
			tex:SetVertexColor(tex_colors[v][1], tex_colors[v][2], tex_colors[v][3], tex_colors[v][4])
		end
	end

	frame.black_glow_tex = frame:CreateTexture(nil, "OVERLAY")
	local tex = frame.black_glow_tex
	tex:SetPoint("CENTER", frame, "CENTER", 0, 0)
	tex:SetDrawLayer("OVERLAY", -1)
	tex:SetHeight(frame:GetHeight() * 1.1)
	tex:SetWidth(frame:GetWidth() * 1.1)
	tex:SetTexture("Interface\\Addons\\RXPGuides\\Textures\\blur_box.blp")
	tex:SetVertexColor(0, 0, 0, 1)

	rxp_logo_tex = frame:CreateTexture(nil, "OVERLAY")
	rxp_logo_tex:SetPoint("CENTER", frame, "TOP", 0, -5)
	rxp_logo_tex:SetDrawLayer("OVERLAY", 7)
	rxp_logo_tex:SetHeight(frame:GetWidth() * 0.12)
	rxp_logo_tex:SetWidth(frame:GetWidth() * 0.12)
	rxp_logo_tex:SetTexture("Interface\\Addons\\RXPGuides\\Textures\\rxp_logo-128.blp")

	local function addSubTitleFont()
		createSubTitleFont("RESTEDXP", frame, 0, 60)
	end

	local function addTitleFont()
		createLargeTitleFont("SPEEDRUN GUIDE", frame, 0, 37)
	end

	local function addDescriptionFont()
		createDescriptionFont(
			"Experience the fastest and most efficient Leveling Routes.\nHand-crafted and maintained by the best Speedrunners in\nthe Classic WoW Community.",
			frame,
			0,
			-10
		)
	end

	local function addSelectSpeedrunButton()
		local button = CreateFrame("Button", nil, frame)
		button:SetPoint("CENTER", frame, "CENTER", 0, -60)
		button:SetWidth(165)
		button:SetHeight(35)

		button:SetText("Select Speedrun Guide")
		button:SetNormalFontObject("GameFontNormal")

		local ntex = button:CreateTexture()
		ntex:SetTexture("Interface/Buttons/UI-Panel-Button-Up")
		ntex:SetTexCoord(0, 0.625, 0, 0.6875)
		ntex:SetAllPoints()
		button:SetNormalTexture(ntex)

		local htex = button:CreateTexture()
		htex:SetTexture("Interface/Buttons/UI-Panel-Button-Highlight")
		htex:SetTexCoord(0, 0.625, 0, 0.6875)
		htex:SetAllPoints()
		button:SetHighlightTexture(htex)

		local ptex = button:CreateTexture()
		ptex:SetTexture("Interface/Buttons/UI-Panel-Button-Down")
		ptex:SetTexCoord(0, 0.625, 0, 0.6875)
		ptex:SetAllPoints()
		button:SetPushedTexture(ptex)
	end

	addSubTitleFont()
	addTitleFont()
	addDescriptionFont()
	addSelectSpeedrunButton()
	return frame
end

local function RXP_loadWelcomeAdventurerFrame(backFunctor, dungeons_enabled_functor)
	local frame = createHardcoreUIFrame(375, 580, 0.35, 0.5, 0.2, UIParent, "TOP", "TOP", default_x, default_y, 2)

	local function addSubmitAndContinue()
		local button = CreateFrame("Button", nil, frame)
		button:SetPoint("RIGHT", frame, "RIGHT", -35, -260)
		button:SetWidth(165)
		button:SetHeight(35)

		button:SetText("Submit & Continue")
		button:SetNormalFontObject("GameFontNormal")

		local ntex = button:CreateTexture()
		ntex:SetTexture("Interface/Buttons/UI-Panel-Button-Up")
		ntex:SetTexCoord(0, 0.625, 0, 0.6875)
		ntex:SetAllPoints()
		button:SetNormalTexture(ntex)

		local htex = button:CreateTexture()
		htex:SetTexture("Interface/Buttons/UI-Panel-Button-Highlight")
		htex:SetTexCoord(0, 0.625, 0, 0.6875)
		htex:SetAllPoints()
		button:SetHighlightTexture(htex)

		local ptex = button:CreateTexture()
		ptex:SetTexture("Interface/Buttons/UI-Panel-Button-Down")
		ptex:SetTexCoord(0, 0.625, 0, 0.6875)
		ptex:SetAllPoints()
		button:SetPushedTexture(ptex)

		button:SetScript("OnClick", function()
			if dungeons_enabled and dungeons_enabled_functor then
				dungeons_enabled_functor()
			end
			frame:Hide()
		end)
		return button
	end

	local function addBackButton()
		local button = CreateFrame("Button", nil, frame)
		button:SetPoint("LEFT", frame, "LEFT", 35, -260)
		button:SetWidth(100)
		button:SetHeight(35)

		button:SetText("Back")
		button:SetNormalFontObject("GameFontNormal")

		local ntex = button:CreateTexture()
		ntex:SetTexture("Interface/Buttons/UI-Panel-Button-Up")
		ntex:SetTexCoord(0, 0.625, 0, 0.6875)
		ntex:SetAllPoints()
		button:SetNormalTexture(ntex)

		local htex = button:CreateTexture()
		htex:SetTexture("Interface/Buttons/UI-Panel-Button-Highlight")
		htex:SetTexCoord(0, 0.625, 0, 0.6875)
		htex:SetAllPoints()
		button:SetHighlightTexture(htex)

		local ptex = button:CreateTexture()
		ptex:SetTexture("Interface/Buttons/UI-Panel-Button-Down")
		ptex:SetTexCoord(0, 0.625, 0, 0.6875)
		ptex:SetAllPoints()
		button:SetPushedTexture(ptex)

		button:SetScript("OnClick", function()
			if backFunctor then
				backFunctor()
			end
			frame:Hide()
		end)
		return button
	end

	local function addTitleFont()
		createLargeTitleFont("WELCOME\nADVENTURER", frame, 0, 160)
	end

	local function addDescriptionFont()
		createDescriptionFont("Select your desired features to configure your Guide.\nLet's Go!", frame, 0, 110)
	end

	addTitleFont()
	addDescriptionFont()
	addSubmitAndContinue()
	addBackButton()

	local y_offset = -220
	local y_offset_delta = -60
	addHardcoreOptionButton(
		frame,
		"Enable Hostile Enemy Warning",
		"Alerts when dangerous entity is nearby and marks it. Shows patrolling elites on the world map.",
		132212,
		y_offset
	)
	y_offset = y_offset + y_offset_delta
	addHardcoreOptionButton(
		frame,
		"Enable Panic Mode",
		"Adds a fully adjustable action bar which displays helpful abilities and items for spicy situations.",
		132092,
		y_offset
	)
	y_offset = y_offset + y_offset_delta
	addHardcoreOptionButton(
		frame,
		"Enable Auctionhouse",
		"Considers Quests that require crafted items as well as checking for upgrades.",
		133787,
		y_offset
	)
	y_offset = y_offset + y_offset_delta
	addHardcoreOptionButton(
		frame,
		"Enable Group Quests",
		"Requires you to group up with other players. Leave unchecked, if you prefer a solo experience.",
		135892,
		y_offset
	)
	y_offset = y_offset + y_offset_delta
	addHardcoreOptionButton(
		frame,
		"Enable Dungeons",
		"Adds Dungeon Quests to your route. This is helpful to avoid longer grinding sessions.",
		135860,
		y_offset,
		function()
			dungeons_enabled = not dungeons_enabled
		end
	)
	return frame
end

local function RXP_dungeonConfiguration(selectAllFunctor, submitFunctor, backFunctor)
	local frame = createHardcoreUIFrame(375, 580, 0.35, 0.5, 0.2, UIParent, "TOP", "TOP", default_x, default_y, 3)
	createLargeTitleFont("DUNGEON\nCONFIGURATION", frame, 0, 145)
	createDescriptionFont(
		"Add Dungeons to your route. The guide will adjust to\n your selection accordingly.",
		frame,
		0,
		85
	)

	addHardcoreOptionButton(
		frame,
		"Select all Dungeons",
		"Factor all of your available Dungeons to your levelling route",
		135743,
		-450,
		selectAllFunctor
	)

	local function addSubmitAndContinue()
		local button = CreateFrame("Button", nil, frame)
		button:SetPoint("RIGHT", frame, "RIGHT", -35, -260)
		button:SetWidth(165)
		button:SetHeight(35)

		button:SetText("Submit & Continue")
		button:SetNormalFontObject("GameFontNormal")

		local ntex = button:CreateTexture()
		ntex:SetTexture("Interface/Buttons/UI-Panel-Button-Up")
		ntex:SetTexCoord(0, 0.625, 0, 0.6875)
		ntex:SetAllPoints()
		button:SetNormalTexture(ntex)

		local htex = button:CreateTexture()
		htex:SetTexture("Interface/Buttons/UI-Panel-Button-Highlight")
		htex:SetTexCoord(0, 0.625, 0, 0.6875)
		htex:SetAllPoints()
		button:SetHighlightTexture(htex)

		local ptex = button:CreateTexture()
		ptex:SetTexture("Interface/Buttons/UI-Panel-Button-Down")
		ptex:SetTexCoord(0, 0.625, 0, 0.6875)
		ptex:SetAllPoints()
		button:SetPushedTexture(ptex)

		button:SetScript("OnClick", function()
			submitFunctor()
			frame:Hide()
		end)
		return button
	end

	local function addBackButton()
		local button = CreateFrame("Button", nil, frame)
		button:SetPoint("LEFT", frame, "LEFT", 35, -260)
		button:SetWidth(100)
		button:SetHeight(35)

		button:SetText("Back")
		button:SetNormalFontObject("GameFontNormal")

		local ntex = button:CreateTexture()
		ntex:SetTexture("Interface/Buttons/UI-Panel-Button-Up")
		ntex:SetTexCoord(0, 0.625, 0, 0.6875)
		ntex:SetAllPoints()
		button:SetNormalTexture(ntex)

		local htex = button:CreateTexture()
		htex:SetTexture("Interface/Buttons/UI-Panel-Button-Highlight")
		htex:SetTexCoord(0, 0.625, 0, 0.6875)
		htex:SetAllPoints()
		button:SetHighlightTexture(htex)

		local ptex = button:CreateTexture()
		ptex:SetTexture("Interface/Buttons/UI-Panel-Button-Down")
		ptex:SetTexCoord(0, 0.625, 0, 0.6875)
		ptex:SetAllPoints()
		button:SetPushedTexture(ptex)

		button:SetScript("OnClick", function()
			backFunctor()
			frame:Hide()
		end)
		return button
	end

	addSubmitAndContinue()
	addBackButton()
	return frame
end

local function RXP_dungeonSelection(parent)
	local frame = createHardcoreUIFrame(770, 480, 0.6, 0.5, 0.2, parent, "TOPLEFT", "TOPRIGHT", -15, 0, 3)
	frame.textures["skull_emblem"]:Hide()
	frame.textures["top_left_dia_chain"]:Hide()
	frame.textures["top_left_dia_chain2"]:Hide()
	frame.textures["top_right_dia_chain"]:Hide()
	frame.textures["top_right_dia_chain2"]:Hide()

	frame.textures["top_left_dia_chain_shadow"]:Hide()
	frame.textures["top_left_dia_chain2_shadow"]:Hide()
	frame.textures["top_right_dia_chain_shadow"]:Hide()
	frame.textures["top_right_dia_chain2_shadow"]:Hide()

	local dungeon_buttons = {}

	local x_off = -160
	local y_off = -60
	local y_delta = 65
	dungeon_buttons[#dungeon_buttons + 1] = addHardcoreDungeonOptionButton(
		frame,
		"Wailing Caverns",
		{ "17", "24" },
		"Interface\\Addons\\RXPGuides\\Textures\\DungeonIcons\\wailingcaverns.tga",
		x_off,
		y_off,
		{ { 133639, false, false }, { 894556, false, false } }
	)
	y_off = y_off - y_delta
	dungeon_buttons[#dungeon_buttons + 1] = addHardcoreDungeonOptionButton(
		frame,
		"The Deadmines",
		{ "22", "30" },
		"Interface\\Addons\\RXPGuides\\Textures\\DungeonIcons\\deadmines.tga",
		x_off,
		y_off,
		{ { 133639, false, true }, { 894556, false, true }, { 136025, false, true } }
	)
	y_off = y_off - y_delta
	dungeon_buttons[#dungeon_buttons + 1] = addHardcoreDungeonOptionButton(
		frame,
		"Black Fathom Deeps",
		{ "22", "30" },
		"Interface\\Addons\\RXPGuides\\Textures\\DungeonIcons\\blackfathomdeeps.tga",
		x_off,
		y_off,
		{ { 133639, false, false }, { 894556, true, false } }
	)
	y_off = y_off - y_delta
	dungeon_buttons[#dungeon_buttons + 1] = addHardcoreDungeonOptionButton(
		frame,
		"The Stockade",
		{ "24", "32" },
		"Interface\\Addons\\RXPGuides\\Textures\\DungeonIcons\\stockade.tga",
		x_off,
		y_off,
		{ { 133639, false, false }, { 894556, false, true } }
	)
	y_off = y_off - y_delta
	dungeon_buttons[#dungeon_buttons + 1] = addHardcoreDungeonOptionButton(
		frame,
		"Gnomeregan",
		{ "29", "38" },
		"Interface\\Addons\\RXPGuides\\Textures\\DungeonIcons\\gnomeregan.tga",
		x_off,
		y_off,
		{ { 133639, false, false }, { 894556, false, false }, { 136243, false, false } }
	)
	y_off = y_off - y_delta
	dungeon_buttons[#dungeon_buttons + 1] = addHardcoreDungeonOptionButton(
		frame,
		"Razorfen Kraul",
		{ "29", "38" },
		"Interface\\Addons\\RXPGuides\\Textures\\DungeonIcons\\razorfenkraul.tga",
		x_off,
		y_off,
		{ { 133639, false, true }, { 894556, false, false } }
	)

	x_off = 160
	y_off = -60
	dungeon_buttons[#dungeon_buttons + 1] = addHardcoreDungeonOptionButton(
		frame,
		"Scarlet Monastery",
		{ "35", "45" },
		"Interface\\Addons\\RXPGuides\\Textures\\DungeonIcons\\razorfenkraul.tga",
		x_off,
		y_off,
		{ { 133639, false, true }, { 894556, false, true } }
	)
	y_off = y_off - y_delta
	dungeon_buttons[#dungeon_buttons + 1] = addHardcoreDungeonOptionButton(
		frame,
		"Razorfen Downs",
		{ "37", "46" },
		"Interface\\Addons\\RXPGuides\\Textures\\DungeonIcons\\razorfendowns.tga",
		x_off,
		y_off,
		{ { 133639, false, false }, { 894556, false, false } }
	)
	y_off = y_off - y_delta
	dungeon_buttons[#dungeon_buttons + 1] = addHardcoreDungeonOptionButton(
		frame,
		"Uldaman",
		{ "41", "51" },
		"Interface\\Addons\\RXPGuides\\Textures\\DungeonIcons\\uldaman.tga",
		x_off,
		y_off,
		{ { 133639, false, true }, { 894556, false, true } }
	)
	y_off = y_off - y_delta
	dungeon_buttons[#dungeon_buttons + 1] = addHardcoreDungeonOptionButton(
		frame,
		"Zul'Farrak",
		{ "44", "54" },
		"Interface\\Addons\\RXPGuides\\Textures\\DungeonIcons\\zulfarrak.tga",
		x_off,
		y_off,
		{ { 133639, false, false }, { 894556, false, true } }
	)
	y_off = y_off - y_delta
	dungeon_buttons[#dungeon_buttons + 1] = addHardcoreDungeonOptionButton(
		frame,
		"Maraudon",
		{ "46", "55" },
		"Interface\\Addons\\RXPGuides\\Textures\\DungeonIcons\\maraudon.tga",
		x_off,
		y_off,
		{ { 133639, false, false }, { 894556, false, true } }
	)
	y_off = y_off - y_delta
	dungeon_buttons[#dungeon_buttons + 1] = addHardcoreDungeonOptionButton(
		frame,
		"Temple of Atal'Hakkar",
		{ "50", "60" },
		"Interface\\Addons\\RXPGuides\\Textures\\DungeonIcons\\sunkentemple.tga",
		x_off,
		y_off,
		{ { 133639, false, true }, { 894556, false, false } }
	)

	frame.selectAll = function()
		for i = 1, #dungeon_buttons do
			local dungeon_button = dungeon_buttons[i]
			dungeon_button.select()
		end
	end
	return frame
end

local rxp_hardcore_intro_ui = CreateFrame("frame") -- Note; this will probably get replaced with some function in RXP main
rxp_hardcore_intro_ui:RegisterEvent("PLAYER_ENTERING_WORLD")
rxp_hardcore_intro_ui:SetScript("OnEvent", function()
	local ultimate_hardcore_survival_guide_frame = nil
	local function toggleUltimateSurvivalGuideFrame()
		if ultimate_hardcore_survival_guide_frame == nil then
			return
		end
		if ultimate_hardcore_survival_guide_frame:IsShown() then
			ultimate_hardcore_survival_guide_frame:Hide()
		else
			ultimate_hardcore_survival_guide_frame:Show()
		end
	end

	local welcome_adventurer_frame = nil
	local function toggleSurivalGuideFunctor()
		if welcome_adventurer_frame == nil then
			return
		end
		if welcome_adventurer_frame:IsShown() then
			welcome_adventurer_frame:Hide()
		else
			welcome_adventurer_frame:Show()
		end
	end

	local dungeon_configuration_frame = nil
	local dungeon_selection_frame = nil
	local function toggleDungeonConfiguration()
		if dungeon_configuration_frame == nil then
			return
		end
		if dungeon_configuration_frame:IsShown() then
			dungeon_configuration_frame:Hide()
		else
			dungeon_configuration_frame:Show()
		end
		if dungeon_selection_frame == nil then
			return
		end
		if dungeon_selection_frame:IsShown() then
			dungeon_selection_frame:Hide()
		else
			dungeon_selection_frame:Show()
		end
	end

	local function selectAllDungeonsFunctor()
		if dungeon_selection_frame then
			dungeon_selection_frame.selectAll()
		end
	end

	ultimate_hardcore_survival_guide_frame = RXP_loadUltimateHardcoreSurvivalGuideFrame(toggleSurivalGuideFunctor)
	local speedrun_guide_selector = RXP_loadSpeedRunGuideSelector(ultimate_hardcore_survival_guide_frame, 0, 0, 0.4)
	welcome_adventurer_frame =
		RXP_loadWelcomeAdventurerFrame(toggleUltimateSurvivalGuideFrame, toggleDungeonConfiguration)
	dungeon_configuration_frame = RXP_dungeonConfiguration(
		selectAllDungeonsFunctor,
		function() end,
		toggleSurivalGuideFunctor
	)
	dungeon_selection_frame = RXP_dungeonSelection(dungeon_configuration_frame)

	ultimate_hardcore_survival_guide_frame:Show()
	welcome_adventurer_frame:Hide()
	dungeon_configuration_frame:Hide()
	dungeon_selection_frame:Hide()
end)
