local _, addon = ...
local L = addon.locale.Get
local H = {}

H[L"I'm missing a lot of exp, why?"] = L[[
You should be grinding mobs between quests, not just moving from objective to objective.

This guide is based on speed - which means less quests to turn in. Grinding from quest to quest makes up for the lost xp.
]]

H[L"Why is my guide missing levels?"] = L[[
The level ranges on our guides are intended for standard exp rates, do not worry about following the leveling brackets while on 20% or 50% exp.

Just follow the guide the best you can.
]]

H[L"Why is my guide skipping lots of steps or zones?"] = L[[
These are inefficient areas that we skip if you are missing quest chains or if you are ahead in levels compared to the guide.
]]

H[L"What are command the line options?"] = L[[
|cff909090/rxp|r - Open general addon settings
|cff909090/rxp import|r - Open Import Guide interface
|cff909090/rxp debug|r - enable debugging output
|cff909090/rxp splits|r - Toggle Level Splits on or off, if enabled
|cff909090/rxp show||hide||toggle|r - Toggle all enabled frames on or off
|cff909090/rxp bug||feedback|r - Open Feedback Form
|cff909090/rxp help|r - This output
]]

addon.help = H

local C = {}

C["TomTom"] = {
    ["Reason"] = L"has known incompatibilities with the Waypoint Arrow.",
    ["Recommendation"] = L"Disable it if you're experiencing navigation issues."
}
C["SilverDragon"] = C["TomTom"]
C["TotemTimers"] = C["TomTom"]
C["Leatrix Maps"] = C["TomTom"]

C["Narcissus"] = {
    ["Reason"] = L"has known incompatibilities with Proximity targeting TargetUnit() calls.",
    ["Recommendation"] = L"Install BugSack or disable Targeting -> 'Only show when in range'."
}

addon.compatibility = C
