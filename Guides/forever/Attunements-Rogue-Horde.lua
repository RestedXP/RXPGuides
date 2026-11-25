local L = GetLocale() if L and RXP.enabledLocale[L] then return end
--Attunement guides: Rogue Optimised Attunements, Horde (container + 4 chapters)

RXPGuides.RegisterGuide([[
#forever
#version 1
#group Attunement guides
#subgroup Rogue Optimised Attunements
<< Horde Rogue
#name RH0 Horde
#displayname Horde
#chapters RH1 Scholomance Key;RH2 Lower Blackrock Spire;RH3 Upper Blackrock Spire;RH4 Onyxia
step
    +Pick an attunement in the sub-menu
]])

RXPGuides.RegisterGuide([[
#forever
#version 1
#group Attunement guides
<< Horde Rogue
#name RH1 Scholomance Key
#displayname Scholomance Key
#chapter
#internal
#next RH2 Lower Blackrock Spire
step
    #sticky
    #label ThoriumBars
    >>Buy 2 |cRXP_LOOT_Thorium Bars|r at the Auction House before you leave the capital. You also need |cRXP_WARN_15 gold|r for Krinkle later
    .collect 12359,2,5802,1
step
    .goto 1420,83.13,68.94
    .bestroute
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_High Executor Derrington|r at the Bulwark
    >>|cRXP_WARN_Level 50 for the first two quests, level 55 from "Scholomance" onward|r
    .accept 5096 >>Accept Scarlet Diversions
    .target High Executor Derrington::10837
step
    .goto 1422,26.55,56.18
    >>Loot a |cRXP_LOOT_Flame in a Bottle|r from the |cRXP_PICK_Box of Incendiaries|r by the fire
    .collect 12814,1,5096,1
step
    .goto 1422,40.72,52.04
    .use 12807 >>Stealth into the Scarlet camp (its mobs chain-pull). Click the |cRXP_PICK_Command Tent|r to burn it, then use the |cRXP_LOOT_Scourge Banner|r. Vanish out
    .complete 5096,1
step
    .goto 1420,83.13,68.94
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_High Executor Derrington|r
    .turnin 5096 >>Turn in Scarlet Diversions
    .accept 5098 >>Accept All Along the Watchtowers
    .target High Executor Derrington::10837
step
    .goto 1422,28.68,58.72,40,0
    .goto 1422,43.41,59.88,40,0
    .goto 1422,44.30,63.25
    .use 12815 >>Use the |cRXP_LOOT_Beacon Torch|r in the doorway of Tower Three
    .complete 5098,3
step
    .goto 1422,42.33,66.24
    .use 12815 >>Use the |cRXP_LOOT_Beacon Torch|r in the doorway of Tower Two
    .complete 5098,2
step
    .goto 1422,40.05,71.60
    .use 12815 >>Use the |cRXP_LOOT_Beacon Torch|r in the doorway of Tower One
    .complete 5098,1
step
    .goto 1422,46.62,71.05
    .use 12815 >>Use the |cRXP_LOOT_Beacon Torch|r in the doorway of Tower Four
    >>Stealth from here: |cRXP_ENEMY_Fallen Hero|r elites stand around the tower and a |cRXP_ENEMY_Skeletal Warlord|r (elite) is inside. |cRXP_WARN_Stay in the doorway|r
    .complete 5098,4
step
    .goto 1420,83.13,68.94
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_High Executor Derrington|r
    >>|cRXP_WARN_"Scholomance" needs level 55|r
    .turnin 5098 >>Turn in All Along the Watchtowers
    .accept 838 >>Accept Scholomance
    .target High Executor Derrington::10837
step
    .goto 1420,83.28,69.23
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Apothecary Dithers|r
    .turnin 838 >>Turn in Scholomance
    .accept 964 >>Accept Skeletal Fragments
    .target Apothecary Dithers::11057
step
    #loop
    .goto 1422,46.40,70.00,0
    .goto 1422,46.40,70.00,50,0
    .goto 1422,45.60,72.20,50,0
    .goto 1422,42.60,71.40,50,0
    .goto 1422,41.60,73.20,50,0
    .goto 1422,38.80,71.00,50,0
    .goto 1422,38.80,68.20,50,0
    .goto 1422,40.40,66.40,50,0
    .goto 1422,42.60,70.00,50,0
    .goto 1422,43.40,64.40,50,0
    .goto 1422,45.80,65.80,50,0
    >>Kill |cRXP_ENEMY_Skeletal Executioners|r and |cRXP_ENEMY_Skeletal Acolytes|r in Andorhal. Loot them for |cRXP_LOOT_Skeletal Fragments|r
    >>Skip the |cRXP_ENEMY_Fallen Hero|r and |cRXP_ENEMY_Skeletal Warlord|r elites. Vanish if a pull goes wrong
    .complete 964,1
    .mob Skeletal Executioner::1787;Skeletal Acolyte::1789
    .combat
step
    .isQuestComplete 964
    .goto 1422,45.74,69.19
    .deathskip >>Run into the mobs in the centre of Andorhal and let them kill you. Respawn at the Bulwark
step
    .goto 1420,83.28,69.23
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Apothecary Dithers|r
    .turnin 964 >>Turn in Skeletal Fragments
    .accept 5514 >>Accept Mold Rhymes With...
    .target Apothecary Dithers::11057
step
    .goto 1446,51.46,28.81
    .bestroute
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Krinkle Goodsteel|r in Gadgetzan
    >>|cRXP_WARN_Costs 15 gold|r
    .turnin 5514 >>Turn in Mold Rhymes With...
    .accept 5802 >>Accept Fire Plume Forged
    .target Krinkle Goodsteel::5411
step
    #optional
    .isQuestComplete 5065
    .goto 1446,66.89,24.03
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Prospector Ironboot|r at Steamwheedle Port (Mosh'aru chain, done in LBRS)
    .turnin 5065 >>Turn in The Lost Tablets of Mosh'aru
    .accept 4788 >>Accept The Final Tablets
    .target Prospector Ironboot::10460
step
    #optional
    .isQuestTurnedIn 5065
    .goto 1446,66.89,24.03
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Prospector Ironboot|r at Steamwheedle Port (its tablets are in LBRS)
    .accept 4788 >>Accept The Final Tablets
    .target Prospector Ironboot::10460
step
    #requires ThoriumBars
    .isOnQuest 5802
    .isQuestNotComplete 5802
    .goto 1449,45.30,5.96,30 >>Go to Marshal's Refuge in Un'Goro Crater
    .bestroute
step
    .goto 1449,44.59,12.84,40,0
    .goto 1449,40.99,18.24,40,0
    .goto 1449,40.99,22.30,40,0
    .goto 1449,43.69,26.35,40,0
    .goto 1449,44.59,34.46,40,0
    .goto 1449,50.90,42.57,40,0
    .goto 1449,51.80,45.27,30,0
    .goto 1449,49.28,47.04
    .safepath fp79-fire_plume
    .use 14644 >>Ride to the top of Fire Plume Ridge. Use the |cRXP_LOOT_Skeleton Key Mold|r next to the lava lake
    .complete 5802,1
step
    .goto 1420,83.28,69.23
    .bestroute
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Apothecary Dithers|r
    .turnin 5802 >>Turn in Fire Plume Forged
    .accept 5804 >>Accept Araj's Scarab
    .target Apothecary Dithers::11057
step
    .goto 1422,28.68,58.72,40,0
    .goto 1422,43.41,59.88,40,0
    .goto 1422,45.74,64.53,30,0
    .goto 1422,45.27,69.21
    .safepath derrington-andorhal
    >>Stealth to the centre of Andorhal (past the |cRXP_ENEMY_Fallen Hero|r elites and the |cRXP_ENEMY_Spectral Attendants|r)
    >>Kill |cRXP_ENEMY_Araj the Summoner|r (level 61 elite, a group of 3 is safer). Open with Cheap Shot, Kick his casts, Evasion when his skeletons join, Vanish to reset
    >>Loot |cRXP_PICK_Araj's Phylactery|r on the ground for |cRXP_LOOT_Araj's Scarab|r
    .complete 5804,1
    .mob Araj the Summoner::1852
    .combat
step
    .isQuestComplete 5804
    .goto 1422,45.74,69.19
    .deathskip >>Stay in the centre of Andorhal and let the mobs kill you. Respawn at the Bulwark
step
    .goto 1420,83.28,69.23
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Apothecary Dithers|r
    .turnin 5804 >>Turn in Araj's Scarab
    .target Apothecary Dithers::11057
step
    .goto 1420,83.13,68.94
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_High Executor Derrington|r
    .accept 5511 >>Accept The Key to Scholomance
    .turnin 5511 >>Turn in The Key to Scholomance
    .target High Executor Derrington::10837
step
    +|cRXP_WARN_You have the Skeleton Key. Next: Lower Blackrock Spire|r
]])

RXPGuides.RegisterGuide([[
#forever
#version 1
#group Attunement guides
<< Horde Rogue
#name RH2 Lower Blackrock Spire
#displayname Lower Blackrock Spire
#chapter
#internal
#next RH3 Upper Blackrock Spire
step
    .xp <57,1
    .goto 1458,50.14,67.97
    .bestroute
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Apothecary Zinge|r in the Undercity Apothecarium
    >>|cRXP_WARN_Level 57. LBRS quests need level 55|r
    .accept 4769 >>Accept Vivian Lagrave and the Darkstone Tablet
    .target Apothecary Zinge::5204
step
    .goto 1418,5.81,47.52
    .bestroute
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Warlord Goretooth|r in Kargath. Go through his gossip to get |cRXP_LOOT_Warlord Goretooth's Command|r, then use it
    >>Warlord's Command is the first Onyxia quest
    .collect 12563,1,4903,1
    .use 12563
    .accept 4903 >>Accept Warlord's Command
    .skipgossip
    .target Warlord Goretooth::9077
step
    .goto 1418,5.96,47.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Galamav the Marksman|r
    .accept 4724 >>Accept The Pack Mistress
    .target Galamav the Marksman::9081
step
    .goto 1418,5.88,47.63
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lexlort|r
    .accept 4981 >>Accept Operative Bijou
    .target Lexlort::9080
step
    .isOnQuest 4769
    .goto 1418,2.90,47.76
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Shadowmage Vivian Lagrave|r at the top of the Kargath tower
    .turnin 4769 >>Turn in Vivian Lagrave and the Darkstone Tablet
    .target Shadowmage Vivian Lagrave::9078
step
    .xp <57,1
    .goto 1418,2.90,47.76
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Shadowmage Vivian Lagrave|r (level 57)
    .accept 4768 >>Accept The Darkstone Tablet
    .target Shadowmage Vivian Lagrave::9078
step
    .goto 1428,65.89,21.92
    .bestroute
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFly to Flame Crest and talk to |cRXP_FRIENDLY_Kibler|r
    .accept 4729 >>Accept Kibler's Exotic Pets
    .accept 4862 >>Accept En-Ay-Es-Tee-Why
    .target Kibler::10260
step
    .goto 1428,65.01,23.76
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ragged John|r
    .accept 4866 >>Accept Mother's Milk
    .target Ragged John::9563
step
    .goto 1428,62.02,28.28,40,0
    .goto 1428,50.64,31.70,40,0
    .goto 1428,47.23,36.82,40,0
    .goto 1428,47.23,43.65,40,0
    .goto 1428,41.54,50.48,40,0
    .goto 1428,33.47,51.52,30,0
    .goto 1428,28.18,42.66,20,0
    .goto 1428,28.11,25.29,15,0
    .goto 1428,32.75,25.34
    .safepath fp70-brm_bs_approach
    .subzone 1583,2 >>Ride to Blackrock Mountain (chain bridge, then the Molten Span) and enter Blackrock Spire
step
    #sticky
    #label Unadorned
    >>Loot an |cRXP_LOOT_Unadorned Seal of Ascension|r from any LBRS mob (about 1 in 5)
    .complete -4742,4
step
    .xp <57,1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Scarshield Infiltrator|r (Vaelan), on the platform to your left as you enter Hordemar City
    .accept 4742 >>Accept Seal of Ascension
    .target Scarshield Infiltrator::10299
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bijou|r (gnome) inside LBRS
    .turnin 4981 >>Turn in Operative Bijou
    .accept 4982 >>Accept Bijou's Belongings
    .target Bijou::10257
step
    #sticky
    >>Loot |cRXP_PICK_Bijou's Belongings|r: a box at a random spot on the bottom floor, among the trolls and orcs on the way to |cRXP_ENEMY_Mother Smolderweb|r
    .complete 4982,1
step
    #sticky
    >>Loot the |cRXP_PICK_Inconspicuous Documents|r (Important Blackrock Documents). Random spot: at |cRXP_ENEMY_Wyrmthalak|r's feet, in a corner next to |cRXP_ENEMY_Voone|r, near |cRXP_ENEMY_Omokk|r or next to Urok Doomhowl's Tribute Pile
    .complete 4903,4
step
    >>Kill |cRXP_ENEMY_Highlord Omokk|r (ogre boss, first big ramp). Loot the |cRXP_LOOT_Gemstone of Spirestone|r
    .complete 4903,2
    .complete -4742,1
    .mob Highlord Omokk::9196
    .combat
step
    >>Kill |cRXP_ENEMY_Shadow Hunter Vosh'gajin|r and |cRXP_ENEMY_War Master Voone|r (troll wing). Loot the |cRXP_LOOT_Gemstone of Smolderthorn|r from Voone
    >>Loot the |cRXP_PICK_Darkstone Tablet|r in Vosh'gajin's area. On The Final Tablets: the |cRXP_PICK_Fifth Mosh'aru Tablet|r is behind Vosh'gajin, the |cRXP_PICK_Sixth|r behind Voone
    .complete 4903,3
    .complete -4742,2
    .complete -4768,1
    .complete -4788,1
    .complete -4788,2
    .mob War Master Voone::9237;Shadow Hunter Vosh'gajin::9236
    .combat
step
    >>Kill |cRXP_ENEMY_Mother Smolderweb|r (Skitterweb Tunnels), then loot the |cRXP_PICK_Spire Spider Eggs|r around her
    >>Mother's Milk: let her poison you and do not cleanse it. You must still carry it when you reach |cRXP_FRIENDLY_Ragged John|r (do not die on the way)
    .complete 4862,1
    .mob Mother Smolderweb::10596
    .combat
step
    .use 12262 >>Use the |cRXP_LOOT_Empty Worg Pup Cage|r on a |cRXP_ENEMY_Bloodaxe Worg Pup|r before your group kills them, then kill |cRXP_ENEMY_Halycon|r
    .complete 4729,1
    .complete 4724,1
    .mob Halycon::10220;Bloodaxe Worg Pup::10221
    .combat
step
    >>Kill |cRXP_ENEMY_Overlord Wyrmthalak|r (last boss). Loot the |cRXP_LOOT_Gemstone of Bloodaxe|r
    >>|cRXP_WARN_Gemstones drop 27 to 41%: if one is missing, the Upper Blackrock Spire chapter sends you back|r
    .complete 4903,1
    .complete -4742,3
    .mob Overlord Wyrmthalak::9568
    .combat
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bijou|r
    .turnin 4982 >>Turn in Bijou's Belongings
    .accept 4983 >>Accept Bijou's Reconnaissance Report
    .target Bijou::10257
step
    .isQuestComplete 4742
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tStealth to |cRXP_FRIENDLY_Scarshield Infiltrator|r (Vaelan) at the start of Hordemar City on your way out
    .turnin 4742 >>Turn in Seal of Ascension
    .accept 4743 >>Accept Seal of Ascension
    .target Scarshield Infiltrator::10299
step
    .goto 1428,28.11,25.29,15,0
    .goto 1428,28.18,42.66,20,0
    .goto 1428,33.47,51.52,30,0
    .goto 1428,41.54,50.48,40,0
    .goto 1428,47.23,43.65,40,0
    .goto 1428,47.23,36.82,40,0
    .goto 1428,50.64,31.70,40,0
    .goto 1428,62.02,28.28,40,0
    .goto 1428,65.89,21.92
    .safepath fp70-brm_bs_approach
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tLeave the instance, ride back to Flame Crest and talk to |cRXP_FRIENDLY_Kibler|r
    >>|cRXP_WARN_Carrying Mother's Milk: ride, never die (dying clears the poison)|r
    .turnin 4729 >>Turn in Kibler's Exotic Pets
    .turnin 4862 >>Turn in En-Ay-Es-Tee-Why
    .target Kibler::10260
step
    .isOnQuest 4866
    .goto 1428,65.01,23.76
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ragged John|r while poisoned. Abandon the quest if you lost the poison
    .complete 4866,1
    .turnin 4866 >>Turn in Mother's Milk
    .skipgossip
    .target Ragged John::9563
step
    .goto 1418,5.81,47.52
    .bestroute
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFly to Kargath and talk to |cRXP_FRIENDLY_Warlord Goretooth|r
    .turnin 4903 >>Turn in Warlord's Command
    .accept 4941 >>Accept Eitrigg's Wisdom
    .target Warlord Goretooth::9077
step
    .goto 1418,5.96,47.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Galamav the Marksman|r
    .turnin 4724 >>Turn in The Pack Mistress
    .target Galamav the Marksman::9081
step
    .goto 1418,5.88,47.63
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lexlort|r
    .turnin 4983 >>Turn in Bijou's Reconnaissance Report
    .target Lexlort::9080
step
    .isQuestComplete 4768
    .goto 1418,2.90,47.76
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Shadowmage Vivian Lagrave|r
    .turnin 4768 >>Turn in The Darkstone Tablet
    .target Shadowmage Vivian Lagrave::9078
]])

RXPGuides.RegisterGuide([[
#forever
#version 1
#group Attunement guides
<< Horde Rogue
#name RH3 Upper Blackrock Spire
#displayname Upper Blackrock Spire
#chapter
#internal
#next RH4 Onyxia
step
    .isNotOnQuest 4743
    .isQuestAvailable 4743
    .goto 1428,32.75,25.34
    .bestroute
    .subzone 1583,2 >>Enter Lower Blackrock Spire (Seal of Ascension: level 57)
step
    .xp <57,1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Scarshield Infiltrator|r (Vaelan), on the platform to your left as you enter Hordemar City
    .accept 4742 >>Accept Seal of Ascension
    .target Scarshield Infiltrator::10299
step
    #sticky
    >>Loot an |cRXP_LOOT_Unadorned Seal of Ascension|r from any LBRS mob (about 1 in 5)
    .complete -4742,4
step
    >>Kill |cRXP_ENEMY_Highlord Omokk|r, |cRXP_ENEMY_War Master Voone|r and |cRXP_ENEMY_Overlord Wyrmthalak|r. Loot their Gemstones
    >>|cRXP_WARN_27 to 41% each: reset and repeat LBRS until you have all three|r
    .complete -4742,1
    .complete -4742,2
    .complete -4742,3
    .mob Highlord Omokk::9196;War Master Voone::9237;Overlord Wyrmthalak::9568
    .combat
step
    .isOnQuest 4742
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Scarshield Infiltrator|r (Vaelan) at the start of Hordemar City
    .turnin 4742 >>Turn in Seal of Ascension
    .accept 4743 >>Accept Seal of Ascension
    .target Scarshield Infiltrator::10299
step
    .use 12339 >>Open |cRXP_LOOT_Vaelan's Gift|r
    .collect 12323,1,4743,1
    .collect 12300,1,4743,1
step
    .isOnQuest 4743
    .isQuestNotComplete 4743
    .goto 1445,35.57,31.83,30 >>Go to Brackenwall Village, Dustwallow Marsh
    .bestroute
step
    .isOnQuest 4743
    .isQuestNotComplete 4743
    .goto 1445,40.79,40.48,40,0
    .goto 1445,42.06,51.90,40,0
    .goto 1445,50.95,64.29,40,0
    .goto 1445,51.59,80.48,40,0
    .goto 1445,54.37,84.22,15 >>Ride to Emberstrife's Den in the Wyrmbog
    .safepath fp55-ember_den
step
    #completewith next
    .isOnQuest 4743
    .isQuestNotComplete 4743
    .goto 1445,56.66,87.72
    .use 12323 >>Stealth past the whelps. Place the |cRXP_LOOT_Unforged Seal of Ascension|r on the ground in front of |cRXP_ENEMY_Emberstrife|r before you pull
    .cast 16057
step
    .goto 1445,56.66,87.72
    .use 12300 >>Fight |cRXP_ENEMY_Emberstrife|r (level 61 elite, 3 players advised). Evasion when he turns to you. Below 10% health, use the |cRXP_LOOT_Orb of Draconic Energy|r to control him
    >>Cast |cRXP_WARN_Flames of the Black Flight|r on the seal, then loot the |cRXP_PICK_Forged Seal of Ascension|r
    .complete 4743,1
    .mob Emberstrife::10321
    .combat
step
    .isQuestComplete 4743
    .goto 1445,56.67,88.10
    .deathskip >>Seal looted: let |cRXP_ENEMY_Emberstrife|r kill you. Respawn at Brackenwall Village, next to the flight master
step
    .isOnQuest 4941
    .goto 1454,34.14,39.26
    .bestroute
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tOn the way: fly to Orgrimmar and talk to |cRXP_FRIENDLY_Eitrigg|r in Grommash Hold (Onyxia chain)
    .complete 4941,1
    .skipgossip
    .target Eitrigg::3144
step
    .isOnQuest 4941
    .goto 1454,31.73,37.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Thrall|r
    .turnin 4941 >>Turn in Eitrigg's Wisdom
    .accept 4974 >>Accept For The Horde!
    .target Thrall::4949
step
    .isQuestComplete 4743
    .goto 1428,32.75,25.34
    .bestroute
    .subzone 1583,2 >>Go back to Blackrock Mountain and enter Lower Blackrock Spire
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tStealth to |cRXP_FRIENDLY_Scarshield Infiltrator|r (Vaelan) at the start of Hordemar City
    .turnin 4743 >>Turn in Seal of Ascension
    .target Scarshield Infiltrator::10299
step
    +|cRXP_WARN_You carry the Seal of Ascension: you can open Upper Blackrock Spire for your raid. Next: Onyxia (Rend Blackhand is in this same instance)|r
]])

RXPGuides.RegisterGuide([[
#forever
#version 1
#group Attunement guides
<< Horde Rogue
#name RH4 Onyxia
#displayname Onyxia
#chapter
#internal
step
    .isOnQuest 4941
    .goto 1454,34.14,39.26
    .bestroute
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Eitrigg|r in Grommash Hold, Orgrimmar
    >>|cRXP_WARN_Needs Warlord's Command done (Lower Blackrock Spire chapter)|r
    .complete 4941,1
    .skipgossip
    .target Eitrigg::3144
step
    .isOnQuest 4941
    .goto 1454,31.73,37.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Thrall|r
    .turnin 4941 >>Turn in Eitrigg's Wisdom
    .accept 4974 >>Accept For The Horde!
    .target Thrall::4949
step
    .isOnQuest 4974
    .isQuestNotComplete 4974
    .goto 1428,32.75,25.34
    .bestroute
    .subzone 1583,2 >>Go to Blackrock Spire with a 10-man raid. Someone needs the Seal of Ascension (Upper Blackrock Spire chapter)
step
    >>Kill |cRXP_ENEMY_Warchief Rend Blackhand|r (UBRS, after the Gyth event in the arena). Loot the |cRXP_LOOT_Head of Rend Blackhand|r
    .complete 4974,1
    .mob Warchief Rend Blackhand::10429
    .combat
step
    .goto 1454,31.73,37.82
    .bestroute
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Thrall|r in Orgrimmar
    .turnin 4974 >>Turn in For The Horde!
    .accept 6566 >>Accept What the Wind Carries
    .target Thrall::4949
step
    .goto 1454,31.73,37.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tListen to |cRXP_FRIENDLY_Thrall|r's tale, then talk to him again
    .complete 6566,1
    .turnin 6566 >>Turn in What the Wind Carries
    .accept 6567 >>Accept The Champion of the Horde
    .skipgossip
    .target Thrall::4949
step
    .isOnQuest 6567
    .goto 1443,55.50,0.50,40 >>Go to northern Desolace, at the Stonetalon border (Rexxar's patrol start)
    .bestroute
step
    #loop
    .goto 1443,55.50,0.50,0
    .goto 1443,55.50,0.50,60,0
    .goto 1443,54.61,10.71,60,0
    .goto 1443,60.42,16.17,60,0
    .goto 1443,63.38,26.21,60,0
    .goto 1443,60.49,37.07,60,0
    .goto 1443,53.34,37.51,60,0
    .goto 1443,49.55,48.56,60,0
    .goto 1443,52.25,59.36,60,0
    .goto 1443,55.63,67.41,60,0
    .goto 1443,50.53,75.40,60,0
    .goto 1443,39.99,78.28,60,0
    .goto 1443,41.79,85.27,60,0
    .goto 1443,41.95,96.04,60,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFind |cRXP_FRIENDLY_Rexxar|r on the Desolace road and talk to him
    >>He walks north to south, despawns at the Twin Colossals in Feralas and comes back at the Stonetalon border about 5 minutes later
    .turnin 6567 >>Turn in The Champion of the Horde
    .accept 6568 >>Accept The Testament of Rexxar
    .target Rexxar::10182
    .unitscan Rexxar
step
    .goto 1422,50.79,77.85
    .bestroute
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Myranda the Hag|r at Sorrow Hill, Western Plaguelands
    .turnin 6568 >>Turn in The Testament of Rexxar
    .accept 6569 >>Accept Oculus Illusions
    .target Myranda the Hag::11872
step
    .isOnQuest 6569
    .isQuestNotComplete 6569
    .goto 1428,32.75,25.34
    .bestroute
    .subzone 1583,2 >>Go to Blackrock Spire with a 10-man raid (Seal of Ascension needed)
step
    >>Kill the dragonkin in Upper Blackrock Spire and loot 20 |cRXP_LOOT_Black Dragonspawn Eyes|r. The Rookery and the Rage Talon packs give the most
    .complete 6569,1
    .mob Rookery Hatcher::10683;Rookery Guardian::10258;Rage Talon Flamescale::10083;Rage Talon Dragonspawn::9096
    .combat
step
    .goto 1422,50.79,77.85
    .bestroute
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Myranda the Hag|r
    .turnin 6569 >>Turn in Oculus Illusions
    .accept 6570 >>Accept Emberstrife
    .target Myranda the Hag::11872
step
    .isOnQuest 6570
    .goto 1445,35.57,31.83,30 >>Go to Brackenwall Village, Dustwallow Marsh
    .bestroute
step
    .isOnQuest 6570
    .goto 1445,40.79,40.48,40,0
    .goto 1445,42.06,51.90,40,0
    .goto 1445,50.95,64.29,40,0
    .goto 1445,51.59,80.48,40,0
    .goto 1445,54.37,84.22,15 >>Ride to Emberstrife's Den in the Wyrmbog
    .safepath fp55-ember_den
step
    .goto 1445,56.66,87.72
    .use 16787 >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tUse the |cRXP_LOOT_Amulet of Draconic Subversion|r BEFORE you get close, then talk to |cRXP_FRIENDLY_Emberstrife|r
    .turnin 6570 >>Turn in Emberstrife
    .accept 6584 >>Accept The Test of Skulls, Chronalis
    .accept 6582 >>Accept The Test of Skulls, Scryer
    .accept 6583 >>Accept The Test of Skulls, Somnus
    .target Emberstrife::10321
step
    .isOnQuest 6584
    .isQuestNotComplete 6584
    .goto 1446,51.62,25.52,30 >>Go to Gadgetzan, Tanaris
    .bestroute
step
    .goto 1446,54.08,29.17,40,0
    .goto 1446,54.56,32.07,40,0
    .goto 1446,57.94,37.14,40,0
    .goto 1446,61.32,45.11,40,0
    .goto 1446,64.16,48.49
    .safepath fp40-chronalis
    >>Kill |cRXP_ENEMY_Chronalis|r at the Caverns of Time entrance (level 62 elite, group of 5). Loot his skull
    >>Open from stealth, stay behind him (Sand Breath), Evasion if he turns
    .complete 6584,1
    .mob Chronalis::8197
    .combat
step
    #optional
    .isQuestComplete 4788
    .goto 1446,66.89,24.03
    .bestroute
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Prospector Ironboot|r at Steamwheedle Port (optional, Mosh'aru chain)
    .turnin 4788 >>Turn in The Final Tablets
    .target Prospector Ironboot::10460
step
    .isOnQuest 6582
    .isQuestNotComplete 6582
    .goto 1452,60.48,36.34,30 >>Go to Everlook, Winterspring
    .bestroute
step
    .goto 1452,60.56,38.38,40,0
    .goto 1452,57.75,43.31,40,0
    .goto 1452,57.07,49.97,20,0
    .goto 1452,52.71,55.89
    .safepath fp53-mazthoril
    >>Stealth through the Mazthoril cave to the back. Kill |cRXP_ENEMY_Scryer|r (level 60 elite) and loot his skull
    >>Stay behind him (Frost Breath)
    .complete 6582,1
    .mob Scryer::10664
    .combat
step
    .isQuestComplete 6582
    .goto 1452,52.58,55.99
    .deathskip >>Skull looted: let the whelps and Spell Eaters in the cave kill you. Respawn at Everlook, next to the flight master
step
    .isOnQuest 6583
    .isQuestNotComplete 6583
    .goto 1435,46.05,54.68,30 >>Go to Stonard, Swamp of Sorrows
    .bestroute
step
    .goto 1435,59.31,67.30,40,0
    .goto 1435,68.03,69.48,40,0
    .goto 1435,76.00,66.60
    .safepath fp56-somnus
    .unitscan Somnus
    >>Kill |cRXP_ENEMY_Somnus|r (level 62 elite, group of 5). He patrols a small loop south-east of the lake. Loot his skull
    >>Open from stealth, stay behind him (Corrosive Acid Breath)
    .complete 6583,1
    .mob Somnus::12900
    .combat
step
    .goto 1445,56.66,87.72
    .bestroute
    .use 16787 >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tBack to Emberstrife's Den. Use the |cRXP_LOOT_Amulet of Draconic Subversion|r, then talk to |cRXP_FRIENDLY_Emberstrife|r
    .turnin 6584 >>Turn in The Test of Skulls, Chronalis
    .turnin 6582 >>Turn in The Test of Skulls, Scryer
    .turnin 6583 >>Turn in The Test of Skulls, Somnus
    .accept 6585 >>Accept The Test of Skulls, Axtroz
    .target Emberstrife::10321
step
    .isOnQuest 6585
    .isQuestNotComplete 6585
    .goto 1445,56.67,88.10
    .deathskip >>Cancel the disguise and let |cRXP_ENEMY_Emberstrife|r kill you. Respawn at Brackenwall Village
step
    .isOnQuest 6585
    .isQuestNotComplete 6585
    .goto 1437,75.44,46.76,30 >>Go to the Dragonmaw Gates, Wetlands
    .bestroute
step
    .goto 1437,76.42,48.45,30,0
    .goto 1437,75.62,49.66,30,0
    .goto 1437,79.65,50.87,30,0
    .goto 1437,82.07,50.87,30,0
    .goto 1437,81.82,48.24
    .safepath dragonmaw_gates-axtroz
    .unitscan Axtroz
    >>Stealth past the |cRXP_ENEMY_Red Wyrmkin|r elites at Grim Batol. Kill |cRXP_ENEMY_Axtroz|r (level 62 elite, group of 5) and loot his skull
    >>Stay behind him (Flame Breath)
    .complete 6585,1
    .mob Axtroz::12899
    .combat
step
    .goto 1445,56.66,87.72
    .bestroute
    .use 16787 >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tBack to Emberstrife's Den. Use the |cRXP_LOOT_Amulet of Draconic Subversion|r, then talk to |cRXP_FRIENDLY_Emberstrife|r
    .turnin 6585 >>Turn in The Test of Skulls, Axtroz
    .accept 6601 >>Accept Ascension...
    .target Emberstrife::10321
step
    .isOnQuest 6601
    .goto 1443,55.50,0.50,40 >>Go to northern Desolace, at the Stonetalon border (Rexxar's patrol start)
    .bestroute
step
    #loop
    .goto 1443,55.50,0.50,0
    .goto 1443,55.50,0.50,60,0
    .goto 1443,54.61,10.71,60,0
    .goto 1443,60.42,16.17,60,0
    .goto 1443,63.38,26.21,60,0
    .goto 1443,60.49,37.07,60,0
    .goto 1443,53.34,37.51,60,0
    .goto 1443,49.55,48.56,60,0
    .goto 1443,52.25,59.36,60,0
    .goto 1443,55.63,67.41,60,0
    .goto 1443,50.53,75.40,60,0
    .goto 1443,39.99,78.28,60,0
    .goto 1443,41.79,85.27,60,0
    .goto 1443,41.95,96.04,60,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFind |cRXP_FRIENDLY_Rexxar|r on the Desolace road and talk to him
    .turnin 6601 >>Turn in Ascension...
    .accept 6602 >>Accept Blood of the Black Dragon Champion
    .target Rexxar::10182
    .unitscan Rexxar
step
    .isOnQuest 6602
    .isQuestNotComplete 6602
    .goto 1428,32.75,25.34
    .bestroute
    .subzone 1583,2 >>Go to Blackrock Spire with a 10-man raid (Seal of Ascension needed)
step
    >>Kill |cRXP_ENEMY_General Drakkisath|r in his throne room behind the Halls of Ascension (end of UBRS). Loot the |cRXP_LOOT_Blood of the Black Dragon Champion|r
    >>|cRXP_WARN_It does not always drop: you may need more than one run|r
    .complete 6602,1
    .mob General Drakkisath::10363
    .combat
step
    .isQuestComplete 6602
    .goto 1443,55.50,0.50,40 >>Go to northern Desolace, at the Stonetalon border (Rexxar's patrol start)
    .bestroute
step
    #loop
    .goto 1443,55.50,0.50,0
    .goto 1443,55.50,0.50,60,0
    .goto 1443,54.61,10.71,60,0
    .goto 1443,60.42,16.17,60,0
    .goto 1443,63.38,26.21,60,0
    .goto 1443,60.49,37.07,60,0
    .goto 1443,53.34,37.51,60,0
    .goto 1443,49.55,48.56,60,0
    .goto 1443,52.25,59.36,60,0
    .goto 1443,55.63,67.41,60,0
    .goto 1443,50.53,75.40,60,0
    .goto 1443,39.99,78.28,60,0
    .goto 1443,41.79,85.27,60,0
    .goto 1443,41.95,96.04,60,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFind |cRXP_FRIENDLY_Rexxar|r on the Desolace road and talk to him
    .turnin 6602 >>Turn in Blood of the Black Dragon Champion
    .target Rexxar::10182
    .unitscan Rexxar
step
    +|cRXP_WARN_You have the Drakefire Amulet: you are attuned to Onyxia's Lair|r
]])
