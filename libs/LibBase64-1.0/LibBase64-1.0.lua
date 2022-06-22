--[[
LibBase64-1.0 - base64 encoder/decoder.
(c) 2014 Adirelle (adirelle@gmail.com)

This file is part of LibBase64-1.0.

LibBase64-1.0 is free software: you can redistribute it and/or modify
it under the terms of the GNU General Public License as published by
the Free Software Foundation, either version 3 of the License, or
(at your option) any later version.

LibBase64-1.0 is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
GNU General Public License for more details.

You should have received a copy of the GNU General Public License
along with LibBase64-1.0.  If not, see <http://www.gnu.org/licenses/>.
--]]

local MAJOR, MINOR, lib = "LibBase64-1.0", 1
if LibStub then
	lib = LibStub:NewLibrary(MAJOR, MINOR)
	if not lib then return end
else
	lib = {}
end

local band, lshift, rshift = bit.band, bit.lshift, bit.rshift

-- Convert base 64 value to ASCII & conversely
local encode, decode = {}, { [strbyte("=")] = false }
for value = 0, 63 do
	local char = strsub('ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/', value+1, value+1)
	encode[value] = char
	decode[strbyte(char)] = value
end

-- Working table
local t = {}

function lib:encode(str)
	local j = 1
	for i = 1, strlen(str), 3 do
		local a, b, c = strbyte(str, i, i+2)
		t[j] = encode[rshift(a, 2)]
		t[j+1] = encode[band(lshift(a, 4) + rshift(b or 0, 4), 0x3F)]
		t[j+2] = b and encode[band(lshift(b, 2) + rshift(c or 0, 6), 0x3F)] or "="
		t[j+3] = c and encode[band(c, 0x3F)] or "="
		j = j + 4
	end
	return table.concat(t, "", 1, j-1)
end

function lib:decode(str)
	local j = 1
	assert(strlen(str) % 4 == 0, format("%s: invalid data length: %d", MAJOR, strlen(str)))
	for i = 1, strlen(str), 4 do
		local ba, bb, bc, bd = strbyte(str, i, i+3)
		local a, b, c, d = decode[ba], decode[bb], decode[bc], decode[bd]
		assert(a ~= nil, format("%s: invalid data at position %d: '%s'", MAJOR, i, ba))
		assert(b ~= nil, format("%s: invalid data at position %d: '%s'", MAJOR, i+1, bb))
		assert(c ~= nil, format("%s: invalid data at position %d: '%s'", MAJOR, i+2, bc))
		assert(d ~= nil, format("%s: invalid data at position %d: '%s'", MAJOR, i+3, bd))
		t[j] = strchar(lshift(a, 2) + rshift(b, 4))
		t[j+1] = c and strchar(band(lshift(b, 4) + rshift(c, 2), 0xFF)) or ""
		t[j+2] = d and strchar(band(lshift(c, 6) + d, 0xFF)) or ""
		j = j + 3
	end
	return table.concat(t, "", 1, j-1)
end

-- Need for tests
return lib
