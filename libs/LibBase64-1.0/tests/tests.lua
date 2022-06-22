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

package.path = package.path .. ";./wowmock/?.lua"
local LuaUnit = require('luaunit')
local wowmock = require('wowmock')

local lib

tests = {}

function tests:setup()
    lib = wowmock("../LibBase64-1.0.lua")
end

local function dataprovider(name, ...)
	local method = tests[name]
	tests[name] = nil
	for i = 1, select('#', ...) do
		local args = select(i, ...)
		tests[name.."_"..i] = function()
			return method(tests, unpack(args))
		end
	end
end

function tests:test_encode(input, expected)
	assertEquals(lib:encode(input), expected)
end

dataprovider('test_encode',
	{ "AAA",      "QUFB" },
	{ "AA",       "QUE=" },
	{ "A",        "QQ==" },
	{ "FooBar !", "Rm9vQmFyICE=" }
)

function tests:test_decode(expected, input)
	assertEquals(lib:decode(input), expected)
end

dataprovider('test_decode',
	{ "AAA",      "QUFB" },
	{ "AA",       "QUE=" },
	{ "A",        "QQ==" },
	{ "FooBar !", "Rm9vQmFyICE=" }
)

function tests:test_decode_errors(input)
	assertEquals(pcall(lib.decode, lib, input), false)
end

dataprovider('test_decode_errors',
	{ "=" },
	{ "QUFB=" },
	{ "QUE}=" }
)


os.exit(LuaUnit:Run())