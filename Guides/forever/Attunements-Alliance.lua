local L = GetLocale() if L and RXP.enabledLocale[L] then return end
--Attunement guides: Alliance, any class (4 guides, chained with #next)

RXPGuides.RegisterGuide([[
#forever
#version 1
#group Attunement guides
#subgroup Alliance
<< Alliance
#name A1 Scholomance Key
#displayname Scholomance Key
#next A2 Lower Blackrock Spire
step
    #sticky
    #label ThoriumBars
    >>Buy 2 |cRXP_LOOT_Thorium Bars|r at the Auction House before you leave the capital. You also need |cRXP_WARN_15 gold|r for Krinkle later
    .collect 12359,2,5801,1
step
    .goto 1422,42.70,84.03
    .bestroute
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Commander Ashlam Valorfist|r
    >>|cRXP_WARN_Level 50 for the first two quests, level 55 from "Scholomance" onward|r
    .accept 5092 >>Accept Clear the Way
    .target Commander Ashlam Valorfist::10838
step
    #loop
    .goto 1422,49.90,76.54,0
    .goto 1422,48.70,80.37,50,0
    .goto 1422,49.90,76.54,50,0
    .goto 1422,50.88,76.14,50,0
    .goto 1422,50.05,80.74,50,0
    >>Kill |cRXP_ENEMY_Skeletal Flayers|r and |cRXP_ENEMY_Slavering Ghouls|r at Sorrow Hill
    .complete 5092,1
    .complete 5092,2
    .mob Skeletal Flayer::1783;Slavering Ghoul::1791
    .combat
step
    .goto 1422,42.70,84.03
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Commander Ashlam Valorfist|r
    .turnin 5092 >>Turn in Clear the Way
    .accept 5097 >>Accept All Along the Watchtowers
    .target Commander Ashlam Valorfist::10838
step
    .goto 1422,48.84,76.16,40,0
    .goto 1422,48.06,71.51,30,0
    .goto 1422,46.62,71.05
    .use 12815 >>Use the |cRXP_LOOT_Beacon Torch|r in the doorway of Tower Four
    >>Come in from the east (arrow). |cRXP_ENEMY_Fallen Hero|r elites stand west of the tower and a |cRXP_ENEMY_Skeletal Warlord|r (elite) is inside: |cRXP_WARN_stay in the doorway, light it and leave|r
    .complete 5097,4
step
    .goto 1422,44.30,63.25
    .use 12815 >>Use the |cRXP_LOOT_Beacon Torch|r in the doorway of Tower Three
    .complete 5097,3
step
    .goto 1422,42.33,66.24
    .use 12815 >>Use the |cRXP_LOOT_Beacon Torch|r in the doorway of Tower Two
    .complete 5097,2
step
    .goto 1422,40.05,71.60
    .use 12815 >>Use the |cRXP_LOOT_Beacon Torch|r in the doorway of Tower One
    .complete 5097,1
step
    .goto 1422,42.70,84.03
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Commander Ashlam Valorfist|r
    >>|cRXP_WARN_"Scholomance" needs level 55|r
    .turnin 5097 >>Turn in All Along the Watchtowers
    .accept 5533 >>Accept Scholomance
    .target Commander Ashlam Valorfist::10838
step
    .goto 1422,42.66,83.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Alchemist Arbington|r
    .turnin 5533 >>Turn in Scholomance
    .accept 5537 >>Accept Skeletal Fragments
    .target Alchemist Arbington::11056
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
    >>Pull from the edges and skip the |cRXP_ENEMY_Fallen Hero|r and |cRXP_ENEMY_Skeletal Warlord|r elites
    .complete 5537,1
    .mob Skeletal Executioner::1787;Skeletal Acolyte::1789
    .combat
step
    .goto 1422,42.66,83.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Alchemist Arbington|r
    .turnin 5537 >>Turn in Skeletal Fragments
    .accept 5538 >>Accept Mold Rhymes With...
    .target Alchemist Arbington::11056
step
    .goto 1446,51.46,28.81
    .bestroute
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Krinkle Goodsteel|r in Gadgetzan
    >>|cRXP_WARN_Costs 15 gold|r
    .turnin 5538 >>Turn in Mold Rhymes With...
    .accept 5801 >>Accept Fire Plume Forged
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
    .isOnQuest 5801
    .isQuestNotComplete 5801
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
    .complete 5801,1
step
    .goto 1422,42.66,83.77
    .bestroute
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Alchemist Arbington|r
    .turnin 5801 >>Turn in Fire Plume Forged
    .accept 5803 >>Accept Araj's Scarab
    .target Alchemist Arbington::11056
step
    .goto 1422,48.84,76.16,40,0
    .goto 1422,48.06,71.51,30,0
    .goto 1422,45.27,69.21
    .safepath fp66-andorhal
    >>|cRXP_WARN_Group of 3 advised|r. Come in from the east (arrow) and clear the normal undead on the way. Keep clear of the |cRXP_ENEMY_Fallen Hero|r elite at 47.3,70.3
    >>Kill |cRXP_ENEMY_Araj the Summoner|r (level 61 elite) in the centre of Andorhal. Interrupt his casts and kill his skeletons fast. Pull the |cRXP_ENEMY_Spectral Attendants|r next to him first if you can
    >>Loot |cRXP_PICK_Araj's Phylactery|r on the ground for |cRXP_LOOT_Araj's Scarab|r
    .complete 5803,1
    .mob Araj the Summoner::1852;Spectral Attendant::11873
    .combat
step
    .goto 1422,42.66,83.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Alchemist Arbington|r
    .turnin 5803 >>Turn in Araj's Scarab
    .accept 5505 >>Accept The Key to Scholomance
    .turnin 5505 >>Turn in The Key to Scholomance
    .target Alchemist Arbington::11056
step
    +|cRXP_WARN_You have the Skeleton Key. Next: Lower Blackrock Spire|r
]])

RXPGuides.RegisterGuide([[
#forever
#version 1
#group Attunement guides
#subgroup Alliance
<< Alliance
#name A2 Lower Blackrock Spire
#displayname Lower Blackrock Spire
#next A3 Upper Blackrock Spire
step
    .goto 1428,85.82,68.95
    .bestroute
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Helendis Riverhorn|r at Morgan's Vigil
    >>|cRXP_WARN_LBRS quests need level 55, the Seal of Ascension needs 57. Dragonkin Menace is the first Onyxia quest: take it now|r
    .accept 4701 >>Accept Put Her Down
    .accept 4182 >>Accept Dragonkin Menace
    .target Helendis Riverhorn::9562
step
    .goto 1428,84.78,64.14,40,0
    .goto 1428,75.68,50.48,40,0
    .goto 1428,76.81,35.11,40,0
    .goto 1428,74.54,28.28,40,0
    .goto 1428,72.26,24.87,30,0
    .goto 1428,65.89,21.92
    .safepath fp71-ragged_john
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tRide to Flame Crest and talk to |cRXP_FRIENDLY_Kibler|r
    >>|cRXP_ENEMY_Vahgruk|r, the Horde flight master (elite) at 65.6,24.2, attacks Alliance: |cRXP_WARN_keep away from him|r
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
    .subzone 1583,2 >>Ride to Blackrock Mountain (chain bridge, then the Molten Span) and enter Blackrock Spire with your group
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
    .accept 5001 >>Accept Bijou's Belongings
    .target Bijou::10257
step
    #sticky
    >>Loot |cRXP_PICK_Bijou's Belongings|r: a box at a random spot among the trolls and orcs on the way to |cRXP_ENEMY_Mother Smolderweb|r
    .complete 5001,1
step
    >>Kill |cRXP_ENEMY_Highlord Omokk|r (ogre boss, first big ramp). Loot the |cRXP_LOOT_Gemstone of Spirestone|r
    .complete -4742,1
    .mob Highlord Omokk::9196
    .combat
step
    >>Kill |cRXP_ENEMY_Shadow Hunter Vosh'gajin|r and |cRXP_ENEMY_War Master Voone|r (troll wing). Loot the |cRXP_LOOT_Gemstone of Smolderthorn|r from Voone
    >>On The Final Tablets: loot the |cRXP_PICK_Fifth Mosh'aru Tablet|r behind Vosh'gajin and the |cRXP_PICK_Sixth|r behind Voone
    .complete -4742,2
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
    .complete 4701,1
    .mob Halycon::10220;Bloodaxe Worg Pup::10221
    .combat
step
    #label Wyrm
    >>Kill |cRXP_ENEMY_Overlord Wyrmthalak|r (last boss). Loot the |cRXP_LOOT_Gemstone of Bloodaxe|r and |cRXP_LOOT_General Drakkisath's Command|r
    .complete -4742,3
    .mob Overlord Wyrmthalak::9568
    .combat
step
    .itemcount 12780,1
    .use 12780 >>Use |cRXP_LOOT_General Drakkisath's Command|r to start the quest
    .collect 12780,1,5089
    .accept 5089 >>Accept General Drakkisath's Command
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bijou|r
    .turnin 5001 >>Turn in Bijou's Belongings
    .accept 5002 >>Accept Message to Maxwell
    .target Bijou::10257
step
    .goto 1428,65.89,21.92
    .bestroute
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tLeave the instance and talk to |cRXP_FRIENDLY_Kibler|r at Flame Crest
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
    .goto 1428,72.26,24.87,30,0
    .goto 1428,74.54,28.28,40,0
    .goto 1428,76.81,35.11,40,0
    .goto 1428,75.68,50.48,40,0
    .goto 1428,84.78,64.14,40,0
    .goto 1428,85.82,68.95
    .safepath fp71-ragged_john
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tRide back to Morgan's Vigil and talk to |cRXP_FRIENDLY_Helendis Riverhorn|r
    .turnin 4701 >>Turn in Put Her Down
    .target Helendis Riverhorn::9562
step
    .goto 1428,84.74,69.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Marshal Maxwell|r
    .turnin 5002 >>Turn in Message to Maxwell
    .accept 5081 >>Accept Maxwell's Mission
    .target Marshal Maxwell::9560
step
    .isOnQuest 5089
    .goto 1428,84.74,69.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Marshal Maxwell|r
    .turnin 5089 >>Turn in General Drakkisath's Command
    .target Marshal Maxwell::9560
step
    .isOnQuest 5081
    .isQuestNotComplete 5081
    .goto 1428,84.78,64.14,40,0
    .goto 1428,75.68,52.19,40,0
    .goto 1428,71.12,48.77,40,0
    .goto 1428,64.30,48.77,40,0
    .goto 1428,62.02,45.36,40,0
    .goto 1428,43.81,47.07,40,0
    .goto 1428,38.12,52.19,40,0
    .goto 1428,33.47,51.52,30,0
    .goto 1428,28.18,42.66,20,0
    .goto 1428,28.11,25.29,15,0
    .goto 1428,32.75,25.34
    .safepath fp71-brm_bs_approach
    .subzone 1583,2 >>Go back into Blackrock Spire with your group for run 2 (this path avoids the dragonkin elites and the Blackrock camp)
step
    >>Kill |cRXP_ENEMY_Highlord Omokk|r, |cRXP_ENEMY_War Master Voone|r and |cRXP_ENEMY_Overlord Wyrmthalak|r again. Loot any Gemstone you still need
    >>|cRXP_WARN_Gemstones drop 27 to 41%: reset the instance and repeat if one is missing (the Upper Blackrock Spire guide picks this up)|r
    .complete 5081,1
    .complete 5081,2
    .complete 5081,3
    .complete -4742,1
    .complete -4742,2
    .complete -4742,3
    .mob War Master Voone::9237;Highlord Omokk::9196;Overlord Wyrmthalak::9568
    .combat
step
    .isQuestComplete 4742
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Scarshield Infiltrator|r (Vaelan) at the start of Hordemar City
    .turnin 4742 >>Turn in Seal of Ascension
    .accept 4743 >>Accept Seal of Ascension
    .target Scarshield Infiltrator::10299
step
    .isNotOnQuest 4742
    .isQuestComplete 5081
    .goto 1428,28.45,26.06
    .deathskip >>Leave the instance and jump into the lava under the Molten Span. Respawn at Flame Crest
step
    .goto 1428,84.74,69.02
    .bestroute
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Marshal Maxwell|r
    .turnin 5081 >>Turn in Maxwell's Mission
    .target Marshal Maxwell::9560
step
    .isQuestComplete 4788
    .goto 1446,66.89,24.03
    .bestroute
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Prospector Ironboot|r at Steamwheedle Port (optional, Mosh'aru chain)
    .turnin 4788 >>Turn in The Final Tablets
    .target Prospector Ironboot::10460
]])

RXPGuides.RegisterGuide([[
#forever
#version 1
#group Attunement guides
#subgroup Alliance
<< Alliance
#name A3 Upper Blackrock Spire
#displayname Upper Blackrock Spire
#next A4 Onyxia
step
    .isNotOnQuest 4743
    .isQuestAvailable 4743
    .goto 1428,32.75,25.34
    .bestroute
    .subzone 1583,2 >>Enter Lower Blackrock Spire with your group (Seal of Ascension: level 57)
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
    .goto 1445,67.46,51.20,30 >>Go to Theramore, Dustwallow Marsh. Bring your group for Emberstrife
    .bestroute
step
    .isOnQuest 4743
    .isQuestNotComplete 4743
    .goto 1445,65.56,50.00,30,0
    .goto 1445,61.75,50.95,40,0
    .goto 1445,57.94,54.76,40,0
    .goto 1445,52.86,63.33,40,0
    .goto 1445,52.86,66.19,40,0
    .goto 1445,51.59,68.10,40,0
    .goto 1445,51.59,80.48,40,0
    .goto 1445,54.37,84.22,15 >>Ride to Emberstrife's Den in the Wyrmbog
    .safepath fp32-ember_den
step
    #completewith next
    .isOnQuest 4743
    .isQuestNotComplete 4743
    .goto 1445,56.66,87.72
    .use 12323 >>Clear the whelps in the den. Place the |cRXP_LOOT_Unforged Seal of Ascension|r on the ground in front of |cRXP_ENEMY_Emberstrife|r before you pull
    .cast 16057
step
    .goto 1445,56.66,87.72
    .use 12300 >>Fight |cRXP_ENEMY_Emberstrife|r (level 61 elite, |cRXP_WARN_group of 3 to 5|r). Below 10% health, use the |cRXP_LOOT_Orb of Draconic Energy|r to control him
    >>Cast |cRXP_WARN_Flames of the Black Flight|r on the seal, then loot the |cRXP_PICK_Forged Seal of Ascension|r
    .complete 4743,1
    .mob Emberstrife::10321
    .combat
step
    .isQuestComplete 4743
    .goto 1428,32.75,25.34
    .bestroute
    .subzone 1583,2 >>Go back to Blackrock Mountain and enter Lower Blackrock Spire
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Scarshield Infiltrator|r (Vaelan) at the start of Hordemar City. |cRXP_WARN_The trash before him respawns: come with your group or clear it|r
    .turnin 4743 >>Turn in Seal of Ascension
    .target Scarshield Infiltrator::10299
step
    +|cRXP_WARN_You carry the Seal of Ascension: you can open Upper Blackrock Spire for your raid. Next: Onyxia|r
]])

RXPGuides.RegisterGuide([[
#forever
#version 1
#group Attunement guides
#subgroup Alliance
<< Alliance
#name A4 Onyxia
#displayname Onyxia
step
    .goto 1428,85.82,68.95
    .bestroute
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Helendis Riverhorn|r at Morgan's Vigil
    >>|cRXP_WARN_Level 48 to start, level 50 for "A Crumpled Up Note"|r
    .accept 4182 >>Accept Dragonkin Menace
    .target Helendis Riverhorn::9562
step
    .isOnQuest 4182
    .isQuestNotComplete 4182
    .goto 1428,83.64,55.60,40,0
    .goto 1428,90.60,43.60,40 >>Ride north to the Terror Wing Path
    .safepath fp71-bs_dragons
step
    #loop
    .goto 1428,90.60,43.60,0
    .goto 1428,81.80,27.80,70,0
    .goto 1428,91.40,32.60,70,0
    .goto 1428,89.80,54.60,70,0
    .goto 1428,81.80,60.00,70,0
    .goto 1428,89.80,54.60,70,0
    .goto 1428,91.40,32.60,70,0
    .goto 1428,81.80,27.80,70,0
    .goto 1428,90.60,43.60,70,0
    >>Kill |cRXP_ENEMY_Black Broodlings|r, |cRXP_ENEMY_Black Dragonspawn|r, |cRXP_ENEMY_Black Wyrmkin|r and one |cRXP_ENEMY_Black Drake|r
    >>|cRXP_WARN_Dragonspawn, Wyrmkin and Drakes are elites (52-54): pull one at a time. A group of 2 is advised for the Drake|r
    .complete 4182,1
    .complete 4182,2
    .complete 4182,3
    .complete 4182,4
    .mob Black Broodling::7047;Black Dragonspawn::7040;Black Drake::7044;Black Wyrmkin::7041
    .combat
step
    .goto 1428,85.82,68.95
    .bestroute
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Helendis Riverhorn|r
    .turnin 4182 >>Turn in Dragonkin Menace
    .accept 4183 >>Accept The True Masters
    .target Helendis Riverhorn::9562
step
    .goto 1433,24.90,44.45
    .bestroute
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Magistrate Solomon|r in the Lakeshire town hall
    .turnin 4183 >>Turn in The True Masters
    .accept 4184 >>Accept The True Masters
    .target Magistrate Solomon::344
step
    .goto 1453,80.21,38.35
    .bestroute
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Highlord Bolvar Fordragon|r in Stormwind Keep
    .turnin 4184 >>Turn in The True Masters
    .accept 4185 >>Accept The True Masters
    .target Highlord Bolvar Fordragon::1748
step
    .goto 1453,80.10,38.17
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lady Katrana Prestor|r
    .complete 4185,1
    .skipgossip
    .target Lady Katrana Prestor::1749
step
    .goto 1453,80.21,38.35
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Highlord Bolvar Fordragon|r
    .turnin 4185 >>Turn in The True Masters
    .accept 4186 >>Accept The True Masters
    .target Highlord Bolvar Fordragon::1748
step
    .goto 1433,24.90,44.45
    .bestroute
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Magistrate Solomon|r
    .turnin 4186 >>Turn in The True Masters
    .accept 4223 >>Accept The True Masters
    .target Magistrate Solomon::344
step
    .goto 1428,84.74,69.02
    .bestroute
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Marshal Maxwell|r at Morgan's Vigil
    .turnin 4223 >>Turn in The True Masters
    .accept 4224 >>Accept The True Masters
    .target Marshal Maxwell::9560
step
    .goto 1428,65.01,23.76
    .bestroute
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ragged John|r at Flame Crest
    >>Keep away from |cRXP_ENEMY_Vahgruk|r (Horde flight master, elite) at 65.6,24.2
    .complete 4224,1
    .skipgossip
    .target Ragged John::9563
step
    .goto 1428,84.74,69.02
    .bestroute
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Marshal Maxwell|r
    .turnin 4224 >>Turn in The True Masters
    .accept 4241 >>Accept Marshal Windsor
    .target Marshal Maxwell::9560
step
    .isOnQuest 4241
    .goto 1427,26.54,72.94
    .bestroute
    .subzone 1584,2 >>Go to Blackrock Mountain (lower level) and enter Blackrock Depths with a group of 5
step
    >>Clear your way to the Detention Block (the prison) and kill |cRXP_ENEMY_High Interrogator Gerstahn|r. Keep his |cRXP_LOOT_Prison Cell Key|r: it opens the cells
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Marshal Windsor|r in his cell
    .turnin 4241 >>Turn in Marshal Windsor
    .accept 4242 >>Accept Abandoned Hope
    .mob High Interrogator Gerstahn::9018
    .target Marshal Windsor::9023
    .combat
step
    .goto 1428,84.74,69.02
    .bestroute
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Marshal Maxwell|r
    .turnin 4242 >>Turn in Abandoned Hope
    .target Marshal Maxwell::9560
step
    .isQuestTurnedIn 4242
    .isQuestAvailable 4322
    .isQuestNotComplete 4322
    .goto 1427,26.54,72.94
    .bestroute
    .subzone 1584,2 >>Back to Blackrock Depths with a group
step
    >>Kill |cRXP_ENEMY_Anvilrage|r dwarves around the Detention Block until one drops |cRXP_LOOT_A Crumpled Up Note|r. Use it to start the quest
    >>|cRXP_WARN_Get it before you kill General Angerforge and Golem Lord Argelmach|r
    .use 11446
    .collect 11446,1,4264,1
    .accept 4264 >>Accept A Crumpled Up Note
    .mob Anvilrage Overseer::8889;Anvilrage Warden::8890;Anvilrage Guardsman::8891;Anvilrage Footman::8892
    .combat
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Marshal Windsor|r
    .turnin 4264 >>Turn in A Crumpled Up Note
    .accept 4282 >>Accept A Shred of Hope
    .target Marshal Windsor::9023
step
    >>Kill |cRXP_ENEMY_General Angerforge|r and |cRXP_ENEMY_Golem Lord Argelmach|r (the Manufactory). Loot both pieces of |cRXP_LOOT_Marshal Windsor's Lost Information|r
    .complete 4282,1
    .complete 4282,2
    .mob General Angerforge::9033;Golem Lord Argelmach::8983
    .combat
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Marshal Windsor|r. Clear the Detention Block first: accepting starts the escort
    >>|cRXP_WARN_Auto-accept is off for this quest. Make sure nobody in the group auto-accepts it|r
    .turnin 4282 >>Turn in A Shred of Hope
    .accept 4322,1 >>Accept Jail Break!
    .target Marshal Windsor::9023
step
    >>Escort |cRXP_FRIENDLY_Marshal Windsor|r while he frees his friends and gets his gear back
    .complete 4322,1
    .target Marshal Windsor::9023
    .combat
step
    .isQuestComplete 4322
    .goto 1427,26.31,77.98
    .deathskip >>Leave the instance and jump into the lava pools next to the BRD portal (lower level). Respawn at Thorium Point
step
    .goto 1428,84.74,69.02
    .bestroute
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Marshal Maxwell|r
    .turnin 4322 >>Turn in Jail Break!
    .accept 6402 >>Accept Stormwind Rendezvous
    .target Marshal Maxwell::9560
step
    .goto 1453,74.17,90.33
    .bestroute
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Squire Rowe|r at the Stormwind gates, wait for |cRXP_FRIENDLY_Reginald Windsor|r to ride in and talk to him
    .turnin 6402 >>Turn in Stormwind Rendezvous
    .skipgossip
    .target Squire Rowe::17804;Reginald Windsor::12580
step
    .isNotOnQuest 99435
    .isQuestAvailable 99435
    .goto 1453,73.61,91.05
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tAccept |cRXP_WARN_The Great Masquerade|r from |cRXP_FRIENDLY_Reginald Windsor|r. On Forever it can come from |cRXP_FRIENDLY_Squire Rowe|r instead: take whichever is offered
    >>|cRXP_WARN_Auto-accept is off: in a group, only one player starts the escort|r
    .accept 6403,1 >>Accept The Great Masquerade
    .target Reginald Windsor::12580;Squire Rowe::17804
step
    .isNotOnQuest 6403
    .isQuestAvailable 6403
    .goto 1453,74.17,90.33
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tAccept |cRXP_WARN_The Great Masquerade|r from |cRXP_FRIENDLY_Squire Rowe|r
    .accept 99435,1 >>Accept The Great Masquerade
    .target Squire Rowe::17804;Reginald Windsor::12580
step
    .goto 1453,79.69,38.82
    >>Follow |cRXP_FRIENDLY_Reginald Windsor|r to Stormwind Keep. Inside the Keep stay back at the arrow and do not help him: let the event play out
    .complete -6403,1
    .complete -99435,1
    .target Reginald Windsor::12580
step
    .goto 1453,80.21,38.35
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Highlord Bolvar Fordragon|r
    .turnin -6403 >>Turn in The Great Masquerade
    .turnin -99435 >>Turn in The Great Masquerade
    .accept 6501 >>Accept The Dragon's Eye
    .target Highlord Bolvar Fordragon::1748
step
    .isOnQuest 6501
    .goto 1452,62.33,36.64,30 >>Go to Everlook, Winterspring
    .bestroute
step
    .goto 1452,64.32,45.42,40,0
    .goto 1452,63.85,50.35,40,0
    .goto 1452,60.09,55.99,40,0
    .goto 1452,58.22,55.99,30,0
    .goto 1452,56.60,52.78,30,0
    .goto 1452,56.36,53.60,20,0
    .goto 1452,55.31,53.84,15,0
    .goto 1452,54.78,53.30,15,0
    .goto 1452,54.51,53.44,15,0
    .goto 1452,54.14,52.84,10,0
    .goto 1452,53.73,52.04,10,0
    .goto 1452,54.55,51.20
    .safepath fp52-haleh_start
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tDo the mountain skip from 56.6,52.8 (follow the arrow, it climbs the slope to the summit) and talk to |cRXP_FRIENDLY_Haleh|r
    >>|cRXP_WARN_Do not step on the blue circle in front of her: it drops you into the cave|r
    .turnin 6501 >>Turn in The Dragon's Eye
    .accept 6502 >>Accept Drakefire Amulet
    .target Haleh::10929
step
    .isOnQuest 6502
    .isQuestNotComplete 6502
    .goto 1452,54.93,51.06
    .deathskip >>Jump off the ledge next to Haleh. Respawn at Everlook
step
    .isOnQuest 6502
    .isQuestNotComplete 6502
    .goto 1428,32.75,25.34
    .bestroute
    .subzone 1583,2 >>Go to Blackrock Spire with a 10-man raid. Someone needs the Seal of Ascension (Upper Blackrock Spire guide)
step
    >>Kill |cRXP_ENEMY_General Drakkisath|r in his throne room behind the Halls of Ascension (end of UBRS). Loot the |cRXP_LOOT_Blood of the Black Dragon Champion|r
    >>|cRXP_WARN_It does not always drop: you may need more than one run|r
    .complete 6502,1
    .mob General Drakkisath::10363
    .combat
step
    .isQuestComplete 6502
    .goto 1452,62.33,36.64,30 >>Go to Everlook, Winterspring
    .bestroute
step
    .goto 1452,64.32,45.42,40,0
    .goto 1452,63.85,50.35,40,0
    .goto 1452,60.09,55.99,40,0
    .goto 1452,58.22,55.99,30,0
    .goto 1452,56.60,52.78,30,0
    .goto 1452,56.36,53.60,20,0
    .goto 1452,55.31,53.84,15,0
    .goto 1452,54.78,53.30,15,0
    .goto 1452,54.51,53.44,15,0
    .goto 1452,54.14,52.84,10,0
    .goto 1452,53.73,52.04,10,0
    .goto 1452,54.55,51.20
    .safepath fp52-haleh_start
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tMountain skip again and talk to |cRXP_FRIENDLY_Haleh|r
    .turnin 6502 >>Turn in Drakefire Amulet
    .target Haleh::10929
step
    +|cRXP_WARN_You have the Drakefire Amulet: you are attuned to Onyxia's Lair|r
]])
