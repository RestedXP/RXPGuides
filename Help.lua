local _, addon = ...

local H = {}

H["I'm missing a lot of exp, why?"] = [[
You should be grinding mobs between quests, not just moving from objective to objective.

This guide is based on speed - which means less quests to turn in. Grinding from quest to quest makes up for the lost xp.
]]

H["Why is my guide missing levels?"] = [[
The level ranges on our guides are intended for standard exp rates, do not worry about following the leveling brackets while on 50% exp.

Just follow the guide the best you can.
]]

H["Why is my guide skipping lots of steps or zones?"] = [[
These are inefficient areas that we outright removed, don't worry, we added steps to the start of the next guide to get you caught up.

You can view the full guide without any skips by turning your slider to 1x from 1.5x in your options
]]

H["What are command the line options?"] = [[
|cff909090/rxp|r - Open general addon settings
|cff909090/rxp import|r - Open Import Guide interface
|cff909090/rxp debug|r - enable debugging output
|cff909090/rxp splits|r - Toggle Level Splits on or off, if enabled
|cff909090/rxp show||hide||toggle|r - Toggle all enabled frames on or off
|cff909090/rxp bug||feedback|r - Open Feedback Form
|cff909090/rxp help|r - This output
]]

addon.help = H
