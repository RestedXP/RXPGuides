RXPGuides.RegisterGuide([[
#classic
#season 2
#group RestedXP Nightmare Incursion Dailies
#name (25-32) Duskwood Nightmare Incursion

step
    #optional
    #completewith travel
    +|cRXP_WARN_You have outleveled this incursion zone and will get diminished XP rewards for questing here. Select a different incursion from the list that is more appropriate for your level.|r
    >>|cRXP_WARN_Reputation gains are the same regardless of your level, however once you reach level 53 you can just do an infinite profession material turnin quest for extremely quick rep|r
    .xp <33,1
    .xp >53,1
step
#ah
    >>Buy 10 |T133852:0|t[|cRXP_LOOT_Nightmare Moss|r], 10 |T134314:0|t[|cRXP_LOOT_Dream-Touched Dragonscale|r] and 10 |T134575:0|t[|cRXP_LOOT_Cold Iron Ore|r] from the auction house before heading to Duskwood
    >>|cRXP_WARN_Skip this step if you're not near an auction house location or the prices don't seem worth it. These three quests give a combined amount of 16.000xp and 225 reputation|r
    .collect 219399,10 --Nightmare Moss
    .collect 219402,10 --Dream-Touched Dragonscale
    .collect 219401,10 --Cold Iron Ore
    .maxlevel 53
step
#completewith next
.zone Duskwood >> |cRXP_WARN_Travel to Duskwood. Make sure you have plenty of QuestLog space. You will need to hold from 12 to 15 quests at once from the incursion in the log|r
.maxlevel 53
step
    #label travel
  .goto 1431/0,-438.800,-10793.400,30 >> Head to the path leading into the Twilight Grove
  .maxlevel 53
step
    .goto 1431/0,-376.600,-10768.500,30 >> Go up the path
    .maxlevel 53
step
    >>Look for a Quartermaster of |cRXP_FRIENDLY_The Emerald Wardens|r in the marked location and buy your rune from them
    .goto Duskwood,45.6,51.2
    .target Quartermaster Falinar
    .collect 221480,1 << Mage --Spell Notes: Molten Armor
    .collect 221481,1 << Priest --Nihilist Epiphany
    .collect 221482,1 << Warlock --Rune of Affliciton
    .collect 221483,1 << Shaman --Rune of Burn
    .collect 221511,1 << Warrior --Rune of the Protector
    .collect 221512,1 << Rogue --Rune of Alclarity
    .collect 221515,1 << Hunter --Rune of Detonation
    .collect 221517,1 << Druid --Rune of Bloodshed
    .collect 223288,1 << Paladin --Rune of the Hammer
    .train 431705,1 << Priest
    .train 429308,1 << Mage
    .train 431747,1 << Warlock
    .train 416066,1 << Shaman
    .train 432297,1 << Rogue
    .train 431611,1 << Hunter
    .train 431447,1 << Druid
    .train 429261,1 << Paladin
    .train 427080,1 << Warrior
    .maxlevel 53
step
    #completewith next
    .train 431705 >>|cRXP_WARN_Use the|r |T135791:0|t[|cRXP_FRIENDLY_Nihilist Epiphany|r] |cRXP_WARN_to train|r |T132886:0|t[Void Zone] << Priest
    .train 429308 >>|cRXP_WARN_Use the|r |T134939:0|t[|cRXP_FRIENDLY_Spell Notes: Molten Armor|r] |cRXP_WARN_to train|r |T132221:0|t[Molten Armor] << Mage
    .train 431747 >>|cRXP_WARN_Use the|r |T134419:0|t[|cRXP_FRIENDLY_Rune of Affliction|r] |cRXP_WARN_to train|r |T136228:0|t[Unstable Affliction] << Warlock
    .train 416066 >>|cRXP_WARN_Use the|r |T134419:0|t[|cRXP_FRIENDLY_Rune of Burn|r] |cRXP_WARN_to train|r |T135822:0|t[Burn] << Shaman
    .train 432297 >>|cRXP_WARN_Use the|r |T134419:0|t[|cRXP_FRIENDLY_Rune of Alclarity|r] |cRXP_WARN_to train|r |T236269:0|t[Cut to the Chase] << Rogue
    .train 431611 >>|cRXP_WARN_Use the|r |T134419:0|t[|cRXP_FRIENDLY_Rune of Detonation|r] |cRXP_WARN_to train|r |T133713:0|t[T.N.T.] << Hunter
    .train 431447 >>|cRXP_WARN_Use the|r |T134419:0|t[|cRXP_FRIENDLY_Rune of Bloodshed|r] |cRXP_WARN_to train|r |T304501:0|t[Gore] << Druid
    .train 429261 >>|cRXP_WARN_Use the|r |T134419:0|t[|cRXP_FRIENDLY_Rune of the Hammer|r] |cRXP_WARN_to train|r |T236262:0|t[Improved Hammer of Wrath] << Paladin
    .use 221480 << Mage -- Spell Notes: Molten Armor
    .use 221481 << Priest --Nihilist Epiphany
    .use 221482 << Warlock --Rune of Affliciton
    .use 221483 << Shaman --Rune of Burn
    .use 221512 << Rogue --Rune of Alclarity
    .use 221515 << Hunter --Rune of Detonation
    .use 221517 << Druid --Rune of Bloodshed
    .use 223288,1 << Paladin --Rune of the Hammer
    .train 431705,1 << Priest
    .train 429308,1 << Mage
    .train 431747,1 << Warlock
    .train 416066,1 << Shaman
    .train 432297,1 << Rogue
    .train 431611,1 << Hunter
    .train 431447,1 << Druid
    .train 429261,1 << Paladin
    .train 427080,1 << Warrior
    .maxlevel 53
step
    .goto Duskwood,45.6,51.2
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Quartermaster Falinar|r
    .vendor >> |cRXP_BUY_Buy up to 5|r |T134718:0|t[Greater Healing Potions] |cRXP_BUY_from him if you want.|r |cRXP_WARN_These can only be used within the incursion zones|r
    .target Quartermaster Falinar
    .xp >40,1
    .maxlevel 53
step
    .goto Duskwood,45.6,51.2
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Quartermaster Falinar|r
    .vendor >> |cRXP_BUY_Buy up to 5|r |T236885:0|t[Major Healing Potions] |cRXP_BUY_from him if you want.|r |cRXP_WARN_These can only be used within the incursion zones|r
    .target Quartermaster Falinar
    .xp <40,1
    .maxlevel 53
step
    #optional
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Field Captain Palandar|r
    .goto Duskwood,45.6,51.2
    .accept 81739 >> Accept Duskwood Mission X: Nightmare Moss
    .accept 81740 >> Accept Duskwood Mission XI: Cold Iron Ore
    .accept 81741 >> Accept Duskwood Mission XII: Dream-Touched Dragonscale
    .itemcount 219399,10 --Nightmare Moss
    .itemcount 219401,10 --Cold Iron Ore
    .itemcount 219402,10 --Dream-Touched Dragonscale
    .maxlevel 53
step
    #optional
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Field Captain Palandar|r
    .goto Duskwood,45.6,51.2
    .accept 81739 >> Accept Duskwood Mission X: Nightmare Moss
    .itemcount 219399,10 --Nightmare Moss
    .maxlevel 53
step
    #optional
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Field Captain Palandar|r
    .goto Duskwood,45.6,51.2
    .accept 81740 >> Accept Duskwood Mission XI: Cold Iron Ore
    .itemcount 219401,10 --Cold Iron Ore
    .maxlevel 53
step
    #optional
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Field Captain Palandar|r
    .goto Duskwood,45.6,51.2
    .accept 81741 >> Accept Duskwood Mission XII: Dream-Touched Dragonscale
    .itemcount 219402,10 --Dream-Touched Dragonscale
    .maxlevel 53
step
    #optional
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Field Captain Palandar|r
    .goto Duskwood,45.6,51.2
    .turnin -81739 >> Turn in Duskwood Mission X: Nightmare Moss
    .turnin -81740 >> Turn in Duskwood Mission XI: Cold Iron Ore
    .turnin -81741 >> Turn in Duskwood Mission XII: Dream-Touched Dragonscale
    .isOnQuest 81739
    .isOnQuest 81740
    .maxlevel 53
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Field Captain Palandar|r
    >>|cRXP_WARN_You will now do an incursion quest loop. All of these quests can be completed in a party making them even more efficient. If u see any players near the questgiver try to form a group. If you find a couple players you can also do the boss quests that wouldn't be soloable otherwise|r
    .goto Duskwood,45.6,51.2
    .target Field Captain Palandar
    .accept 81730 >> Accept Duskwood Mission I: Defeat Worgen
    .accept 81731 >> Accept Duskwood Mission II: Defeat Ogres
    .accept 81732 >> Accept Duskwood Mission III: Defeat Dragonkin
    .accept 81733 >> Accept Duskwood Mission IV: Ogre Intelligence
    .accept 81734 >> Accept Duskwood Mission V: Worgen Intelligence
    .accept 81735 >> Accept Duskwood Mission VI: Dragon Intelligence
    .accept 81736 >> Accept Duskwood Mission VII: Recover Shadowscythe
    .accept 81737 >> Accept Duskwood Mission VIII: Recover Ogre Magi Text
    .accept 81738 >> Accept Duskwood Mission IX: Recover Dragon Egg
    .accept 81745 >> Accept Duskwood Mission XVI: Rescue Kroll Mountainshade
    .accept 81746 >> Accept Duskwood Mission XVII: Rescue Alara Grovemender
    .accept 81747 >> Accept Duskwood Mission XVII: Rescue Elenora Marshwalker
    .maxlevel 53
step
.group 3
    .goto Duskwood,45.6,51.2
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Field Captain Palandar|r
    >>|cRXP_WARN_If you're in a group consider taking the elite kill quests as well. The bosses you will need to kill for these quests have massive amounts of HP and might be challenging depending on your group|r
    .accept 81742 >> Accept Duskwood Mission XIII: Defeat Ylanthrius
    .accept 81743 >> Accept Duskwood Mission XIV: Defeat Vvarc'zul
    .accept 81744 >> Accept Duskwood Mission XV: Defeat Amokarok
    .maxlevel 53
step
    #completewith next
    +|cRXP_WARN_Click on the portal next to the questgiver|r to be phased into the Emerald Dream
    .maxlevel 53
step
    .goto Duskwood,47.07,49.64,10 >> Head out of the Twilight Grove |cRXP_WARN_once inside the Emerald Dream|r
    .maxlevel 53
step
    #sticky
    #label Ogres
    >>Kill |cRXP_ENEMY_Deranged Ogres|r and |cRXP_ENEMY_Demented Fire Weavers|r as you complete other objectives
    .complete 81731,1
    .complete 81731,2
    .mob Deranged Ogre
    .mob Demented Fire Weaver
    .maxlevel 53
step
    .goto Duskwood,32.48,69.60
    .gossipoption 122140 >> Talk to |cRXP_FRIENDLY_Elenora Marshwalker|r laying on the ground. She should start following you around
    >>|cRXP_WARN_If she's not there that means someone else is escorting her, skip this step if u can't find her|r
    .target Elenora Marshwalker
    .maxlevel 53
step
    #completewith next
    +|cRXP_WARN_Be careful, if you die all of escort NPCs following you will return to where you picked them up and you will have to find them again|r
    >>|cRXP_WARN_The escort NPC will also stop following you 15 minutes after you pick them up so try to be quick!|r
    .maxlevel 53
step
    .goto Duskwood,35.67,80.35
    >>Enter the cave and loot the [|cRXP_LOOT_Ogre Magi Text|r] laying on the platform in the middle of it
    .complete 81737,1 --Ogre Magi Text(1)
    .maxlevel 53
step
    .goto Duskwood,36.62,83.75
    >>Head deeper into the cave and talk to |cRXP_FRIENDLY_Dreamwarden Thalinar|r to receive the |T134939:0|t[|cRXP_LOOT_Intelligence Report|r]
    .complete 81733,1
    .target Dreamwarden Thalinar
    .skipgossip
    .maxlevel 53
step
    .goto Duskwood,37.6,84.6
    .group 3
    >>|cRXP_WARN_Kill|r |cRXP_ENEMY_Vvarc'Zul|r|cRXP_WARN_. Be careful as he has a massive health pool, casts|r |T135812:0|t[Fireball] |cRXP_WARN_and summons|r |T135819:0|t[Fire Elemental] |cRXP_WARN_adds|r
    .complete 81743,1 --Vvarc'Zul slain
    .target Vvarc'Zul
    .isOnQuest 81743
    .maxlevel 53
step
    #sticky
    #label Dragons
    #requires Ogres
    >>Kill |cRXP_ENEMY_Nightterror Whelps|r and |cRXP_ENEMY_Wyrmkin Terrorwalkers|r as you complete other objectives
    .complete 81732,1
    .complete 81732,2
    .mob Nightterror Whelp
    .mob Wyrmkin Terrorwalker
    .maxlevel 53
step
    #requires Ogres
    .goto Duskwood,48.92,72.97
    >>Loot the [|cRXP_LOOT_Unhatched Green Dragon Egg|r] laying on the ground next to the tree stump
    .complete 81738,1
    .maxlevel 53
step
    .goto Duskwood,49.13,77.41
    .gossipoption 122136 >> Talk to |cRXP_FRIENDLY_Alara Grovemender|r laying on the ground. She should start following you around
    >>|cRXP_WARN_If she's not there that means someone else is escorting her, skip this step if u can't find her|r
    .target Alara Grovemender
    .maxlevel 53
step
    .goto Duskwood,50.6,77.0
    >>Head into the farmhouse and talk to |cRXP_FRIENDLY_Dreamwarden Amalia|r to receive the |T134939:0|t[|cRXP_LOOT_Intelligence Report|r]
    .complete 81735,1
    .target Dreamwarden Amalia
    .skipgossip
    .maxlevel 53
step
    .goto Duskwood,49.8,74.4
    .group 3
    >>|cRXP_WARN_Kill|r |cRXP_ENEMY_Ylanthrius|r. |cRXP_WARN_A green dragon flying above the farm|r|cRXP_WARN_. He has a massive healtpool, is immune to nature spells, has a|r|T132338:0|t[Cleave]|cRXP_WARN_,|r |T134307:0|t[Tail Swipe] |cRXP_WARN_and|r |T135745:0|t[Summons] |cRXP_WARN_a|r |cRXP_ENEMY_Drake|r |cRXP_WARN_add that casts a frontal breath which does enormous damage|r
    .complete 81742,1 --Ylanthrius (1)
    .maxlevel 53
    .isOnQuest 81742
step
    #sticky
    #label Worgen
    #requires Dragons
    >>Kill |cRXP_ENEMY_Nightmare Runners|r and |cRXP_ENEMY_Nightmare Weavers|r as you complete other objectives
    .complete 81730,1
    .complete 81730,2
    .mob Nightmare Runner
    .mob Nightmare Weaver
    .maxlevel 53
step
    #requires Dragons
    .goto Duskwood,66.32,76.09
    >>Head inside the barn and talk to |cRXP_FRIENDLY_Dreamwarden Dorilar|r to receive the |T134939:0|t[|cRXP_LOOT_Intelligence Report|r]
    >>|cRXP_WARN_DO NOT ENTER DEEP INTO THE BARN. You can talk to the NPC through the inside wall by targetting him and then using your interact key|r
    >>|cRXP_WARN_Be careful as the boss|r |cRXP_ENEMY_Amokarok|r |cRXP_WARN_is standing right next to the NPC|r
    .complete 81734,1
    .target Dreamwarden Dorilar
    .skipgossip
    .maxlevel 53
step
    .goto Duskwood,66.0,76.4
    >>|cRXP_WARN_Kill|r |cRXP_ENEMY_Amokarok|r |cRXP_WARN_inside the barn. Be careful as he has a massive health pool and casts an AoE|r |T136183:0|t[Fear]
    .complete 81744,1 --Amokarok (1)
    .maxlevel 53
    .isOnQuest 81744
    .group 3
step
    .goto Duskwood,65.99,69.36
    .gossipoption 122146 >> Talk to |cRXP_FRIENDLY_Kroll Mountainshade|r laying on the ground. He should start following you around
    >>|cRXP_WARN_If he's not there that means someone else is escorting him, skip this step if u can't find him|r
    .target Kroll Mountainshade
    .maxlevel 53
step
    .goto Duskwood,65.60,67.30
    >>Go to the second floor of the larger house and loot the box there for the |T135138:0|t[|cRXP_LOOT_Shadowscythe|r]
    .complete 81736,1
    .maxlevel 53
step
    #requires Worgen
    .goto Duskwood,70.93,65.90
    .goto Duskwood,44.60,65.80,50 >> Head west untill you reach an out of bounds area of the nightmare. Your screen will start glowing green and you will be teleported back near the entrance. |cRXP_WARN_Don't worry the NPCs you're escorting will follow you back|r
    .maxlevel 53
step
    #completewith next
    .goto 1431/0,-421.400,-10360.601,5 >> Head back to the nightmare portal. |cRXP_WARN_Do not die on the way or the escort quests will fail! If you safely reach the portal all three quests should complete|r
    .maxlevel 53
step
    .goto 1431/0,-421.400,-10360.601
    >>Make sure you got the credit for all of the escort quests. They should all complete by the time you reach the portal. |cRXP_WARN_Try moving back and forth a bit if you don't get the credit|r
    .complete 81745,1
    .complete 81746,1
    .complete 81747,1
    .maxlevel 53
step
    .goto Duskwood,46.63,47.90,5 >> Return to the portal you ussed to phase into the emerald dream and |cRXP_WARN_click it to phase back into the normal world|r
    .maxlevel 53
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Field Captain Palandar|r
    .goto Duskwood,45.6,51.2
    .target Field Captain Palandar
    .turnin 81730 >> Turn in Duskwood Mission I: Defeat Worgen
    .turnin 81731 >> Turn in Duskwood Mission II: Defeat Ogres
    .turnin 81732 >> Turn in Duskwood Mission III: Defeat Dragonkin
    .turnin 81733 >> Turn in Duskwood Mission IV: Ogre Intelligence
    .turnin 81734 >> Turn in Duskwood Mission V: Worgen Intelligence
    .turnin 81735 >> Turn in Duskwood Mission VI: Dragon Intelligence
    .turnin 81736 >> Turn in Duskwood Mission VII: Recover Shadowscythe
    .turnin 81737 >> Turn in Duskwood Mission VIII: Recover Ogre Magi Text
    .turnin 81738 >> Turn in Duskwood Mission IX: Recover Dragon Egg
    .turnin 81745 >> Turn in Duskwood Mission XVI: Rescue Kroll Mountainshade
    .turnin 81746 >> Turn in Duskwood Mission XVII: Rescue Alara Grovemender
    .turnin 81747 >> Turn in Duskwood Mission XVII: Rescue Elenora Marshwalker
    .maxlevel 53
step
    #optional
    .goto Duskwood,45.6,51.2
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Field Captain Palandar|r
    >>|cRXP_WARN_If you're in a group consider taking the elite kill quests as well. The bosses you will need to kill for these quests have massive amounts of HP and might be challenging depending on your group|r
    .turnin -81742 >> Turn in Duskwood Mission XIII: Defeat Ylanthrius
    .turnin -81743 >> Turn in Duskwood Mission XIV: Defeat Vvarc'zul
    .turnin -81744 >> Turn in Duskwood Mission XV: Defeat Amokarok
    .maxlevel 53
    .target Field Captain Palandar
step
    #optional
    +|cRXP_WARN_You have outleveled all incursion zones and will no longer be able to accept any of the regular quests in any of them|r
    >>If you're looking to gain reputation with the|r |cRXP_FRIENDLY_Emerald Wardens|r there are infinitely repeatable quests in Feralas where you can turn in 10 of either |T134186:0|t[|cRXP_LOOT_Moonroot|r], |T133594:0|t[|cRXP_LOOT_Greater Moonstones|r] or |T134312:0|t[|cRXP_LOOT_Moon Dragon Scales|r]
    >>These quests give no xp or gold and reward 100 reputation per turnin. Buy as many of the most cost efficient materials from the Auction House as you need and head to Feralas to turn them in
    .xp <53,1
step
    #optional
    +You have completed this Nightmare Incursion loop. The quests will become available again after the daily reset. |cRXP_WARN_Select a differnt guide from the list to continue|r
]])

RXPGuides.RegisterGuide([[
#classic
#season 2
#group RestedXP Nightmare Incursion Dailies
#name (40-49) Ashenvale Nightmare Incursion

step
    #optional
    #completewith next
    +|cRXP_WARN_You have outleveled this incursion zone and will get diminished XP rewards for questing here. Select a different incursion from the list that is more appropriate for your level.|r
    >>|cRXP_WARN_Reputation gains are the same regardless of your level, however once you reach level 53 you can just do an infinite profession material turnin quest for extremely quick rep|r
    .xp <48,1
    .xp >53,1
step
    #ah
    >>Buy 10 |T132106:0|t[|cRXP_LOOT_Dreamroot|r], 10 |T134306:0|t[|cRXP_LOOT_Dream-Infused Dragonscale|r] and 10 |T133848:0|t[|cRXP_LOOT_Fool's Gold Dust|r] from the auction house before heading to Ashenvale
    >>|cRXP_WARN_Skip this step if you're not near an auction house location or the prices don't seem worth it. These three quests give a combined amount of 25.875xp and 225 reputation|r
    .collect 219444,10 --Dreamroot
    .collect 219446,10 --Dream-Infused Dragonscale
    .collect 219445,10 --Fool's Gold Dust
    .maxlevel 53
step
    #season 2
    #label travel
    .zone Ashenvale >> Travel to Ashenvale. |cRXP_WARN_Make sure you have plenty of QuestLog space. You will need to hold from 12 to 15 quests at once from the incursion in the log|r
    >>If you have the Azshara flight path it's quicker to fly there and then run to Ashenvale than to fly to Astranaar << Alliance
    .maxlevel 53
step
    .goto Ashenvale,88.9,42.0,65 >>Travel to the Emerald Nightmare portal area in north eastern Ashenvale
    .maxlevel 53
step
    .goto Ashenvale,89.60,40.61
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Quartermaster Kyleen|r
    .target Quartermaster Kyleen
    .collect 221480,1 << Mage --Spell Notes: Molten Armor
    .collect 221481,1 << Priest --Nihilist Epiphany
    .collect 221482,1 << Warlock --Rune of Affliciton
    .collect 221483,1 << Shaman --Rune of Burn
    .collect 221511,1 << Warrior --Rune of the Protector
    .collect 221512,1 << Rogue --Rune of Alclarity
    .collect 221515,1 << Hunter --Rune of Detonation
    .collect 221517,1 << Druid --Rune of Bloodshed
    .collect 223288,1 << Paladin --Rune of the Hammer
    .train 431705,1 << Priest
    .train 429308,1 << Mage
    .train 431747,1 << Warlock
    .train 416066,1 << Shaman
    .train 432297,1 << Rogue
    .train 431611,1 << Hunter
    .train 431447,1 << Druid
    .train 429261,1 << Paladin
    .train 427080,1 << Warrior
    .maxlevel 53
step
    #completewith next
    .train 431705 >>|cRXP_WARN_Use the|r |T135791:0|t[|cRXP_FRIENDLY_Nihilist Epiphany|r] |cRXP_WARN_to train|r |T132886:0|t[Void Zone] << Priest
    .train 429308 >>|cRXP_WARN_Use the|r |T134939:0|t[|cRXP_FRIENDLY_Spell Notes: Molten Armor|r] |cRXP_WARN_to train|r |T132221:0|t[Molten Armor] << Mage
    .train 431747 >>|cRXP_WARN_Use the|r |T134419:0|t[|cRXP_FRIENDLY_Rune of Affliction|r] |cRXP_WARN_to train|r |T136228:0|t[Unstable Affliction] << Warlock
    .train 416066 >>|cRXP_WARN_Use the|r |T134419:0|t[|cRXP_FRIENDLY_Rune of Burn|r] |cRXP_WARN_to train|r |T135822:0|t[Burn] << Shaman
    .train 432297 >>|cRXP_WARN_Use the|r |T134419:0|t[|cRXP_FRIENDLY_Rune of Alclarity|r] |cRXP_WARN_to train|r |T236269:0|t[Cut to the Chase] << Rogue
    .train 431611 >>|cRXP_WARN_Use the|r |T134419:0|t[|cRXP_FRIENDLY_Rune of Detonation|r] |cRXP_WARN_to train|r |T133713:0|t[T.N.T.] << Hunter
    .train 431447 >>|cRXP_WARN_Use the|r |T134419:0|t[|cRXP_FRIENDLY_Rune of Bloodshed|r] |cRXP_WARN_to train|r |T304501:0|t[Gore] << Druid
    .train 429261 >>|cRXP_WARN_Use the|r |T134419:0|t[|cRXP_FRIENDLY_Rune of the Hammer|r] |cRXP_WARN_to train|r |T236262:0|t[Improved Hammer of Wrath] << Paladin
    .use 221480 << Mage -- Spell Notes: Molten Armor
    .use 221481 << Priest --Nihilist Epiphany
    .use 221482 << Warlock --Rune of Affliciton
    .use 221483 << Shaman --Rune of Burn
    .use 221512 << Rogue --Rune of Alclarity
    .use 221515 << Hunter --Rune of Detonation
    .use 221517 << Druid --Rune of Bloodshed
    .use 223288,1 << Paladin --Rune of the Hammer
    .train 431705,1 << Priest
    .train 429308,1 << Mage
    .train 431747,1 << Warlock
    .train 416066,1 << Shaman
    .train 432297,1 << Rogue
    .train 431611,1 << Hunter
    .train 431447,1 << Druid
    .train 429261,1 << Paladin
    .train 427080,1 << Warrior
    .maxlevel 53
step
    #season 2
    #optional
    .goto Ashenvale,89.53,40.71
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Field Captain Hannalah|r
    .accept 81777 >> Accept Ashenvale Mission X: Dreamroot
    .accept 81778 >> Accept Ashenvale Mission XI: Fool's Gold Dust
    .accept 81779 >> Accept Ashenvale Mission XII: Dream-Infused Dragonscale
    .itemcount 219444,10 --Dreamroot
    .itemcount 219446,10 --Dream-Infused Dragonscale
    .itemcount 219445,10 --Fool's Gold Dust
    .maxlevel 53
step
    #season 2
    #optional
    .goto Ashenvale,89.53,40.71
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Field Captain Hannalah|r
    .accept 81777 >> Accept Ashenvale Mission X: Dreamroot
    .itemcount 219444,10 --Dreamroot
    .maxlevel 53
step
    #season 2
    #optional
    .goto Ashenvale,89.53,40.71
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Field Captain Hannalah|r
    .accept 81778 >> Accept Ashenvale Mission XI: Fool's Gold Dust
    .itemcount 219445,10 --Fool's Gold Dust
    .maxlevel 53
step
    #season 2
    #optional
    .goto Ashenvale,89.53,40.71
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Field Captain Hannalah|r
    .accept 81779 >> Accept Ashenvale Mission XII: Dream-Infused Dragonscale
    .itemcount 219446,10 --Dream-Infused Dragonscale
    .maxlevel 53
step
    #season 2
    #optional
    .goto Ashenvale,89.53,40.71
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Field Captain Hannalah|r
    .turnin -81777 >> Turn in Ashenvale Mission X: Dreamroot
    .turnin -81778 >> Turn in Ashenvale Mission XI: Fool's Gold Dust
    .turnin -81779 >> Turn in Ashenvale Mission XII: Dream-Infused Dragonscale
    .maxlevel 53
step
    #season 2
    .goto Ashenvale,89.53,40.71
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Field Captain Hannalah|r
    .accept 81772 >>Accept Ashenvale Mission V: Satyr Intelligence
    .accept 81785 >>Accept Ashenvale Mission XVIII: Rescue Maseara Autumnmoon
    .accept 81784 >>Accept Ashenvale Mission XVII: Rescue Doran Dreambough
    .accept 81783 >>Accept Ashenvale Mission XVI: Rescue Alyssian Windcaller
    .accept 81776 >>Accept Ashenvale Mission IX: Recover Dream-Touched Dragonegg
    .accept 81775 >>Accept Ashenvale Mission VIII: Recover Azsharan Prophecy
    .accept 81774 >>Accept Ashenvale Mission VII: Recover Dreamengine
    .accept 81773 >>Accept Ashenvale Mission VI: Treant Intelligence
    .accept 81771 >>Accept Ashenvale Mission IV: Dragon Intelligence
    .accept 81768 >>Accept Ashenvale Mission I: Defeat Satyrs
    .accept 81769 >>Accept Ashenvale Mission II: Defeat Treants
    .accept 81770 >>Accept Ashenvale Mission III: Defeat Dragonkin
    .target Field Captain Hannalah
    .maxlevel 53
step
    #season 2
    #optional
    .group 3
    .goto Ashenvale,89.53,40.71
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Field Captain Hannalah|r
    >>|cRXP_WARN_If you're in a group consider taking the elite kill quests as well. The bosses you will need to kill for these quests have massive amounts of HP and might be challenging depending on your group|r
    .accept 81780 >> Accept Ashenvale Mission XIII: Defeat Larsera
    .accept 81781 >> Accept Ashenvale Mission XIV: Defeat Zalius
    .accept 81782 >> Accept Ashenvale Mission XV: Shredder 9000
    .maxlevel 53
step
    #season 2
    .goto Ashenvale,89.60,40.61
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Quartermaster Kyleen|r
    .vendor >>|cRXP_BUY_Buy up to 5|r |T236885:0|t[Major Healing Potions] |cRXP_BUY_from her if you want|r 
    >>|cRXP_WARN_These can only be used within the incursion zones|r
    .target Quartermaster Kyleen
    .maxlevel 53
step
    #season 2
    #completewith IncursionsComplete
    .goto Ashenvale,93.94,38.21,25,0
    .goto Ashenvale,94.27,35.13,20 >>Enter the |cRXP_PICK_Emerald Dream Portal|r
    >>|cRXP_WARN_Run straight past the |cRXP_ENEMY_Satyr's|r, |cRXP_ENEMY_Felhounds|r and |cRXP_ENEMY_Imps|r. They will reset agro as you enter the portal|r
    .aura 444759
    .maxlevel 53
step
    #season 2
    #completewith EllodarReport
    >>Kill |cRXP_ENEMY_Wyrmkin Nightstalkers|r and |cRXP_ENEMY_Terror Whelps|r
    >>|cRXP_WARN_Be careful.|r |cRXP_ENEMY_Wyrmkin Nightstalkers|r |cRXP_WARN_are lvl 41 elites|r
    .complete 81770,1 --Wyrmkin Nightstalker slain: 3/3
    .mob +Wyrmkin Nightstalker
    .complete 81770,2 --Terror Whelp slain: 10/10
    .mob +Terror Whelp 
    .maxlevel 53
step
    #season 2
    .goto Ashenvale,87.24,43.58
    .gossipoption 122139 >>Talk to |cRXP_FRIENDLY_Doran Dreambough|r. He should start following you around.
    .target Doran Dreambough
    .isOnQuest 81784
    .maxlevel 53
step
    #completewith next
    +|cRXP_WARN_Be careful, if you die all of escort NPCs following you will return to where you picked them up and you will have to find them again|r
    >>|cRXP_WARN_The escort NPC will also stop following you 15 minutes after you pick them up so try to be quick!|r
    .maxlevel 53
step
    #season 2
    .goto Ashenvale,86.11,45.87
    >>Loot a |cRXP_LOOT_Dream-Touched Dragon Egg|r on the ground
    .complete 81776,1 --Dream-Touched Dragon Egg: 1/1
    .maxlevel 53
step
    #season 2
    .group 3
    .goto Ashenvale,86.0,46.0
    >>|cRXP_WARN_Kill|r |cRXP_ENEMY_Larsera|r|cRXP_WARN_. She has a massive healtpool, is immune to nature spells, has a|r|T132338:0|t[Cleave]|cRXP_WARN_,|r |T134307:0|t[Tail Swipe] |cRXP_WARN_and|r |T135745:0|t[Summons] |cRXP_WARN_a|r |cRXP_ENEMY_Drake|r |cRXP_WARN_add that casts a frontal breath which does enormous damage|r
    .complete 81780,1 --Defeat Larsera
    .isOnQuest 81780
    .maxlevel 53
step
    #season 2
    #label EllodarReport
    .goto Ashenvale,83.64,45.43
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dreamwarden Ellodar|r
    .complete 81771,1 --Intelligence Report: Forest Song: 1/1
    .target Dreamwarden Ellodar
    .skipgossip
    .maxlevel 53
step
    #season 2
    .goto Ashenvale,81.54,48.54
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dreamwarden Mandoran|r
    .complete 81772,1 --Intelligence Report: Satyrnaar: 1/1
    .target Dreamwarden Mandoran
    .skipgossip
    .maxlevel 53
step
    #season 2
    #completewith MasearaAut
    .goto Ashenvale,80.74,51.19,0
    .goto Ashenvale,80.72,50.24,0
    .goto Ashenvale,80.74,51.19,0
    .goto Ashenvale,79.89,49.31,0
    .goto Ashenvale,80.78,48.47,0
    .goto Ashenvale,81.72,48.52,0
    .goto Ashenvale,82.20,50.18,0
    .goto Ashenvale,80.00,46.71,0
    .goto Ashenvale,78.29,44.73,0
    .goto Ashenvale,80.72,50.24,0
    >>Kill |cRXP_ENEMY_Dreamfire Betrayers|r and |cRXP_ENEMY_Dreamfire Hellcallers|r
    .complete 81768,2 --Dreamfire Betrayer slain: 10/10
    .mob +Dreamfire Betrayer
    .complete 81768,1 --Dreamfire Hellcaller slain: 10/10
    .mob +Dreamfire Hellcaller
    .maxlevel 53
step
    #season 2
    .goto 1440/1,-2950.700,2791.700
    >>Loot the |cRXP_LOOT_Azsharan Prophecy|r on the ground
    .complete 81775,1 --Azsharan Prophecy: 1/1
    .maxlevel 53
step
    #season 2
    #label MasearaAut
    #season 2
    .goto 1440/1,-2978.000,2739.500
    .gossipoption 122150 >>Talk to |cRXP_FRIENDLY_Maseara Autumnmoon|r. She should start following you around
    .target Maseara Autumnmoon
    .isOnQuest 81785
    .maxlevel 53
step
    #season 2
    #loop
    .goto Ashenvale,80.74,51.19,0
    .goto Ashenvale,80.72,50.24,0
    .goto Ashenvale,80.74,51.19,50,0
    .goto Ashenvale,79.89,49.31,50,0
    .goto Ashenvale,80.78,48.47,50,0
    .goto Ashenvale,81.72,48.52,50,0
    .goto Ashenvale,82.20,50.18,50,0
    .goto Ashenvale,80.00,46.71,50,0
    .goto Ashenvale,78.29,44.73,50,0
    .goto Ashenvale,80.72,50.24,50,0
    >>Kill |cRXP_ENEMY_Dreamfire Betrayers|r and |cRXP_ENEMY_Dreamfire Hellcallers|r
    .complete 81768,2 --Dreamfire Betrayer slain: 10/10
    .mob +Dreamfire Betrayer
    .complete 81768,1 --Dreamfire Hellcaller slain: 10/10
    .mob +Dreamfire Hellcaller
    .maxlevel 53
step
    #season 2
    .goto 1440/1,-3394.600,2540.900
    >>Open the |cRXP_PICK_Vibrating Crate|r. Loot it for the |cRXP_LOOT_Dreamengine|r
    .complete 81774,1 --Dreamengine: 1/1
    .maxlevel 53
step
    #season 2
    #completewith next
    .goto Ashenvale,90.14,58.08,10 >>Enter Kargathia Keep
    >>|cRXP_WARN_The entrance is blocked by a|r |cRXP_ENEMY_Dreamharvester|r|cRXP_WARN_ (lvl 41 elite). Crowd control or kill it while you run inside|r
    .mob Dreamharvester
    .maxlevel 53
step
    #season 2
    .goto Ashenvale,91.23,58.05
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dreamwarden Lanaria|r
    .complete 81773,1 --Intelligence Report: Warsong Lumber Camp: 1/1
    .target Dreamwarden Lanaria
    .skipgossip
    .maxlevel 53
step
.group 3
    #season 2
    .goto Ashenvale,87.6,62.2
    >>|cRXP_WARN_Kill the|r |cRXP_ENEMY_Shredder 9000|r. Be careful as he has a massive health pool a |T132338:0|t[Cleave] and an |T132338:0|t[AoE Knockback]
    .complete 81782,1 --Defeat Shredder 9000
    .isOnQuest 81782
    .maxlevel 53
step
    #sticky
    #label Treants
    .goto Ashenvale,85.6,65.6,0
    .goto Ashenvale,86.6,59.6,0
    .goto Ashenvale,90.0,50.2,0
    >>Kill |cRXP_ENEMY_Vengeful Ancients|r in the area
    >>|cRXP_WARN_Be careful as they are elite, skip this step if you aren't strong enough to solo them|r
    .complete 81769,1 --Vengeful Ancient slain (7)
    .maxlevel 53
step
    #season 2
    .goto Ashenvale,92.11,54.21
    .gossipoption 122138 >>Talk to |cRXP_FRIENDLY_Alyssian Windcaller|r. He should start following you around
    .target Alyssian Windcaller
    .isOnQuest 81783
    .maxlevel 53
step
    #season 2
    #requires Treants
    .goto Ashenvale,81.0,50.6
    .group 3
    >>Kill |cRXP_ENEMY_Zalius|r |cRXP_WARN_.Be careful as he has a massive health pool|r
    .complete 81781,1 --Defeat Zalius (1)
    .isOnQuest 81781
    .maxlevel 53
step
    #season 2
    #loop
    .goto Ashenvale,86.31,43.07,0
    .goto Ashenvale,86.57,47.66,50,0
    .goto Ashenvale,87.03,45.92,50,0
    .goto Ashenvale,88.26,42.14,50,0
    .goto Ashenvale,86.31,43.07,50,0
    .goto Ashenvale,84.36,45.06,50,0
    .goto Ashenvale,83.90,47.38,50,0
    >>Finish killing |cRXP_ENEMY_Wyrmkin Nightstalkers|r and |cRXP_ENEMY_Terror Whelps|r
    >>|cRXP_WARN_Be careful.|r |cRXP_ENEMY_Wyrmkin Nightstalkers|r |cRXP_WARN_are lvl 41 elites|r
    .complete 81770,1 --Wyrmkin Nightstalker slain: 3/3
    .mob +Wyrmkin Nightstalker
    .complete 81770,2 --Terror Whelp slain: 10/10
    .mob +Terror Whelp 
    .maxlevel 53
step
    #season 2
    #requires Treants
    #label IncursionsComplete
    .goto Ashenvale,93.97,38.02
    >>Travel toward the |cRXP_PICK_Emerald Dream Portal|r
    >>|cRXP_WARN_If |cRXP_FRIENDLY_Maseara|r, |cRXP_FRIENDLY_Alyssian|r or |cRXP_FRIENDLY_Doran|r is no longer following you, go back and talk to them again|r
    >>|cRXP_WARN_Walk back and forth of the pointed marked by your arrow (bottom of the portal ramp) a couple times. This will make the NPCs cross the threshold and give you the credit|r
    .complete 81783,1 --Rescue Alyssian Windcaller: 1/1
    .target +Alyssian Windcaller
    .goto Ashenvale,92.11,54.21,0
    .complete 81784,1 --Rescue Doran Dreambough: 1/1
    .goto Ashenvale,87.24,43.58,0
    .target +Doran Dreambough
    .complete 81785,1 --Rescue Maseara Autumnmoon: 1/1
    .goto Ashenvale,81.16,50.28,0
    .target +Maseara Autumnmoon
    .maxlevel 53
step
    #season 2
    #completewith next
    .goto Ashenvale,93.94,38.21,25,0
    .goto Ashenvale,94.27,35.13,20 >>Exit the |cRXP_PICK_Emerald Dream Portal|r
    .aura -444759
    .maxlevel 53
step
    #season 2
    .goto Ashenvale,89.57,40.68
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Field Captain Hannalah|r
    .turnin 81771 >>Turn in Ashenvale Mission IV: Dragon Intelligence
    .turnin 81772 >>Turn in Ashenvale Mission V: Satyr Intelligence
    .turnin 81773 >>Turn in Ashenvale Mission VI: Treant Intelligence
    .turnin 81774 >>Turn in Ashenvale Mission VII: Recover Dreamengine
    .turnin 81775 >>Turn in Ashenvale Mission VIII: Recover Azsharan Prophecy
    .turnin 81776 >>Turn in Ashenvale Mission IX: Recover Dream-Touched Dragonegg
    .turnin 81783 >>Turn in Ashenvale Mission XVI: Rescue Alyssian Windcaller
    .turnin 81784 >>Turn in Ashenvale Mission XVII: Rescue Doran Dreambough
    .turnin 81785 >>Turn in Ashenvale Mission XVIII: Rescue Maseara Autumnmoon
    .turnin 81768 >>Turn in Ashenvale Mission I: Defeat Satyrs
    .turnin 81769 >>Turn in Ashenvale Mission II: Defeat Treants
    .turnin 81770 >>Turn in Ashenvale Mission III: Defeat Dragonkin
    .target Field Captain Hannalah
    .maxlevel 53
step
    #season 2
    #optional
    .goto Ashenvale,89.53,40.71
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Field Captain Hannalah|r
    .turnin -81780 >> Turn in Ashenvale Mission XIII: Defeat Larsera
    .turnin -81781 >> Turn in Ashenvale Mission XIV: Defeat Zalius
    .turnin -81782 >> Turn in Ashenvale Mission XV: Shredder 9000
    .target Field Captain Hannalah
    .maxlevel 53
step
    #optional
    +|cRXP_WARN_You have outleveled all incursion zones and will no longer be able to accept any of the regular quests in any of them|r
    >>If you're looking to gain reputation with the|r |cRXP_FRIENDLY_Emerald Wardens|r there are infinitely repeatable quests in Feralas where you can turn in 10 of either |T134186:0|t[|cRXP_LOOT_Moonroot|r], |T133594:0|t[|cRXP_LOOT_Greater Moonstones|r] or |T134312:0|t[|cRXP_LOOT_Moon Dragon Scales|r]
    >>These quests give no xp or gold and reward 100 reputation per turnin. Buy as many of the most cost efficient materials from the Auction House as you need and head to Feralas to turn them in
    .xp <53,1
step
    #optional
    +You have completed this Nightmare Incursion loop. The quests will become available again after the daily reset. |cRXP_WARN_Select a differnt guide from the list to continue|r
]])

RXPGuides.RegisterGuide([[
#classic
#season 2
#group RestedXP Nightmare Incursion Dailies
#name (50-53) The Hinterlands Nightmare Incursion


step
    #ah
    >>Buy 10 |T134207:0|t[|cRXP_LOOT_Star Lotus|r], 10 |T134964:0|t[|cRXP_LOOT_Starshells|r] and 10 |T237436:0|t[|cRXP_LOOT_Starsilver Ore|r] from the auction house before heading to the Hinterlands
    >>|cRXP_WARN_Skip this step if you're not near an auction house location or the prices don't seem worth it. These three quests give a combined amount of 38.250xp and 300 reputation|r
    .collect 219454,10 --Star Lotus
    .collect 219487,10 --Starshell
    .collect 219486,10 --Starsilver Ore
    .maxlevel 53
step
    #completewith next
    #label travel
    .zone The Hinterlands >> Travel to the Hinterlands
    .maxlevel 53
step
    .goto The Hinterlands,60.81,37.86,20 >> Head to the bridge leading to Seradane
    .maxlevel 53
step
    .goto The Hinterlands,61.4,34.6 
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Quartermaster Alandra|r
    .target Quartermaster Alandra
    .collect 221480,1 << Mage --Spell Notes: Molten Armor
    .collect 221481,1 << Priest --Nihilist Epiphany
    .collect 221482,1 << Warlock --Rune of Affliciton
    .collect 221483,1 << Shaman --Rune of Burn
    .collect 221511,1 << Warrior --Rune of the Protector
    .collect 221512,1 << Rogue --Rune of Alclarity
    .collect 221515,1 << Hunter --Rune of Detonation
    .collect 221517,1 << Druid --Rune of Bloodshed
    .collect 223288,1 << Paladin --Rune of the Hammer
    .train 431705,1 << Priest
    .train 429308,1 << Mage
    .train 431747,1 << Warlock
    .train 416066,1 << Shaman
    .train 432297,1 << Rogue
    .train 431611,1 << Hunter
    .train 431447,1 << Druid
    .train 429261,1 << Paladin
    .train 427080,1 << Warrior
    .maxlevel 53
step
    #completewith next
    .train 431705 >>|cRXP_WARN_Use the|r |T135791:0|t[|cRXP_FRIENDLY_Nihilist Epiphany|r] |cRXP_WARN_to train|r |T132886:0|t[Void Zone] << Priest
    .train 429308 >>|cRXP_WARN_Use the|r |T134939:0|t[|cRXP_FRIENDLY_Spell Notes: Molten Armor|r] |cRXP_WARN_to train|r |T132221:0|t[Molten Armor] << Mage
    .train 431747 >>|cRXP_WARN_Use the|r |T134419:0|t[|cRXP_FRIENDLY_Rune of Affliction|r] |cRXP_WARN_to train|r |T136228:0|t[Unstable Affliction] << Warlock
    .train 416066 >>|cRXP_WARN_Use the|r |T134419:0|t[|cRXP_FRIENDLY_Rune of Burn|r] |cRXP_WARN_to train|r |T135822:0|t[Burn] << Shaman
    .train 432297 >>|cRXP_WARN_Use the|r |T134419:0|t[|cRXP_FRIENDLY_Rune of Alclarity|r] |cRXP_WARN_to train|r |T236269:0|t[Cut to the Chase] << Rogue
    .train 431611 >>|cRXP_WARN_Use the|r |T134419:0|t[|cRXP_FRIENDLY_Rune of Detonation|r] |cRXP_WARN_to train|r |T133713:0|t[T.N.T.] << Hunter
    .train 431447 >>|cRXP_WARN_Use the|r |T134419:0|t[|cRXP_FRIENDLY_Rune of Bloodshed|r] |cRXP_WARN_to train|r |T304501:0|t[Gore] << Druid
    .train 429261 >>|cRXP_WARN_Use the|r |T134419:0|t[|cRXP_FRIENDLY_Rune of the Hammer|r] |cRXP_WARN_to train|r |T236262:0|t[Improved Hammer of Wrath] << Paladin
    .use 221480 << Mage -- Spell Notes: Molten Armor
    .use 221481 << Priest --Nihilist Epiphany
    .use 221482 << Warlock --Rune of Affliciton
    .use 221483 << Shaman --Rune of Burn
    .use 221512 << Rogue --Rune of Alclarity
    .use 221515 << Hunter --Rune of Detonation
    .use 221517 << Druid --Rune of Bloodshed
    .use 223288,1 << Paladin --Rune of the Hammer
    .train 431705,1 << Priest
    .train 429308,1 << Mage
    .train 431747,1 << Warlock
    .train 416066,1 << Shaman
    .train 432297,1 << Rogue
    .train 431611,1 << Hunter
    .train 431447,1 << Druid
    .train 429261,1 << Paladin
    .train 427080,1 << Warrior
    .maxlevel 53
step
    #optional
    >>Cross the bridge and |Tinterface/worldmap/chatbubble_64grey.blp:20|ttalk to |cRXP_FRIENDLY_Field Captain Korlian|r
    .goto The Hinterlands,61.4,34.6
    .accept 81833 >> Accept Hinterlands Mission X: Star Lotus
    .accept 81834 >> Accept Hinterlands Mission XI: Starsilver Ore
    .accept 81835 >> Accept Hinterlands Mission XII: Starshells
    .itemcount 219454,10 --Star Lotus
    .itemcount 219487,10 --Starshell
    .itemcount 219486,10 --Starsilver Ore
    .target Field Captain Korlian
    .maxlevel 53
step
    #optional
    >>Cross the bridge and |Tinterface/worldmap/chatbubble_64grey.blp:20|ttalk to |cRXP_FRIENDLY_Field Captain Korlian|r
    .goto The Hinterlands,61.4,34.6
    .accept 81833 >> Accept Hinterlands Mission X: Star Lotus
    .itemcount 219454,10 --Star Lotus
    .target Field Captain Korlian
    .maxlevel 53
step
    #optional
    >>Cross the bridge and |Tinterface/worldmap/chatbubble_64grey.blp:20|ttalk to |cRXP_FRIENDLY_Field Captain Korlian|r
    .goto The Hinterlands,61.4,34.6
    .accept 81834 >> Accept Hinterlands Mission XI: Starsilver Ore
    .itemcount 219486,10 --Starsilver Ore
    .target Field Captain Korlian
    .maxlevel 53
step
    #optional
    >>Cross the bridge and |Tinterface/worldmap/chatbubble_64grey.blp:20|ttalk to |cRXP_FRIENDLY_Field Captain Korlian|r
    .goto The Hinterlands,61.4,34.6
    .accept 81835 >> Accept Hinterlands Mission XII: Starshells
    .itemcount 219487,10 --Starshell
    .target Field Captain Korlian
    .maxlevel 53
step
    #optional
    >>Cross the bridge and |Tinterface/worldmap/chatbubble_64grey.blp:20|ttalk to |cRXP_FRIENDLY_Field Captain Korlian|r
    .goto The Hinterlands,61.4,34.6
    .turnin -81833 >> Turn in Hinterlands Mission X: Star Lotus
    .turnin -81834 >> Turn in Hinterlands Mission XI: Starsilver Ore
    .turnin -81835 >> Turn in Hinterlands Mission XII: Starshells
    .target Field Captain Korlian
step
    >>Cross the bridge and |Tinterface/worldmap/chatbubble_64grey.blp:20|ttalk to |cRXP_FRIENDLY_Field Captain Korlian|r
    .goto The Hinterlands,61.4,34.6
    .accept 82068 >> Accept Fight the Nightmare Incursions
    .accept 81786 >> Accept Hinterlands Mission I: Defeat Moonkin
    .accept 81787 >> Accept Hinterlands Mission II: Defeat Giant Turtles
    .accept 81788 >> Accept Hinterlands Mission III: Defeat Dragonkin
    .accept 81789 >> Accept Hinterlands Mission IV: Dragon Intelligence
    .accept 81817 >> Accept Hinterlands Mission V: Turtle Intelligence
    .accept 81820 >> Accept Hinterlands Mission VI: Moonkin Intelligence
    .accept 81826 >> Accept Hinterlands Mission VII: Recover Star-Touched Dragonegg
    .accept 81830 >> Accept Hinterlands Mission VIII: Recover Elunar Relic
    .accept 81832 >> Accept Hinterlands Mission IX: Recover Dreampearl
    .accept 81850 >> Accept Hinterlands Mission XVI: Rescue Elinar Shadowdrinker
    .accept 81851 >> Accept Hinterlands Mission XVII: Rescue Serlina Starbright
    .accept 81852 >> Accept Hinterlands Mission XVII: Rescue Veanna Cloudsleeper
    .target Field Captain Korlian
    .maxlevel 53
step
    #optional
    .group 3
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|ttalk to |cRXP_FRIENDLY_Field Captain Korlian|r
    >>|cRXP_WARN_If you're in a group consider taking the elite kill quests as well. The bosses you will need to kill for these quests have massive amounts of HP and might be challenging depending on your group|r
    .accept 81837 >> Accept Hinterlands Mission XIII: Defeat Florius
    .accept 81838 >> Accept Hinterlands Mission XIV: Defeat Doomkin
    .accept 81839 >> Accept Hinterlands Mission XV: Defeat Ghamoo-Raja
    .goto The Hinterlands,61.4,34.6
    .target Field Captain Korlian
    .maxlevel 53
step
    .goto The Hinterlands,61.4,34.6 
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Quartermaster Alandra|r
    .vendor >> |cRXP_BUY_Buy up to 5|r |T236885:0|t[Major Healing Potions] |cRXP_BUY_from her if you want.|r |cRXP_WARN_These can only be used within the incursion zones|r
    .target Quartermaster Alandra
    .maxlevel 53
step
    #completewith next
    +|cRXP_WARN_Click on the portal next to the questgiver|r to be phased into the Emerald Dream
step
    .goto 1425/0,-3788.100,468.800,20 >> Head towards Skulk Rock. |cRXP_WARN_Avoid running into the |cRXP_ENEMY_Unstable Wisps|r or they will explode dealing around 700 damage to you|r
    .maxlevel 53
step
    #sticky
    #label Moonkin
    .goto The Hinterlands,57.9,39.6,0
    >>Kill |cRXP_ENEMY_Fallen Moonkin|r inside Skulk Rock
    .complete 81786,1 --Fallen Moonkin slain (20)
    .mob Fallen Moonkin
    .maxlevel 53
step
    >>Enter the cave and clear up the ramp leading to the right. Loot the chest there for the |T133247:0|t[|cRXP_PICK_Elunar Relic|r]
    .goto 1425/0,-3799.300,354.700
    .complete 81830,1 --|Elunar Relic: 1/1 
    .maxlevel 53
step
    .solo
    >>Clear to the large room at the bottom of the cave, talk to |cRXP_FRIENDLY_Dreamwarden Valori|r to receive his |T134939:0|t[|cRXP_LOOT_Intelligence Report|r]
    >>|cRXP_WARN_He is stealthed right next to the|r |cRXP_ENEMY_Doomkin|r |cRXP_WARN_boss. Try to quickly get the intelligence and run away, don't fight the boss|r
    >>|cRXP_WARN_You are likely to die doing this quest due to the|r |cRXP_ENEMY_Doomkins|r |cRXP_WARN_high damage but the runback is very short|r
    .goto 1425/0,-3756.200,357.000
    .complete 81820,1 --|Intelligence Report: Skulk Rock: 1/1
    .target Dreamwarden Valori
    .skipgossip
    .maxlevel 53
step
    #sticky
    #label groupSkulk
    .group 3
    >>Clear to the large room at the bottom of the cave, talk to |cRXP_FRIENDLY_Dreamwarden Valori|r to receive his |T134939:0|t[|cRXP_LOOT_Intelligence Report|r]
    >>|cRXP_WARN_He is stealthed right next to the|r |cRXP_ENEMY_Doomkin|r |cRXP_WARN_boss.
    .goto 1425/0,-3756.200,357.000
    .complete 81820,1 --|Intelligence Report: Skulk Rock: 1/1
    .target Dreamwarden Valori
    .skipgossip
    .maxlevel 53
step
    .group 3
    .goto The Hinterlands,56.6,44.6
    >>Kill the |cRXP_ENEMY_Doomkin|r boss in the big room at the bottom of the cave. 
    >>|cRXP_WARN_Be careful as he casts|r |T136096:0|t[Moonfire] |cRXP_WARN_and|r |T136006:0|t[Wrath] |cRXP_WARN_dealing high damage and has an AoE|r |T136183:0|t[Fear]
    .complete 81838,1 --Defeat Doomkin
    .mob Doomkin
    .isOnQuest 81838
    .maxlevel 53
step
    #requires Moonkin
    #requires groupSkulk
    .goto The Hinterlands,53.58,39.10
    .gossipoption 122141 >> Talk to |cRXP_FRIENDLY_Ealianar Shadowdrinker|r laying on the ground. He should start following you around
    >>|cRXP_WARN_You can talk to him through the back side of the wooden fence without having to go inside|r
    >>|cRXP_WARN_If he's not there that means someone else is escorting him, skip this step if u can't find him|r
    .target Ealianar Shadowdrinker
    .maxlevel 53
step
    #sticky
    #label Dragonkin
    .goto The Hinterlands,46.7,39.9,0
    >>Kill |cRXP_ENEMY_Wrath Whelps|r and |cRXP_ENEMY_Wyrmkin Starhunters|r in the ruins
    >>|cRXP_WARN_Be careful as the|r |cRXP_ENEMY_Wyrmkin Starhunters|r |cRXP_WARN_are elite and cast|r |T135812:0|t[Fireball] |cRXP_WARN_which hits for upwards of 500 damage. Skip this quest if you can't solo them|r
    .complete 81788,1 --Wrath Whelp Slain (10)
    .complete 81788,2 --Wyrmkin Starhunter SLain (3)
    .mob Wrath Whelp
    .mob Wyrmkin Starhunter
    .maxlevel 53
step
    #completewith next
    +|cRXP_WARN_Be careful, if you die all of escort NPCs following you will return to where you picked them up and you will have to find them again|r
    >>|cRXP_WARN_The escort NPC will also stop following you 15 minutes after you pick them up so try to be quick!|r
    .maxlevel 53
step
    .goto The Hinterlands,46.85,41.17
    >>Talk to |cRXP_FRIENDLY_Dreamwarden Laninar|r stealthed in the marked location to receive the |T134939:0|t[|cRXP_LOOT_Intelligence Report|r]
    .complete 81789,1 --|Intelligence Report: Agol'watha: 1/1
    .target Dreamwarden Laninar
    .skipgossip
    .maxlevel 53
step
    >>Loot the |T236997:0|t[|cRXP_PICK_Star-Touched Dragonegg|r] from inside the tent
    >>|cRXP_WARN_Try to go around the outer edge of the walls to avoid pulling any of the elite dragonkin in the area. You can loot the egg through the back of the tent without having to fight any elites|r
    .goto 1425/0,-3320.800,474.500
    .complete 81826,1 --|Star-Touched Dragonegg: 1/1
    .maxlevel 53
step
    .group 3
    .goto The Hinterlands,46.0,39.8
    >>Kill |cRXP_ENEMY_Florius|r the green dragon flying above the ruins
    >>|cRXP_WARN_Be careful as He has a massive healtpool, is immune to nature spells, has a|r|T132338:0|t[Cleave]|cRXP_WARN_,|r |T134307:0|t[Tail Swipe] |cRXP_WARN_and|r |T135745:0|t[Summons] |cRXP_WARN_a|r |cRXP_ENEMY_Drake|r |cRXP_WARN_add that casts a frontal breath which does enormous damage|r
    .complete 81837,1 --Defeat Florius
    .mob Florius
    .isOnQuest 81837
    .maxlevel 53
step
    #requires Dragonkin
    .goto The Hinterlands,42.31,31.43
    .goto The Hinterlands,60.67,38.32,150 >> Head west into the mountains untill your screen starts glowing green. You will be teleported closer to the starting location
    >>|cRXP_WARN_Don't worry, all the escort NPCs will follow you eventually|r
    .maxlevel 53
step
    #sticky
    #label Turtles
    .goto The Hinterlands,62.9,41.0,0
    .goto The Hinterlands,62.9,45.0,0
    .goto The Hinterlands,67.1,41.5,0
    .goto The Hinterlands,66.0,47.5,0
    .goto The Hinterlands,71.5,45.3,0
    .goto The Hinterlands,69.8,51.2,0
    .goto The Hinterlands,65.1,39.1,0
    .goto The Hinterlands,58.6,36.0,0
    >>Kill |cRXP_ENEMY_Dreamwater Vicejaws|r as you complete the other objectives
    .complete 81787,1 --Dreamwater Vicejaw slain (20)
    .mob Dreamwater Vicejaw
    .maxlevel 53
step
    .goto The Hinterlands,57.30,42.95
    .gossipoption 122151 >>Climb to the top of the Hill. Talk to |cRXP_FRIENDLY_Veanna Cloudsleeper|r laying on the ground. She should start following you around
    >>|cRXP_WARN_If she's not there that means someone else is escorting her, skip this step if u can't find her|r
    .target Veanna Cloudsleeper
    .maxlevel 53
step
    .goto The Hinterlands,71.09,48.14
    .gossipoption 122149 >> Enter the small wooden fort. Talk to |cRXP_FRIENDLY_Serlina Starbright|r laying on the ground. She should start following you around
    >>|cRXP_WARN_If she's not there that means someone else is escorting her, skip this step if u can't find her|r
    .target Serlina Starbright
    .maxlevel 53
step
    >>Enter the ruins of Shaol'watha and loot the |T237371:0|t[|cRXP_PICK_Dreampearl|r]. |cRXP_WARN_Be careful not to aggro the boss|r |cRXP_ENEMY_Ghamoo-Raja|r
    .goto 1425/0,-4355.400,79.400
    .complete 81832,1 --|Dreampearl: 1/1
    .maxlevel 53
step
    .group 3
    .goto The Hinterlands,72.7,54.2
    >>Kill |cRXP_ENEMY_Ghamoo-Raja|r
    >>|cRXP_WARN_Be careful as she casts|r |T136231:0|t[Pierce Armor] |cRXP_WARN_and |r|T132270:0|t[Triple Chomp] |cRXP_WARN_an attack that will hit you 3 times in a quick succession.|r |T132270:0|t[Triple Chomp] |cRXP_WARN_can hit you from range as well|r
    .complete 81839,1 --Defeat Ghamoo-Raja
    .isOnQuest 81839
    .maxlevel 53
step
    >>Talk to |cRXP_FRIENDLY_Dreamwarden Sanathel|r stealthed in the marked location to receive the |T134939:0|t[|cRXP_LOOT_Intelligence Report|r]
    .goto 1425/0,-4389.800,81.400
    .complete 81817,1 --|Intelligence Report: Shaol'watha: 1/1
    .target Dreamwarden Sanathel
    .skipgossip
    .maxlevel 53
step
    .goto The Hinterlands,77.13,54.35
    .goto The Hinterlands,60.67,38.32,150 >> Head east untill your screen starts glowing green. You will be teleported closer to the starting location
    >>|cRXP_WARN_Don't worry, all the escort NPCs will follow you eventually|r
    .maxlevel 53
step
    #requires Turtles
    .goto 1425/0,-4010.800,758.000
    >>Make sure you got the credit for all of the escort quests. They should all complete by the time you reach the big dream portal
    >>|cRXP_WARN_If any of the three NPCs is no longer following you go back and talk to then again|r
    >>|cRXP_WARN_Walk back and forth of the pointed marked by your arrow (bottom of the portal ramp) a couple times. This will make the NPCs cross the threshold and give you the credit|r
    .complete 81850,1
    .complete 81851,1
    .complete 81852,1
    .maxlevel 53
step
    .goto The Hinterlands,61.35,34.58,5 >> Go back through the portal to the real world version of The Hinterlands
    .maxlevel 53
step
    >>Talk to |cRXP_FRIENDLY_Field Captain Korlian|r
    .goto The Hinterlands,61.4,34.6
    .turnin 82068 >> Turn in Fight the Nightmare Incursions
    .turnin 81786 >> Turn in Hinterlands Mission I: Defeat Moonkin
    .turnin 81787 >> Turn in Hinterlands Mission II: Defeat Giant Turtles
    .turnin 81788 >> Turn in Hinterlands Mission III: Defeat Dragonkin
    .turnin 81789 >> Turn in Hinterlands Mission IV: Dragon Intelligence
    .turnin 81817 >> Turn in Hinterlands Mission V: Turtle Intelligence
    .turnin 81820 >> Turn in Hinterlands Mission VI: Moonkin Intelligence
    .turnin 81826 >> Turn in Hinterlands Mission VII: Recover Star-Touched Dragonegg
    .turnin 81830 >> Turn in Hinterlands Mission VIII: Recover Elunar Relic
    .turnin 81832 >> Turn in Hinterlands Mission IX: Recover Dreampearl
    .turnin 81850 >> Turn in Hinterlands Mission XVI: Rescue Elinar Shadowdrinker
    .turnin 81851 >> Turn in Hinterlands Mission XVII: Rescue Serlina Starbright
    .turnin 81852 >> Turn in Hinterlands Mission XVII: Rescue Veanna Cloudsleeper
    .target Field Captain Korlian
    .maxlevel 53
step
    #optional
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|ttalk to |cRXP_FRIENDLY_Field Captain Korlian|r
    .turnin -81837 >> Turn in Hinterlands Mission XIII: Defeat Florius
    .turnin -81838 >> Turn in Hinterlands Mission XIV: Defeat Doomkin
    .turnin -81839 >> Turn in Hinterlands Mission XV: Defeat Ghamoo-Raja
    .goto The Hinterlands,61.4,34.6
    .target Field Captain Korlian
    .maxlevel 53

step
    #optional
    +|cRXP_WARN_You have outleveled all incursion zones and will no longer be able to accept any of the regular quests in any of them|r
    >>If you're looking to gain reputation with the|r |cRXP_FRIENDLY_Emerald Wardens|r there are infinitely repeatable quests in Feralas where you can turn in 10 of either |T134186:0|t[|cRXP_LOOT_Moonroot|r], |T133594:0|t[|cRXP_LOOT_Greater Moonstones|r] or |T134312:0|t[|cRXP_LOOT_Moon Dragon Scales|r]
    >>These quests give no xp or gold and reward 100 reputation per turnin. Buy as many of the most cost efficient materials from the Auction House as you need and head to Feralas to turn them in
    .xp <53,1
step
    #optional
    +You have completed this Nightmare Incursion loop. The quests will become available again after the daily reset. |cRXP_WARN_Select a differnt guide from the list to continue|r
    ]])

RXPGuides.RegisterGuide([[
#classic
#season 2
#group RestedXP Nightmare Incursion Dailies
#name (50-53) Feralas Nightmare Incursion

step
    #ah
    >>Buy 10 |T134186:0|t[|cRXP_LOOT_Moonroot|r], |T133594:0|t[|cRXP_LOOT_Greater Moonstones|r] and |T134312:0|t[|cRXP_LOOT_Moon Dragon Scales|r] from the auction house before heading to the Hinterlands
    >>|cRXP_WARN_Skip this step if you're not near an auction house location or the prices don't seem worth it. These three quests give a combined amount of 38.250xp and 300 reputation|r
    .maxlevel 53
    .collect 219514,10 --Moonroot
    .collect 219517,10 --Moondragon Scale
    .collect 219515,10 --Greater Moonstone
step
    #completewith next
    .zone Feralas >> Travel to Feralas
    .maxlevel 53
step
    .goto Feralas,48.0,13.2,50 >> Travel to the Emerald Nightmare portal area in north-western Feralas
    .maxlevel 53
step
    .goto Feralas,48.6,12.6
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Quartermaster Valdane|r
    .collect 221480,1 << Mage --Spell Notes: Molten Armor
    .collect 221481,1 << Priest --Nihilist Epiphany
    .collect 221482,1 << Warlock --Rune of Affliciton
    .collect 221483,1 << Shaman --Rune of Burn
    .collect 221511,1 << Warrior --Rune of the Protector
    .collect 221512,1 << Rogue --Rune of Alclarity
    .collect 221515,1 << Hunter --Rune of Detonation
    .collect 221517,1 << Druid --Rune of Bloodshed
    .collect 223288,1 << Paladin --Rune of the Hammer
    .train 431705,1 << Priest
    .train 429308,1 << Mage
    .train 431747,1 << Warlock
    .train 416066,1 << Shaman
    .train 432297,1 << Rogue
    .train 431611,1 << Hunter
    .train 431447,1 << Druid
    .train 429261,1 << Paladin
    .train 427080,1 << Warrior
    .target Quartermaster Valdane
    .maxlevel 53
step
    #completewith next
    .train 431705 >>|cRXP_WARN_Use the|r |T135791:0|t[|cRXP_FRIENDLY_Nihilist Epiphany|r] |cRXP_WARN_to train|r |T132886:0|t[Void Zone] << Priest
    .train 429308 >>|cRXP_WARN_Use the|r |T134939:0|t[|cRXP_FRIENDLY_Spell Notes: Molten Armor|r] |cRXP_WARN_to train|r |T132221:0|t[Molten Armor] << Mage
    .train 431747 >>|cRXP_WARN_Use the|r |T134419:0|t[|cRXP_FRIENDLY_Rune of Affliction|r] |cRXP_WARN_to train|r |T136228:0|t[Unstable Affliction] << Warlock
    .train 416066 >>|cRXP_WARN_Use the|r |T134419:0|t[|cRXP_FRIENDLY_Rune of Burn|r] |cRXP_WARN_to train|r |T135822:0|t[Burn] << Shaman
    .train 432297 >>|cRXP_WARN_Use the|r |T134419:0|t[|cRXP_FRIENDLY_Rune of Alclarity|r] |cRXP_WARN_to train|r |T236269:0|t[Cut to the Chase] << Rogue
    .train 431611 >>|cRXP_WARN_Use the|r |T134419:0|t[|cRXP_FRIENDLY_Rune of Detonation|r] |cRXP_WARN_to train|r |T133713:0|t[T.N.T.] << Hunter
    .train 431447 >>|cRXP_WARN_Use the|r |T134419:0|t[|cRXP_FRIENDLY_Rune of Bloodshed|r] |cRXP_WARN_to train|r |T304501:0|t[Gore] << Druid
    .train 429261 >>|cRXP_WARN_Use the|r |T134419:0|t[|cRXP_FRIENDLY_Rune of the Hammer|r] |cRXP_WARN_to train|r |T236262:0|t[Improved Hammer of Wrath] << Paladin
    .use 221480 << Mage -- Spell Notes: Molten Armor
    .use 221481 << Priest --Nihilist Epiphany
    .use 221482 << Warlock --Rune of Affliciton
    .use 221483 << Shaman --Rune of Burn
    .use 221512 << Rogue --Rune of Alclarity
    .use 221515 << Hunter --Rune of Detonation
    .use 221517 << Druid --Rune of Bloodshed
    .use 223288,1 << Paladin --Rune of the Hammer
    .train 431705,1 << Priest
    .train 429308,1 << Mage
    .train 431747,1 << Warlock
    .train 416066,1 << Shaman
    .train 432297,1 << Rogue
    .train 431611,1 << Hunter
    .train 431447,1 << Druid
    .train 429261,1 << Paladin
    .train 427080,1 << Warrior
    .maxlevel 53
step 
    #season 2
    #optional
    .goto Feralas,48.49,12.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Field Captain Arunnel|r
    .accept 81865 >> Accept Feralas Mission X: Moonroot
    .accept 81866 >> Accept Feralas Mission XI: Greater Moonstone
    .accept 81867 >> Accept Feralas Mission XII: Greater Moondragon Scales
    .itemcount 219514,10 --Moonroot
    .itemcount 219517,10 --Moondragon Scale
    .itemcount 219515,10 --Greater Moonstone
    .target Field Captain Arunnel
    .maxlevel 53
step 
    #season 2
    #optional
    .goto Feralas,48.49,12.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Field Captain Arunnel|r
    .accept 81865 >> Accept Feralas Mission X: Moonroot
    .itemcount 219514,10 --Moonroot
    .target Field Captain Arunnel
    .maxlevel 53
step 
    #season 2
    #optional
    .goto Feralas,48.49,12.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Field Captain Arunnel|r
    .accept 81866 >> Accept Feralas Mission XI: Greater Moonstone
    .itemcount 219515,10 --Greater Moonstone
    .target Field Captain Arunnel
    .maxlevel 53
step 
    #season 2
    #optional
    .goto Feralas,48.49,12.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Field Captain Arunnel|r
    .accept 81867 >> Accept Feralas Mission XII: Greater Moondragon Scales
    .itemcount 219517,10 --Moondragon Scale
    .target Field Captain Arunnel
    .maxlevel 53
step 
    #season 2
    #optional
    .goto Feralas,48.49,12.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Field Captain Arunnel|r
    .turnin -81865 >> Turn in Feralas Mission X: Moonroot
    .turnin -81866 >> Turn in Feralas Mission XI: Greater Moonstone
    .turnin -81867 >> Turn in Feralas Mission XII: Greater Moondragon Scales
    .target Field Captain Arunnel
    .maxlevel 53
step 
    #season 2
    .goto Feralas,48.49,12.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Field Captain Arunnel|r
    .accept 81855 >>Accept Feralas Mission I: Defeat Children of Cenarius
    .accept 81856 >>Accept Feralas Mission II: Defeat Harpies
    .accept 81857 >>Accept Feralas Mission III: Defeat Dragonkin
    .accept 81858 >>Accept Feralas Mission IV: Dragon Intelligence
    .accept 81859 >>Accept Feralas Mission V: Cenarion Intelligence
    .accept 81860 >>Accept Feralas Mission VI: Harpy Intelligence
    .accept 81861 >>Accept Feralas Mission VII: Recover Moonglow Dragonegg
    .accept 81863 >>Accept Feralas Mission VIII: Recover Keeper's Notes
    .accept 81864 >>Accept Feralas Mission IX: Recover Harpy Screed
    .accept 81872 >>Accept Feralas Mission XVI: Rescue Mellias Earthtender
    .accept 81873 >>Accept Feralas Mission XVII: Rescue Nerene Brooksinger
    .accept 81874 >>Accept Feralas Mission XVIII: Rescue Jamniss Treemender
    .accept 82068 >>Accept Fight the Nightmare Incursions
    .target Field Captain Arunnel
    .maxlevel 53
step
    #optional
    .group 3
    .goto Feralas,48.49,12.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Field Captain Arunnel|r
    >>|cRXP_WARN_If you're in a group consider taking the elite kill quests as well. The bosses you will need to kill for these quests have massive amounts of HP and might be challenging depending on your group|r
    .accept 81868 >> Accept Feralas Mission XIII: Defeat Tyrannikus
    .accept 81870 >> Accept Feralas Mission XIV : Defeat Alondrius
    .accept 81871 >> Accept Feralas Mission XV: Defeat Slirena
    .target Field Captain Arunnel
    .maxlevel 53
step 
    #season 2
    #completewith IncursionsComplete3
    .goto Feralas,50.95,11.67,30,0
    .goto Feralas,51.28,10.64,20 >>Enter the |cRXP_PICK_Emerald Dream Portal|r
    >>|cRXP_WARN_Run straight past the |cRXP_ENEMY_Satyr's|r, |cRXP_ENEMY_Felhounds|r and |cRXP_ENEMY_Imps|r. They will reset agro as you enter the portal|r
    .aura 444762
    .maxlevel 53
step 
    #season 2 
    #completewith DreamWardenGorlas
    >>Kill |cRXP_ENEMY_Frenzied Whelps|r and |cRXP_ENEMY_Wyrmkin Berserkers|r
    >>|cRXP_WARN_Be careful.|r |cRXP_ENEMY_Wyrmkin Berserkers|r |cRXP_WARN_are elite. They can be difficult to solo|r
    .complete 81857,1 --Frenzied Whelp slain 10/10
    .mob +Frenzied Whelp
    .complete 81857,2 --Wyrmkin Berserker slain 10/10
    .mob +Wyrmkin Berserker
    .maxlevel 53
step 
    #season 2
    .goto Feralas,49.64,15.44
    .gossipoption 122147 >>Talk to |cRXP_FRIENDLY_Mellias Earthtender|r. She should start following you around
    .target Mellias Earthtender
    .isOnQuest 81872
    .maxlevel 53
step
    #completewith next
    +|cRXP_WARN_Be careful, if you die all of escort NPCs following you will return to where you picked them up and you will have to find them again|r
    >>|cRXP_WARN_The escort NPC will also stop following you 15 minutes after you pick them up so try to be quick!|r
    .maxlevel 53
step 
    #season 2
    .goto Feralas,50.71,17.17
    >>Loot a |cRXP_LOOT_Moonglow Dragon Egg|r on the ground
    .complete 81861,1 --Moonglow Dragonegg: 1/1
    .maxlevel 53
step
    #optional
    .group 3
    .goto Feralas,53.2,16.6
    >>Kill the boss dragon |cRXP_ENEMY_Tyrannikus|r
    >>|cRXP_WARN_Be careful as He has a massive healtpool, is immune to nature spells, has a|r|T132338:0|t[Cleave]|cRXP_WARN_,|r |T134307:0|t[Tail Swipe] |cRXP_WARN_and|r |T135745:0|t[Summons] |cRXP_WARN_a|r |cRXP_ENEMY_Drake|r |cRXP_WARN_add that casts a frontal breath which does enormous damage|r
    .complete 81868,1 --Tyrannikus slain
    .mob Tyrannikus
    .maxlevel 53
step 
    #season 2
    .goto Feralas,50.73,19.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dreamwarden Sheldryn|r
    .complete 81858,1 --Intelligence Report: Oneiros: 1/1
    .target Dreamwarden Sheldryn
    .skipgossip
    .maxlevel 53
step
    .solo
    #completewith RuinsofRav
    #season 2
    +|cRXP_WARN_Be careful of|r |cRXP_WARN_Alondrius|r|cRXP_WARN_, a boss elite that patrols the road. Try to avoid him|r
    .unitscan Alondrius
    .maxlevel 53
step
    .group 3
    #completewith RuinsofRav
    #season 2
    #label Alondrius
    .goto Feralas,46.8,19.6
    .line Feralas,47.6,25.5,48.1,24.2,48.0,23.0,46.9,22.2,46.2,20.9,46.3,18.1,46.3,16.2,46.1,14.1
    >>|cRXP_WARN_Look for|r |cRXP_WARN_Alondrius|r|cRXP_WARN_, a boss elite that patrols the road. Kill him|r
    .complete 81870,1 --Alondrius Slain
    .unitscan Alondrius
    .maxlevel 53
step 
    #season 2
    #label DreamWardenGorlas
    .goto Feralas,47.14,21.63
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dreamwarden Gorlas|r
    .complete 81859,1 --Intelligence Report: Twin Colossals: 1/1
    .target Dreamwarden Gorlas
    .skipgossip
    .maxlevel 53
step 
    #season 2
    #completewith RuinsofRav
    #requires Alondrius
    >>Kill |cRXP_ENEMY_Lost Daughters|r and |cRXP_ENEMY_Vengeful Sons|r
    .complete 81855,1 --Lost Daughter slain 10/10
    .mob +Lost Daughter
    .complete 81855,2 --Vengeful Son slain 10/10
    .mob +Vengeful Son
    .maxlevel 53
step 
    #season 2
    #requires Alondrius
    .goto Feralas,46.63,18.94
    >>Loot the |cRXP_LOOT_Mad Keeper's Notes|r on the ground
    .complete 81863,1 --Mad Keeper's Notes: 1/1
    .maxlevel 53
step 
    #season 2
    .goto Feralas,45.81,16.47
    .gossipoption 122148 >>Talk to |cRXP_FRIENDLY_Nerene Brooksinger|r. She should start following you around
    .target Nerene Brooksinger
    .skipgossip
    .isOnQuest 81873
    .maxlevel 53
step 
    #season 2
    #label RuinsofRav
    .goto Feralas,41.94,12.93
    .subzone 1114 >>Travel to the Ruins of Ravenwind
    .maxlevel 53
step 
    #season 2
    #completewith IncursionsComplete3
    >>Kill |cRXP_ENEMY_Dreamspring Roguefeathers|r and |cRXP_ENEMY_Dreamspring Stormcallers|r
    .complete 81856,1 --Dreamspring Roguefeather 10/10
    .mob +Dreamspring Roguefeather
    .complete 81856,2 --Dreamspring Stormcaller 10/10
    .mob +Dreamspring Stormcaller
    .maxlevel 53
step 
    #season 2
    .goto Feralas,38.94,13.13
    >>Loot the |cRXP_LOOT_Harpy Screed|r on the ground
    >>|cRXP_WARN_This is looted instantly.|r |cRXP_ENEMY_Slirena|r |cRXP_WARN_may attack you, have an escape path cleared|r
    .complete 81864,1 --Harpy Screed: 1/1
    .maxlevel 53
step
    #optional
    .group 3
    .goto Feralas,39.6,13.8
    >>Kill the Harpy boss |cRXP_ENEMY_Slirena|r
    >>|cRXP_WARN_Be careful as she casts|r |T136015:0|t[Chain Lightning], |T136018:0|t[Enveloping Winds] |cRXP_WARN_a 10 second cyclone, and|r |T132104:0|t[Acid Rain] |cRXP_WARN_a circle that does damage if you don't move out of it|r
    .complete 81871,1 --Slirena slain
    .mob Slirena
    .maxlevel 53
step 
    #season 2
    .goto Feralas,37.71,12.13
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dreamwarden Anadelle|r
    .complete 81860,1 --Intelligence Report: Ruins of Ravenwind: 1/1
    .target Dreamwarden Anadelle
    .skipgossip
    .maxlevel 53
step 
    #season 2
    #label IncursionsComplete3
    .goto Feralas,40.58,8.09
    .gossipoption 122145 >>Talk to |cRXP_FRIENDLY_Jamniss Treemender|r. She should start following you around
    .target Jamniss Treemender
    .isOnQuest 81874
    .maxlevel 53
step 
    #season 2
    #loop
    .goto Feralas,42.11,9.07,0
    .goto Feralas,38.98,16.20,0
    .goto Feralas,42.11,9.07,60,0
    .goto Feralas,42.19,11.58,60,0
    .goto Feralas,41.02,13.08,60,0
    .goto Feralas,40.19,15.21,60,0
    .goto Feralas,38.98,16.20,60,0
    .goto Feralas,38.31,15.77,60,0
    .goto Feralas,37.95,14.21,60,0
    .goto Feralas,39.42,13.77,60,0
    .goto Feralas,39.58,10.69,60,0
    >>Kill |cRXP_ENEMY_Dreamspring Roguefeathers|r and |cRXP_ENEMY_Dreamspring Stormcallers|r
    .complete 81856,1 --Dreamspring Roguefeather 10/10
    .mob +Dreamspring Roguefeather
    .complete 81856,2 --Dreamspring Stormcaller 10/10
    .mob +Dreamspring Stormcaller
    .maxlevel 53
step 
    #season 2
    #loop
    .goto Feralas,46.44,15.89,0
    .goto Feralas,45.36,22.36,0
    .goto Feralas,44.45,12.29,50,0
    .goto Feralas,46.44,15.89,50,0
    .goto Feralas,46.35,18.82,50,0
    .goto Feralas,45.36,22.36,50,0
    .goto Feralas,45.55,19.10,50,0
    >>Kill |cRXP_ENEMY_Lost Daughters|r and |cRXP_ENEMY_Vengeful Sons|r
    .complete 81855,1 --Lost Daughter slain 10/10
    .mob +Lost Daughter
    .complete 81855,2 --Vengeful Son slain 10/10
    .mob +Vengeful Son
    .maxlevel 53
step 
    #season 2 
    #loop
    .goto Feralas,49.81,15.80,0
    .goto Feralas,53.85,12.74,0
    .goto Feralas,49.81,15.80,50,0
    .goto Feralas,50.68,17.37,50,0
    .goto Feralas,51.62,19.54,50,0
    .goto Feralas,52.76,16.27,50,0
    .goto Feralas,53.68,15.81,50,0
    .goto Feralas,53.85,12.74,50,0
    .goto Feralas,54.32,10.44,50,0
    >>Kill |cRXP_ENEMY_Frenzied Whelps|r and |cRXP_ENEMY_Wyrmkin Berserkers|r
    >>|cRXP_WARN_Be careful.|r |cRXP_ENEMY_Wyrmkin Berserkers|r |cRXP_WARN_are elite. They can be difficult to solo|r
    .complete 81857,1 --Frenzied Whelp slain 10/10
    .mob +Frenzied Whelp
    .complete 81857,2 --Wyrmkin Berserker slain 10/10
    .mob +Wyrmkin Berserker
    .maxlevel 53
step 
    #season 2
    .goto Feralas,51.00,11.69
    >>Travel toward the |cRXP_PICK_Emerald Dream Portal|r
    >>|cRXP_WARN_If |cRXP_FRIENDLY_Mellias|r, |cRXP_FRIENDLY_Nerene|r or |cRXP_FRIENDLY_Jamniss|r is no longer following you, go back and talk to them again|r
    >>|cRXP_WARN_Walk back and forth of the pointed marked by your arrow (bottom of the portal ramp) a couple times. This will make the NPCs cross the threshold and give you the credit|r
    .complete 81872,1 --Rescue Mellias Earthtender: 1/1
    .goto Feralas,49.64,15.44,0
    .target +Mellias Earthtender
    .complete 81873,1 --Rescue Nerene Brooksinger: 1/1
    .goto Feralas,45.81,16.47,0
    .target +Nerene Brooksinger
    .complete 81874,1 --Rescue Jamniss Treemender: 1/1
    .goto Feralas,40.58,8.09,0
    .target
    .target +Jamniss Treemender
    .maxlevel 53
step 
    #season 2
    #completewith next
    .goto Feralas,50.95,11.67,30,0
    .goto Feralas,51.28,10.64,20 >>Exit the |cRXP_PICK_Emerald Dream Portal|r
    .aura -444762
    .maxlevel 53
step 
    #season 2
    .goto Feralas,48.49,12.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Field Captain Arunnel|r
    .turnin 81855 >>Turn in Feralas Mission I: Defeat Children of Cenarius
    .turnin 81856 >>Turn in Feralas Mission II: Defeat Harpies
    .turnin 81857 >>Turn in Feralas Mission III: Defeat Dragonkin
    .turnin 81858 >>Turn in Feralas Mission IV: Dragon Intelligence
    .turnin 81859 >>Turn in Feralas Mission V: Cenarion Intelligence
    .turnin 81860 >>Turn in Feralas Mission VI: Harpy Intelligence
    .turnin 81861 >>Turn in Feralas Mission VII: Recover Moonglow Dragonegg
    .turnin 81863 >>Turn in Feralas Mission VIII: Recover Keeper's Notes
    .turnin 81864 >>Turn in Feralas Mission IX: Recover Harpy Screed
    .turnin 81872 >>Turn in Feralas Mission XVI: Rescue Mellias Earthtender
    .turnin 81873 >>Turn in Feralas Mission XVII: Rescue Nerene Brooksinger
    .turnin 81874 >>Turn in Feralas Mission XVIII: Rescue Jamniss Treemender
    .turnin 82068 >>Turn in Fight the Nightmare Incursions
    .target Field Captain Arunnel
    .maxlevel 53
step
    #optional
    .goto Feralas,48.49,12.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Field Captain Arunnel|r
    >>|cRXP_WARN_If you're in a group consider taking the elite kill quests as well. The bosses you will need to kill for these quests have massive amounts of HP and might be challenging depending on your group|r
    .turnin -81868 >> Turn in Feralas Mission XIII: Defeat Tyrannikus
    .turnin -81870 >> Turn in Feralas Mission XIV : Defeat Alondrius
    .turnin -81871 >> Turn in Feralas Mission XV: Defeat Slirena
    .target Field Captain Arunnel
    .maxlevel 53
step
    #optional
    +|cRXP_WARN_You have outleveled all incursion zones and will no longer be able to accept any of the regular quests in any of them|r
    >>If you're looking to gain reputation with the|r |cRXP_FRIENDLY_Emerald Wardens|r there are infinitely repeatable quests in Feralas where you can turn in 10 of either |T134186:0|t[|cRXP_LOOT_Moonroot|r], |T133594:0|t[|cRXP_LOOT_Greater Moonstones|r] or |T134312:0|t[|cRXP_LOOT_Moon Dragon Scales|r]
    >>These quests give no xp or gold and reward 100 reputation per turnin. Buy as many of the most cost efficient materials from the Auction House as you need and head to Feralas to turn them in
    .xp <53,1
step
    #optional
    +You have completed this Nightmare Incursion loop. The quests will become available again after the daily reset. |cRXP_WARN_Select a differnt guide from the list to continue|r
]])