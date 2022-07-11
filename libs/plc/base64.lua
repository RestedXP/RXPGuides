local _,addon = ...
local shl, shr, band, bor = _G.bit.lshift, _G.bit.rshift, _G.bit.band, _G.bit.bor
-- Copyright (c) 2015  Phil Leblanc  -- see LICENSE file
------------------------------------------------------------------------

-- base64 encode / decode

local byte, char, concat = string.byte, string.char, table.concat

local B64CHARS = 	-- base64 alphabet (RFC 4648)
	"ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/"

-- inverse base64 map, used by b64decode:  b64charmap maps characters in
-- base64 alphabet to their _offset_ in b64chars (0-based, not 1-based...)
--  eg.	for 'A' b64charmap[65] == 0  and for '/', b64charmap[47] == 63
--
local b64charmap = {};
for i = 1, 64 do b64charmap[byte(B64CHARS, i)] = i - 1  end

local function decode(b)
	-- decode base64-encoded string
	-- ignore all whitespaces, newlines, and padding ('=') in b
	local cmap = b64charmap
	local e1, e2, e3, e4
	local st = {}
	local t3 = {}
	--b = string.gsub(b, "%-", "+")
	--b = string.gsub(b, "_", "/")
	--b = string.gsub(b, "[=%s]", "") -- remove all whitespaces and '='
	if b:find("[^0-9A-Za-z/+=]") then return '', "invalid char" end
	for i = 1, #b, 4 do
		e1 = cmap[byte(b, i)]
		e2 = cmap[byte(b, i+1)]
		if not e1 or not e2 then return '', "invalid length" end
		e3 = cmap[byte(b, i+2)]
		e4 = cmap[byte(b, i+3)]
		t3[1] = char(bor(shl(e1, 2), shr(e2, 4)))
		if not e3 then
			t3[2] = nil
			t3[3] = nil
			st[#st + 1] = concat(t3)
			break
		end
		t3[2] = char(band(bor(shl(e2,4), shr(e3,2)), 0xff))
		if not e4 then
			t3[3] = nil
			st[#st + 1] = concat(t3)
			break
		end
		t3[3] = char(band(bor(shl(e3, 6), (e4)), 0xff))
		st[#st + 1] = concat(t3)
	end --for
	return concat(st)
end --decode

addon.read = decode