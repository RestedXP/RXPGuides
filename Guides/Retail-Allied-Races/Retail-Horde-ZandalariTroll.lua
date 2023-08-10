RXPGuides.RegisterGuide([[
#df
#version 1
#group Allied Race Unlocks
#subgroup Zandalari Trolls
#name 1) Zandalari Troll Questline
#displayname Zandalari Troll Questline

step
    #completewith ZandalariTrollStartQuestline
    .zone 85 >>Get to Orgrimmar
step
    .isOnQuest 49930
    .isQuestAvailable 49930
    .goto 85,53.23,90.47,10,0
    .goto 85,37.76,81.18
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ji Firepaw|r
    .turnin 49930 >>Turn in The Call for Allies
    .target Ji Firepaw
step
    .isQuestAvailable 50242
    .goto 85,37.76,81.18
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ji Firepaw|r
    .accept 50242 >>Accept A Choice of Allies
    .target Ji Firepaw
step
    .isOnQuest 50242
    >>Interact with the banners in any order
    .goto 85,37.65,81.43
    .complete 50242,1 -- Learn more about the Highmountain Tauren
    .complete 50242,2 -- Learn more about the nightborne
    .complete 50242,3 -- Learn more about the Maghar Orcs
    .complete 50242,4 -- Learn more about the Zandalari trolls
    .complete 50242,5 -- Learn more about the Vulpera
step
    .isQuestComplete 50242
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ji Firepaw|r
    .goto 85,37.65,81.44
    .turnin 50242 >>Turn in A Choice of Allies
    .target Ji Firepaw
step
    #label ZandalariTrollStartQuestline
    .goto 85,37.75,81.18
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ji Firepaw|r
    .accept 53831 >>Accept A Royal Occasion
    .target Ji Firepaw
step
    .isOnQuest 53831
    #completewith next
    .goto 85,53.40,90.43,10,0
    .goto 85,58.48,91.26
    .complete 53831,1 --1/1 Use the portal to Zuldazar (Optional)
step
    >>Follow the arrow
    .goto 1163,48.94,29.53
    .complete 53831,2 --1/1 Meet the Zandalari emissary
step
    .goto 1163,48.53,21.92
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Natal'hakata|r
    .turnin 53831 >>Turn in A Royal Occasion
    .accept 53823 >>Accept A Queen's Entourage
    .target Natal'hakata
step << !DemonHunter !Dracthyr
    #completewith next
    .noflyable 862
    .goto 1165,48.51,38.00,15,0
    .goto 1165,45.15,47.02,20,0
    .goto 1165,42.06,26.50,20 >>Jump down the pyramid carefully
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Princess Talanji|r and |cRXP_FRIENDLY_High Prelate Rata|r
    .turnin 53823 >>Turn in A Queen's Entourage
    .goto 1165,42.58,22.81
    .accept 53824 >>Accept The Rite of Kings and Queens
    .goto 1165,42.58,22.53
    .target Princess Talanji
    .target High Prelate Rata
step
    >>Mount the |cRXP_FRIENDLY_Ceremonial Warbeast|r
    .goto 1165,42.51,23.26
    .complete 53824,1 --1/1 Ride the Ceremonial Warbeast
    .timer 76,Ride RP
step
    >>Wait for the RP
    .goto 1165,39.83,12.82
    .complete 53824,2 --1/1 Ride in procession with Talanji
step
    .goto 1165,40.28,12.23
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_High Prelate Rata|r
    .turnin 53824 >>Turn in The Rite of Kings and Queens
    .timer 9,Zolani RP
    .target High Prelate Rata
step
    .goto 1165,40.28,12.47
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Zolani|r
    .accept 53826 >>Accept The Instigator Among Us
    .accept 54419 >>Accept Quelling the Masses
    .target Zolani
step
    #completewith next
    >>Defeat |cRXP_ENEMY_Rioting Speakers|r
    .complete 54419,1 --12/12 Rioters subdued
    .mob Rioting Speaker
step
    >>Jump down. Defeat |cRXP_ENEMY_Enforcer Malzon|r
    .goto 1165,36.72,10.43,12,0
    .goto 1165,37.29,10.46
    .complete 53826,1 --1/1 Enforcer Malzon confronted
    .mob Enforcer Malzon
step
    >>Defeat |cRXP_ENEMY_Rioting Speakers|r or talk to |cRXP_ENEMY_Rioting Zocalo Druges|r
    .goto 1165,36.17,7.69,20,0
    .goto 1165,34.96,10.72,20,0
    .goto 1165,36.49,15.16,20,0
    .goto 1165,39.96,20.07,20,0
    .loop 22,1165,36.17,7.69,34.96,10.72,36.49,15.16,39.96,20.07
    .skipgossip 147781,1
    .complete 54419,1 --12/12 Rioters subdued
    .mob Rioting Speaker
    .mob Rioting Zocalo Druges
step
    #completewith next
    .noflyable 862
    .goto 1165,42.61,22.91,12,0
    .goto 1165,41.41,18.05,12 >>Go back up
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Princess Talanji|r, |cRXP_FRIENDLY_High Prelate Rata|r, and |cRXP_FRIENDLY_Zolani|r
    .turnin 53826 >>Turn in The Instigator Among Us
    .turnin 54419 >>Turn in Quelling the Masses
    .accept 54301 >>Accept Talanji's Mercy
    .goto 1165,40.51,11.91
    .accept 54925 >>Accept Heresy!
    .goto 1165,40.17,11.91
    .accept 54300 >>Accept Breaking the Faith
    .goto 1165,40.49,12.41
    .target Princess Talanji
    .target High Prelate Rata
    .target Zolani
step
    #completewith ZandalariTrollHeresy
    >>Defeat |cRXP_ENEMY_Furious Raptari Druids|r and |cRXP_ENEMY_Incensed Rastari Prelates|r
    .complete 54300,1 --12/12 Angered faithful subdued
    .mob Furious Raptari Druid
    .mob Incensed Rastari Prelate
step
    #completewith ZandalariTrollHeresy
    >>Evacuate |cRXP_FRIENDLY_Priests of Akunda|r
    .complete 54301,1 --10/10 Innocent bystanders evacuated
step
    #label ZandalariTrollHeresy
    >>Kill |cRXP_ENEMY_Prelate Kaj'ra|r
    .groundgoto 1165,45.50,19.77,20,0
    .goto 1165,50.72,16.60,20,0
    .goto 1165,50.86,11.01,20,0
    .goto 1165,50.72,16.60,20,0
    .goto 1165,50.86,11.01,20,0
    .goto 1165,50.84,13.63
    .complete 54925,1 --1/1 Prelate Kaj'ra slain
    .mob Prelate Kaj'ra
step
    >>Defeat |cRXP_ENEMY_Furious Raptari Druids|r and |cRXP_ENEMY_Incensed Rastari Prelates|r
    >>Evacuate the |cRXP_FRIENDLY_Priests|r
    .goto 1165,52.00,11.87,20,0
    .goto 1165,49.21,14.52,15,0
    .goto 1165,50.31,7.20,20,0
    .goto 1165,49.08,11.45,20,0
    .goto 1165,49.07,15.55,20,0
    .goto 1165,50.49,19.18,20,0
    .complete 54300,1 --12/12 Angered faithful subdued
    .complete 54301,1 --10/10 Innocent bystanders evacuated
    .mob Furious Raptari Druid
    .mob Incensed Rastari Prelate
    .target Priest of Akunda
    .target Priest of Krag'wa
    .target Raptari Druid
    .target Balina
step
    .groundgoto 1165,41.81,17.15,30,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_High Prelate Rata|r, |cRXP_FRIENDLY_Zolani|r, and |cRXP_FRIENDLY_Princess Talanji|r
    .turnin 54925 >>Turn in Heresy!
    .goto 1165,40.49,11.85
    .turnin 54300 >>Turn in Breaking the Faith
    .goto 1165,40.43,11.95
    .turnin 54301 >>Turn in Talanji's Mercy
    .accept 53825 >>Accept The New Zanchuli Council
    .goto 1165,40.56,11.97
    .target High Prelate Rata
    .target Zolani
    .target Princess Talanji
step
    #completewith next
    .goto 1167,46.53,40.27,10,0
    .goto 1167,37.33,24.93,10,0
    .goto 1167,45.02,15.53,10,0
    .goto 1166,56.09,44.27,20 >>Go into the pyramid
step
    >>Follow the arrow
    .goto 1166,61.24,38.93
    .complete 53825,1 --1/1 Meet the new Zanchuli Council
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Wardruid Loti|r, |cRXP_FRIENDLY_Lashk|r, |cRXP_FRIENDLY_Jo'nok|r, |cRXP_FRIENDLY_General Rakera|r, and |cRXP_FRIENDLY_Hexlord Raal|r
    .complete 53825,2 --1/1 Greet Wardruid Loti
    .goto 1166,63.05,24.49
    .complete 53825,3 --1/1 Greet Lash
    .goto 1166,64.62,26.47
    .complete 53825,4 --1/1 Greet Jo'nok
    .goto 1166,67.02,31.67
    .complete 53825,5 --1/1 Greet General Rakera
    .goto 1166,68.44,34.00
    .complete 53825,5 --1/1 Greet Hexlord Raal
    .goto 1166,69.73,36.00
    .target Wardruid Loti
    .target Lashk
    .target Jo'nok, Bulwark of Torcall
    .target General Rakera
    .target Hexlord Raal
step
    .goto 1166,60.47,38.75
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Princess Talanji|r
    .turnin 53825 >>Turn in The New Zanchuli Council
    .accept 53827 >>Accept The Council Has Spoken
    .timer 56,Blessing RP
    .target Princess Talanji
step
    >>Wait for the RP
    .goto 1166,60.47,38.75
    .complete 53827,1 --1/1 Zanchuli blessing given
step
    >>Kill the |cRXP_ENEMY_Widow's Eyes|r
    .goto 1166,60.47,38.75
    .complete 53827,2 --1/1 Survive the ambush
    .mob Widow's Eyes
step
    >>Kill the |cRXP_ENEMY_Samara|r
    .goto 1166,65.16,33.13
    .complete 53827,3 --1/1 Samara slain
    .mob Samara
step
    .goto 1166,60.48,38.76
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Princess Talanji|r
    .turnin 53827 >>Turn in The Council Has Spoken
    .accept 53828 >>Accept Gaze of the Loa
    .target Princess Talanji
step
    #completewith ZandalariTrollGazeoftheLoa
    .goto 1166,65.29,68.73,10,0
    .goto 1166,78.84,85.80,10,0
    .goto 1165,44.57,14.38
    .zone 1165 >>Follow the arrow to leave the pyramid
step
    .goto 1165,44.57,14.38
    .complete 53828,1 --1/1 Follow Talanji
step
    #label ZandalariTrollGazeoftheLoa
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Princess Talanji|r and |cRXP_FRIENDLY_Krag'wa the Huge|r
    .turnin 53828 >>Turn in Gaze of the Loa
    .goto 1165,44.57,14.38
    .accept 54031 >>Accept Gaze of the Loa: Krag'wa
    .goto 1165,44.21,14.92
    .target Princess Talanji
    .target Krag'wa the Huge
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Krag'wa the Huge|r
    .complete 54031,1 --1/1 Speak to Krag'wa
    .goto 1165,44.21,14.92
    .skipgossip 146208,1
    .timer 15,RP
    .target Krag'wa the Huge
step
    >>Just run away from the frogs with |T132307:0|t[Dash] (1) that attack you and wait until |cRXP_FRIENDLY_Princess Talanji|r has defeated them all
    .goto 1165,45.13,16.82
    .complete 54031,2 --1/1 Krag'wa's trial complete
step
    .goto 1165,44.25,14.88
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Krag'wa the Huge|r
    .turnin 54031 >>Turn in Gaze of the Loa: Krag'wa
    .accept 54033 >>Accept Gaze of the Loa: Gonk
    .target Krag'wa the Huge
step
    >>Follow the arrow up the pyramid
    .groundgoto 1165,46.06,16.17,15,0
    .goto 1165,46.30,12.28
    .complete 54033,1 --1/1 Follow Talanji
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gonk|r
    .goto 1165,46.51,12.02
    .skipgossip 146214,1
    .complete 54033,2 --1/1 Speak to Gonk
    .timer 44,Gonk RP
    .target Gonk
step
    .goto 1165,46.51,12.03
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gonk|r
    .turnin 54033 >>Turn in Gaze of the Loa: Gonk
    .accept 54032 >>Accept Gaze of the Loa: Pa'ku
    .target Gonk
step
    >>Follow the arrow up the pyramid
    .goto 1165,44.70,9.09
    .complete 54032,1 --1/1 Follow Talanji
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Pa'ku|r
    .goto 1165,44.58,8.89
    .skipgossip 146209,1
    .complete 54032,2 --1/1 Speak to Pa'ku
    .timer 44,Gonk RP
    .target Pa'ku
step
    >>Dodge the tornadoes and run back to |cRXP_FRIENDLY_Pa'ku|r
    .goto 1165,44.58,8.89
    .complete 54032,3 --1/1 Pa'ku's trial complete
step
    .goto 1165,44.58,8.91
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Pa'ku|r
    .turnin 54032 >>Turn in Gaze of the Loa: Pa'ku
    .accept 54034 >>Accept Gaze of the Loa: Bwonsamdi
    .target Pa'ku
step
    >>Follow |cRXP_FRIENDLY_Princess Talanji|r
    .goto 1165,43.63,7.41
    .complete 54034,1 --1/1 Follow Talanji
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bwonsamdi|r
    .goto 1165,43.29,6.88
    .skipgossip 146215,1
    .timer 51,Bwonsamdi RP
    .complete 54034,2 --1/1 Speak to Bwonsamdi
    .timer 25,Talanji RP
step
    .goto 1165,42.73,8.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Princess Talanji|r
    .turnin 54034 >>Turn in Gaze of the Loa: Bwonsamdi
    .accept 53830 >>Accept Queen of the Zandalari
    .target Princess Talanji
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Princess Talanji|r. Press "ESC" to skip the upcoming cutscene
    .skipgossip 145359,1
    .goto 1165,42.73,8.73
    .complete 53830,1 --1/1 Witness Talanji's address
    .target Princess Talanji
step
    .goto 1165,42.41,9.21
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Queen Talanji|r
    .turnin 53830 >>Turn in Queen of the Zandalari
    .accept 53719 >>Accept Allegiance of the Zandalari
    .target Queen Talanji
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lady Sylvanas Windrunner|r
    .goto 1165,41.41,10.62
    .complete 53719,1 --1/1 Talanji's invitation extended
    .target Lady Sylvanas Windrunner
step
    #completewith next
    .noflyable 862
    >>Jump down carefully
    .goto 1165,46.06,16.57,15,0
    .goto 1165,47.06,19.23,15,0
    .goto 1165,47.55,23.59,15,0
    .goto 1165,53.14,19.35
    .fly The Great Seal >>Fly to The Great Seal
step
    #completewith ZandalariTrollAllegianceoftheZandalari
    .noflyable 862
    .isQuestTurnedIn 47436
    .isOnQuest 53719
    .vehicle 131154 >>Click the Totem of Pa'ku
    .goto 1165,51.37,40.95
step
    #completewith ZandalariTrollAllegianceoftheZandalari
    .noflyable 862
    .isQuestTurnedIn 47443
    .isOnQuest 53719
    .goto 1165,49.93,42.24,10,0
    .goto 1164,37.75,71.70,10,0
    .goto 1164,20.56,72.09,5 >>Take the elevator to |cRXP_FRIENDLY_Queen Talanji|r
step
    #label ZandalariTrollAllegianceoftheZandalari
    .goto 1165,49.92,46.27
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tWait for the RP. Talk to |cRXP_FRIENDLY_Lady Sylvanas Windrunner|r
    .turnin 53719 >>Turn in Allegiance of the Zandalari
    .target Lady Sylvanas Windrunner
step
    .isQuestTurnedIn 53719
    +Congratulations! You've unlocked the Zandalari Trolls
]])