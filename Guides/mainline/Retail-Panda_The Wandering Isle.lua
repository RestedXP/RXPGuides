RXPGuides.RegisterGuide([[
#df
#version 1
#group RestedXP Starting Zones
#subgroup Pandaren Starting Zones
#name 2Retail-Panda_The Wandering Isle
#displayname Panda The Wandering Isle
#next RestedXP Alliance 10-60\1Retail-Alliance_Darkmoon Faire << Alliance
#next RestedXP Horde 10-60\1 BfA Intro << Horde
#defaultfor Pandaren

<<!DK

step
    #sticky
    #completewith next
    +Welcome to the Panda Starting Zone Guide of RestedXP.
    *Without consumables/heirlooms this route is roughly 5 minutes slower than Exiles Reach. For faster leveling recreate your character and choose Exiles Reach instead.
    *With consumbales/heirlooms this route is just as fast
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Master Shang Xi
    .goto 378,56.7,18.2
    .accept 30034 >>Accept The Lesson of the Iron Bough << Hunter
    .accept 30027 >>Accept The Lesson of the Iron Bough << Priest/Monk
    .accept 30033 >>Accept The Lesson of the Iron Bough << Mage
    .accept 30037 >>Accept The Lesson of the Iron Bough << Shaman/Warlock
    .accept 30038 >>Accept The Lesson of the Iron Bough << Warrior
    .accept 30036 >>Accept The Lesson of the Iron Bough << Rogue
step
    >>Click on a Weapon Rack and Equip the Weapon that is in your Bag
    .use 73209
    .goto 378,57.2,19.1
    .complete 30034,1  << Hunter --1/1 Loot and Equip a Trainee's Crossbow
    .complete 30033,1  << Mage
    .complete 30027,1  << Priest/Monk
    .complete 30037,1  << Shaman/Warlock
    .complete 30038,1  << Warrior
    .complete 30036,1  << Rogue
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Master Shang Xi
    .goto 378,56.7,18.2
    .turnin 30034 >>Turn in The Lesson of the Iron Bough << Hunter
    .turnin 30033 >>Turn in The Lesson of the Iron Bough << Mage
    .turnin 30027 >>Turn in The Lesson of the Iron Bough << Priest/Monk
    .turnin 30037 >>Turn in The Lesson of the Iron Bough << Shaman/Warlock
    .turnin 30038 >>Turn in The Lesson of the Iron Bough << Warrior
    .turnin 30036 >>Turn in The Lesson of the Iron Bough << Rogue
    .accept 29406 >>Accept The Lesson of the Sandy Fist
step
    >>Destroy 5 Punching Bags
    .goto 378,57.27,19.02,15,0
    .complete 29406,1 --5/5 Training Targets destroyed
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Master Shang Xi
    .goto 378,56.7,18.2
    .turnin 29406 >>Turn in The Lesson of the Sandy Fist
    .accept 29524 >>Accept The Lesson of Stifled Pride
step
    >>Kill 6 Trainees
    .goto 378,59.9,19.1
    .complete 29524,1 --6/6 Sparring Trainees defeated
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Master Shang Xi
    .goto 378,59.67,19.11
    .turnin 29524 >>Turn in The Lesson of Stifled Pride
    .accept 29408 >>Accept The Lesson of the Burning Scroll
step
    >>Go upstairs and click the banner
    .goto 378,59.95,18.62,5,0
    .goto 378,60.54,18.85,5,0
    .goto 378,60.23,18.91,5,0
    .goto 378,60.07,18.76,5,0
    .goto 378,60.44,19.61,5,0
    .goto 378,59.96,20.41
    .complete 29408,2 --1/1 Burn the Edict of Temperance
step
    >>Jump over the Fence
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Master Shang XI
    .goto 378,60.01, 19.79,0,0
    .goto 378,59.7,19.1
    .turnin 29408 >>Turn in The Lesson of the Burning Scroll
    .accept 29409 >>Accept The Disciple's Challenge
step
    >>Attack Jaomin from Range and kill him on the middle of the Bridge << Hunter/Mage
    >>Kill Jaomin Ro and kite him slowly to the middle of the bridge <<!Hunter
    .goto 378,65.9,22.8
    .complete 29409,1 --1/1 Defeat Jaomin Ro
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Master Shang Xi
    >>Use Charge on critters to move faster <<Warrior
    .goto 378,66.0,22.8
    .turnin 29409 >>Turn in The Disciple's Challenge
    .accept 29410 >>Accept Aysa of the Tushui
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Merchant Lorvo
    .goto 378,55.1,32.8
    .turnin 29410 >>Turn in Aysa of the Tushui
    .accept 29419 >>Accept The Missing Driver
    .accept 29424 >>Accept Items of Utmost Importance
step
    #completewith next
    >>Kill and loot Amberleaf Scamps
    .complete 29424,1 --6/6 Stolen Training Supplies
step
    #label Area1
    .goto 378,54.13,20.95
    >>Go near the Panda
    .complete 29419,1 --1/1 Rescue the Cart Driver
step
    >>Kill and loot Amberleaf Scamps. Get low health towards the end, we're deathskipping after.
    .goto 378,54.13,20.95
    .complete 29424,1 --6/6 Stolen Training Supplies
step
    #completewith next
    >>RXP Guides often use Deathskips to quickly go to the desired Location <<!Hunter
    .deathskip >> Pull as many enemies as you can, Die and Respawn at the Graveyard
step
    #requires Area1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Merchant Lorvo
    .goto 378,55.1,32.4
    .turnin 29419 >>Turn in The Missing Driver
    .turnin 29424 >>Turn in Items of Utmost Importance
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Aysa Cloudsinger
    .accept 29414 >>Accept The Way of the Tushui
    .goto 378,55.10, 32.55
step << Hunter
    #completewith next
    +Tame a fox as you run to the cave
step
    >>Defend the NPC's for 2 minutes. Be Careful these enemies keep coming, play defensively if needed
    .goto 378,55.61,30.90,5,0
    .goto 378,56.54,31.82,5,0
    .goto 378,57.6,35.4
    .complete 29414,1 --1/1 Protect Aysa while she meditates
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Master Shang Xi
    .goto 378,57.5,34.7
    .turnin 29414 >>Turn in The Way of the Tushui
    .accept 29522 >>Accept Ji of the Huojin
step << Hunter
    #completewith next
    .hs >> Use Hearthstone
    .goto 378,56.15,18.21,1,0
step
    >>Go on the root of the tree and Disengage up onto the Wall to your left << Hunter
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Ji Firepaw
    .goto 378,50.5,21.25
    .turnin 29522 >>Turn in Ji of the Huojin
    .accept 29417 >>Accept The Way of the Huojin
step
    >>Kill 8 Hozen in the area
    .goto 378,50.5,21.25
    .complete 29417,1 --8/8 Fe-Feng attackers slain
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Ji Firepaw
    .goto 378,50.5,21.25
    .turnin 29417 >>Turn in The Way of the Huojin
    .accept 29418 >>Accept Kindling the Fire
    .accept 29523 >>Accept Fanning the Flames
step
    #sticky
    #label QuestKeybindingsPanda
    >>Click the Roots in the Area
    .goto 378,46.18,27.19,5,0
    .goto 378,45.90,27.65,5,0
    .goto 378,46.29,28.04,5,0
    .goto 378,46.84,29.85,5,0
    .goto 378,46.48,30.32,5,0
    .complete 29418,1 --5/5 Dry Dogwood Root
step
    #sticky
    #completewith QuestKeybindingsPanda
    +If you want to make the most of RXP; Press Escape -> Options -> Keybindings -> RestedXP Guides -> Select and Bind Active Button 1,2,3 and 4
    *This will allow you to press a keybind to use a Quest Item rather than manually clicking it
step
    >>Use the Item "Wind Stone" in your Bags on the Shrine then Kill and LOOT the Living Air
    .use 72109
    .goto 378,47.29,31.31
    .complete 29523,1 --1/1 Fluttering Breeze
step
    #requires QuestKeybindingsPanda
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Ji Firepaw
    .goto 378,50.23,21.25
    .turnin 29523 >>Turn in Fanning the Flames
    .turnin 29418 >>Turn in Kindling the Fire
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Master Shang Xi
    .goto 378,50.3,21.5
    .accept 29420 >>Accept The Spirit's Guardian
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Master Li Fei inside the Cave
    .goto 378,40.63,21.98,15,0
    .goto 378,38.80,25.51
    .turnin 29420 >>Turn in The Spirit's Guardian
    .accept 29664 >>Accept The Challenger's Fires
step
    >>Click the Brazier of the Flickering Flame
    .goto 378,38.72,25.41
    .complete 29664,1 --1/1 Challenger Torch lit
 step
    >>Click the Brazier of the Violet Flame
    .goto 378,38.26,24.87
    .complete 29664,4 --1/1 Violet Brazier lit
 step
    >>Click the Brazier of the Red Flame
    .goto 378,39.0,23.5
    .complete 29664,2 --1/1 Red Brazier lit
step
    >>Click the Brazier of the Blue Flame
    .goto 378,39.219,25.39
    .complete 29664,3 --1/1 Blue Brazier lit
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Master Li Fei
    .goto 378,38.8,25.5
    .turnin 29664 >>Turn in The Challenger's Fires
    .accept 29421 >>Accept Only the Worthy Shall Pass
step
    >>Damage Master Li Fei below 20% health
    .goto 378,38.69,25.51
    .complete 29421,1 --1/1 Defeat Master Li Fei
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Master Li Fei
    .goto 378,38.8,25.5
    .turnin 29421,1 >>Turn in Only the Worthy Shall Pass
    .accept 29422 >>Accept Huo, the Spirit of Fire
step
    >>Target The NPC and use Huo's Offerings in your Bags
    >>After using the Item it will take a few seconds for the Objective to finish
    .use 72583
    .goto 378,39.3,29.2
    .complete 29422,1 --1/1 Reignite the Spirit of Fire
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Huo
    .goto 378,39.4,29.6
    .turnin 29422 >>Turn in Huo, the Spirit of Fire
    .accept 29423 >>Accept The Passion of Shen-zin Su
step
    >>Walk into the Temple of Five Dawns
    .goto 378,40.09,25.99,10,0
    .goto 378,41.64,25.20,10,0
    .goto 378,44.86,28.07,80,0
    .goto 378,50.92,30.58,30,0
    .goto 378,51.73,35.23,30,0
    .goto 378,50.10,38.22,30,0
    .goto 378,51.4,45.6
    .complete 29423,1 --1/1 Bring the Spirit of Fire to the Temple of Five Dawns
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Master Shang Xi
    .goto 378,51.4,46.4
    .turnin 29423 >>Turn in The Passion of Shen-zin Su
    .accept 29521 >>Accept The Singing Pools
step
    #completewith next
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Cheng Dawnscrive and set your Hearthstone
    .goto 378,51.8,46.1
    .home >>Set Hearthstone to Temple of Five Dawns
step
    #completewith next
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Whittler Dewei. Mining Ores and Herbing gives Experience only take ores/herbs when they are almost on direct path with you
    .train 2366 >> Learn Herbalism
    .train 2575 >> Learn Mining
    .goto 378,63.11,41.45
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Jojo Ironbrow
    .goto 378,63.5,41.9
    .accept 29662 >>Accept Stronger Than Reeds
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Aysa Cloudsinger
    .goto 378,65.6,42.6
    .turnin 29521 >>Turn in The Singing Pools
    .accept 29661 >>Accept The Lesson of Dry Fur
    .accept 29663 >>Accept The Lesson of the Balanced Rock
step
    #label Area2
    .goto 378,61.5,47.9
    >>Click a Balance Pole to Jump on it. Make sure that you are not in the water, it makes you a frog.
    >>Move to the Shrine by continiously clicking new poles, then click the shrine. Kill monks as you traverse.
    .complete 29661,1 --1/1 Ring the Training Bell
    .complete 29663,1 --6/6 Defeat Tushui Monks
step
    >>Click the Wood in the Area
    .goto 378,62.3,43.8
    .complete 29662,1 --8/8 Hard Tearwood Reed
step
    #requires Area2
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Jojo Ironbrow
    .goto 378,63.5,41.9
    .turnin 29662 >>Turn in Stronger Than Reeds
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Aysa Cloundsinger
    .goto 378,65.6,42.6
    .turnin 29661 >>Turn in The Lesson of Dry Fur
    .turnin 29663 >>Turn in The Lesson of the Balanced Rock
    .accept 29676 >>Accept Finding an Old Friend
step
    >>Travel through the Special Water for increased movement speed and don't jump
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Old Man Yiang
    .goto 378,71.92,38.19,10,0
    .goto 378,70.6,38.7
    .turnin 29676 >>Turn in Finding an Old Friend
    .accept 29677 >>Accept The Sun Pearl
    .accept 29666 >>Accept The Sting of Learning
step
    >>Kill 6 Water Pincers
    .goto 378,73.05,41.43,10,0
    .complete 29666,1 --6/6 Water Pincer slain
step
    >>Click the Ancient Clam on the Ocean Floor
    .goto 378,76.23,46.83
    .complete 29677,1 --1/1 Sun Pearl
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Old Man Yiang
    .goto 378,78.48,42.88
    .turnin 29666 >>Turn in The Sting of Learning
    .turnin 29677 >>Turn in The Sun Pearl
    .accept 29678 >>Accept Shu, the Spirit of Water
step << !Hunter
    >>Stand on the Blue Circle
    .goto 378,79.53, 41.89,5,0
    .goto 378,79.61,38.72
    .complete 29678,1 --1/1 Cross to the Pool of Reflection
step << Hunter
    >>Stand on the Blue Circle
    .goto 378,79.53, 41.89,5,0
    .goto 378,79.61,38.72
    .complete 29678,1 --1/1 Cross to the Pool of Reflection
step
    >>Use the Item "Sun Pearl" in your Bag on the Water Surface
    .use 73791
    .goto 378,79.1,38.1
    .complete 29678,2 --1/1 Coax Shu, the Water Spirit
step
    >>Click on the Quest Pop Up in your Questlog and turn in the quest
    >>Accept the new Quest
    .goto 378,79.55, 38.58
    .turnin 29678 >>Turn in Shu, the Spirit of Water
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Aysa Cloudsinger
    .goto 378,79.81, 39.32
    .accept 29679 >>Accept A New Friend
step
    >>Look at the Water Surface near the Elemental for a sprinkle animation then go there to get launched in the air
    >>On the last one use disengage right after you get launched in the air  << Hunter
    >>On the last one use Blink right after you get launched in the air  << Mage
    .goto 378,79.1,38.1
    .complete 29679,1 --5/5 Play with the Spirit of Water
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Aysa Cloudsinger
    .goto 378,79.8,39.3
    .turnin 29679 >>Turn in A New Friend
    .accept 29680 >>Accept The Source of Our Livelihood
step
    >>Ignore the Cart walking is faster
    >>Transform yourself into a crane by being in the water when possible
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Ji Firepaw
    .goto 378,77.01,55.47,30,0
    .goto 378,68.94,65.02
    .turnin 29680 >>Turn in The Source of Our Livelihood
    .accept 29769 >>Accept Rascals
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Gao Summerdraft
    .goto 378,68.13,66.42
    .accept 29770 >>Accept Still Good!
step
    >>Kill Virmins on your way to the different Vegetables. Do not go out of your way for them.
    .complete 29769,1 --10/10 Plump Virmen slain
step
    >>Click Turnips in the area
    .goto 378,67.37,75.94,10,0
    .goto 378,68.61,77.09
    .complete 29770,1 --3/3 Uprooted Turnip
step
    >>Click Pumpkins in the area
    .goto 378,77.71,71.93,5,0
    .goto 378,77.99,72.59
    .complete 29770,3 --3/3 Pilfered Pumpkin
step
    >>Go into the Cave. Click Carrots and/or Kill and loot Carrotcrunchers
    .goto 378,77.12, 71.06,10,0
    .goto 378,74.92, 70.84
    .complete 29770,2 --3/3 Stolen Carrot
step
    #label Area99
    .goto 378,77.99,72.59,50,0
    .goto 378,68.61,77.09
    >>Kill Virmins on your way to the different Vegetables. Do not go out of your way for them.
    .complete 29769,1 --10/10 Plump Virmen slain
step
    #requires Area99
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Ji Firepaw in the small village farm
    .goto 378,68.9,65.0
    .turnin 29769 >>Turn in Rascals
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk Gao Summerdraft
    .goto 378,68.13,66.42
    .turnin 29770 >>Turn in Still Good!
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Jojo Ironbrow
    .goto 378,69.16,66.7
    .accept 29771 >>Accept Stronger Than Wood
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Ji Firepaw
    .goto 378,68.9,65.0
    .accept 29768 >>Accept Missing Mallet
step
    >>Click the Items in the area. The mallet is near the front door.
    .goto 378,62.5,76.9
    .complete 29768,1 --1/1 Dai-Lo Recess Mallet
    .complete 29771,1 --12/12 Discarded Wood Plank
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Jojo Ironbrow
    .goto 378,69.15,66.73
    .turnin 29771 >>Turn in Stronger Than Wood
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Ji Firepaw
    .goto 378,68.9,65.0
    .turnin 29768 >>Turn in Missing Mallet
    .accept 29772 >>Accept Raucous Rousing
step
    >>Click the Gong
    .goto 378,68.94,64.87
    .complete 29772,1 --1/1 Ring the town gong
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Ji Firepaw
    .goto 378,68.9,65.0
    .turnin 29772 >>Turn in Raucous Rousing
    .accept 29774 >>Accept Not In the Face!
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Shu
    .goto 378,69.0,62.9
    .skipgossip
    .complete 29774,1 --1/1 Ask Shu for help
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Ji Firepaw
    .goto 378,68.89,65.00
    .complete 29774,2 --1/1 Wake Wugou
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Ji Firepaw
    .goto 378,68.9,65.0
    .turnin 29774 >>Turn in Not In the Face!
    .accept 29775 >>Accept The Spirit and Body of Shen-zin Su
step
    >>Walk to the City without the Cart
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Master Shang Xi
    .goto 378,63.34,64.06,25,0
    .goto 378,59.50,63.60,25,0
    .goto 378,55.26,58.24,25,0
    .goto 378,51.71,57.66,25,0
    .goto 378,51.6,48.3
    .turnin 29775 >>Turn in The Spirit and Body of Shen-zin Su
    .accept 29776 >>Accept Morning Breeze Village
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Ji Firepaw
    .goto 378,51.33,49.02,15,0
    .goto 378,50.4,48.78,15,0
    .goto 378,46.24,51.27,15,0
    .goto 378,38.43,51.32,15,0
    .goto 378,31.0,36.7
    .turnin 29776 >>Turn in Morning Breeze Village
    .accept 29778 >>Accept Rewritten Wisdoms
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Jojo Ironbrow
    .goto 378,29.9,39.76
    .accept 29783 >>Accept Stronger Than Stone
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Elder Shaopai
    .goto 378,31.8,39.7
    .accept 29777 >>Accept Tools of the Enemy
step
    #completewith Area3
    >>Click the Stone Piles in the Area
    .complete 29783,1 --12/12 Abandoned Stone Block
step
    #completewith next
    >>Kill and LOOT Fe-Feng Wisemans
    .complete 29777,1 --8/8 Paint Soaked Brush
step
    #label Area3
    >>Click the Scrolls in the Area
    .goto 378,32.46,46.70,30,0
    .goto 378,28.58,49.36,30,0
    .goto 378,29.26,50.97,30,0
    .goto 378,32.46,46.70
    .complete 29778,1 --5/5 Defaced Scroll of Wisdom burned
step
    >>Kill Fe-Feng Wisemans, loot them and the stones on the ground
    .goto 378,32.46,46.70,30,0
    .goto 378,28.58,49.36,30,0
    .goto 378,29.26,50.97,30,0
    .goto 378,32.46,46.70
    .complete 29777,1 --8/8 Paint Soaked Brush
    .complete 29783,1 --12/12 Abandoned Stone Block
step
    #requires Area3
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Elder Shaopai
    .goto 378,31.8,39.7
    .turnin 29777 >>Turn in Tools of the Enemy
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Jojo Ironbrow
    .goto 378,29.9,39.8
    .turnin 29783 >>Turn in Stronger Than Stone
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Ji Firepaw
    .goto 378,31.0,36.7
    .turnin 29778 >>Turn in Rewritten Wisdoms
    .accept 29779 >>Accept The Direct Solution
    .accept 29780 >>Accept Do No Evil
    .accept 29781 >>Accept Monkey Advisory Warning
step
    >>Click the Jade Pillar
    .goto 378,29.88,39.42,15,0
    .goto 378,26.4,33.6
    .accept 29782 >>Accept Stronger Than Bone
step
    #label Area4
    .goto 378,26.10,32.27,15,0
    .goto 378,21.02,34.40
    >>Click the Firework Bundles in the Area. Kill Ruk-Ruk at the cliffedge.
    .complete 29781,1 --8/8 Stolen Firework Bundle
    .complete 29780,1 --1/1 Ruk-Ruk slain
step
    >>Kill Hozen in the camp
    goto 378,26.42,30.89
    .complete 29779,1 --20/20 Fe-Feng Hozen slain
step
    #requires Area4
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Ji Firepaw next to you(if he isn't there try reloggin or phasing in and out the Village)
    .goto 378,29.89,39.76
    .turnin 29781 >>Turn in Monkey Advisory Warning
    .turnin 29779 >>Turn in The Direct Solution
    .turnin 29780,1 >>Turn in Do No Evil
    .accept 29784 >>Accept Balanced Perspective
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Jojo Ironbrow
    .goto 378,29.9,39.8
    .turnin 29782 >>Turn in Stronger Than Bone
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Aysa Cloundsinger walk over the rope(be careful)
    .goto 378,32.94,35.61
    .turnin 29784 >>Turn in Balanced Perspective
    .accept 29785 >>Accept Dafeng, the Spirit of Air
step
    >>Dafeng is inside the Temple but be careful periodically there will be strong winds within the Temple which almost certaintly Kill you there is a safe spot in the middle of the temple wait for the wind to fade before you enter the temple
    .goto 378,30.38,38.81,20,0
    .goto 378,26.60,66.68,10,0
    .goto 378,24.8,69.5
    .complete 29785,1 --1/1 Locate Dafeng
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Dafeng
    .goto 378,24.65,69.79
    .turnin 29785 >>Turn in Dafeng, the Spirit of Air
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Aysa Cloudsinger
    .goto 378,24.78, 69.80
    .accept 29786 >>Accept Battle for the Skies
step
    >>Go in a circle around Zhao-Ren and Click all Firework Launcher until he is dead attack him if you can
    .goto 378,29.43,60.74,5,0
    .goto 378,30.18,61.88,5,0
    .goto 378,30.93,61.59,5,0
    .goto 378,31.37,60.05,5,0
    .goto 378,29.78,58.94,5,0
    .complete 29786,1 --1/1 Zhao-Ren slain
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Master Shang Xi
    .goto 378,30.0,60.4
    .turnin 29786 >>Turn in Battle for the Skies
    .accept 29787 >>Accept Worthy of Passing
step
    .goto 378,22.6,52.7
    .complete 29787,1 --1/1 Guardian of the Elders slain
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Master Shang Xi. You may need to wait for him to appear.
    .goto 378,19.46,51.22
    .turnin 29787 >>Turn in Worthy of Passing
    .accept 29789 >>Accept Small, But Significant
    .accept 29788 >>Accept Unwelcome Nature
step
    >>Prioritize looting charms from trees while killing Thornbranch Scamps
    .goto 378,18.74,49.22,10,0
    .goto 378,19.00,46.44,10,0
    .goto 378,20.23,43.53,10,0
    .goto 378,21.54,49.30
    .complete 29788,1 --8/8 Thornbranch Scamp slain
    .complete 29789,1 --8/8 Kun-Pai Ritual Charm
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Master Shang Xi
    .goto 378,19.46,51.22
    .turnin 29789 >>Turn in Small, But Significant
    .turnin 29788 >>Turn in Unwelcome Nature
    .accept 29790 >>Accept Passing Wisdom
step
    >>Walk and wait on the Waypoint Location until Shang Xi is done talking. It takes 1 minute.
    >>You can refresh your Buff Food here
    .use 77272
    .goto 378,17.29,50.78
    .complete 29790,1 --1/1 Listen to Master Shang Xi
    --.timer 60,Master Shang Xi talking timer
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Aysa Cloudsinger
    .goto 378,15.8,49.1
    .turnin 29790 >>Turn in Passing Wisdom
    .accept 29791 >>Accept The Suffering of Shen-zin Su
step
    >>Click the Air Baloon
    .goto 378,15.6,49.0
    .complete 29791,1 --1/1 Board the Hot Air Balloon
step
    >>You will be dropped of your hot air baloon if you are fast enough you can use disengage midair to quickly go to your next objective <<  Hunter
    >>This is a 3minute Roleplay
    .goto 378,30.8,92.9
    .complete 29791,2 --1/1 Uncover the source of Shen-zin Su's pain
    --.timer 300,Airbaloon Event
step
    >>Disengage Midair to quickly go to your next Objective <<  Hunter
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Elder Shaopai
    .goto 378,51.3,48.3
    .turnin 29791 >>Turn in The Suffering of Shen-zin Su
    .accept 29792 >>Accept Bidden to Greatness
step
    >>Go near the Gate to Open It
    .goto 378,51.6,60.5
    .complete 29792,1 --1/1 Open the Mandori Village Gate
step
    >>Go near the Gate to trigger the Gate Opening Sequence then strictly follow the Arrow Waypoints
    .goto 378,52.1,69.5,10,0
    .goto 378,50.21,66.44,5,0
    .goto 378,50.13,67.44,5,0
    .goto 378,50.2,68.16,5,0
    .goto 378,50.35,69.35
    .complete 29792,2 --1/1 Open the Pei-Wu Forest Gate
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Wei Palerage
    .goto 378,50.1,76.6
    .turnin 29792 >>Turn in Bidden to Greatness
    .accept 30591 >>Accept Preying on the Predators
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Korga Strongmane
    .goto 378,50.22, 76.64
    .accept 29795 >>Accept Stocking Stalks
step
    #completewith next
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Provisioner Drog
    .vendor 67186 >> sell as much as you can and repair
step
    #label Area5
    >>Kill Tigers and click Bamboo Stalks in the area
    .goto 378,47.91,80.52,40,0
    .goto 378,46.61,79.10,30,0
    .goto 378,45.35,75.45,30,0
    .goto 378,47.41,74.94,30,0
    .goto 378,47.84,72.31,15,0
    .goto 378,51.07,72.67,30,0
    .goto 378,47.91,80.52
    .complete 29795,1 --10/10 Broken Bamboo Stalk
    .complete 30591,1 --9/9 Pei-Wu Tiger slain
step
    #requires Area5
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk Korga Strongmane
    .goto 378,50.22, 76.64
    .turnin 29795 >>Turn in Stocking Stalks
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Wei Palerage
    .goto 378,50.08,76.62
    .turnin 30591 >>Turn in Preying on the Predators
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Korga Strongmane
    .goto 378,50.2,76.6
    .accept 30589 >>Accept Wrecking the Wreck
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Makael Bay
    .goto 378,36.3,72.4
    .turnin 30589 >>Turn in Wrecking the Wreck
    .accept 30590 >>Accept Handle With Care
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Ji Firepaw
    .goto 378,36.36,72.53
    .accept 29793 >>Accept Evil from the Seas
step
    #label Area6
    >>Kill Darkened Terrors/Horrors while Clicking the Explosive Charges in the Area
    .goto 378,36.62,75.36,30,0
    .goto 378,37.5,76.74,30,0
    .goto 378,36.36,72.53
    .complete 29793,1 --8/8 Darkened Horrors or Darkened Terrors slain
    .complete 30590,1 --6/6 Packed Explosion Charge
step
    #requires Area6
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Ji Firepaw
    .goto 378,36.37,72.55
    .turnin 29793 >>Turn in Evil from the Seas
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Makael Bay
    .goto 378,36.31,72.34
    .turnin 30590 >>Turn in Handle With Care
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Ji Firepaw
    .goto 378,36.37,72.53
    .accept 29796 >>Accept Urgent News
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Delora Lionheart
    .goto 378,42.2,86.5
    .turnin 29796 >>Turn in Urgent News
    .accept 29794 >>Accept None Left Behind
    .accept 29797 >>Accept Medical Supplies
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Jojo Ironbrow
    .goto 378,42.29,86.35
    .accept 29665 >>Accept From Bad to Worse
step
    #completewith Area7
    >>Kill Deepscale Tormentor
    .complete 29665,1 --8/8 Deepscale Tormentor slain
step
    #completewith Area7
    >>Click the Alliance Medical Supplies
    .complete 29797,1 --8/8 Alliance Medical Supplies
step
    >>Click the Sailor and carry him back
    .goto 378,40.19,87.66,40,0
    .goto 378,42.29,86.74,15,0
    .goto 378,40.19,87.66,40,0
    .goto 378,42.29,86.74,15,0
    .goto 378,40.19,87.66,40,0
    .goto 378,42.29,86.74,15,0
    .goto 378,40.19,87.66,40,0
    .goto 378,42.29,86.74
    .complete 29794,1,1 --3/3 Injured Sailors rescued
step
    .goto 378,40.19,87.66,40,0
    .goto 378,42.29,86.74,15,0
    .goto 378,40.19,87.66,40,0
    .goto 378,42.29,86.74,15,0
    .goto 378,40.19,87.66,40,0
    .goto 378,42.29,86.74,15,0
    .goto 378,40.19,87.66,40,0
    .goto 378,42.29,86.74
    .complete 29794,1,2 --3/3 Injured Sailors rescued
step
    #label Area7
    >>Click the Sailor and carry him back
    .goto 378,40.19,87.66,40,0
    .goto 378,42.29,86.74,15,0
    .goto 378,40.19,87.66,40,0
    .goto 378,42.29,86.74,15,0
    .goto 378,40.19,87.66,40,0
    .goto 378,42.29,86.74,15,0
    .goto 378,40.19,87.66,40,0
    .goto 378,42.29,86.74
    .complete 29794,1,3 --3/3 Injured Sailors rescued
step
    >>Click the Alliance Medical Supplies and kill Deepscale Tormentors
    .goto 378,37.87,86.61,30,0
    .goto 378,36.62,83.59,30,0
    .goto 378,37.81,81.63,30,0
    .goto 378,37.87,86.61
    .complete 29797,1 --8/8 Alliance Medical Supplies
    .complete 29665,1 --8/8 Deepscale Tormentor slain
step
    #requires Area7
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Delora Ironheart
    .goto 378,42.2,86.5
    .turnin 29794 >>Turn in None Left Behind
    .turnin 29797 >>Turn in Medical Supplies
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Jojo Ironbrow
    .goto 378,42.3,86.3
    .turnin 29665 >>Turn in From Bad to Worse
    .accept 29798 >>Accept An Ancient Evil
step
    >>Kill Vordraka. Be careful he is difficult!
    .goto 378,36.1,83.7
    .complete 29798,1 --1/1 Vordraka, the Deep Sea Nightmare slain
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Aysa Cloudsinger
    .goto 378,36.5,84.2
    .turnin 29798 >>Turn in An Ancient Evil
    .accept 30767 >>Accept Risking It All
step
    >>Follow Aysa Cloudsinger. Wait for the roleplay, it takes 1 minute.
    .goto 378,36.35,86.08,10,0
    .goto 378,36.90,85.50,5,0
    .goto 378,36.36,87.2,10,0
    .goto 378,39.2,86.3
    .complete 30767,1 --1/1 Shen-zin Su's Thorn Removed
    --.timer 60,Aysa Roleplay
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Ji Firepaw
    .goto 378,39.3,86.2
    .turnin 30767 >>Turn in Risking It All
    .accept 29799 >>Accept The Healing of Shen-zin Su
step
    >>Click as many Healers as possible all around the Area
    >>You might have to Kill specific Enemies to unlock additional Healer's to Click
    .goto 378,39.08,88.32,5,0
    .goto 378,39.04,88.87,5,0
    .goto 378,39.89,88.62,5,0
    .goto 378,42.92,87.31,5,0
    .goto 378,42.85,85.16,5,0
    .goto 378,42.01,84.89,5,0
    .goto 378,42.31,83.89,5,0
    .goto 378,42.2,87.3
    .complete 29799,1 --1/1 Protect the healers
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Ji Firepaw
    .goto 378,39.3,86.2
    .turnin 29799 >>Turn in The Healing of Shen-zin Su
step
    >>wait here until you can accept the next quest
    .goto 378,38.8,86.3
    .accept 29800 >>Accept New Allies
step
    #completewith next
    .hs >> Use Hearthstone to Temple of Five Dawns
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Spirit of Master Shang Xi
    .goto 378,51.45,48.28
    .turnin 29800 >>Turn in New Allies
    .accept 31450 >>Accept A New Fate
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Spirit of Master Shang Xi and select your Faction
    .goto 378,51.45,48.28
    .skipgossip
    .complete 31450,1 --1/1 Choose your faction
step << Alliance
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Aysa
    .goto 84,74.20,91.97
    .turnin 31450 >>Turn in A New Fate
step << Horde
    .turnin 31450 >>Turn in A New Fate
    .goto 1,45.57,12.62
    .accept 31012 >>Accept Joining the Horde << Horde
step <<Alliance << Pandaren
    #veteran
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Renato
    .goto 84,67.16,83.4,10,0
    .goto 84,67.51,80.47,10,0
    .goto 84,63.77,73.60
    .accept 332 >>Accept Wine Shop Advert
step <<Alliance << Pandaren
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Hero's Herald
    .goto 84,67.16,83.4,10,0
    .goto 84,67.51,80.47,10,0
    .goto 84,62.81,71.74
    .accept 46727 >>Accept Battle for Azeroth: Tides of War
step <<Alliance << Pandaren
    .goto 84,64.65,70.42,10,0
    .goto 84,68.36,75.02,10,0
    .goto 84,70.22,73.35
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Bralla Cloudwing and Learn Journeyman Riding
    .skill riding,75 >> Learn Apprentice Riding
step <<Alliance << Pandaren
    .dmf
    .link /run AbandonSkill(186); AbandonSkill(182);>> UNLEARN PROFESSIONS(Copy the Link and type it in chat)
step << Alliance << Pandaren
    .isQuestTurnedIn 31450 --x Original Panda Check
    .dmf
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Darkmoon Faire Mystic Mage
    .goto 84,62.25,72.96
    .accept 7905 >>Accept The Darkmoon Faire
step <<Alliance <<Pandaren
    .dmf
    .isQuestTurnedIn 31450 --x original panda check
    +Talk to Darkmoon Faire Mystic Mage and press accept
    .skipgossip
    .zoneskip 37
    .goto 84,62.25,72.96
]])



