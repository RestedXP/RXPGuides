local _, addon = ...

local H = {}

H['How do I import my guides?'] = [[
We have a video guide here: https://www.youtube.com/watch?v=DT_Ig5r_REQ&feature=emb_title
]]

H['Why do I get an error when importing my guides?'] = [[
It depends on the error, the 3 most common ones are listed below:

  undefined: If your string file says undefined, your battle.net is not set on our site. Try clearing your browser cache and trying again.
  Invalid Value: This means the guide didn't connect to your battle.net, please appear online or restart your game
  Invalid Import String: This likely means your battle.net does not match the one on your account, please open-ticket to get your battle.net adjusted.
  Unable to parse guide Same as above
]]

H["I'm missing a lot of exp, why?"] = [[
You should be grinding mobs between quests, not just moving from objective to objective.

This guide is based on speed - which means less quests to turn in. Grinding from quest to quest makes up for the lost xp.
]]

H["Why does the guide skip level brackets?"] = [[
The level ranges on our guides are intended for standard exp rates, do not worry about following the leveling brackets while on 50% exp.

Just follow the guide the best you can.
]]

H["Why am I missing guide chapters?"] = [[
These are inefficient areas that we outright removed, don't worry, we added steps to the start of the next guide to get you caught up.

You can view them by turning your slider down to 1.0x from 1.5x in your options.
]]

addon.help = H
