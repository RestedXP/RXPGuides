local _, addon = ...

if addon.game ~= "CLASSIC" then return end
local dangerousMobs = {
  ["Alliance"] = {
    ["Elwynn Forest"] = {
      ["Murloc Forager"] = {
        {
        MinLevel = 8,
        MaxLevel = 8,
        Classification = "Normal",
        Movement = "Slow Patrol",
        Notes = "50% heal potion",
        Location = ".line Elwynn Forest,79.91,56.14,80.03,56.86,79.46,58.63,79.10,58.80,78.40,58.67,78.28,58.47,79.03,56.84,79.42,56.51,79.28,55.59,79.56,55.47,79.91,56.14;.mob Murloc Forager"
        },
      },
      ["Princess"] = {
        {
        MinLevel = 9,
        MaxLevel = 9,
        Classification = "Normal",
        Movement = "Idle",
        Notes = "Has two adds, all boar charge",
        Location = ".pin Elwynn Forest,69.8,79.4;.mob Princess"
        },
      },
      ["Hogger"] = {
        {
        MinLevel = 11,
        MaxLevel = 11,
        Classification = "Elite",
        Movement = "Idle",
        Notes = "Charge / Stun",
        Location = ".pin Elwynn Forest,25.4,93.8;.pin Elwynn Forest,28.6,91.6;.pin Elwynn Forest,25.8,89.6;.pin Elwynn Forest,26.6,85.4;.pin Elwynn Forest,24.4,81.4;.mob Hogger"
        },
      },
      ["Murloc Streamrunner"] = {
        {
        MinLevel = 6,
        MaxLevel = 6,
        Classification = "Normal",
        Movement = "Fast Patrol",
        Notes = "Run around lake, can easily catch you off guard",
        Location = ".line Elwynn Forest,55.45,68.11,55.34,68.95,55.93,69.05,56.72,69.01,57.53,67.95,58.05,66.30,57.63,64.93,56.58,63.47,55.90,63.62;.mob Murloc Streamrunner"
        },
        {
        MinLevel = 6,
        MaxLevel = 6,
        Classification = "Normal",
        Movement = "Fast Patrol",
        Notes = "Run around lake, can easily catch you off guard",
        Location = ".line Elwynn Forest,51.37,68.90,52.20,68.61,53.41,68.85,54.03,68.82,54.72,68.67,55.41,69.03,56.12,69.05,57.23,68.28,57.71,67.23,57.72,65.50,56.62,63.67,54.93,63.63,54.02,63.24,53.38,63.79,52.56,65.71,52.01,66.23,51.74,66.39,51.10,65.84 ;.mob Murloc Streamrunner"
        },
        {
        MinLevel = 6,
        MaxLevel = 6,
        Classification = "Normal",
        Movement = "Fast Patrol",
        Notes = "Run around lake, can easily catch you off guard",
        Location = ".line Elwynn Forest,50.66,65.31,48.99,66.17,48.84,68.17,50.03,68.64,52.01,68.71,52.96,67.93,53.37,68.65,54.41,68.78,54.75,68.57,55.68,69.04,56.40,68.90,57.63,67.34,57.76,65.51,56.34,63.73,53.83,63.30,52.07,66.16,50.66,50.75 (fast);.mob Murloc Streamrunner"
        },
        {
        MinLevel = 6,
        MaxLevel = 6,
        Classification = "Normal",
        Movement = "Slow Patrol",
        Notes = "Patrol of 2",
        Location = ".line Elwynn Forest,50.50,68.56,51.03,68.93,52.00,68.70,52.41,68.59,53.37,68.84,54.83,68.52,55.68,69.08,57.00,68.73,57.69,67.16,57.90,65.78,57.29,64.36,56.57,63.56,54.68,63.37,53.27,63.65,52.97,63.98,52.57,65.58,52.12,66.24,51.29,65.95,50.66,65.35;.mob Murloc Streamrunner"
        },
        {
        MinLevel = 6,
        MaxLevel = 6,
        Classification = "Normal",
        Movement = "Slow Patrol",
        Notes = "Patrol of 2",
        Location = ".line Elwynn Forest,51.10,65.84,51.77,66.31,52.03,66.23,52.56,65.57,53.31,63.78,54.01,63.16,54.75,63.47,55.96,63.66,56.61,63.57,57.76,65.43,57.77,67.20,57.27,68.38,56.15,69.10,55.30,69.10,54.69,68.72,53.22,68.96,52.58,68.76,51.97,68.74,51.38,68.90;.mob Murloc Streamrunner"
        },
      },
      ["Thuros Lightfingers"] = {
        {
        MinLevel = 9,
        MaxLevel = 9,
        Classification = "Rare",
        Movement = "Idle",
        Notes = "Backstabs ",
        Location = ".pin Elwynn Forest,29.8,59.2;.pin Elwynn Forest,50.4,59.2;.pin Elwynn Forest,53.8,59.2;.pin Elwynn Forest,50.0,85.6;.pin Elwynn Forest,52.0,80.6;.pin Elwynn Forest,88.2,81.2;.pin Elwynn Forest,90.6,79.6;.pin Elwynn Forest,87.2,78.6;.pin Elwynn Forest,90.4,76.2;.mob Thuros Lightfingers"
        },
      },
      ["Morgaine the Sly"] = {
        {
        MinLevel = 10,
        MaxLevel = 10,
        Classification = "Rare",
        Movement = "Idle",
        Notes = "Backstabs ",
        Location = ".pin Elwynn Forest,31.6,64.8;.mob Morgaine the Sly"
        },
      },
    },
    ["Dun Morogh"] = {
      ["Vagash"] = {
        {
        MinLevel = 11,
        MaxLevel = 11,
        Classification = "Elite",
        Movement = "Idle",
        Notes = "Does a melee range knockdown",
        Location = ".pin Dun Morogh,62.4,46.2;.mob Vagash"
        },
      },
      ["Gibblewilt"] = {
        {
        MinLevel = 11,
        MaxLevel = 11,
        Classification = "Rare",
        Movement = "Idle",
        Notes = "High damage fireballs",
        Location = ".pin Dun Morogh,24.2,43.6;.pin Dun Morogh,26.4,36.6;.mob Gibblewilt"
        },
      },
      ["Great Father Arctikus"] = {
        {
        MinLevel = 11,
        MaxLevel = 11,
        Classification = "Rare",
        Movement = "Idle",
        Notes = "He can heal himself",
        Location = ".pin Dun Morogh,25.6,50.0;.pin Dun Morogh,22.0,51.0;.pin Dun Morogh,21.4,54.6;.pin Dun Morogh,23.4,54.2;.mob Great Father Arctikus"
        },
      },
    },
    ["Teldrassil"] = {
      ["Lord Melenas"] = {
        {
        MinLevel = 8,
        MaxLevel = 8,
        Classification = "Normal",
        Movement = "Idle",
        Notes = "Hits hard and sometimes has adds",
        Location = ".pin Teldrassil,51.6,50.2;.mob Lord Melenas"
        },
      },
      ["Bloodfeather Matriarch"] = {
        {
        MinLevel = 11,
        MaxLevel = 11,
        Classification = "Normal",
        Movement = "Idle",
        Notes = "Lots of damage, self-heals",
        Location = ".pin Teldrassil,32.2,32.8;.pin Teldrassil,34.2,29.8;.pin Teldrassil,36.8,28.0;.mob Bloodfeather Matriarch"
        },
      },
      ["Blackmoss the Fetid"] = {
        {
        MinLevel = 13,
        MaxLevel = 13,
        Classification = "Rare",
        Movement = "Idle",
        Notes = "Hits very hard",
        Location = ".pin Teldrassil,42.8,38.6;.pin Teldrassil,43.6,32.0;.pin Teldrassil,44.6,27.6;.pin Teldrassil,42.2,25.6;.mob Blackmoss the Fetid"
        },
      },
    },
    ["Westfall"] = {
      ["Malformed Defias Drone"] = {
        {
        MinLevel = 20,
        MaxLevel = 20,
        Classification = "Normal",
        Movement = "Slow Patrol",
        Notes = "Do a ton of damage, do not aggro",
        Location = ".line Westfall,69.53,73.68,69.46,74.39,69.68,75.17,70.09,75.70,70.54,75.92,70.90,75.87,71.22,75.54,71.50,75.04,71.82,74.33,71.70,73.16;.mob Malformed Defias Drone"
        },
      },
      ["Defias Pillager"] = {
        {
        MinLevel = 14,
        MaxLevel = 15,
        Classification = "Normal",
        Movement = "Idle",
        Notes = "High damage fireballs",
        Location = ".pin Westfall,42.0,69.0;.pin Westfall,44.6,65.6;.pin Westfall,45.6,69.0;.mob Defias Pillager"
        },
        {
        MinLevel = 14,
        MaxLevel = 15,
        Classification = "Normal",
        Movement = "Slow Patrol",
        Notes = "High damage fireballs",
        Location = ".line Westfall,37.42,58.20,37.08,58.01,36.71,57.62,36.60,56.95,36.71,56.33;.mob Defias Pillager"
        },
        {
        MinLevel = 12,
        MaxLevel = 13,
        Classification = "Normal",
        Movement = "Slow Patrol",
        Notes = "High damage fireballs",
        Location = ".line Westfall,43.05,67.05,43.13,68.48,43.36,68.94,43.84,68.86,44.18,68.56,44.14,67.04,43.80,66.21,43.21,66.17,43.05,67.05;.mob Defias Pillager"
        },
      },
      ["Defias Trapper"] = {
        {
        MinLevel = 12,
        MaxLevel = 13,
        Classification = "Normal",
        Movement = "Slow Patrol",
        Notes = "Net",
        Location = ".line Westfall,35.61,53.71,35.72,53.85,35.85,53.62,35.52,52.74,34.76,52.66,34.67,52.99,34.87,52.98,34.98,53.10,35.61,53.71;.mob Defias Trapper"
        },
      },
      ["Benny Blanco"] = {
        {
        MinLevel = 15,
        MaxLevel = 15,
        Classification = "Normal",
        Movement = "Idle",
        Notes = "High damage output, has an add",
        Location = ".pin Westfall,49.6,19.6;.mob Benny Blaanco"
        },
      },
      ["Vultros"] = {
        {
        MinLevel = 26,
        MaxLevel = 26,
        Classification = "Rare",
        Movement = "Idle",
        Notes = "Very high level rare",
        Location = ".pin Westfall,36.6,67.8;.pin Westfall,45.6,60.2;.pin Westfall,63.0,74.8;.pin Westfall,64.4,56.0;.pin Westfall,48.0,43.4;.pin Westfall,51.6,23.6;.mob Vultros"
        },
      },
      ["Foe Reaper 4000"] = {
        {
        MinLevel = 20,
        MaxLevel = 20,
        Classification = "Rare",
        Movement = "Idle",
        Notes = "Very high level rare",
        Location = ".pin Westfall,50.8,26.0;.pin Westfall,50.8,21.8;.pin Westfall,44.6,32.8;.pin Westfall,44.2,39.4;.pin Westfall,37.8,47.8;.pin Westfall,38.0,51.8;.mob Foe Reaper 4000"
        },
      },
      ["Leprithus"] = {
        {
        MinLevel = 19,
        MaxLevel = 19,
        Classification = "Rare",
        Movement = "Slow Patrol",
        Notes = "Has two adds, only spawns at night?",
        Location = ".pin Westfall,66.6,62.8;.pin Westfall,64.6,69.0;.pin Westfall,61.8,69.6;.pin Westfall,61.4,74.8;.pin Westfall,58.6,78.4;.mob Leprithus"
        },
      },
      ["Dust Devil"] = {
        {
        MinLevel = 18,
        MaxLevel = 19,
        Classification = "Normal",
        Movement = "Idle",
        Notes = "High level for area",
        Location = ".pin Westfall,40.6,22.6;.pin Westfall,35.6,36.2;.pin Westfall,33.8,50.6;.pin Westfall,34.8,67.4;.pin Westfall,38.8,61.4;.pin Westfall,42.6,60.2;.pin Westfall,46.8,48.6;.pin Westfall,43.6,42.0;.pin Westfall,54.6,41.0;.pin Westfall,61.6,36.0;.pin Westfall,63.8,52.0;.pin Westfall,68.8,74.0;.mob Dust Devil"
        },
      },
      ["Sergeant Brashclaw"] = {
        {
        MinLevel = 18,
        MaxLevel = 18,
        Classification = "Rare",
        Movement = "Slow Patrol",
        Notes = "Buffs nearby allies",
        Location = ".pin Westfall,35.0,33.8;.pin Westfall,37.0,27.6;.pin Westfall,40.8,31.8;.pin Westfall,38.0,37.8;.pin Westfall,37.8,33.2;.mob Sergeant Brashclaw"
        },
      },
    },
    ["Loch Modan"] = {
      ["Tunnel Rat Geomancer"] = {
        {
        MinLevel = 12,
        MaxLevel = 13,
        Classification = "Normal",
        Movement = "Idle",
        Notes = "High damage spells",
        Location = ".pin Loch Modan,36.2,26.6;.pin Loch Modan,35.4,18.4;.mob Tunnel Rat Geomancer"
        },
      },
      ["Stonesplitter Geomancer"] = {
        {
        MinLevel = 17,
        MaxLevel = 18,
        Classification = "Normal",
        Movement = "Idle",
        Notes = "High damage spells",
        Location = ".pin Loch Modan,66.8,58.0;.pin Loch Modan,70.4,61.0;.pin Loch Modan,67.4,63.2;.pin Loch Modan,72.6,66.6;.pin Loch Modan,68.4,68.4;.mob Stonesplitter Geomancer"
        },
      },
      ["Magosh"] = {
        {
        MinLevel = 21,
        MaxLevel = 21,
        Classification = "Rare",
        Movement = "Idle",
        Notes = "High damage spells / heals himself",
        Location = ".pin Loch Modan,70.0,66.2;.mob Magosh"
        },
      },
    },
    ["Darkshore"] = {
      ["The Threshwackonator 4100"] = {
        {
        MinLevel = 20,
        MaxLevel = 20,
        Classification = "Elite",
        Movement = "Idle",
        Notes = "High damage, fearable",
        Location = ".pin Darkshore,56.8,13.8;.mob The Threshwackonator 4100"
        },
      },
      ["Xabraxxis"] = {
        {
        MinLevel = 19,
        MaxLevel = 19,
        Classification = "Normal",
        Movement = "Idle",
        Notes = "Very high damage output when he enrages",
        Location = ".pin Darkshore,52.6,33.6;.mob Xabraxxis"
        },
      },
      ["Moonstalker Matriarch"] = {
        {
        MinLevel = 19,
        MaxLevel = 20,
        Classification = "Normal",
        Movement = "Slow Patrol",
        Notes = "Has a high dps add",
        Location = ".pin Darkshore,35.6,89.4;.pin Darkshore,39.2,90.2;.pin Darkshore,42.6,89.2;.pin Darkshore,40.0,94.0;.pin Darkshore,59.8,13.4;.pin Darkshore,61.0,11.4;.pin Darkshore,62.6,6.4;.mob Moonstalker Matriarch"
        },
      },
      ["Raging Reef Crawler"] = {
        {
        MinLevel = 20,
        MaxLevel = 21,
        Classification = "Normal",
        Movement = "Idle",
        Notes = "Thrashing crabs",
        Location = ".pin Darkshore,54.6,18.6;.pin Darkshore,56.6,16.0;.pin Darkshore,56.6,11.6;.mob Raging Reef Crawler"
        },
      },
      ["Greymist Oracle"] = {
        {
        MinLevel = 18,
        MaxLevel = 19,
        Classification = "Normal",
        Movement = "Idle",
        Notes = "High damage and heal",
        Location = ".pin Darkshore,55.6,12.6;.pin Darkshore,31.8,83.6;.pin Darkshore,31.6,88.0;.mob Greymist Oracle"
        },
      },
      ["Stormscale Myrmidon"] = {
        {
        MinLevel = 18,
        MaxLevel = 19,
        Classification = "Normal",
        Movement = "Idle",
        Notes = "Do a knockback, don't have back to edge of cave",
        Location = ".pin Darkshore,59.6,14.4;.pin Darkshore,58.0,18.2;.pin Darkshore,56.4,22.6;.pin Darkshore,59.6,25.0;.pin Darkshore,59.8,21.8;.mob Stormscale Myrmidon"
        },
      },
      ["Gravelflint Geomancer"] = {
        {
        MinLevel = 20,
        MaxLevel = 21,
        Classification = "Normal",
        Movement = "Idle",
        Notes = "High damage fireballs",
        Location = ".pin Darkshore,36.4,86.2;.mob Gravelflint Geomancer"
        },
      },
      ["Flagglemurk the Cruel"] = {
        {
        MinLevel = 16,
        MaxLevel = 16,
        Classification = "Rare",
        Movement = "Idle",
        Notes = "Has a stun and sinister strike, can burst you easily",
        Location = ".pin Darkshore,35.8,72.2;.pin Darkshore,36.6,70.2;.pin Darkshore,36.0,63.6;.pin Darkshore,37.6,62.0;.mob Flagglemurk the Cruel"
        },
      },
    },
    ["Redridge Mountains"] = {
      ["Blackrock Outrunner"] = {
        {
        MinLevel = 20,
        MaxLevel = 21,
        Classification = "Normal",
        Movement = "Fast Patrol",
        Notes = "Do a long net",
        Location = ".line Redridge Mountains,40.18,40.69,41.14,37.09,41.55,36.83,41.72,37.00;.mob Blackrock Outrunner"
        },
        {
        MinLevel = 20,
        MaxLevel = 21,
        Classification = "Normal",
        Movement = "Fast Patrol",
        Notes = "Do a long net",
        Location = ".line Redridge Mountains,38.41,41.37,38.91,41.01,40.15,41.53,41.78,39.42,42.79,39.42,43.23,40.10,45.50,39.63,45.73,39.36;.mob Blackrock Outrunner"
        },
        {
        MinLevel = 20,
        MaxLevel = 21,
        Classification = "Normal",
        Movement = "Fast Patrol",
        Notes = "Do a long net",
        Location = ".line Redridge Mountains,73.64,73.72,74.50,73.76,75.99,72.82,77.87,70.76,77.90,67.71,78.34,69.74,76.62,73.87,75.08,74.30,73.64,73.72 ;.mob Blackrock Outrunner"
        },
        {
        MinLevel = 20,
        MaxLevel = 21,
        Classification = "Normal",
        Movement = "Fast Patrol",
        Notes = "Do a long net",
        Location = ".line Redridge Mountains,75.66,79.80,76.73,78.41,77.27,76.96,77.26,76.35,75.95,74.70,74.38,74.08,71.73,75.12,71.35,74.79;.mob Blackrock Outrunner"
        },
        {
        MinLevel = 20,
        MaxLevel = 21,
        Classification = "Normal",
        Movement = "Fast Patrol",
        Notes = "Do a long net",
        Location = ".line Redridge Mountains,74.14,77.03,73.69,77.09,73.23,77.90,73.34,78.58,72.17,77.68,70.84,78.63,70.06,78.83,71.03,79.34,72.06,81.14,73.47,81.93,74.95,81.29,75.03,80.06,74.63,78.63,74.24,77.90,74.14,77.03;.mob Blackrock Outrunner"
        },
        {
        MinLevel = 20,
        MaxLevel = 21,
        Classification = "Normal",
        Movement = "Fast Patrol",
        Notes = "Do a long net",
        Location = ".line Redridge Mountains,76.34,79.60,75.79,79.50,74.35,81.27,72.56,80.98,72.11,80.37,76.97,82.15,76.85,80.85,76.40,80.36;.mob Blackrock Outrunner"
        },
      },
      ["Lieutenant Fangore"] = {
        {
        MinLevel = 26,
        MaxLevel = 26,
        Classification = "Normal",
        Movement = "Slow Patrol",
        Notes = "Has two adds tied to his leash",
        Location = ".pin Redridge Mountains,79.4,37.4;.mob Lieutenant Fangore"
        },
      },
      ["Black Dragon Whelp"] = {
        {
        MinLevel = 18,
        MaxLevel = 18,
        Classification = "Normal",
        Movement = "Slow Patrol",
        Notes = "Very high damage if fought at level",
        Location = ".pin Redridge Mountains,23.6,62.8;.pin Redridge Mountains,17.6,72.2;.pin Redridge Mountains,26.4,77.0;.pin Redridge Mountains,31.2,74.4;.pin Redridge Mountains,36.6,73.8;.pin Redridge Mountains,34.6,67.6;.pin Redridge Mountains,33.2,63.0;.pin Redridge Mountains,45.0,77.6;.pin Redridge Mountains,48.8,76.6;.pin Redridge Mountains,51.6,75.2;.pin Redridge Mountains,54.6,73.8;.pin Redridge Mountains,57.4,75.6;.pin Redridge Mountains,61.6,78.0;.pin Redridge Mountains,62.0,73.8;.pin Redridge Mountains,66.4,76.6;.pin Redridge Mountains,52.6,39.6;.pin Redridge Mountains,43.8,38.4;.pin Redridge Mountains,46.6,34.6;.pin Redridge Mountains,42.4,33.4;.pin Redridge Mountains,23.8,35.2;.mob Black Dragon Whelp"
        },
      },
      ["Murloc Minor Tidecaller"] = {
        {
        MinLevel = 17,
        MaxLevel = 18,
        Classification = "Normal",
        Movement = "Slow Patrol",
        Notes = "Hyperspawns",
        Location = ".line Redridge Mountains,48.48,71.84,47.91,71.41,47.14,71.96,47.85,71.03,47.88,70.44,47.57,69.59,47.74,68.33,49.27,68.66,50.19,70.19,50.62,70.50,50.35,71.30,48.82,71.27,48.48,71.84;.mob Murloc Minor Tidecaller"
        },
      },
    },
    ["Ashenvale"] = {
      ["Ruuzel"] = {
        {
        MinLevel = 22,
        MaxLevel = 22,
        Classification = "Normal",
        Movement = "Slow Patrol",
        Notes = "Has two adds, can be hard",
        Location = ".line Ashenvale,6.86,14.05,6.99,14.24,6.50,14.77,6.05,14.28,6.02,13.97,6.24,13.75,6.43,13.67,6.57,13.41,6.48,13.15,6.24,13.00,6.22,12.56,6.40,12.25,6.97,12.42,7.06,12.70,7.23,13.01,7.20,13.41,7.06,13.74,6.86,14.05;.mob Ruuzel"
        },
      },
      ["Saltspittle Oracle"] = {
        {
        MinLevel = 20,
        MaxLevel = 21,
        Classification = "Normal",
        Movement = "Slow Patrol",
        Notes = "Hits hard and heal",
        Location = ".line Ashenvale,21.22,41.42,21.08,41.03,20.89,40.85,20.43,40.95,19.98,41.11,19.73,41.21,19.52,41.45,19.49,41.75,19.84,43.60,20.10,44.11,20.45,44.28,20.85,44.13,20.99,43.89,21.01,43.37,21.15,42.95,21.22,41.42;.mob Saltspittle Oracle"
        },
      },
      ["Ilkrud Magthrull"] = {
        {
        MinLevel = 24,
        MaxLevel = 24,
        Classification = "Normal",
        Movement = "Idle",
        Notes = "Summons voidwalker, has succubus pet",
        Location = ".pin Ashenvale,25.2,60.6;.mob Ilkrud Magthrull"
        },
      },
      ["Eck'alom"] = {
        {
        MinLevel = 27,
        MaxLevel = 27,
        Classification = "Rare",
        Movement = "Idle",
        Notes = "15 second stun + frost shock; extremely dangerous",
        Location = ".pin Ashenvale,45.6,71.2;.pin Ashenvale,48.8,69.2;.pin Ashenvale,52.8,70.0;.unitscan Eck'alom"
        },
      },
    },
    ["Duskwood"] = {
      ["Stitches"] = {
        {
        MinLevel = 35,
        MaxLevel = 35,
        Classification = "Elite",
        Movement = "Fast Patrol",
        Notes = "Roaming elite",
        Location = ".line Duskwood,36.98,62.16,38.44,62.72,41.05,63.47,42.18,64.08,43.82,65.29,44.77,65.86,48.08,66.20,49.63,66.23,50.87,66.63,52.19,67.50,53.09,68.61,54.02,68.99,54.74,68.88,55.25,68.48,56.33,67.25,57.70,66.20,58.38,65.43,60.10,62.88,61.18,61.91,62.42,60.53,65.05,59.87,65.82,60.06,66.77,60.55,68.78,60.49,69.72,60.21,70.80,59.39,72.10,59.12,73.07,58.05,74.71,54.35,75.09,52.67,74.45,48.66,74.44,47.63;.mob Stitches"
        },
      },
      ["Mor'ladim"] = {
        {
        MinLevel = 35,
        MaxLevel = 35,
        Classification = "Elite",
        Movement = "Fast Patrol",
        Notes = "Roaming elite",
        Location = ".line Duskwood,18.51,39.03,17.77,40.52,16.51,39.12,16.72,34.24,17.54,35.99,18.35,36.32,19.00,35.77,20.17,35.62,20.60,36.84,20.36,38.46,21.64,40.96,21.01,41.74,20.21,40.69,19.86,42.16,19.04,42.40,18.61,41.82,18.58,40.57,18.98,39.46,19.07,37.55,18.65,37.52,18.32,37.79,18.51,39.03;.mob Mor'ladim"
        },
      },
      ["Nightbane Vile Fang"] = {
        {
        MinLevel = 29,
        MaxLevel = 30,
        Classification = "Normal",
        Movement = "Idle",
        Notes = "Hyperspawns",
        Location = ".pin Duskwood,59.4,80.2;.pin Duskwood,63.6,78.8;.pin Duskwood,71.4,74.4;.pin Duskwood,74.0,74.6;.pin Duskwood,72.6,66.4;.mob Nightbane Vile Fang"
        },
      },
    },
    ["Stonetalon Mountains"] = {
      ["Taskmaster Whipfang "] = {
        {
        MinLevel = 22,
        MaxLevel = 22,
        Classification = "Rare Elite",
        Movement = "Idle",
        Notes = "Fears, hits very fast",
        Location = ".pin Stonetalon Mountains,61.6,49.2;.pin Stonetalon Mountains,64.8,48.4;.pin Stonetalon Mountains,64.6,54.6;.pin Stonetalon Mountains,65.0,58.4;.pin Stonetalon Mountains,63.0,57.8;.pin Stonetalon Mountains,61.2,58.4;.pin Stonetalon Mountains,59.4,54.0;.pin Stonetalon Mountains,61.8,51.6;.mob Taskmaster Whipfang"
        },
      },
      ["Foreman Rigger"] = {
        {
        MinLevel = 24,
        MaxLevel = 24,
        Classification = "Rare Elite",
        Movement = "Idle",
        Notes = "Nets",
        Location = ".pin Stonetalon Mountains,69.6,44.4;.pin Stonetalon Mountains,69.2,48.6;.pin Stonetalon Mountains,68.0,54.0;.pin Stonetalon Mountains,65.4,55.4;.pin Stonetalon Mountains,62.8,52.4;.pin Stonetalon Mountains,63.6,47.0;.pin Stonetalon Mountains,66.6,46.8;.pin Stonetalon Mountains,65.6,51.4;.mob Foreman Rigger"
        },
      },
      ["Pridewing Patriarch"] = {
        {
        MinLevel = 25,
        MaxLevel = 25,
        Classification = "Rare",
        Movement = "Slow Patrol",
        Notes = "High level for area",
        Location = ".line Stonetalon Mountains,47.60,47.58,47.82,48.01,48.67,48.01,48.89,48.10,49.23,47.98,49.42,47.50,48.98,47.13,48.70,47.04,48.36,47.15,48.18,46.72,47.70,46.72,47.08,45.32,46.95,44.86,47.05,44.17,47.34,43.81,47.14,43.22,46.59,42.55,45.96,41.35,45.77,40.76,45.84,39.81,45.53,39.46,44.76,39.78,44.34,39.69,44.12,40.27,44.10,41.02,44.92,41.70,44.93,42.30,45.13,43.15,45.17,43.48,44.67,43.98,44.50,44.58,44.70,44.97,45.25,44.98,45.61,45.42,45.93,45.93,46.13,46.54,46.72,47.02,47.60,47.58;.mob Pridewing Patriarch"
        },
      },
    },
    ["Wetlands"] = {
      ["Dragonmaw Raider"] = {
        {
        MinLevel = 26,
        MaxLevel = 27,
        Classification = "Normal",
        Movement = "Idle",
        Notes = "Nets and dual wields/high dps",
        Location = ".pin Wetlands,40.2,46.4;.pin Wetlands,42.2,44.6;.pin Wetlands,42.0,39.4;.pin Wetlands,45.6,44.6;.pin Wetlands,47.8,46.0;.pin Wetlands,49.6,48.6;.pin Wetlands,52.4,45.8;.mob Dragonmaw Raider"
        },
      },
      ["Captain Halyndor"] = {
        {
        MinLevel = 30,
        MaxLevel = 30,
        Classification = "Normal",
        Movement = "Idle",
        Notes = "Reflects spells",
        Location = ".pin Wetlands,15.6,23.4;.mob Captain Halyndor"
        },
      },
      ["Mosshide Fenrunner"] = {
        {
        MinLevel = 22,
        MaxLevel = 23,
        Classification = "Normal",
        Movement = "Idle",
        Notes = "Hyperspawns",
        Location = ".pin Wetlands,38.8,33.8;.pin Wetlands,43.6,34.6;.pin Wetlands,45.8,31.8;.pin Wetlands,45.6,35.6;.pin Wetlands,61.0,58.6;.pin Wetlands,64.8,56.6;.pin Wetlands,64.2,61.8;.mob Mosshide Fenrunner"
        },
      },
    },
    ["Hillsbrad Foothills"] = {
      ["Tarren Mill Deathguard"] = {
        {
        MinLevel = 55,
        MaxLevel = 55,
        Classification = "Normal",
        Movement = "Slow Patrol",
        Notes = "Patrols up to the road leading into Alterac",
        Location = ".line Hillsbrad Foothills,61.36,20.02,61.07,20.17,60.84,20.47,60.51,21.05,59.98,21.29,59.62,21.23,59.27,21.05,59.07,20.78,58.91,20.45,58.80,20.03,58.28,19.54,58.06,19.48,57.61,19.70,57.27,19.78,56.92,19.82,56.70,19.76,56.37,19.57,56.05,19.58,55.83,19.66;.mob Tarren Mill Deathguard"
        },
      },
      ["Shadowy Assassin"] = {
        {
        MinLevel = 37,
        MaxLevel = 38,
        Classification = "Normal",
        Movement = "Idle",
        Notes = "Very high level, stealth, many spawn in Southshore",
        Location = ".pin Hillsbrad Foothills,49.0,55.2;.pin Hillsbrad Foothills,52.2,56.0;.pin Hillsbrad Foothills,51.6,62.4;.pin Hillsbrad Foothills,49.4,59.0;.mob Shadowy Assassin"
        },
      },
      ["Forsaken Courier"] = {
        {
        MinLevel = 35,
        MaxLevel = 35,
        Classification = "Normal",
        Movement = "Slow Patrol",
        Notes = "Roaming pack of 5",
        Location = ".line Hillsbrad Foothills,82.61,57.64,81.95,56.88,81.53,56.52,80.58,55.45,79.48,54.86,78.41,54.14,77.07,53.10,75.15,50.85,74.15,49.68,72.83,48.54,72.22,48.00,70.13,46.58,68.52,45.89,67.53,45.00,66.62,43.63,65.66,42.44,64.37,41.97,63.47,41.85,61.93,41.22,61.08,40.43,59.39,38.34,57.79,36.74,57.40,35.67,56.95,34.04,56.41,31.49,56.34,30.91,56.03,29.69,55.87,28.31,55.72,27.07,55.65,24.22,55.73,22.44,55.76,20.79,55.66,19.72,56.22,19.57,56.78,19.79,57.21,19.83,58.18,19.47,58.70,19.92;.mob Forsaken Courier"
        },
      },
      ["Helcular's Remains"] = {
        {
        MinLevel = 44,
        MaxLevel = 44,
        Classification = "Elite",
        Movement = "Idle",
        Notes = "Can spawn near Southshore",
        Location = ".pin Hillsbrad Foothills,52.6,53.2;.pin Hillsbrad Foothills,50.0,56.8;.mob Helcular's Remains"
        },
      },
    },
    ["Alterac Mountains"] = {
      ["Crushridge Mauler"] = {
        {
        MinLevel = 36,
        MaxLevel = 40,
        Classification = "Elite",
        Movement = "Slow Patrol",
        Notes = "Basic elite",
        Location = ".line Alterac Mountains,34.49,49.84,34.42,50.90,34.77,50.96,36.57,49.58,37.49,51.34,38.06,53.03,38.35,54.29,38.97,54.86,39.28,54.74;.mob Crushridge Mauler"
        },
      },
      ["Crushridge Warmonger"] = {
        {
        MinLevel = 36,
        MaxLevel = 40,
        Classification = "Elite",
        Movement = "Slow Patrol",
        Notes = "Calls for help",
        Location = ".line Alterac Mountains,38.06,53.66,38.17,52.65,38.75,51.61,39.12,51.15,39.31,50.61,39.65,50.14,39.84,48.34;.mob Crushridge Warmonger"
        },
      },
      ["Grel'borg the Miser"] = {
        {
        MinLevel = 39,
        MaxLevel = 39,
        Classification = "Elite",
        Movement = "Slow Patrol",
        Notes = "Basic elite; has a flame ward",
        Location = ".line Alterac Mountains,35.58,54.44,35.26,54.33,35.20,54.18,35.77,53.74,36.26,55.11,36.66,54.81,36.29,53.75,37.30,52.85,37.59,52.71,38.24,52.79,38.87,51.55,39.28,50.93,39.52,49.71,40.14,47.23,40.91,46.30,40.24,46.09,40.13,47.69,39.19,51.17,38.51,52.01,38.11,52.68,37.46,52.78,36.28,53.71,35.88,52.69,35.52,53.01,35.77,53.74,35.20,54.18,35.26,54.33,35.58,54.44;.mob Grel'borg the Miser"
        },
      },
      ["Lord Aliden Perenolde"] = {
        {
        MinLevel = 41,
        MaxLevel = 41,
        Classification = "Normal",
        Movement = "Idle",
        Notes = "High level for the area, has renew/PW:S, social aggro and house is bugged",
        Location = ".pin Alterac Mountains,40.1,15.2;.mob Lord Aliden Perenolde"
        },
      },
      ["Syndicate Assassin"] = {
        {
        MinLevel = 38,
        MaxLevel = 39,
        Classification = "Normal",
        Movement = "Idle",
        Notes = "Stealthed mobs around the house of Lord Aliden Perenolde, easily ass-pulled",
        Location = ".pin Alterac Mountains,38.50,21.80;.pin Alterac Mountains,40.77,19.50;.pin Alterac Mountains,41.17,15.45;.pin Alterac Mountains,39.55,12.48;.pin Alterac Mountains,36.88,12.91;.pin Alterac Mountains,37.45,16.39;.pin Alterac Mountains,39.17,14.94;.mob Syndicate Assassin"
        },
      },
      ["Syndicate Enforcer"] = {
        {
        MinLevel = 39,
        MaxLevel = 40,
        Classification = "Normal",
        Movement = "Idle",
        Notes = "Easily double pulled, they have a strong whirlwind ability",
        Location = ".pin Alterac Mountains,38.50,21.80;.pin Alterac Mountains,40.77,19.50;.pin Alterac Mountains,41.17,15.45;.pin Alterac Mountains,39.55,12.48;.pin Alterac Mountains,36.88,12.91;.pin Alterac Mountains,37.45,16.39;.pin Alterac Mountains,39.17,14.94;.mob Syndicate Enforcer"
        },
      },
      ["Narillasanz"] = {
        {
        MinLevel = 44,
        MaxLevel = 44,
        Classification = "Rare Elite",
        Movement = "Slow Patrol",
        Notes = "Fire breath, renews, immune to fear",
        Location = ".line Alterac Mountains,73.70,56.43,74.53,54.28,75.04,53.46,76.07,53.20,76.77,52.03,76.99,50.58,76.24,48.99,75.50,48.08,75.01,47.03,77.64,45.17,78.50,43.87,79.70,43.02,80.43,44.45,80.13,46.17,81.00,47.46,81.84,49.20,81.97,50.86,79.93,54.01,78.80,53.01,78.10,50.83,78.93,49.45,78.80,47.67,79.81,47.03,80.98,48.43,82.25,49.38,83.07,50.77,83.85,52.74,83.90,54.22,84.36,55.14,84.24,56.11,82.79,56.17,81.32,55.14,79.41,58.86,78.56,61.08,77.26,62.53,75.47,63.64,74.71,63.20,74.09,60.65,74.29,60.27,73.92,58.40,73.70,56.43;.mob Narillasanz"
        },
      },
    },
    ["Desolace"] = {
      ["Deepstrider Giant"] = {
        {
        MinLevel = 38,
        MaxLevel = 39,
        Classification = "Elite",
        Movement = "Slow Patrol",
        Notes = "Basic elite, but huge patrol/aggro radius",
        Location = ".line Desolace,20.63,88.19,21.44,84.50,21.99,83.60,23.25,83.11,24.82,81.41,25.37,82.24,25.64,82.89,26.21,82.62,27.05,82.83,27.95,82.73,29.15,82.07,29.83,81.93,30.25,81.30,31.67,80.18,32.30,79.85,33.08,80.02,33.55,79.68,33.73,78.98,33.92,77.68,34.43,76.92,34.64,75.67,35.26,75.39,36.42,75.53,37.62,75.59,39.06,78.94,39.68,79.18,40.22,79.16,40.74,80.26,41.26,80.97,42.45,81.10,43.46,81.14,44.09,80.94,44.64,80.15,44.78,78.92,44.72,77.79,44.69,77.08,44.69,76.65,44.26,75.89,44.02,74.65,43.90,73.38,43.23,72.16,42.80,71.30,42.60,70.16,42.02,69.08,41.91,68.11,42.00,67.77,41.86,65.67,42.02,64.33,42.73,63.53,43.45,63.25,44.11,62.36,44.18,60.67,44.25,59.69,44.06,57.83,43.57,56.78,43.46,55.42,43.46,52.20,43.54,50.72,43.94,49.79,44.29,48.30,44.35,47.11,44.56,45.95,44.68,44.88,44.69,43.46,44.68,42.47,44.96,41.34,45.61,40.99,45.72,40.06,46.51,39.79,47.10,40.00,48.03,39.95,48.60,40.20,48.61,41.23,49.12,42.36,49.30,43.55,49.37,44.65,49.54,45.53,50.12,46.73,50.70,46.91,52.38,46.77,53.71,46.78,54.27,47.36,54.77,47.76,55.29,48.02,55.95,47.94,56.08,47.90,56.76,47.18,57.54,46.95,58.39,47.06,59.21,47.45,60.02,48.01,60.53,48.81,61.24,48.97,61.24,50.30,61.87,51.25,61.86,52.58,61.86,54.86,61.92,55.79,61.84,57.18,61.90,58.40,61.90,58.95,62.69,59.75,63.31,60.78,63.37,61.61,63.43,62.05,63.39,63.60,63.41,65.39,63.45,66.17,63.43,67.01,62.54,67.57,62.03,67.69,61.46,67.97,61.02,68.63,60.59,68.90,59.96,69.83,59.42,70.45,59.24,71.37,59.51,72.27,59.65,72.71,59.71,73.91,59.69,74.62,59.79,75.99,59.69,78.04,59.58,78.94,59.00,79.13,58.66,79.82,58.19,80.03,57.90,80.56,58.29,81.60,58.52,82.09,58.48,82.73,58.40,83.86;.mob Deepstrider Giant"
        },
        {
        MinLevel = 38,
        MaxLevel = 39,
        Classification = "Elite",
        Movement = "Slow Patrol",
        Notes = "Basic elite, but huge patrol/aggro radius",
        Location = ".line Desolace,65.62,59.84,65.65,58.72,65.85,56.75,65.85,55.47,65.68,54.50,66.18,53.38,65.74,52.40,66.17,51.06,66.20,50.00,66.47,48.91,67.28,46.95,67.87,46.00,67.76,44.61,66.84,43.50,66.42,43.28,65.67,42.13,65.02,40.10,64.81,38.78,64.24,37.50,64.19,36.53,64.69,35.65,64.97,34.61,65.51,33.72,66.19,33.21,66.44,31.37,66.60,29.79,66.47,28.91,66.97,26.36,67.01,25.24,66.32,24.24,65.22,22.92,64.75,22.56,64.09,22.35,63.21,22.38,62.90,22.23,62.50,22.39,61.68,21.95,60.98,21.01,60.30,20.07,59.64,20.26,58.91,19.99,58.50,19.76,57.35,19.58,56.03,19.55,55.72,19.70,55.05,19.78,54.78,20.16,54.31,20.13,54.07,19.70,53.74,20.59,53.57,21.18,53.11,21.57,52.72,21.76,51.77,22.64,51.46,25.63,51.04,26.33,50.93,27.58,50.08,27.94,49.46,29.00,48.62,31.47,48.54,32.46,47.99,33.38,47.75,34.62,47.14,35.57,46.87,36.75,46.39,37.72,45.61,38.81,44.82,38.99,44.14,38.84,42.54,38.73,41.05,36.64,40.90,35.95,40.24,35.45,39.22,33.87,38.42,32.73,37.83,32.48,37.15,32.47,36.81,32.34,36.05,31.43,35.51,30.75,34.96,31.04,34.68,32.00,34.91,32.42,34.80,34.57,34.41,35.27,33.77,35.45,32.90,35.37,32.08,33.06,31.35,32.44,30.19,30.96,29.06,30.89,28.53,31.60,28.51,32.67,28.91,33.54,28.63,34.39,28.88,35.42,29.01,36.01,28.36,36.78,27.06,36.32,26.30,36.72,26.16,37.61,25.39,38.28,24.65,39.78,24.28,40.21,24.02,47.58,23.29,49.76,23.18,50.58,22.36,51.70,21.92,52.63,22.05,54.06,22.96,56.11,24.38,56.30,25.42,56.33;.mob Deepstrider Giant"
        },
      },
    },
    ["Stranglethorn Vale"] = {
      ["Bhag'thera"] = {
        {
        MinLevel = 40,
        MaxLevel = 40,
        Classification = "Elite",
        Movement = "Idle",
        Notes = "Hits hard/fast",
        Location = ".pin Stranglethorn Vale,48.8,20.0;.pin Stranglethorn Vale,49.8,24.6;.pin Stranglethorn Vale,47.6,28.8;.mob Bhag'thera"
        },
      },
      ["Tethis"] = {
        {
        MinLevel = 43,
        MaxLevel = 43,
        Classification = "Elite",
        Movement = "Idle",
        Notes = "Hamstrings",
        Location = ".pin Stranglethorn Vale,28.4,45.0;.pin Stranglethorn Vale,31.4,43.6;.pin Stranglethorn Vale,33.4,39.4;.mob Tethis"
        },
      },
      ["King Bangalash"] = {
        {
        MinLevel = 43,
        MaxLevel = 43,
        Classification = "Elite",
        Movement = "Idle",
        Notes = "Calls for help and summons adds at half HP",
        Location = ".pin Stranglethorn Vale,38.6,35.6;.mob King Bangalash"
        },
      },
      ["Garr Salthoof"] = {
        {
        MinLevel = 43,
        MaxLevel = 43,
        Classification = "Normal",
        Movement = "Idle",
        Notes = "Easily double-pulled, charges, stuns",
        Location = ".pin Stranglethorn Vale,29.2,88.8;.mob Garr Salthoof"
        },
      },
      ["Mogh the Undying"] = {
        {
        MinLevel = 44,
        MaxLevel = 44,
        Classification = "Elite",
        Movement = "Idle",
        Notes = "Summons adds, drains them for HP, hyperspawn",
        Location = ".pin Stranglethorn Vale,47.6,44.2;.mob Mogh the Undying"
        },
      },
      ["Lord Sakrasis"] = {
        {
        MinLevel = 45,
        MaxLevel = 45,
        Classification = "Normal",
        Movement = "Idle",
        Notes = "Executes",
        Location = ".pin Stranglethorn Vale,28.6,62.2;.mob Lord Sakrasis"
        },
      },
      ["Ana'thek the Cruel <Skullsplitter Chief>"] = {
        {
        MinLevel = 45,
        MaxLevel = 45,
        Classification = "Normal",
        Movement = "Slow Patrol",
        Notes = "Executes; pulls with 2 adds in busy area",
        Location = ".line Stranglethorn Vale,44.25,44.95,44.52,44.45,44.69,44.06,45.04,43.04,45.27,42.45,45.52,41.69,45.68,41.29,46.07,40.99,46.64,40.90,46.98,40.87;.mob Ana'thek the Cruel"
        },
      },
      ["Gorlash"] = {
        {
        MinLevel = 47,
        MaxLevel = 47,
        Classification = "Elite",
        Movement = "Idle",
        Notes = "AoE damage",
        Location = ".pin Stranglethorn Vale,36.6,69.6;.mob Gorlash"
        },
      },
      ["Fleet Master Firallon"] = {
        {
        MinLevel = 48,
        MaxLevel = 48,
        Classification = "Normal",
        Movement = "Idle",
        Notes = "Double-pull, dual wields/buffs adds",
        Location = ".pin Stranglethorn Vale,30.6,90.6;.mob Fleet Master Firallon"
        },
      },
      ["Bloodscalp Shaman"] = {
        {
        MinLevel = 33,
        MaxLevel = 34,
        Classification = "Normal",
        Movement = "Idle",
        Notes = "Enrage, Fire Nova, dense area",
        Location = ".pin Stranglethorn Vale,24.6,9.2;.pin Stranglethorn Vale,22.6,8.4;.pin Stranglethorn Vale,23.2,10.8;.pin Stranglethorn Vale,20.8,12.2;.pin Stranglethorn Vale,19.4,12.8;.pin Stranglethorn Vale,21.4,14.4;.mob Bloodscalp Shaman"
        },
      },
      ["Bloodscalp Berserker"] = {
        {
        MinLevel = 36,
        MaxLevel = 37,
        Classification = "Normal",
        Movement = "Idle",
        Notes = "Enrage, dense area",
        Location = ".pin Stranglethorn Vale,24.6,9.2;.pin Stranglethorn Vale,22.6,8.4;.pin Stranglethorn Vale,23.2,10.8;.pin Stranglethorn Vale,20.8,12.2;.pin Stranglethorn Vale,19.4,12.8;.pin Stranglethorn Vale,21.4,14.4;.mob Bloodscalp Berserker"
        },
      },
      ["Bloodscalp Headhunter"] = {
        {
        MinLevel = 36,
        MaxLevel = 37,
        Classification = "Normal",
        Movement = "Idle",
        Notes = "Enrage, net, dense area",
        Location = ".pin Stranglethorn Vale,24.6,9.2;.pin Stranglethorn Vale,22.6,8.4;.pin Stranglethorn Vale,23.2,10.8;.pin Stranglethorn Vale,20.8,12.2;.pin Stranglethorn Vale,19.4,12.8;.pin Stranglethorn Vale,21.4,14.4;.mob Bloodscalp Headhunter"
        },
      },
      ["Bloodscalp Hunter"] = {
        {
        MinLevel = 33,
        MaxLevel = 34,
        Classification = "Normal",
        Movement = "Idle",
        Notes = "Net, pet",
        Location = ".pin Stranglethorn Vale,24.6,9.2;.pin Stranglethorn Vale,22.6,8.4;.pin Stranglethorn Vale,23.2,10.8;.pin Stranglethorn Vale,20.8,12.2;.pin Stranglethorn Vale,19.4,12.8;.pin Stranglethorn Vale,21.4,14.4;.mob Bloodscalp Hunter"
        },
      },
      ["Gan'zulah"] = {
        {
        MinLevel = 41,
        MaxLevel = 41,
        Classification = "Normal",
        Movement = "Idle",
        Notes = "Enrage, dual wield, unavoidable multi-pull, high level for area, hits hard",
        Location = ".pin Stranglethorn Vale,23.8,8.6;.mob Gan'zulah"
        },
      },
      ["Mosh'Ogg Warmonger"] = {
        {
        MinLevel = 41,
        MaxLevel = 42,
        Classification = "Elite",
        Movement = "Idle",
        Notes = "Large aggro radius, near questing area",
        Location = ".pin Stranglethorn Vale,47.0,24.8;.pin Stranglethorn Vale,49.2,27.0;.pin Stranglethorn Vale,50.4,26.4;.pin Stranglethorn Vale,48.8,28.6;.pin Stranglethorn Vale,48.4,31.6;.pin Stranglethorn Vale,49.6,31.0;.mob Mosh'Ogg Warmonger"
        },
      },
      ["Mosh'Ogg Mauler"] = {
        {
        MinLevel = 43,
        MaxLevel = 44,
        Classification = "Elite",
        Movement = "Idle",
        Notes = "Large aggro radius, near questing area",
        Location = ".pin Stranglethorn Vale,47.0,24.8;.pin Stranglethorn Vale,49.2,27.0;.pin Stranglethorn Vale,50.4,26.4;.pin Stranglethorn Vale,48.8,28.6;.pin Stranglethorn Vale,48.4,31.6;.pin Stranglethorn Vale,49.6,31.0;.mob Mosh'Ogg Mauler"
        },
      },
      ["Mosh'Ogg Shaman"] = {
        {
        MinLevel = 43,
        MaxLevel = 44,
        Classification = "Elite",
        Movement = "Idle",
        Notes = "Large aggro radius, near questing area",
        Location = ".pin Stranglethorn Vale,47.0,24.8;.pin Stranglethorn Vale,49.2,27.0;.pin Stranglethorn Vale,50.4,26.4;.pin Stranglethorn Vale,48.8,28.6;.pin Stranglethorn Vale,48.4,31.6;.pin Stranglethorn Vale,49.6,31.0;.mob Mosh'Ogg Shaman"
        },
      },
      ["Jon-Jon the Crow"] = {
        {
        MinLevel = 43,
        MaxLevel = 44,
        Classification = "Normal",
        Movement = "Idle",
        Notes = "Triple-pull",
        Location = ".pin Stranglethorn Vale,34.8,51.8;.mob Jon-Jon the Crow"
        },
      },
    },
    ["Thousand Needles"] = {
      ["Heartrazor"] = {
        {
        MinLevel = 32,
        MaxLevel = 32,
        Classification = "Rare Elite",
        Movement = "Slow Patrol",
        Notes = "Poison deals considerable damage",
        Location = ".line Thousand Needles,15.45,40.02,15.58,40.55,15.67,41.06,15.98,41.43,16.19,41.42,16.33,41.56,16.53,41.46,17.01,41.54,17.62,40.66,18.20,41.13,18.13,41.73,18.19,42.07,17.93,42.52,17.52,42.60,16.99,41.91,17.01,41.54;.mob Heartrazor"
        },
      },
      ["Ironeye the Invincible"] = {
        {
        MinLevel = 32,
        MaxLevel = 32,
        Classification = "Rare Elite",
        Movement = "Slow Patrol",
        Notes = "Basic elite",
        Location = ".line Thousand Needles,88.58,76.11,87.99,75.23,87.89,74.49,88.01,73.43,87.81,71.05,87.53,70.40,87.18,70.68,86.28,72.06,86.54,72.94,87.47,74.18,87.85,75.29,87.77,75.87,87.03,76.81,86.78,77.59,86.93,78.28,86.92,79.04,86.79,79.52,86.99,80.73,87.27,81.04,87.54,80.91,88.63,79.81,88.94,78.91,88.99,77.27,88.72,76.20,88.58,76.11;.mob Ironeye the Invincible"
        },
      },
      ["Vile Sting"] = {
        {
        MinLevel = 34,
        MaxLevel = 34,
        Classification = "Rare Elite",
        Movement = "Slow Patrol",
        Notes = "Basic elite",
        Location = ".line Thousand Needles,69.86,64.43,70.49,63.62,70.97,63.43,71.45,63.63,71.48,64.19,71.15,65.20,71.15,65.86,71.74,66.12,72.14,66.13,72.56,66.70,72.27,67.50,72.15,67.72,71.92,68.91,71.94,69.58,72.51,70.25,72.89,71.01,72.94,71.26,72.51,71.98,71.92,72.62,71.54,73.21,71.29,73.52,71.41,73.70,71.52,73.71,71.27,74.50,71.40,75.72,72.74,75.70,73.13,74.62,73.13,74.18,72.89,73.48,72.41,72.96,71.56,72.51,71.23,72.58,70.69,71.29,70.50,70.58,70.33,69.62,70.46,69.24,70.35,68.54,70.00,68.03,69.69,66.71,69.68,65.37,69.86,64.43;.mob Vile Sting"
        },
      },
      ["Salt Flats Scavenger"] = {
        {
        MinLevel = 30,
        MaxLevel = 32,
        Classification = "Normal",
        Movement = "Idle",
        Notes = "Executes",
        Location = ".pin Thousand Needles,84.27,82.13;.pin Thousand Needles,87.56,65.48;.mob Salt Flats Scavenger"
        },
      },
      ["Silithid Searcher"] = {
        {
        MinLevel = 32,
        MaxLevel = 33,
        Classification = "Normal",
        Movement = "Idle",
        Notes = "Massive social aggro radius/call for help",
        Location = ".pin Thousand Needles,65.89,86.11;.pin Thousand Needles,68.69,83.74;.pin Thousand Needles,70.72,85.37;.pin Thousand Needles,69.40,88.20;.pin Thousand Needles,68.91,86.08;.mob Silithid Searcher"
        },
      },
      ["Salt Flats Vulture"] = {
        {
        MinLevel = 32,
        MaxLevel = 34,
        Classification = "Normal",
        Movement = "Idle",
        Notes = "Executes",
        Location = ".pin Thousand Needles,84.27,82.13;.pin Thousand Needles,87.56,65.48;.mob Salt Flats Vulture"
        },
      },
      ["Silithid Hive Drone"] = {
        {
        MinLevel = 33,
        MaxLevel = 34,
        Classification = "Normal",
        Movement = "Idle",
        Notes = "Massive social aggro radius/call for help",
        Location = ".pin Thousand Needles,65.89,86.11;.pin Thousand Needles,68.69,83.74;.pin Thousand Needles,70.72,85.37;.pin Thousand Needles,69.40,88.20;.pin Thousand Needles,68.91,86.08;.mob Silithid Hive Drone"
        },
      },
      ["Silithid Invader"] = {
        {
        MinLevel = 34,
        MaxLevel = 35,
        Classification = "Normal",
        Movement = "Idle",
        Notes = "Massive social aggro radius/call for help",
        Location = ".pin Thousand Needles,65.89,86.11;.pin Thousand Needles,68.69,83.74;.pin Thousand Needles,70.72,85.37;.pin Thousand Needles,69.40,88.20;.pin Thousand Needles,68.91,86.08;.mob Silithid Invader"
        },
      },
    },
    ["Arathi Highlands"] = {
      ["Highland Thrasher"] = {
        {
        MinLevel = 33,
        MaxLevel = 34,
        Classification = "Normal",
        Movement = "Idle",
        Notes = "Thrash mob",
        Location = ".pin Arathi Highlands,62.6,65.8;.pin Arathi Highlands,54.6,58.2;.pin Arathi Highlands,36.4,64.0;.pin Arathi Highlands,40.6,35.2;.pin Arathi Highlands,21.2,50.6;.mob Highland Thrasher"
        },
      },
      ["Boulderfist Ogre"] = {
        {
        MinLevel = 32,
        MaxLevel = 33,
        Classification = "Normal",
        Movement = "Idle",
        Notes = "Fist of Stone: +100 dmg per attack, 54% reduced attack/movement speed",
        Location = ".pin Arathi Highlands,53.54,76.79;.mob Boulderfist Ogre"
        },
      },
      ["Boulderfist Enforcer"] = {
        {
        MinLevel = 33,
        MaxLevel = 34,
        Classification = "Normal",
        Movement = "Idle",
        Notes = "Fist of Stone: +100 dmg per attack, 54% reduced attack/movement speed",
        Location = ".pin Arathi Highlands,53.54,76.79;.mob Boulderfist Enforcer"
        },
      },
      ["Witherbark Headhunter"] = {
        {
        MinLevel = 34,
        MaxLevel = 35,
        Classification = "Normal",
        Movement = "Idle",
        Notes = "Execute mobs and cast nets",
        Location = ".pin Arathi Highlands,73.51,65.03;.pin Arathi Highlands,70.53,69.56;.pin Arathi Highlands,64.73,73.47;.pin Arathi Highlands,61.17,72.58;.pin Arathi Highlands,63.28,67.56;.pin Arathi Highlands,66.31,64.25;.mob Witherbark Headhunter"
        },
      },
      ["Thundering Exile"] = {
        {
        MinLevel = 38,
        MaxLevel = 39,
        Classification = "Normal",
        Movement = "Idle",
        Notes = "High damage shock ability, sometimes double pull",
        Location = ".pin Arathi Highlands,52.02,50.69;.mob Thundering Exile"
        },
      },
      ["Forsaken Courier"] = {
        {
        MinLevel = 35,
        MaxLevel = 35,
        Classification = "Normal",
        Movement = "Slow Patrol",
        Notes = "Roaming pack of 5",
        Location = ".line Arathi Highlands,60.67,60.98,59.44,62.75,58.92,63.04,58.19,62.96,57.59,62.67,57.21,62.68,56.61,63.00,56.13,62.76,55.22,62.27,54.42,61.98,53.02,61.59,52.01,61.41,51.32,60.73,50.53,59.53,49.55,59.23,48.34,59.29,47.83,59.60,47.09,59.77,46.50,59.70,46.09,59.44,45.59,59.00,45.25,59.01,45.07,58.55,43.20,55.21,42.64,54.88,39.56,54.80,39.12,54.51,38.37,53.50,37.35,53.03,36.21,52.62,34.84,52.29,33.35,52.08,30.95,51.83,29.06,50.64,27.54,49.82,27.07,49.73,26.44,49.06,26.19,48.60,25.71,47.48,25.36,46.33,25.04,45.68,24.22,44.30,23.85,43.73,23.57,42.96,23.41,42.18,22.87,39.65,22.68,37.75,22.47,33.66,21.77,32.02,20.83,30.55,20.35,29.78,19.89,29.22;.mob Forsaken Courier"
        },
      },
      ["Otto"] = {
        {
        MinLevel = 38,
        MaxLevel = 38,
        Classification = "Elite",
        Movement = "Idle",
        Notes = "Multi-pull with stun and interrupt",
        Location = ".pin Arathi Highlands,26.0,65.6;.mob Otto"
        },
      },
    },
    ["Badlands"] = {
      ["Siege Golem"] = {
        {
        MinLevel = 40,
        MaxLevel = 40,
        Classification = "Rare Elite",
        Movement = "Slow Patrol",
        Notes = "Basic elite, nothing special",
        Location = ".line Badlands,41.68,39.71,40.13,40.09,38.96,40.24,37.78,41.88,36.55,42.56,35.95,43.69,34.97,44.76,34.27,46.35,33.49,47.82,33.21,49.64,32.64,51.13,32.20,52.67,31.78,55.21,31.31,56.80,30.62,57.90,29.48,58.40,27.88,58.13,23.79,57.55,21.26,58.27,20.23,57.85,19.28,58.58,18.87,59.91,18.68,60.39,16.24,63.49,14.81,64.16,11.92,64.04,10.60,63.71,7.83,61.88,6.99,61.68;.mob Siege Golem"
        },
      },
      ["Anathemus"] = {
        {
        MinLevel = 45,
        MaxLevel = 45,
        Classification = "Rare Elite",
        Movement = "Slow Patrol",
        Notes = "Patrolling around the zone",
        Location = ".pin Badlands,36.37,71.63;.pin Badlands,51.70,73.52;.pin Badlands,45.44,51.70;.pin Badlands,56.44,19.50;.pin Badlands,72.73,12.85;.pin Badlands,73.02,32.13;.mob Anathemus"
        },
      },
      ["Zaricotl"] = {
        {
        MinLevel = 55,
        MaxLevel = 55,
        Classification = "Rare Elite",
        Movement = "Idle",
        Notes = "Extremely high level for area",
        Location = ".pin Badlands,53.4,60.2;.pin Badlands,59.2,56.8;.pin Badlands,60.2,65.0;.pin Badlands,56.2,62.6;.pin Badlands,34.8,73.6;.pin Badlands,39.6,65.2;.pin Badlands,32.4,65.2;.pin Badlands,39.8,58.6;.pin Badlands,42.2,52.0;.pin Badlands,32.0,52.8;.pin Badlands,36.4,46.2;.mob Zaricotl"
        },
      },
      ["Boss Tho'grun"] = {
        {
        MinLevel = 41,
        MaxLevel = 42,
        Classification = "Normal",
        Movement = "Slow Patrol",
        Notes = "Quest mob patrolling around the zone with 4-6 mob entourage",
        Location = ".line Badlands,36.37,71.63,39.75,72.36,43.61,72.61,51.70,73.52,61.89,67.68,54.73,58.52,48.53,53.02,45.44,51.70,41.01,54.95,35.35,56.99,28.17,56.44,19.50,57.77,16.05,64.35,12.51,72.73,12.85,77.42,14.51,79.15,21.83,78.10,25.39,73.02,32.13,74.04,36.37,71.63;.mob Boss Tho'grun"
        },
      },
    },
    ["Dustwallow Marsh"] = {
      ["Brimgore"] = {
        {
        MinLevel = 45,
        MaxLevel = 45,
        Classification = "Rare Elite",
        Movement = "Slow Patrol",
        Notes = "Flame breath",
        Location = ".line Dustwallow Marsh,43.82,80.69,42.21,78.44,41.58,75.56;.mob Brimgore"
        },
      },
      ["Coral Shark"] = {
        {
        MinLevel = 46,
        MaxLevel = 47,
        Classification = "Elite",
        Movement = "Idle",
        Notes = "Extremely high level, thrashes, hard to see",
        Location = ".pin Dustwallow Marsh,75.6,32.0;.pin Dustwallow Marsh,81.0,52.8;.pin Dustwallow Marsh,74.8,72.8;.pin Dustwallow Marsh,78.2,69.0;.pin Dustwallow Marsh,67.4,61.2;.pin Dustwallow Marsh,67.2,57.2;.pin Dustwallow Marsh,69.0,55.2;.pin Dustwallow Marsh,70.6,52.4;.pin Dustwallow Marsh,70.6,49.4;.pin Dustwallow Marsh,72.6,53.6;.pin Dustwallow Marsh,71.4,57.8;.pin Dustwallow Marsh,62.6,32.0;.pin Dustwallow Marsh,62.6,28.2;.pin Dustwallow Marsh,62.8,23.8;.pin Dustwallow Marsh,65.8,22.4;.pin Dustwallow Marsh,65.6,20.2;.pin Dustwallow Marsh,66.8,27.8;.pin Dustwallow Marsh,65.8,30.8;.pin Dustwallow Marsh,64.8,32.6;.mob Coral Shark"
        },
      },
    },
    ["The Hinterlands"] = {
      ["Vilebranch Scalper"] = {
        {
        MinLevel = 46,
        MaxLevel = 47,
        Classification = "Normal",
        Movement = "Idle",
        Notes = "Executes",
        Location = ".pin The Hinterlands,48.2,66.3;.pin The Hinterlands,53.4,40.6;.pin The Hinterlands,67.2,45.6;.pin The Hinterlands,72.6,48.8;.mob Vilebranch Scalper"
        },
      },
      ["Vilebranch Ambusher"] = {
        {
        MinLevel = 47,
        MaxLevel = 48,
        Classification = "Normal",
        Movement = "Idle",
        Notes = "Has execute, 3 spawn during chicken escort",
        Location = ".pin The Hinterlands,69.6,62.4;.mob Vilebranch Ambusher"
        },
      },
      ["Gammerita"] = {
        {
        MinLevel = 48,
        MaxLevel = 48,
        Classification = "Elite",
        Movement = "Slow Patrol",
        Notes = "Hits hard, reduces armor, patrols coast",
        Location = ".line The Hinterlands,81.95,49.41,81.21,52.91,81.98,54.30,81.97,56.42,80.77,58.37,80.34,59.40,79.45,60.76,78.69,61.39,76.86,62.73,75.91,63.81,75.29,65.60,76.72,66.85,78.53,67.51,78.60,68.97,77.90,70.97,76.71,71.26,76.52,72.95,77.07,74.64;.mob Gammerita"
        },
      },
      ["Retherokk the Berserker"] = {
        {
        MinLevel = 48,
        MaxLevel = 48,
        Classification = "Rare",
        Movement = "Idle",
        Notes = "Enrage and Thrash",
        Location = ".pin The Hinterlands,50.8,62.6;.mob Retherokk the Berserker"
        },
      },
      ["Grimungous"] = {
        {
        MinLevel = 50,
        MaxLevel = 50,
        Classification = "Rare Elite",
        Movement = "Slow Patrol",
        Notes = "5 second aoe stun",
        Location = ".line The Hinterlands,70.26,52.47,69.32,52.28,68.77,51.89,68.54,51.59,68.24,50.31,68.05,48.59,67.21,48.03,66.21,47.91,65.82,48.76,65.17,48.43,64.31,47.29,63.88,48.42,64.20,49.38,64.45,50.15,64.73,51.15,64.90,51.56,65.49,51.70,65.75,52.88,65.76,53.56,65.81,54.12,65.34,54.90,65.47,56.27,65.80,57.20,66.91,57.14,67.93,57.70,68.40,58.99,68.55,59.85,69.30,60.49,70.78,59.00,71.59,58.63,72.21,58.77,72.49,58.93,72.90,58.34,73.00,57.08,73.38,56.03,74.22,55.21,75.03,55.45,75.41,55.23,75.99,55.04,76.24,53.76,76.54,52.72,77.21,51.26,77.00,50.46,76.34,49.67,75.28,49.38,74.45,49.44,74.00,50.40,73.21,50.76,72.93,52.85,72.50,53.47,72.06,53.30,71.66,53.05,71.61,52.84,71.03,53.21,70.26,52.47;.mob Grimungous"
        },
      },
    },
    ["Searing Gorge"] = {
      ["Dark Iron Sentry"] = {
        {
        MinLevel = 48,
        MaxLevel = 48,
        Classification = "Elite",
        Movement = "Idle",
        Notes = "Sees through stealth",
        Location = ".pin Searing Gorge,42.0,35.4;.pin Searing Gorge,34.2,54.0;.pin Searing Gorge,36.6,60.0;.pin Searing Gorge,43.4,62.0;.pin Searing Gorge,49.4,55.8;.mob Dark Iron Sentry"
        },
      },
      ["Twilight Dark Shaman"] = {
        {
        MinLevel = 47,
        MaxLevel = 48,
        Classification = "Elite",
        Movement = "Idle",
        Notes = "Painful shock/heals",
        Location = ".pin Searing Gorge,18.6,35.4;.pin Searing Gorge,22.0,36.6;.pin Searing Gorge,23.6,41.2;.pin Searing Gorge,26.6,34.6;.pin Searing Gorge,25.0,39.6;.mob Twilight Dark Shaman"
        },
      },
      ["Twilight Fire Guard"] = {
        {
        MinLevel = 48,
        MaxLevel = 49,
        Classification = "Elite",
        Movement = "Idle",
        Notes = "AoE fireball",
        Location = ".pin Searing Gorge,18.6,35.4;.pin Searing Gorge,22.0,36.6;.pin Searing Gorge,23.6,41.2;.pin Searing Gorge,26.6,34.6;.pin Searing Gorge,25.0,39.6;.pin Searing Gorge,25.8,29.6;.pin Searing Gorge,23.6,27.4;.pin Searing Gorge,27.8,25.0;.pin Searing Gorge,30.6,26.4;.mob Twilight Fire Guard"
        },
      },
      ["Twilight Geomancer"] = {
        {
        MinLevel = 49,
        MaxLevel = 50,
        Classification = "Elite",
        Movement = "Idle",
        Notes = "Rain of Fire",
        Location = ".pin Searing Gorge,25.8,29.6;.pin Searing Gorge,23.6,27.4;.pin Searing Gorge,27.8,25.0;.pin Searing Gorge,30.6,26.4;.pin Searing Gorge,16.2,33.6;.pin Searing Gorge,13.6,42.6;.pin Searing Gorge,17.6,43.8;.mob Twilight Geomancer"
        },
      },
      ["Overseer Maltorius"] = {
        {
        MinLevel = 49,
        MaxLevel = 50,
        Classification = "Elite",
        Movement = "Idle",
        Notes = "1-2 adds, ~300 damage shadow bolt",
        Location = ".pin Searing Gorge,41.0,35.4;.mob Overseer Maltorius"
        },
      },
      ["Twilight Idolater"] = {
        {
        MinLevel = 49,
        MaxLevel = 51,
        Classification = "Elite",
        Movement = "Idle",
        Notes = "Nets",
        Location = ".pin Searing Gorge,27.4,26.0;.pin Searing Gorge,29.6,26.6;.mob Twilight Idolater"
        },
      },
    },
    ["Tanaris"] = {
      ["Wastewander Assassin"] = {
        {
        MinLevel = 44,
        MaxLevel = 45,
        Classification = "Normal",
        Movement = "Idle",
        Notes = "Executes",
        Location = ".pin Tanaris,58.8,39.2;.pin Tanaris,58.8,36.4;.pin Tanaris,60.8,32.8;.pin Tanaris,60.6,39.0;.pin Tanaris,63.8,39.8;.pin Tanaris,63.2,37.4;.mob Wastewander Assassin"
        },
      },
      ["Dunemaul Warlock"] = {
        {
        MinLevel = 47,
        MaxLevel = 48,
        Classification = "Normal",
        Movement = "Idle",
        Notes = "Curse of Thorns, DoT, high damage shadow bolt",
        Location = ".pin Tanaris,39.0,74.0;.pin Tanaris,39.6,70.6;.pin Tanaris,42.0,71.2;.pin Tanaris,42.0,74.0;.pin Tanaris,45.8,63.8;.pin Tanaris,48.2,64.6;.pin Tanaris,46.8,66.8;.pin Tanaris,48.2,67.6;.pin Tanaris,38.4,57.8;.pin Tanaris,40.8,56.6;.pin Tanaris,39.6,53.0;.pin Tanaris,42.6,54.6;.mob Dunemaul Warlock"
        },
      },
      ["Centipaar Tunneler"] = {
        {
        MinLevel = 47,
        MaxLevel = 48,
        Classification = "Normal",
        Movement = "Idle",
        Notes = "Several spawn during Water Survey quest",
        Location = ".pin Tanaris,39.08,29.17;.mob Centipaar Tunneler"
        },
      },
      ["Glasshide Petrifier"] = {
        {
        MinLevel = 48,
        MaxLevel = 49,
        Classification = "Normal",
        Movement = "Idle",
        Notes = "8 second stun, but cast can be outranged",
        Location = ".pin Tanaris,30.2,52.0;.pin Tanaris,28.0,56.0;.pin Tanaris,28.0,60.4;.pin Tanaris,31.0,60.6;.pin Tanaris,31.2,56.8;.pin Tanaris,33.6,59.6;.pin Tanaris,32.6,55.6;.pin Tanaris,35.8,66.0;.pin Tanaris,33.0,68.4;.pin Tanaris,35.0,70.2;.pin Tanaris,35.8,75.0;.pin Tanaris,33.0,73.2;.pin Tanaris,30.0,71.8;.pin Tanaris,33.6,76.6;.pin Tanaris,43.6,76.0;.pin Tanaris,45.6,71.0;.pin Tanaris,47.8,77.0;.mob Glasshide Petrifier"
        },
      },
      ["Centipaar Swarmer"] = {
        {
        MinLevel = 49,
        MaxLevel = 50,
        Classification = "Normal",
        Movement = "Idle",
        Notes = "Summons can get out of hand very quickly",
        Location = ".pin Tanaris,32.8,50.6;.pin Tanaris,35.6,49.8;.pin Tanaris,36.8,45.6;.pin Tanaris,36.6,40.6;.pin Tanaris,34.4,38.4;.pin Tanaris,33.0,44.2;.pin Tanaris,33.4,46.6;.pin Tanaris,34.6,42.2;.mob Centipaar Swarmer"
        },
      },
      ["Hazzali Swarmer"] = {
        {
        MinLevel = 49,
        MaxLevel = 50,
        Classification = "Normal",
        Movement = "Idle",
        Notes = "Summons can get out of hand very quickly",
        Location = ".pin Tanaris,54.0,72.6;.pin Tanaris,54.6,75.8;.pin Tanaris,56.0,72.6;.pin Tanaris,57.6,70.6;.pin Tanaris,56.0,68.2;.pin Tanaris,54.8,70.4;.mob Hazzali Swarmer"
        },
      },
    },
    ["Feralas"] = {
      ["Edana Hatetalon"] = {
        {
        MinLevel = 50,
        MaxLevel = 50,
        Classification = "Elite",
        Movement = "Idle",
        Notes = "Quest mob",
        Location = ".pin Feralas,40.6,8.6;.mob Edana Hatetalon"
        },
      },
      ["Sea Spray"] = {
        {
        MinLevel = 47,
        MaxLevel = 48,
        Classification = "Normal",
        Movement = "Idle",
        Notes = "Geyser hits very hard, knocks far back, and slows",
        Location = ".pin Feralas,34.4,33.4;.pin Feralas,35.6,35.8;.pin Feralas,37.0,35.8;.pin Feralas,38.2,33.6;.pin Feralas,40.2,37.6;.pin Feralas,42.0,39.2;.pin Feralas,44.6,38.8;.pin Feralas,44.8,46.2;.pin Feralas,44.6,49.8;.pin Feralas,45.8,52.2;.pin Feralas,47.6,50.8;.pin Feralas,48.6,48.2;.pin Feralas,49.8,51.8;.pin Feralas,46.8,54.8;.pin Feralas,47.0,59.6;.pin Feralas,46.6,63.6;.pin Feralas,45.8,66.2;.mob Sea Spray"
        },
      },
      ["Hatecrest Myrmidon"] = {
        {
        MinLevel = 43,
        MaxLevel = 44,
        Classification = "Normal",
        Movement = "Idle",
        Notes = "Nets, hit hard",
        Location = ".pin Feralas,27.4,62.8;;.mob Hatecrest Myrmidon"
        },
      },
      ["Zukk'ash Wasp"] = {
        {
        MinLevel = 44,
        MaxLevel = 45,
        Classification = "Normal",
        Movement = "Idle",
        Notes = "Fast attack",
        Location = ".pin Feralas,72.8,62.8;.pin Feralas,76.6,63.0;.pin Feralas,76.6,59.8;.pin Feralas,73.4,60.6;.mob Zukk'ash Wasp"
        },
      },
      ["Northspring Slayer"] = {
        {
        MinLevel = 49,
        MaxLevel = 50,
        Classification = "Normal",
        Movement = "Idle",
        Notes = "Execute mobs",
        Location = ".pin Feralas,39.8,10.2;.pin Feralas,41.6,12.0;.pin Feralas,39.6,14.6;.pin Feralas,38.2,15.6;.pin Feralas,37.4,12.4;.pin Feralas,39.0,13.2;.mob Northspring Slayer"
        },
      },
    },
    ["Swamp of Sorrows"] = {
      ["Lord Captain Wyrmak"] = {
        {
        MinLevel = 45,
        MaxLevel = 45,
        Classification = "Rare Elite",
        Movement = "Slow Patrol",
        Notes = "Basic elite",
        Location = ".line Swamp of Sorrows,76.06,66.76,77.74,65.82,78.66,64.00,80.08,59.92,79.68,57.92,80.38,57.26,81.00,56.60,82.45,52.64,79.69,51.18,78.41,50.87,78.45,48.80,78.88,47.38,79.94,46.04,79.20,44.32,76.94,41.15,75.55,40.17,74.55,38.64,69.04,37.92,67.25,38.86,66.06,38.41,64.29,38.47,63.34,39.68,62.85,41.74;.mob Lord Captain Wyrmak"
        },
      },
      ["Swamp Talker"] = {
        {
        MinLevel = 50,
        MaxLevel = 50,
        Classification = "Normal",
        Movement = "Idle",
        Notes = "Extremely high level for area, summons adds",
        Location = ".pin Swamp of Sorrows,63.4,91.2;.pin Swamp of Sorrows,61.0,84.2;.pin Swamp of Sorrows,63.4,80.4;.mob Swamp Talker"
        },
      },
      ["Somnus"] = {
        {
        MinLevel = 60,
        MaxLevel = 60,
        Classification = "Elite",
        Movement = "Slow Patrol",
        Notes = "Sleep + knockback",
        Location = ".line Swamp of Sorrows,78.02,60.41,77.21,63.47,76.49,65.57,76.20,65.95,76.18,67.63,76.45,69.93,82.06,72.29,83.61,70.89,84.58,69.16,85.28,66.42,85.33,64.40,87.00,57.71,86.28,55.28,85.22,54.43,85.75,52.05,85.35,49.94,84.25,47.87,83.26,47.49,81.29,46.04,80.24,45.49,78.78,47.78,78.41,49.96,78.71,53.66,78.84,55.21,79.37,57.55,78.67,59.27,78.02,60.41;.mob Somnus"
        },
      },
    },
    ["Burning Steppes"] = {
      ["Frenzied Black Drake"] = {
        {
        MinLevel = 54,
        MaxLevel = 54,
        Classification = "Elite",
        Movement = "Idle",
        Notes = "Enrages, reduces block chance",
        Location = ".pin Burning Steppes,94.6,31.6;.mob Frenzied Black Drake"
        },
      },
      ["Malfunctioning Reaver"] = {
        {
        MinLevel = 56,
        MaxLevel = 56,
        Classification = "Normal",
        Movement = "Idle",
        Notes = "Stuns and knocks back near elites",
        Location = ".pin Burning Steppes,76.8,29.8;.pin Burning Steppes,81.8,29.2;.pin Burning Steppes,88.8,32.6;.pin Burning Steppes,90.6,46.8;.pin Burning Steppes,87.0,55.0;.pin Burning Steppes,84.0,62.2;.mob Malfunctioning Reaver"
        },
      },
      ["Volchan"] = {
        {
        MinLevel = 60,
        MaxLevel = 60,
        Classification = "Rare Elite",
        Movement = "Slow Patrol",
        Notes = "1200+ damage knockback/AoE",
        Location = ".line Burning Steppes,85.42,58.97,89.39,57.86,90.03,52.03,90.27,46.65,90.01,42.20,92.22,37.67,91.72,32.36,90.01,30.11,87.49,30.80,85.03,29.84,83.01,29.65,81.46,28.40,77.96,30.79,76.18,33.98,74.75,36.40,73.71,38.22,74.77,42.17,74.08,46.15,74.86,50.40,76.88,52.34,79.22,55.17,80.92,59.80,83.24,61.59,85.42,58.97;.mob Volchan"
        },
      },
      ["Hematos"] = {
        {
        MinLevel = 60,
        MaxLevel = 60,
        Classification = "Rare Elite",
        Movement = "Fast Patrol",
        Notes = "Roaming elite, breath attack",
        Location = ".line Burning Steppes,16.40,54.96,17.51,53.22,17.88,51.09,17.74,48.30,18.44,46.04,19.93,46.60,21.42,48.65,23.18,49.50,25.11,49.82,26.94,51.35,27.47,52.42,30.70,54.19,32.98,55.00,32.06,58.18,29.46,60.50,27.59,61.17,25.90,60.80,24.31,59.25,22.03,59.88,20.95,59.30,18.99,59.30,17.93,58.71,17.12,56.61,17.06,54.63;.mob Hematos"
        },
      },
      ["Black Drake"] = {
        {
        MinLevel = 50,
        MaxLevel = 52,
        Classification = "Elite",
        Movement = "Slow Patrol",
        Notes = "Roaming elite, breath attack",
        Location = ".line Burning Steppes,91.88,37.08,91.81,38.89,91.34,40.01,91.42,40.79,90.94,41.16,90.37,42.39,89.81,43.13,90.17,45.01,90.16,48.57,91.61,51.14,91.57,53.33,92.09,53.71,92.58,54.40,93.68,55.94;.mob Black Drake"
        },
        {
        MinLevel = 50,
        MaxLevel = 52,
        Classification = "Elite",
        Movement = "Slow Patrol",
        Notes = "Roaming elite, breath attack",
        Location = ".line Burning Steppes,89.76,52.54,89.88,55.43,89.51,56.94,87.83,57.28,85.71,59.33,83.51,60.25,82.51,61.78;.mob Black Drake"
        },
        {
        MinLevel = 50,
        MaxLevel = 52,
        Classification = "Elite",
        Movement = "Slow Patrol",
        Notes = "Roaming elite, breath attack",
        Location = ".line Burning Steppes,82.91,27.05,83.76,28.35,84.97,28.44,85.78,28.98,86.74,30.31,88.20,30.93,89.08,31.00,90.25,31.88,91.27,33.04,91.29,35.11,90.48,35.62,90.25,36.93,89.36,37.33,89.14,37.52,88.67,39.88;.mob Black Drake"
        },
      },
      ["Black Wyrmkin"] = {
        {
        MinLevel = 53,
        MaxLevel = 54,
        Classification = "Elite",
        Movement = "Idle",
        Notes = "Painful fireball/blast wave",
        Location = ".pin Burning Steppes,57.4,60.2;.pin Burning Steppes,76.8,62.2;.pin Burning Steppes,92.2,54.6;.pin Burning Steppes,88.8,37.6;.pin Burning Steppes,84.8,28.6;.mob Black Wyrmkin"
        },
      },
      ["Scalding Drake"] = {
        {
        MinLevel = 53,
        MaxLevel = 55,
        Classification = "Elite",
        Movement = "Idle",
        Notes = "Breath attack",
        Location = ".pin Burning Steppes,35.6,53.4;.pin Burning Steppes,40.0,62.4;.pin Burning Steppes,56.4,65.0;.pin Burning Steppes,62.4,58.6;.pin Burning Steppes,69.8,58.4;.pin Burning Steppes,85.8,95.0;.mob Scalding Drake"
        },
      },
      ["Blackrock Slayer"] = {
        {
        MinLevel = 56,
        MaxLevel = 57,
        Classification = "Normal",
        Movement = "Idle",
        Notes = "Executes",
        Location = ".pin Burning Steppes,40.2,33.8;.pin Burning Steppes,44.0,35.4;.pin Burning Steppes,39.6,55.6;.pin Burning Steppes,45.0,56.6;.pin Burning Steppes,44.4,50.4;.pin Burning Steppes,49.6,54.0;.pin Burning Steppes,56.0,52.8;.mob Blackrock Slayer"
        },
      },
      ["Gor'tesh"] = {
        {
        MinLevel = 54,
        MaxLevel = 54,
        Classification = "Normal",
        Movement = "Idle",
        Notes = "High burst damage + constant knockback",
        Location = ".pin Burning Steppes,39.4,56.6;.mob Gor'tesh"
        },
      },
    },
    ["Blasted Lands"] = {
      ["Teremus the Devourer"] = {
        {
        MinLevel = 60,
        MaxLevel = 60,
        Classification = "Elite",
        Movement = "Slow Patrol",
        Notes = "Raid boss, immune to cc/snare/fire, pulses damage, breath attack",
        Location = ".line Blasted Lands,45.37,23.42,46.53,21.52,48.73,22.21,51.81,25.45,53.10,27.52,54.07,27.65,56.10,31.05,57.64,34.56,60.06,36.28,61.54,38.09,63.00,36.07,63.54,35.33,63.94,33.29,63.50,31.20,62.90,30.44,61.31,28.62,60.81,27.30,60.31,26.53,58.54,27.84,57.51,28.33,56.94,29.23,56.55,31.32,55.87,34.38,53.27,36.70,50.95,37.33,47.13,38.89,45.42,43.43,46.54,47.86,48.97,51.64,50.16,50.91,51.26,50.03,53.13,49.22,55.34,46.61,56.65,44.70,56.34,42.17,54.60,39.66,51.48,37.97,48.89,35.65,44.72,33.72,44.39,30.60,44.47,26.38,45.37,23.42;.mob Teremus the Devourer"
        },
      },
      ["Helboar"] = {
        {
        MinLevel = 52,
        MaxLevel = 53,
        Classification = "Normal",
        Movement = "Idle",
        Notes = "Fire Nova and Charge, high burst",
        Location = ".pin Blasted Lands,44.6,32.4;.pin Blasted Lands,46.0,40.8;.pin Blasted Lands,48.0,34.4;.pin Blasted Lands,53.6,36.2;.pin Blasted Lands,54.8,44.8;.pin Blasted Lands,51.4,39.6;.pin Blasted Lands,46.6,48.2;.pin Blasted Lands,51.6,55.0;.mob Helboar"
        },
      },
      ["Black Slayer"] = {
        {
        MinLevel = 46,
        MaxLevel = 48,
        Classification = "Normal",
        Movement = "Idle",
        Notes = "Executes",
        Location = ".pin Blasted Lands,46.8,19.6;.pin Blasted Lands,50.6,17.4;.pin Blasted Lands,62.6,26.6;.pin Blasted Lands,56.6,37.8;.pin Blasted Lands,55.6,44.4;.mob Black Slayer"
        },
      },
    },
    ["Un'Goro Crater"] = {
      ["Blazerunner"] = {
        {
        MinLevel = 56,
        MaxLevel = 56,
        Classification = "Elite",
        Movement = "Idle",
        Notes = "Huge knockback, painful fire AoE if quest item unused",
        Location = ".pin Un'Goro Crater,49.2,49.0;.mob Blazerunner"
        },
      },
      ["Gruff"] = {
        {
        MinLevel = 57,
        MaxLevel = 57,
        Classification = "Rare Elite",
        Movement = "Idle",
        Notes = "Not sure if he has a short patrol path or not",
        Location = ".pin Un'Goro Crater,31.8,79.6;.pin Un'Goro Crater,31.8,71.4;.pin Un'Goro Crater,35.6,66.0;.pin Un'Goro Crater,37.8,75.6;.mob Gruff"
        },
      },
      ["Baron Charr"] = {
        {
        MinLevel = 58,
        MaxLevel = 58,
        Classification = "Elite",
        Movement = "Slow Patrol",
        Notes = "Patrols with 3 fire eles; stacking +fire damage taken debuff",
        Location = ".line Un'Goro Crater,55.02,40.84,54.29,40.75,53.28,41.54,52.65,41.77,51.70,41.34,50.05,42.04,49.23,42.24,48.02,42.91,47.14,42.84,46.09,43.57,45.44,44.52,45.17,44.95,44.78,45.01,43.95,46.91,43.63,47.90,43.75,48.69,44.74,50.26,45.17,51.17,45.28,52.03,45.16,52.94,44.94,53.96,45.35,54.76,46.47,55.67,47.50,56.45,48.12,56.63,49.77,56.87,50.56,56.58,51.31,55.97,52.23,56.30,53.09,57.13,54.92,58.05,55.81,57.13,56.31,56.34,56.37,55.16,56.11,53.17,56.06,51.16,56.71,45.98,56.70,44.36,56.43,42.59,55.89,41.82,55.02,40.84;.mob Baron Charr"
        },
      },
      ["Plated Stegodon"] = {
        {
        MinLevel = 52,
        MaxLevel = 54,
        Classification = "Elite",
        Movement = "Idle",
        Notes = "High armor, 5 sec stun",
        Location = ".pin Un'Goro Crater,26.0,54.6;.pin Un'Goro Crater,27.4,63.4;.pin Un'Goro Crater,30.8,70.2;.pin Un'Goro Crater,35.6,75.8;.pin Un'Goro Crater,40.8,77.8;.pin Un'Goro Crater,39.2,70.8;.pin Un'Goro Crater,35.2,68.4;.pin Un'Goro Crater,31.4,64.0;.pin Un'Goro Crater,37.0,61.4;.pin Un'Goro Crater,40.0,67.2;.mob Plated Stegodon"
        },
      },
      ["Stegodon"] = {
        {
        MinLevel = 53,
        MaxLevel = 53,
        Classification = "Elite",
        Movement = "Idle",
        Notes = "Charges, has 5 sec stun",
        Location = ".pin Un'Goro Crater,26.0,54.6;.pin Un'Goro Crater,27.4,63.4;.pin Un'Goro Crater,30.8,70.2;.pin Un'Goro Crater,35.6,75.8;.pin Un'Goro Crater,40.8,77.8;.pin Un'Goro Crater,39.2,70.8;.pin Un'Goro Crater,35.2,68.4;.pin Un'Goro Crater,31.4,64.0;.pin Un'Goro Crater,37.0,61.4;.pin Un'Goro Crater,40.0,67.2;.mob Stegodon"
        },
      },
      ["Spiked Stegodon"] = {
        {
        MinLevel = 53,
        MaxLevel = 54,
        Classification = "Elite",
        Movement = "Idle",
        Notes = "Passive thorns, 5 sec stun",
        Location = ".pin Un'Goro Crater,26.0,54.6;.pin Un'Goro Crater,27.4,63.4;.pin Un'Goro Crater,30.8,70.2;.pin Un'Goro Crater,35.6,75.8;.pin Un'Goro Crater,40.8,77.8;.pin Un'Goro Crater,39.2,70.8;.pin Un'Goro Crater,35.2,68.4;.pin Un'Goro Crater,31.4,64.0;.pin Un'Goro Crater,37.0,61.4;.pin Un'Goro Crater,40.0,67.2;.mob Spiked Stegodon"
        },
      },
      ["Tyrant Devilsaur"] = {
        {
        MinLevel = 54,
        MaxLevel = 55,
        Classification = "Elite",
        Movement = "Fast Patrol",
        Notes = "AoE Fear",
        Location = ".line Un'Goro Crater,57.37,23.89,59.71,28.76,60.41,28.49,63.04,25.96,64.67,26.25,66.24,27.37,67.66,25.84,69.71,26.20,70.35,28.52,70.15,30.43,69.32,30.86,68.58,32.16,67.35,31.50,66.03,31.83,65.66,33.07,65.84,34.85;.mob Tyrant Devilsaur"
        },
        {
        MinLevel = 54,
        MaxLevel = 55,
        Classification = "Elite",
        Movement = "Fast Patrol",
        Notes = "Knockback",
        Location = ".line Un'Goro Crater,31.29,36.58,32.35,37.27,33.37,38.65,36.55,41.44,37.56,43.66,39.82,55.59,38.72,57.29,39.55,60.15,39.92,61.85,41.70,64.18;.mob Devilsaur"
        },
      },
      ["Devilsaur"] = {
        {
        MinLevel = 54,
        MaxLevel = 55,
        Classification = "Elite",
        Movement = "Fast Patrol",
        Notes = "Knockback",
        Location = ".line Un'Goro Crater,62.59,59.21,63.41,59.30,64.01,60.17,64.73,60.23,65.87,59.21,66.89,58.10,69.59,57.31,71.13,51.60,71.77,50.20,72.75,49.60,73.72,49.25,74.33,46.66,75.75,44.95,75.12,43.14,75.28,40.91,74.40,39.86,74.46,38.65,73.69,37.87,74.31,36.36,74.35,33.06;.mob Devilsaur"
        },
        {
        MinLevel = 54,
        MaxLevel = 55,
        Classification = "Elite",
        Movement = "Fast Patrol",
        Notes = "Knockback",
        Location = ".line Un'Goro Crater,30.15,53.32,30.79,50.89,30.82,49.21,31.10,45.38,31.99,45.33,32.70,43.84,33.13,39.47,34.69,37.35,35.62,37.19,36.54,35.18,36.61,32.96,35.60,31.16,35.71,28.77,34.61,27.52,34.65,22.07;.mob Devilsaur"
        },
      },
      ["Ironhide Devilsaur"] = {
        {
        MinLevel = 54,
        MaxLevel = 55,
        Classification = "Elite",
        Movement = "Fast Patrol",
        Notes = "Knockback",
        Location = ".line Un'Goro Crater,56.55,33.92,55.84,36.22,57.56,40.04,59.44,44.54,56.71,47.42,57.32,52.52,59.83,57.24,59.06,60.14,57.34,63.74,57.65,67.31,59.59,69.83,57.86,73.60,59.04,76.36;.mob Devilsaur"
        },
        {
        MinLevel = 54,
        MaxLevel = 56,
        Classification = "Elite",
        Movement = "Fast Patrol",
        Notes = "High armor, long stun",
        Location = ".line Un'Goro Crater,43.55,80.17,44.51,79.04,44.59,76.94,45.37,74.80,46.51,74.12,46.67,69.68,46.19,68.51,46.03,66.17,47.31,62.85,49.05,61.92,50.93,60.08,52.85,58.94,53.60,59.09,54.56,60.91,54.43,63.34,52.69,65.54,52.51,70.90,53.62,72.82,53.74,73.90;.mob Ironhide Devilsaur"
        },
      },
      ["Thunderstomp Stegodon"] = {
        {
        MinLevel = 54,
        MaxLevel = 55,
        Classification = "Elite",
        Movement = "Idle",
        Notes = "Thunderclaps, has 5 sec stun",
        Location = ".pin Un'Goro Crater,26.0,54.6;.pin Un'Goro Crater,27.4,63.4;.pin Un'Goro Crater,30.8,70.2;.pin Un'Goro Crater,35.6,75.8;.pin Un'Goro Crater,40.8,77.8;.pin Un'Goro Crater,39.2,70.8;.pin Un'Goro Crater,35.2,68.4;.pin Un'Goro Crater,31.4,64.0;.pin Un'Goro Crater,37.0,61.4;.pin Un'Goro Crater,40.0,67.2;.mob Thunderstomp Stegodon"
        },
      },
      ["King Mosh"] = {
        {
        MinLevel = 60,
        MaxLevel = 60,
        Classification = "Rare Elite",
        Movement = "Idle",
        Notes = "RECKLESSNESS, Aoe fear, aoe damage, bleed",
        Location = ".pin Un'Goro Crater,29.04,36.41;.mob King Mosh"
        },
      },
    },
    ["Tirisfal Glades"] = {
      ["Unseen"] = {
        {
        MinLevel = 49,
        MaxLevel = 51,
        Classification = "Normal",
        Movement = "Idle",
        Notes = "Invisible mobs in UC courtyard, aggros if AoE'd",
        Location = ".pin Tirisfal Glades,58.8,68.1;.pin Tirisfal Glades,59.2,71.7;.pin Tirisfal Glades,64.0,71.7;.pin Tirisfal Glades,64.5,67.5;.mob Unseen"
        },
        {
        MinLevel = 49,
        MaxLevel = 51,
        Classification = "Normal",
        Movement = "Idle",
        Notes = "Invisible mobs in UC courtyard, aggros if AoE'd",
        Location = ".pin Tirisfal Glades,58.8,68.1;.pin Tirisfal Glades,59.2,71.7;.pin Tirisfal Glades,64.0,71.7;.pin Tirisfal Glades,64.5,67.5;.mob Unseen"
        },
      },
    },
    ["Undercity"] = {
      ["Unseen"] = {
        {
        MinLevel = 49,
        MaxLevel = 51,
        Classification = "Normal",
        Movement = "Idle",
        Notes = "Invisible mobs in UC courtyard, aggros if AoE'd",
        Location = ".pin Undercity,61.3,7.9;.pin Undercity,71.2,7.1;.pin Undercity,64.8,15.4;.pin Undercity,68.8,14.9;.mob Unseen"
        },
        {
        MinLevel = 49,
        MaxLevel = 51,
        Classification = "Normal",
        Movement = "Idle",
        Notes = "Invisible mobs in UC courtyard, aggros if AoE'd",
        Location = ".pin Undercity,61.3,7.9;.pin Undercity,71.2,7.1;.pin Undercity,64.8,15.4;.pin Undercity,68.8,14.9;.mob Unseen"
        },
      },
    },
    ["Felwood"] = {
      ["Spirit of Trey Lightforge"] = {
        {
        MinLevel = 53,
        MaxLevel = 53,
        Classification = "Elite",
        Movement = "Idle",
        Notes = "Spawns at the end of Rescue from Jaedenar, high damage output",
        Location = ".pin Felwood,35.6,59.0;.mob Spirit of Trey Lightforge"
        },
      },
      ["Dessecus"] = {
        {
        MinLevel = 56,
        MaxLevel = 56,
        Classification = "Rare Elite",
        Movement = "Idle",
        Notes = "Basic elite. Has a lightning cloud",
        Location = ".pin Felwood,58.2,17.8;.mob Dessecus"
        },
      },
      ["Immolatus"] = {
        {
        MinLevel = 56,
        MaxLevel = 56,
        Classification = "Rare Elite",
        Movement = "Slow Patrol",
        Notes = "Big knockback",
        Location = ".line Felwood,43.58,37.98,44.28,38.39,45.41,38.11,46.07,39.25,45.62,40.58,45.53,42.01,44.47,42.77,43.72,42.87;.mob Immolatus"
        },
      },
      ["Lord Banehollow"] = {
        {
        MinLevel = 59,
        MaxLevel = 59,
        Classification = "Elite",
        Movement = "Idle",
        Notes = "Curse of Thorns, high damage shock ability",
        Location = ".pin Felwood,36.0,44.6;.mob Lord Banehollow"
        },
      },
      ["Jadefire Shadowstalker"] = {
        {
        MinLevel = 51,
        MaxLevel = 52,
        Classification = "Normal",
        Movement = "Idle",
        Notes = "Stealth mobs with fire shield/thorns",
        Location = ".pin Felwood,32.2,66.0;.pin Felwood,33.6,66.6;.pin Felwood,36.4,66.8;.pin Felwood,37.6,66.6;.pin Felwood,38.4,69.6;.mob Jadefire Shadowstalker"
        },
      },
      ["Jadefire Trickster"] = {
        {
        MinLevel = 51,
        MaxLevel = 52,
        Classification = "Normal",
        Movement = "Idle",
        Notes = "Mind controls 2+ targets",
        Location = ".pin Felwood,32.2,66.0;.pin Felwood,33.6,66.6;.pin Felwood,36.4,66.8;.pin Felwood,37.6,66.6;.pin Felwood,38.4,69.6;.mob Jadefire Trickster"
        },
      },
      ["Jaedenar Adept"] = {
        {
        MinLevel = 51,
        MaxLevel = 52,
        Classification = "Normal",
        Movement = "Idle",
        Notes = "High damage fireball and fire blast; casts Blink",
        Location = ".pin Felwood,35.0,59.2;.pin Felwood,36.4,61.2;.pin Felwood,38.6,60.6;.mob Jaedenar Adept"
        },
      },
      ["Infernal Bodyguard"] = {
        {
        MinLevel = 53,
        MaxLevel = 54,
        Classification = "Elite",
        Movement = "Idle",
        Notes = "Big knockback",
        Location = ".pin Felwood,39.2,43.4;.pin Felwood,39.0,37.8;.pin Felwood,41.8,38.2;.pin Felwood,42.6,43.6;.pin Felwood,44.6,43.0;.pin Felwood,46.6,40.2;.pin Felwood,45.6,37.0;.pin Felwood,48.6,37.2;.pin Felwood,44.4,47.0;.mob Infernal Bodyguard"
        },
      },
      ["Deadwood Avenger"] = {
        {
        MinLevel = 54,
        MaxLevel = 55,
        Classification = "Normal",
        Movement = "Idle",
        Notes = "Enrages if their allies die around them; has -50% healing taken debuff",
        Location = ".pin Felwood,61.2,6.7;.pin Felwood,63.4,7.9;.pin Felwood,62.8,11.5;.mob Deadwood Avenger"
        },
      },
      ["Salia"] = {
        {
        MinLevel = 54,
        MaxLevel = 54,
        Classification = "Normal",
        Movement = "Idle",
        Notes = "Mind controls 2+ targets",
        Location = ".pin Felwood,39.6,47.0;.mob Salia"
        },
      },
    },
    ["Azshara"] = {
      ["Thundering Invader"] = {
        {
        MinLevel = 55,
        MaxLevel = 57,
        Classification = "Normal",
        Movement = "Idle",
        Notes = "Invasion mobs",
        Location = ".pin Azshara,72.8,22;.pin Azshara,73.0,16.8;.pin Azshara,74.18,21.2;.pin Azshara,78.0,26.2;.pin Azshara,81.6,22.4;.pin Azshara,82.6,17.8;.pin Azshara,77.0,15.8;.mob Thundering Invader"
        },
      },
      ["Monnos the Elder"] = {
        {
        MinLevel = 53,
        MaxLevel = 53,
        Classification = "Rare Elite",
        Movement = "Slow Patrol",
        Notes = "Huge knockback and a high-damage 5 sec aoe stun",
        Location = ".line Azshara,76.20,20.69,76.27,21.13,76.11,23.40,75.67,24.39,74.56,24.91,74.23,25.09,73.82,24.61,73.71,23.88,72.97,23.43,72.26,23.47,71.76,23.33,71.28,22.53,71.06,21.45,71.23,19.97,71.55,19.65,72.04,19.91,72.59,20.94,73.14,21.41,73.52,21.32,74.04,20.21,74.60,19.72,75.22,19.69,75.69,18.53,76.36,18.01,77.01,17.16,78.01,17.28,79.03,18.19,79.31,18.45,80.57,18.52,81.01,18.70,81.55,18.50,81.98,17.89;.mob Monnos the Elder"
        },
      },
      ["Avalanchion"] = {
        {
        MinLevel = 58,
        MaxLevel = 58,
        Classification = "Elite",
        Movement = "Slow Patrol",
        Notes = "Aoe stun + several adds that stun and interrupt",
        Location = ".line Azshara,82.17,20.69,81.93,22.12,81.54,23.16,80.97,23.85,79.12,24.49,77.70,25.02,77.21,25.04,76.65,24.33,76.22,23.15,74.96,22.07,72.94,20.81,72.65,20.18,72.56,19.07,73.01,18.11,75.30,16.67,77.46,16.69,79.24,18.26,81.74,18.58,82.07,19.26,82.17,20.69;.mob Avalanchion"
        },
      },
      ["Blood Elf Surveyor"] = {
        {
        MinLevel = 51,
        MaxLevel = 52,
        Classification = "Normal",
        Movement = "Idle",
        Notes = "Large aggro radius",
        Location = ".pin Azshara,55.2,26.4;.pin Azshara,58.2,30.8;.pin Azshara,59.2,29.6;.pin Azshara,56.6,28.8;.pin Azshara,57.8,26.4;.mob Blood Elf Surveyor"
        },
      },
      ["Blood Elf Reclaimer"] = {
        {
        MinLevel = 52,
        MaxLevel = 53,
        Classification = "Normal",
        Movement = "Idle",
        Notes = "Large aggro radius",
        Location = ".pin Azshara,55.2,26.4;.pin Azshara,58.2,30.8;.pin Azshara,59.2,29.6;.pin Azshara,56.6,28.8;.pin Azshara,57.8,26.4;.mob Blood Elf Reclaimer"
        },
      },
      ["Cliff Walker"] = {
        {
        MinLevel = 52,
        MaxLevel = 53,
        Classification = "Elite",
        Movement = "Idle",
        Notes = "Basic elite, nothing special",
        Location = ".pin Azshara,57.2,79.0;.pin Azshara,52.6,81.4;.pin Azshara,49.8,77.6;.pin Azshara,46.2,83.4;.pin Azshara,45.8,75.0;.pin Azshara,70.8,23.6;.pin Azshara,70.4,12.8;.pin Azshara,77.2,18.8;.mob Cliff Walker"
        },
      },
      ["Cliff Thunderer"] = {
        {
        MinLevel = 53,
        MaxLevel = 54,
        Classification = "Elite",
        Movement = "Idle",
        Notes = "Basic elite, nothing special",
        Location = ".pin Azshara,57.2,79.0;.pin Azshara,52.6,81.4;.pin Azshara,49.8,77.6;.pin Azshara,46.2,83.4;.pin Azshara,45.8,75.0;.pin Azshara,70.8,23.6;.pin Azshara,70.4,12.8;.pin Azshara,77.2,18.8;.mob Cliff Thunderer"
        },
      },
      ["Servant of Arkkoroc"] = {
        {
        MinLevel = 53,
        MaxLevel = 54,
        Classification = "Elite",
        Movement = "Idle",
        Notes = "Basic elite, nothing special",
        Location = ".pin Azshara,70.4,35.8;.pin Azshara,62.6,37.4;.pin Azshara,56.2,42.0;.pin Azshara,53.0,50.2;.pin Azshara,54.0,60.4;.pin Azshara,59.4,68.2;.pin Azshara,65.2,70.6;.pin Azshara,72.2,71.8;.pin Azshara,77.8,70.4;.pin Azshara,77.6,59.8;.pin Azshara,76.0,48.4;.pin Azshara,66.4,46.8;.pin Azshara,61.6,56.2;.pin Azshara,67.4,61.6;.pin Azshara,69.4,53.8;.mob Servant of Arkkoroc"
        },
      },
      ["Cliff Breaker"] = {
        {
        MinLevel = 53,
        MaxLevel = 54,
        Classification = "Elite",
        Movement = "Idle",
        Notes = "Instant-casts Cripple",
        Location = ".pin Azshara,57.2,79.0;.pin Azshara,52.6,81.4;.pin Azshara,49.8,77.6;.pin Azshara,46.2,83.4;.pin Azshara,45.8,75.0;.pin Azshara,70.8,23.6;.pin Azshara,70.4,12.8;.pin Azshara,77.2,18.8;.mob Cliff Breaker"
        },
      },
      ["Son of Arkkoroc"] = {
        {
        MinLevel = 54,
        MaxLevel = 44,
        Classification = "Elite",
        Movement = "Idle",
        Notes = "Basic elite, nothing special",
        Location = ".pin Azshara,70.4,35.8;.pin Azshara,62.6,37.4;.pin Azshara,56.2,42.0;.pin Azshara,53.0,50.2;.pin Azshara,54.0,60.4;.pin Azshara,59.4,68.2;.pin Azshara,65.2,70.6;.pin Azshara,72.2,71.8;.pin Azshara,77.8,70.4;.pin Azshara,77.6,59.8;.pin Azshara,76.0,48.4;.pin Azshara,66.4,46.8;.pin Azshara,61.6,56.2;.pin Azshara,67.4,61.6;.pin Azshara,69.4,53.8;.mob Son of Arkkoroc"
        },
      },
    },
    ["Winterspring"] = {
      ["Berserk Owlbeast"] = {
        {
        MinLevel = 58,
        MaxLevel = 59,
        Classification = "Normal",
        Movement = "Idle",
        Notes = "Enrages at low hp in dense areas",
        Location = ".pin Winterspring,63.6,16.2;.pin Winterspring,66.0,18.6;.pin Winterspring,66.6,22.8;.pin Winterspring,63.6,22.4;.pin Winterspring,59.6,59.8;.pin Winterspring,64.2,59.2;.pin Winterspring,66.6,60.0;.pin Winterspring,65.2,64.0;.pin Winterspring,65.2,61.8;.mob Berserk Owlbeast"
        },
      },
      ["Mezzir the Howler"] = {
        {
        MinLevel = 55,
        MaxLevel = 55,
        Classification = "Rare",
        Movement = "Idle",
        Notes = "3 second AoE fear",
        Location = ".pin Winterspring,31.6,37.4;.pin Winterspring,40.6,36.6;.pin Winterspring,45.0,37.4;.mob Mezzir the Howler"
        },
      },
      ["Spellmaw"] = {
        {
        MinLevel = 56,
        MaxLevel = 56,
        Classification = "Elite",
        Movement = "Slow Patrol",
        Notes = "Purges",
        Location = ".line Winterspring,57.18,52.58,56.57,51.93,56.38,51.56,56.23,51.10,56.12,50.37,56.27,48.95,55.86,48.92,55.40,48.50,55.42,47.84,55.75,47.29,56.15,46.92,56.97,46.71,57.47,46.98,57.86,47.35,58.50,47.54,58.88,47.54,59.42,47.60,59.58,47.66,59.86,48.34,60.35,48.21,60.64,48.29,61.11,49.30,61.00,49.66,60.72,49.84,60.80,50.02,61.09,50.45,60.99,51.93,60.54,53.18,60.15,52.93,59.91,52.99,59.32,53.43,58.68,54.30,58.14,54.32,57.36,53.31,57.18,52.58;.mob Spellmaw"
        },
      },
      ["Ursius"] = {
        {
        MinLevel = 56,
        MaxLevel = 56,
        Classification = "Elite",
        Movement = "Slow Patrol",
        Notes = "Hits for 330+",
        Location = ".line Winterspring,63.78,25.16,64.07,25.09,64.08,25.50,64.41,25.26,64.48,24.86,64.47,24.21,64.35,24.11,64.00,24.15,63.44,24.78,63.31,25.27,63.30,25.74,63.51,26.24,63.30,26.53,63.39,26.96,63.25,27.33,62.81,27.17,62.47,26.81,62.09,26.51,61.42,26.36,61.38,26.61,61.44,26.96,61.47,27.34,61.51,27.48,61.51,27.65,61.80,27.74,61.85,28.00,62.35,28.39,62.59,28.80,62.91,29.95,62.91,30.44,62.78,30.82,62.70,31.39,62.50,31.78,62.39,31.94,62.03,32.06,61.06,31.55,60.95,31.88,61.00,32.26,60.89,32.60,60.72,32.93,60.71,33.28,60.56,33.54,60.24,33.57,59.91,33.25,59.71,32.88,59.25,33.11,58.31,33.06,57.70,32.60,57.43,32.59,57.18,32.81,56.92,32.69,56.67,32.44,56.58,32.30,56.38,32.22,56.09,32.49;.mob Ursius"
        },
      },
      ["Rak'shiri"] = {
        {
        MinLevel = 57,
        MaxLevel = 57,
        Classification = "Rare Elite",
        Movement = "Idle",
        Notes = "4 second terrify",
        Location = ".pin Winterspring,52.4,14.6;.mob Rak'shiri"
        },
      },
      ["Winterfall Runner"] = {
        {
        MinLevel = 57,
        MaxLevel = 57,
        Classification = "Normal",
        Movement = "Slow Patrol",
        Notes = "Grouped with two other furbolg, usually one that can heal",
        Location = ".line Winterspring,28.07,35.29,28.02,36.46,28.32,37.14,28.47,37.92,28.53,39.39,28.80,39.76,29.32,40.86,29.91,42.27,30.44,42.54,31.65,42.44,32.60,42.17,33.59,41.99,34.67,41.91,36.04,42.16,38.21,41.98,40.23,40.75,42.32,39.97,44.29,39.90,46.45,39.66,48.38,38.86,49.19,38.15,49.35,37.79,49.65,37.59,50.57,36.63,51.67,36.21,52.25,35.75,52.75,35.30,53.46,34.27,53.75,33.38,53.93,32.50,53.97,31.32,54.60,30.91,55.51,30.05,57.14,29.72,58.07,28.93,58.74,27.94,59.01,26.99,59.24,26.48,60.37,25.02,60.62,24.75,61.11,24.44,61.29,24.35,61.92,23.82,62.34,23.92,62.37,24.95,62.21,25.30,62.60,25.99,63.04,26.55,63.50,27.81,63.95,28.34,64.12,28.94,64.10,30.84,64.21,31.40,64.97,33.08,65.44,33.48,66.44,33.71,66.63,33.93,66.80,34.47,66.87,34.87,66.97,35.22,67.53,37.01,68.12,37.76,68.65,38.20,68.76,38.13,68.94,37.84,69.29,38.40,69.61,38.29;.mob Winterfall Runner"
        },
      },
      ["Brumeran"] = {
        {
        MinLevel = 58,
        MaxLevel = 58,
        Classification = "Elite",
        Movement = "Slow Patrol",
        Notes = "Enrages, has ice armor",
        Location = ".line Winterspring,54.74,45.75,54.98,46.46,55.00,47.48,55.34,48.57,56.01,48.99,56.25,50.01,56.37,50.93,56.60,52.04,56.93,52.43,57.19,52.90,57.85,53.42,58.33,53.96,58.66,54.20,59.56,54.60,60.58,55.48,61.55,56.52,62.23,56.86,62.55,57.91,61.88,59.55,61.42,60.12,60.93,60.42,60.51,61.04,59.98,61.46,59.53,61.60,58.89,62.24,58.84,62.86;.mob Brumeran"
        },
      },
      ["High Chief Winterfall"] = {
        {
        MinLevel = 59,
        MaxLevel = 59,
        Classification = "Elite",
        Movement = "Idle",
        Notes = "Grouped with two other furbolg, usually one that can heal",
        Location = ".pin Winterspring,69.4,38.4;.mob High Chief Winterfall"
        },
      },
      ["Azurous"] = {
        {
        MinLevel = 59,
        MaxLevel = 59,
        Classification = "Rare Elite",
        Movement = "Slow Patrol",
        Notes = "Frost breath attack",
        Location = ".line Winterspring,54.54,45.52,54.79,45.82,54.96,46.67,55.00,47.49,55.21,48.01,55.42,48.03,55.68,47.58,55.84,46.81,55.89,46.33,56.10,45.97,56.55,45.85,56.99,45.83,57.34,45.26,57.59,44.47,57.84,44.01,58.27,43.79,58.72,44.01,59.28,43.84,59.82,42.37,60.13,41.83,61.16,41.41,61.52,41.23,62.04,41.19,62.46,41.39,62.94,41.89,63.46,41.85,63.83,41.67,64.01,41.68,64.28,42.30,64.66,42.77,65.07,42.95,65.51,43.33,65.88,43.74,66.24,44.28,66.56,44.90,66.61,45.65,66.62,47.67,66.63,48.77,66.87,49.68,66.35,51.25,66.26,52.16,66.80,53.98;.mob Azurous"
        },
      },
      ["Kashoch the Reaver"] = {
        {
        MinLevel = 60,
        MaxLevel = 60,
        Classification = "Rare Elite",
        Movement = "Idle",
        Notes = "Basic elite",
        Location = ".pin Winterspring,63.2,70.0;.mob Kashoch the Reaver"
        },
      },
      ["Princess Tempestria"] = {
        {
        MinLevel = 60,
        MaxLevel = 60,
        Classification = "Elite",
        Movement = "Slow Patrol",
        Notes = "Knockback, immune to banish, patrols with group",
        Location = ".line Winterspring,54.18,43.11,54.79,42.41,54.94,42.04,54.83,41.57,54.54,41.03,53.82,40.79,52.37,42.05,51.84,42.21,51.47,42.77,51.80,43.37,52.21,43.67,54.18,43.11;.mob Princess Tempestria"
        },
      },
      ["Watery Invader"] = {
        {
        MinLevel = 56,
        MaxLevel = 58,
        Classification = "Normal",
        Movement = "Idle",
        Notes = "~600 damage frost shock",
        Location = ".pin Winterspring,52.0,39.6;.pin Winterspring,51.4,43.4;.pin Winterspring,54.6,43.6;.pin Winterspring,54.8,39.4;.pin Winterspring,53.4,41.2;.mob Watery Invader"
        },
      },
      ["Frostsaber Stalker"] = {
        {
        MinLevel = 59,
        MaxLevel = 60,
        Classification = "Normal",
        Movement = "Idle",
        Notes = "Stealthed",
        Location = ".pin Winterspring,51.0,21.6;.pin Winterspring,53.4,17.4;.pin Winterspring,56.8,16.6;.pin Winterspring,56.8,11.8;.pin Winterspring,54.8,10.6;.pin Winterspring,52.4,10.4;.pin Winterspring,48.4,12.6;.pin Winterspring,49.0,17.0;.pin Winterspring,51.0,15.6;.pin Winterspring,53.6,13.2;.mob Frostsaber Stalker"
        },
      },
      ["Cobalt Whelp"] = {
        {
        MinLevel = 54,
        MaxLevel = 55,
        Classification = "Normal",
        Movement = "Idle",
        Notes = "High damage frost shock + bleed",
        Location = ".pin Winterspring,54.6,51.6;.pin Winterspring,57.6,50.2;.pin Winterspring,60.4,49.8;.mob Cobalt Whelp"
        },
      },
    },
    ["Silithus"] = {
      ["Krellack"] = {
        {
        MinLevel = 56,
        MaxLevel = 56,
        Classification = "Rare",
        Movement = "Idle",
        Notes = "\"Fatal Sting\" is an execute with a dot effect",
        Location = ".pin Silithus,65.80,30.32;.mob Krellack"
        },
      },
      ["Rex Ashil"] = {
        {
        MinLevel = 57,
        MaxLevel = 57,
        Classification = "Rare Elite",
        Movement = "Slow Patrol",
        Notes = "-75% armor debuff",
        Location = ".line Silithus,46.39,22.42,46.77,22.19,46.96,23.19,47.40,23.84,48.01,24.22,48.10,24.87,47.44,25.70,47.43,26.41,47.66,26.81,47.41,27.51,46.83,27.18,46.25,27.81,46.11,28.15,46.25,28.68,46.05,28.95,45.64,28.97;.mob Rex Ashil"
        },
      },
      ["Deathclasp"] = {
        {
        MinLevel = 59,
        MaxLevel = 59,
        Classification = "Elite",
        Movement = "Idle",
        Notes = "8 second stun (poison, no dot)",
        Location = ".pin Silithus,44.03,90.28;.mob Deathclasp"
        },
      },
      ["Zora"] = {
        {
        MinLevel = 59,
        MaxLevel = 59,
        Classification = "Rare Elite",
        Movement = "Idle",
        Notes = "Patrols around many adds",
        Location = ".pin Silithus,18.2,69.6;.pin Silithus,20.0,65.4;.pin Silithus,19.2,56.2;.pin Silithus,21.0,58.8;.pin Silithus,23.6,62.6;.pin Silithus,24.0,71.2;.pin Silithus,26.6,58.8;.pin Silithus,26.6,56.4;.mob Zora"
        },
      },
      ["Twilight Keeper Mayna"] = {
        {
        MinLevel = 60,
        MaxLevel = 60,
        Classification = "Normal",
        Movement = "Slow Patrol",
        Notes = "Fear, dot, mind flay in crowded camp",
        Location = ".line Silithus,27.04,35.62,26.72,35.85,26.53,36.18,26.45,36.55,26.06,37.09;.mob Twilight Keeper Mayna"
        },
      },
      ["The Windreaver"] = {
        {
        MinLevel = 60,
        MaxLevel = 60,
        Classification = "Elite",
        Movement = "Slow Patrol",
        Notes = "Many adds; chain lightning, shock, lightning cloud, cyclone",
        Location = ".line Silithus,24.49,28.14,23.77,27.52,23.07,27.69,22.19,28.42,21.08,28.95,20.20,29.03,19.56,28.59,19.11,27.40,18.92,26.32,18.31,23.16,18.81,22.10,19.74,21.84,20.48,22.26,21.00,24.14,21.11,25.10,21.36,25.91,21.94,26.68,23.76,27.37,24.93,27.86,25.64,27.88,26.90,26.85,27.75,26.62,28.59,26.25,29.38,25.34,29.58,24.44,29.62,23.56,29.52,21.89,29.77,20.09,29.67,18.65,29.49,17.70,29.03,16.72,28.94,15.60,29.28,14.98,30.02,14.83,30.48,14.83,32.16,14.35,32.96,14.45,33.55,15.25,33.61,16.41,33.10,18.01,32.16,19.34,31.66,20.49,31.01,21.23,29.76,26.12,28.62,28.47,27.95,29.22,27.44,29.57,26.69,29.50,24.99,28.56,24.49,28.14;.mob The Windreaver"
        },
      },
      ["Twilight Prophet"] = {
        {
        MinLevel = 60,
        MaxLevel = 60,
        Classification = "Elite",
        Movement = "Slow Patrol",
        Notes = "Multiple adds; fire nova, frost nova, chain lightning, fear",
        Location = ".line Silithus,20.00,83.28,22.00,79.02,25.23,77.02,25.82,75.72,26.51,75.19,27.31,74.15,27.37,72.44,26.91,71.37,25.69,70.84,24.93,69.98,23.95,69.24,23.47,68.65,23.16,68.66,22.86,68.52;.mob Twilight Prophet"
        },
      },
      ["Twilight Marauder Morna"] = {
        {
        MinLevel = 60,
        MaxLevel = 60,
        Classification = "Elite",
        Movement = "Slow Patrol",
        Notes = "Has 4 adds; mortal strikes and piercing howls",
        Location = ".line Silithus,52.35,11.78,52.94,14.46,55.73,17.11,58.41,20.25,60.31,23.07,63.43,27.06,63.35,30.35,71.46,35.72,72.84,37.69,72.09,39.87,70.25,42.40,64.6,44.1,60.1,44.9,53.1,55.1,44.4,59.5,42.8,73.4,37.3,79.7,36.3,80.0,34.4,85.0,30.9,89.2;.mob Twilight Marauder Morna"
        },
      },
      ["Lapress"] = {
        {
        MinLevel = 60,
        MaxLevel = 60,
        Classification = "Rare Elite",
        Movement = "Slow Patrol",
        Notes = "Patrols around many adds",
        Location = ".line Silithus,53.62,71.45,54.32,72.97,55.26,72.34,55.78,71.57,57.79,72.33,58.59,72.01,59.13,71.83,59.06,73.16,58.14,74.38,56.63,75.37,55.94,74.85,55.17,75.03,54.26,75.62,52.08,75.65,51.53,76.53,51.63,77.70,52.24,78.70,54.02,78.93,54.51,78.05,55.08,77.41,56.37,77.13,57.07,76.16,58.23,76.49,58.98,76.06,60.62,75.76,60.70,77.18,60.18,78.22,59.70,78.68,58.83,78.27,57.94,78.32,57.31,78.78,57.09,79.89,56.38,77.10,57.06,76.14,58.32,76.49,59.08,76.01,60.61,75.76,60.69,77.32,59.94,78.58,59.58,78.67,58.82,78.27,57.95,78.32,57.26,78.83,57.07,79.93,56.25,80.46,56.20,81.38,54.48,81.52,53.65,81.26,53.03,80.18,52.26,79.94,51.51,79.81,51.32,81.48,51.47,83.31,52.41,82.66,54.33,83.12,54.62,84.08,54.06,85.52,53.83,86.55,53.82,87.80,54.54,88.98,55.31,89.77,56.05,90.31,56.48,90.99,57.35,91.27,58.16,91.51,58.43,91.44,58.92,91.08,59.10,90.24,60.16,87.53,60.54,87.50,61.27,85.15,61.52,83.93,61.00,83.46,60.84,81.40,60.87,79.75,61.07,79.16,61.78,78.48,62.38,78.26,62.91,78.78,64.60,80.16,64.85,81.57,64.43,82.79,63.78,83.84,61.92,85.70,61.79,87.60,62.53,88.52,63.04,89.85,62.92,91.19,63.08,92.97,62.97,93.80;.mob Lapress"
        },
      },
      ["Mistress Natalia Maralith"] = {
        {
        MinLevel = 62,
        MaxLevel = 62,
        Classification = "Elite",
        Movement = "Idle",
        Notes = "Mind controls even if solo, then heals to full via reset (drags MCed players into many mobs deep in the cave)",
        Location = ".pin Silithus,51.8,99.4;.pin Silithus,53.6,98.0;.pin Silithus,53.8,95.2;.pin Silithus,52.6,91.6;.pin Silithus,52.2,89.8;.pin Silithus,53.8,88.2;.pin Silithus,55.8,87.2;.mob Mistress Natalia Maralith"
        },
      },
      ["Tortured Druid"] = {
        {
        MinLevel = 55,
        MaxLevel = 56,
        Classification = "Normal",
        Movement = "Idle",
        Notes = "Summons 2-3 silithid near death",
        Location = ".pin Silithus,66.0,49.6;.pin Silithus,63.8,47.2;.pin Silithus,60.8,49.6;.pin Silithus,58.6,52.6;.pin Silithus,58.8,55.8;.pin Silithus,61.6,58.4;.pin Silithus,65.0,58.4;.pin Silithus,61.6,54.0;.pin Silithus,62.8,51.8;.mob Tortured Druid"
        },
      },
      ["Tortured Sentinel"] = {
        {
        MinLevel = 55,
        MaxLevel = 56,
        Classification = "Normal",
        Movement = "Idle",
        Notes = "Summons 2-3 silithid near death",
        Location = ".pin Silithus,66.0,49.6;.pin Silithus,63.8,47.2;.pin Silithus,60.8,49.6;.pin Silithus,58.6,52.6;.pin Silithus,58.8,55.8;.pin Silithus,61.6,58.4;.pin Silithus,65.0,58.4;.pin Silithus,61.6,54.0;.pin Silithus,62.8,51.8;.mob Tortured Sentinel"
        },
      },
      ["Hive'Ashi Ambusher"] = {
        {
        MinLevel = 56,
        MaxLevel = 57,
        Classification = "Normal",
        Movement = "Idle",
        Notes = "3-4 spawn upon entering/ascending the village tower",
        Location = ".pin Silithus,60.2,52.6;.mob Hive'Ashi Ambusher"
        },
      },
    },
    ["Western Plaguelands"] = {
      ["Foulmane"] = {
        {
        MinLevel = 52,
        MaxLevel = 52,
        Classification = "Rare",
        Movement = "Slow Patrol",
        Notes = "Physical damage taken debuff, thrashes, bleeds",
        Location = ".line Western Plaguelands,45.69,52.34,45.75,51.39,46.20,51.03,46.64,51.29,46.72,51.95,46.36,52.37,45.69,52.34;.mob Foulmane"
        },
      },
      ["Cauldron Lord Bilemaw"] = {
        {
        MinLevel = 53,
        MaxLevel = 53,
        Classification = "Normal",
        Movement = "Idle",
        Notes = "Spawns as soon as player/pet approaches cauldron",
        Location = ".pin Western Plaguelands,36.8,57.2;.mob Cauldron Lord Bilemaw"
        },
      },
      ["Cauldron Lord Malvinious"] = {
        {
        MinLevel = 55,
        MaxLevel = 55,
        Classification = "Normal",
        Movement = "Idle",
        Notes = "Spawns as soon as player/pet approaches cauldron",
        Location = ".pin Western Plaguelands,46.2,52.6;.mob Cauldron Lord Malvinious"
        },
      },
      ["Lord Maldazzar"] = {
        {
        MinLevel = 56,
        MaxLevel = 56,
        Classification = "Rare",
        Movement = "Idle",
        Notes = "Summons adds, high damage output",
        Location = ".pin Western Plaguelands,48.2,81.0;.pin Western Plaguelands,48.2,78.6;.pin Western Plaguelands,49.6,82.4;.pin Western Plaguelands,49.8,78.6;.pin Western Plaguelands,50.6,75.4;.pin Western Plaguelands,54.6,79.8;.mob Lord Maldazzar"
        },
      },
      ["Cauldron Lord Razarch"] = {
        {
        MinLevel = 56,
        MaxLevel = 56,
        Classification = "Normal",
        Movement = "Idle",
        Notes = "Spawns as soon as player/pet approaches cauldron",
        Location = ".pin Western Plaguelands,52.8,66.0;.mob Cauldron Lord Razarch"
        },
      },
      ["Cavalier Durgen"] = {
        {
        MinLevel = 57,
        MaxLevel = 57,
        Classification = "Normal",
        Movement = "Slow Patrol",
        Notes = "Pats up and down the stairs, has a long HoJ",
        Location = ".pin Western Plaguelands,54.39,23.70;.mob Cavalier Durgen"
        },
      },
      ["Cauldron Lord Soulwrath"] = {
        {
        MinLevel = 58,
        MaxLevel = 58,
        Classification = "Normal",
        Movement = "Idle",
        Notes = "Spawns as soon as player/pet approaches cauldron",
        Location = ".pin Western Plaguelands,62.6,59.0;.mob Cauldron Lord Soulwrath"
        },
      },
      ["Scarlet Judge"] = {
        {
        MinLevel = 60,
        MaxLevel = 60,
        Classification = "Rare",
        Movement = "Idle",
        Notes = "Long stun in area full of elites/pats",
        Location = ".pin Western Plaguelands,42.6,18.6;.mob Scarlet Judge"
        },
      },
      ["Spectral Attendant"] = {
        {
        MinLevel = 60,
        MaxLevel = 60,
        Classification = "Normal",
        Movement = "Idle",
        Notes = "Inflicts the \"cripple\" debuff",
        Location = ".pin Western Plaguelands,45.6,69.2;.mob Spectral Attendant"
        },
      },
      ["Crimson Elite"] = {
        {
        MinLevel = 60,
        MaxLevel = 60,
        Classification = "Elite",
        Movement = "Idle",
        Notes = "Lingers if not slain during In Dreams",
        Location = ".pin Western Plaguelands,53.8,24.6;.mob Crimson Elite"
        },
      },
      ["Scarlet Executioner"] = {
        {
        MinLevel = 60,
        MaxLevel = 60,
        Classification = "Rare Elite",
        Movement = "Fast Patrol",
        Notes = "Enrages, high level, runs up/down the tower stairs",
        Location = ".pin Western Plaguelands,45.78,18.66;.mob Scarlet Executioner"
        },
      },
      ["Scarlet Interrogator"] = {
        {
        MinLevel = 61,
        MaxLevel = 61,
        Classification = "Rare Elite",
        Movement = "Idle",
        Notes = "Hits for 500-600, can social aggro easily",
        Location = ".pin Western Plaguelands,44.4,14.8;.mob Scarlet Interrogator"
        },
      },
      ["Araj the Summoner"] = {
        {
        MinLevel = 61,
        MaxLevel = 61,
        Classification = "Elite",
        Movement = "Idle",
        Notes = "Frostbolts hit hard, has lots of hp, and pulls with many mobs",
        Location = ".pin Western Plaguelands,45.6,69.2;.mob Araj the Summoner"
        },
      },
      ["High Protector Lorik"] = {
        {
        MinLevel = 61,
        MaxLevel = 61,
        Classification = "Elite",
        Movement = "Slow Patrol",
        Notes = "Hits hard, divine shields, heals, and has a ~20yd knockback/shock",
        Location = ".line Western Plaguelands,44.95,17.71,44.53,17.63,44.27,18.14,44.30,18.64,44.27,19.08,43.38,17.76,43.18,17.73,43.39,15.92,42.94,15.54,43.41,15.90,44.09,15.79,44.35,16.31,44.05,15.64,43.98,15.08,44.12,14.60,43.85,14.22,43.82,13.76,43.98,13.67,43.82,13.76,43.85,14.22,44.15,14.51,45.49,14.46,45.41,13.78,45.56,13.19,45.44,13.68,45.60,14.62,45.82,14.89,46.10,14.91,46.08,15.23,46.69,16.21,46.65,16.68,46.65,17.67,46.32,17.21,47.00,18.15,47.40,18.93,47.44,19.35,47.24,20.52,46.26,21.23,45.93,21.05,45.00,20.00,44.08,20.01,45.00,20.00,44.47,19.25,44.29,18.67,44.26,18.15,44.55,17.68,44.70,17.58,44.95,17.71;.mob High Protector Lorik"
        },
      },
      ["Foreman Jerris"] = {
        {
        MinLevel = 62,
        MaxLevel = 62,
        Classification = "Rare Elite",
        Movement = "Idle",
        Notes = "Stuns and thrashes",
        Location = ".pin Western Plaguelands,45.45,9.38;.mob Foreman Jerris"
        },
      },
      ["Scarlet High Clerist"] = {
        {
        MinLevel = 63,
        MaxLevel = 63,
        Classification = "Rare Elite",
        Movement = "Idle",
        Notes = "Big heal, often pulls with adds",
        Location = ".pin Western Plaguelands,55.0,23.6;.mob Scarlet High Clerist"
        },
      },
      ["Skeletal Flayer"] = {
        {
        MinLevel = 50,
        MaxLevel = 51,
        Classification = "Normal",
        Movement = "Idle",
        Notes = "Thrashes",
        Location = ".pin Western Plaguelands,48.2,81.0;.pin Western Plaguelands,48.2,78.6;.pin Western Plaguelands,49.6,82.4;.pin Western Plaguelands,49.8,78.6;.pin Western Plaguelands,50.6,75.4;.pin Western Plaguelands,54.6,79.8;.pin Western Plaguelands,36.2,57.4;.pin Western Plaguelands,37.6,59.6;.pin Western Plaguelands,37.4,55.2;.pin Western Plaguelands,38.6,57.4;.pin Western Plaguelands,38.6,53.4;.mob Skeletal Flayer"
        },
      },
      ["Skeletal Terror"] = {
        {
        MinLevel = 52,
        MaxLevel = 54,
        Classification = "Normal",
        Movement = "Idle",
        Notes = "Fears in a crowded area",
        Location = ".pin Western Plaguelands,44.8,52.2;.pin Western Plaguelands,46.6,51.6;.pin Western Plaguelands,47.4,49.2;.mob Skeletal Terror"
        },
      },
      ["Skeletal Executioner"] = {
        {
        MinLevel = 54,
        MaxLevel = 55,
        Classification = "Normal",
        Movement = "Idle",
        Notes = "Executes",
        Location = ".pin Western Plaguelands,39.6,70.4;.pin Western Plaguelands,41.2,67.4;.pin Western Plaguelands,45.0,65.4;.pin Western Plaguelands,49.4,65.8;.pin Western Plaguelands,48.4,71.8;.pin Western Plaguelands,44.4,72.6;.pin Western Plaguelands,41.0,70.6;.pin Western Plaguelands,44.6,68.6;.mob Skeletal Executioner"
        },
      },
      ["Freezing Ghoul"] = {
        {
        MinLevel = 55,
        MaxLevel = 56,
        Classification = "Normal",
        Movement = "Idle",
        Notes = "Has a 5 second stun",
        Location = ".pin Western Plaguelands,52.4,63.0;.pin Western Plaguelands,53.6,67.6;.mob Freezing Ghoul"
        },
      },
      ["Scarlet Paladin"] = {
        {
        MinLevel = 55,
        MaxLevel = 56,
        Classification = "Elite",
        Movement = "Idle",
        Notes = "Standard elite mob",
        Location = ".pin Western Plaguelands,42.6,18.6;.pin Western Plaguelands,42.0,15.6;.pin Western Plaguelands,44.8,16.4;.pin Western Plaguelands,47.2,20.2;.mob Scarlet Paladin"
        },
      },
      ["Scarlet Sentinel"] = {
        {
        MinLevel = 55,
        MaxLevel = 56,
        Classification = "Elite",
        Movement = "Idle",
        Notes = "Sees through talented stealth, and has overpower",
        Location = ".pin Western Plaguelands,42.6,18.6;.pin Western Plaguelands,42.0,15.6;.pin Western Plaguelands,44.8,16.4;.pin Western Plaguelands,47.2,20.2;.pin Western Plaguelands,48.8,22.2;.mob Scarlet Sentinel"
        },
      },
      ["Temporal Parasite"] = {
        {
        MinLevel = 55,
        MaxLevel = 57,
        Classification = "Normal",
        Movement = "Idle",
        Notes = "Lingers if not slain; long slow, multiplies on death",
        Location = ".pin Western Plaguelands,44.8,61.4;.pin Western Plaguelands,48.6,63.6;.pin Western Plaguelands,48.0,66.6;.pin Western Plaguelands,49.6,69.2;.mob Temporal Parasite"
        },
      },
      ["Scarlet Priest"] = {
        {
        MinLevel = 55,
        MaxLevel = 57,
        Classification = "Elite",
        Movement = "Idle",
        Notes = "Standard elite mob with a big heal",
        Location = ".pin Western Plaguelands,43.2,20.8;.pin Western Plaguelands,47.0,20.2;.pin Western Plaguelands,47.6,16.8;.mob Scarlet Priest"
        },
      },
      ["Scarlet Avenger"] = {
        {
        MinLevel = 56,
        MaxLevel = 57,
        Classification = "Normal",
        Movement = "Idle",
        Notes = "Thrashes",
        Location = ".pin Western Plaguelands,53.2,37.4;.pin Western Plaguelands,54.6,34.0;.pin Western Plaguelands,57.2,35.6;.pin Western Plaguelands,54.6,23.8;.mob Scarlet Avenger"
        },
      },
      ["Scarlet Magus"] = {
        {
        MinLevel = 56,
        MaxLevel = 57,
        Classification = "Elite",
        Movement = "Idle",
        Notes = "Standard elite mob; has fire ward",
        Location = ".pin Western Plaguelands,44.80,15.58;.mob Scarlet Magus"
        },
      },
      ["Skeletal Warlord"] = {
        {
        MinLevel = 56,
        MaxLevel = 57,
        Classification = "Elite",
        Movement = "Idle",
        Notes = "Mortal strikes and stuns in a busy area",
        Location = ".pin Western Plaguelands,44.26,63.23;.pin Western Plaguelands,42.36,66.18;.pin Western Plaguelands,40.07,71.64;.pin Western Plaguelands,46.62,71.12;.mob Skeletal Warlord"
        },
      },
      ["Flesh Golem"] = {
        {
        MinLevel = 56,
        MaxLevel = 57,
        Classification = "Elite",
        Movement = "Idle",
        Notes = "Sometimes patrolling, has a knockback",
        Location = ".pin Western Plaguelands,39.6,70.4;.pin Western Plaguelands,41.2,67.4;.pin Western Plaguelands,45.0,65.4;.pin Western Plaguelands,49.4,65.8;.pin Western Plaguelands,48.4,71.8;.pin Western Plaguelands,44.4,72.6;.pin Western Plaguelands,41.0,70.6;.pin Western Plaguelands,44.6,68.6;.pin Western Plaguelands,41.8,68.2;.mob Flesh Golem"
        },
      },
      ["Scarlet Spellbinder"] = {
        {
        MinLevel = 57,
        MaxLevel = 58,
        Classification = "Normal",
        Movement = "Idle",
        Notes = "Frost Novas in busy area with a few pats/elites",
        Location = ".pin Western Plaguelands,55.0,23.4;.mob Scarlet Spellbinder"
        },
      },
      ["Haunting Vision"] = {
        {
        MinLevel = 57,
        MaxLevel = 58,
        Classification = "Normal",
        Movement = "Idle",
        Notes = "Inflicts the \"cripple\" debuff",
        Location = ".pin Western Plaguelands,62.7,58.3;.mob Haunting Vision"
        },
      },
    },
    ["Eastern Plaguelands"] = {
      ["Zaeldarr the Outcast"] = {
        {
        MinLevel = 55,
        MaxLevel = 55,
        Classification = "Normal",
        Movement = "Idle",
        Notes = "Stuns; pulls with other mobs",
        Location = ".pin Eastern Plaguelands,27.4,85.6;.mob Zeldarr the Outcast"
        },
      },
      ["Mercutio Filthgorger"] = {
        {
        MinLevel = 57,
        MaxLevel = 57,
        Classification = "Normal",
        Movement = "Idle",
        Notes = "Spawns with adds, gouges,lingers if not killed",
        Location = ".pin Eastern Plaguelands,28.6,87.4;.mob Mercutio Filthgorger"
        },
      },
      ["Infiltrator Hameya"] = {
        {
        MinLevel = 60,
        MaxLevel = 60,
        Classification = "Normal",
        Movement = "Slow Patrol",
        Notes = "Patrols around a dozen graves in Zul'Mashar",
        Location = ".line Eastern Plaguelands,70.21,15.85,70.90,16.76,70.89,17.08,70.54,17.64,70.17,17.52,69.73,16.83,69.73,16.48,70.21,15.85;.mob Infiltrator Hameya"
        },
      },
      ["Duskwing"] = {
        {
        MinLevel = 60,
        MaxLevel = 60,
        Classification = "Elite",
        Movement = "Slow Patrol",
        Notes = "Has an AoE silence",
        Location = ".line Eastern Plaguelands,29.15,63.52,29.70,63.68,30.39,63.87,30.98,64.73,31.35,65.88,31.46,66.66,31.52,67.86,30.96,68.97,30.63,70.77,30.47,72.42,30.62,73.50,31.04,74.76,30.81,76.64,32.04,77.09,32.83,76.38,32.71,74.62,32.76,73.48,33.61,72.86,34.12,72.02,34.72,71.36,35.50,70.75,36.31,70.06,36.67,70.44,37.16,71.03,37.29,71.78,37.47,72.01,39.90,71.95,40.35,71.93,40.74,70.83,40.97,69.30,41.81,68.80,42.92,68.44,43.36,68.07,44.40,67.25,45.35,66.76;.mob Duskwing"
        },
      },
      ["Nerubian Overseer"] = {
        {
        MinLevel = 60,
        MaxLevel = 60,
        Classification = "Elite",
        Movement = "Slow Patrol",
        Notes = "Will remain at range if possible; has a web",
        Location = ".line Eastern Plaguelands,19.54,30.97,19.24,31.17,19.01,31.58,18.67,32.87,18.32,33.53,17.84,33.75,17.27,33.59,16.74,33.13,16.12,32.76,15.61,32.53,15.56,31.62,15.66,31.00,15.99,30.26,15.89,29.44,15.53,29.05,15.23,29.51,14.98,30.10,14.68,30.70,14.86,31.50,14.65,31.74,13.82,31.77,13.48,33.16,12.90,33.48,12.48,33.56,12.11,34.26,11.20,34.53,10.49,35.57,10.58,36.51,10.12,37.47,9.41,37.89,8.85,37.74,8.03,38.28,7.96,39.00,8.14,39.51;.mob Nerubian Overseer"
        },
      },
      ["Crimson Bodyguard"] = {
        {
        MinLevel = 57,
        MaxLevel = 58,
        Classification = "Elite",
        Movement = "Slow Patrol",
        Notes = "Four accompany the Crimson Courier; charges, knocks back, and disarms",
        Location = ".line Eastern Plaguelands,30.85,20.06,30.95,21.06,31.04,23.39,31.57,25.91,32.01,26.80,32.95,28.02,33.41,28.57,34.29,29.10,35.77,29.43,37.58,29.43,38.44,28.76,39.11,28.47,39.55,28.59,40.54,29.23,41.29,29.60,42.77,30.54,43.77,31.05,44.70,31.46,45.79,31.82,46.93,32.53,48.82,33.62,49.73,33.94,50.66,34.26,51.76,34.59,53.33,34.90,55.76,35.46,56.51,35.88,57.60,36.74,58.73,37.92,60.50,40.32,62.25,44.52,63.66,48.15,63.82,49.64,63.71,50.72,63.18,51.91,62.64,53.60,62.46,56.39,62.75,58.46,63.22,60.47,63.27,62.14,62.96,63.35,62.31,64.95,60.81,67.20,59.92,68.37,60.83,69.91,62.64,71.40,64.19,73.01,65.20,75.50,65.70,76.12,67.44,77.08,68.39,77.46,69.21,77.87,70.67,78.33,71.62,78.48,72.17,78.84,73.78,80.37,76.54,81.80,77.36,81.79,78.12,81.64,79.23,81.65,80.26,81.73,81.02,81.96,81.11,82.39,81.36,82.76,81.74,82.71,82.05,82.30,82.51,82.43,84.75,83.67,85.55,84.17,86.61,85.06,86.52,85.30,86.93,85.65,87.04,85.36,87.57,85.77;.mob Crimson Bodyguard"
        },
        {
        MinLevel = 57,
        MaxLevel = 58,
        Classification = "Elite",
        Movement = "Slow Patrol",
        Notes = "Four accompany the Crimson Courier; charges, knocks back, and disarms",
        Location = ".line Eastern Plaguelands,30.85,20.06,30.95,21.06,31.04,23.39,31.57,25.91,32.01,26.80,32.95,28.02,33.41,28.57,34.29,29.10,35.77,29.43,37.58,29.43,38.44,28.76,39.11,28.47,39.55,28.59,40.54,29.23,41.29,29.60,42.77,30.54,43.77,31.05,44.70,31.46,45.79,31.82,46.93,32.53,48.82,33.62,49.73,33.94,50.66,34.26,51.76,34.59,53.33,34.90,55.76,35.46,56.51,35.88,57.60,36.74,58.73,37.92,60.50,40.32,62.25,44.52,63.66,48.15,63.82,49.64,63.71,50.72,63.18,51.91,62.64,53.60,62.46,56.39,62.75,58.46,63.22,60.47,63.27,62.14,62.96,63.35,62.31,64.95,60.81,67.20,59.92,68.37,60.83,69.91,62.64,71.40,64.19,73.01,65.20,75.50,65.70,76.12,67.44,77.08,68.39,77.46,69.21,77.87,70.67,78.33,71.62,78.48,72.17,78.84,73.78,80.37,76.54,81.80,77.36,81.79,78.12,81.64,79.23,81.65,80.26,81.73,81.02,81.96,81.11,82.39,81.36,82.76,81.74,82.71,82.05,82.30,82.51,82.43,84.75,83.67,85.55,84.17,86.61,85.06,86.52,85.30,86.93,85.65,87.04,85.36,87.57,85.77;.mob Crimson Bodyguard"
        },
      },
      ["Horgus the Ravager"] = {
        {
        MinLevel = 60,
        MaxLevel = 60,
        Classification = "Elite",
        Movement = "Idle",
        Notes = "Thrashes, drains HP, lingers after Darrowshire event",
        Location = ".pin Eastern Plaguelands,38.6,89.8;.mob Horgus the Ravager"
        },
      },
      ["Borelgore"] = {
        {
        MinLevel = 61,
        MaxLevel = 61,
        Classification = "Elite",
        Movement = "Slow Patrol",
        Notes = "Kiteable; painful poison dot/aoe if close",
        Location = ".line Eastern Plaguelands,54.48,31.82,55.13,31.80,55.60,31.78,55.86,31.25,56.31,31.15,56.66,31.78,57.17,31.83,57.85,32.03,58.49,32.34,59.34,32.12,59.99,31.95,60.58,31.87,61.13,32.27,61.79,32.98,62.57,33.31,63.17,34.09,63.67,34.56,64.29,34.89;.mob Borelgore"
        },
      },
      ["Demetria"] = {
        {
        MinLevel = 61,
        MaxLevel = 61,
        Classification = "Elite",
        Movement = "Slow Patrol",
        Notes = "Quest mob; patrols Stratholme (Live) to Tyr's Hand with 9-10 non-elite bodyguards and lingers if not slain",
        Location = ".line Eastern Plaguelands,30.85,20.06,30.95,21.06,31.04,23.39,31.57,25.91,32.01,26.80,32.95,28.02,33.41,28.57,34.29,29.10,35.77,29.43,37.58,29.43,38.44,28.76,39.11,28.47,39.55,28.59,40.54,29.23,41.29,29.60,42.77,30.54,43.77,31.05,44.70,31.46,45.79,31.82,46.93,32.53,48.82,33.62,49.73,33.94,50.66,34.26,51.76,34.59,53.33,34.90,55.76,35.46,56.51,35.88,57.60,36.74,58.73,37.92,60.50,40.32,62.25,44.52,63.66,48.15,63.82,49.64,63.71,50.72,63.18,51.91,62.64,53.60,62.46,56.39,62.75,58.46,63.22,60.47,63.27,62.14,62.96,63.35,62.31,64.95,60.81,67.20,59.92,68.37,60.83,69.91,62.64,71.40,64.19,73.01,65.20,75.50,65.70,76.12,67.44,77.08,68.39,77.46,69.21,77.87,70.67,78.33,71.62,78.48,72.17,78.84,73.78,80.37,76.54,81.80,77.36,81.79,78.12,81.64,79.23,81.65,80.26,81.73,81.02,81.96,81.11,82.39,81.36,82.76,81.74,82.71,82.05,82.30,82.51,82.43,84.75,83.67,85.55,84.17,86.61,85.06,86.52,85.30,86.93,85.65,87.04,85.36,87.57,85.77;.mob Demetria"
        },
      },
      ["Plaguebat"] = {
        {
        MinLevel = 53,
        MaxLevel = 55,
        Classification = "Normal",
        Movement = "Idle",
        Notes = "4 sec AoE terrify effect",
        Location = ".pin Eastern Plaguelands,7.6,43.8;.pin Eastern Plaguelands,8.2,50.4;.pin Eastern Plaguelands,11.0,59.6;.pin Eastern Plaguelands,16.6,65.8;.pin Eastern Plaguelands,15.6,78.8;.pin Eastern Plaguelands,21.6,80.8;.pin Eastern Plaguelands,19.8,71.4;.pin Eastern Plaguelands,20.4,66.8;.pin Eastern Plaguelands,22.0,61.4;.pin Eastern Plaguelands,29.2,68.4;.pin Eastern Plaguelands,31.2,64.4;.pin Eastern Plaguelands,32.8,70.8;.pin Eastern Plaguelands,31.6,77.6;.pin Eastern Plaguelands,34.0,81.4;.pin Eastern Plaguelands,42.6,83.4;.pin Eastern Plaguelands,44.2,75.0;.pin Eastern Plaguelands,43.8,66.4;.pin Eastern Plaguelands,48.0,78.4;.pin Eastern Plaguelands,51.4,78.0;.pin Eastern Plaguelands,56.8,75.6;.pin Eastern Plaguelands,57.8,83.8;.pin Eastern Plaguelands,64.0,84.8;.pin Eastern Plaguelands,65.2,77.6;.pin Eastern Plaguelands,70.0,81.6;.pin Eastern Plaguelands,73.6,84.0;.mob Plaguebat"
        },
      },
      ["Unseen Servant"] = {
        {
        MinLevel = 55,
        MaxLevel = 56,
        Classification = "Normal",
        Movement = "Idle",
        Notes = "Invisible patrol, sees through stealth",
        Location = ".pin Eastern Plaguelands,58.6,71.0;.pin Eastern Plaguelands,58.0,66.2;.pin Eastern Plaguelands,62.1,68.9;.mob Unseen Servant"
        },
      },
      ["Eyeless Watcher"] = {
        {
        MinLevel = 57,
        MaxLevel = 58,
        Classification = "Normal",
        Movement = "Idle",
        Notes = "Invisible patrol, sees through stealth",
        Location = ".pin Eastern Plaguelands,81.8,45.8;.pin Eastern Plaguelands,86.2,40.8;.pin Eastern Plaguelands,41.8,54.1;.pin Eastern Plaguelands,41.7,48.8;.pin Eastern Plaguelands,38.1,50.5;.pin Eastern Plaguelands,34.6,61.2;.pin Eastern Plaguelands,69.9,30.5;.pin Eastern Plaguelands,72.4,31.4;.pin Eastern Plaguelands,74.0,34.0;.mob Unseen Servant"
        },
      },
      ["Mossflayer Scout"] = {
        {
        MinLevel = 57,
        MaxLevel = 58,
        Classification = "Normal",
        Movement = "Slow Patrol",
        Notes = "Immediately runs for help/aggros other mobs",
        Location = ".line Eastern Plaguelands,69.46,19.72,69.83,19.39,70.31,18.60,70.88,18.83,71.69,18.87,71.82,18.39,72.66,18.56;.mob Mossflayer Scout"
        },
        {
        MinLevel = 57,
        MaxLevel = 58,
        Classification = "Normal",
        Movement = "Slow Patrol",
        Notes = "Immediately runs for help/aggros other mobs",
        Location = ".line Eastern Plaguelands,70.07,15.50,69.73,16.16,69.56,17.04,69.11,17.94,68.90,19.82,68.88,20.70;.mob Mossflayer Scout"
        },
        {
        MinLevel = 57,
        MaxLevel = 58,
        Classification = "Normal",
        Movement = "Slow Patrol",
        Notes = "Immediately runs for help/aggros other mobs",
        Location = ".line Eastern Plaguelands,69.30,19.71,68.77,20.12,68.38,21.13,67.08,21.52,66.60,21.41,65.18,21.74,64.78,21.79,64.31,22.10;.mob Mossflayer Scout"
        },
      },
      ["Infected Mossflayer"] = {
        {
        MinLevel = 57,
        MaxLevel = 58,
        Classification = "Normal",
        Movement = "Idle",
        Notes = "Stuns, spawn if player gets near graves",
        Location = ".pin Eastern Plaguelands,69.0,20.4;.pin Eastern Plaguelands,68.4,17.4;.pin Eastern Plaguelands,71.2,15.4;.pin Eastern Plaguelands,70.6,18.8;.mob Infected Mossflayer"
        },
      },
    },
    ["Blade's Edge Mountains"] = {
      ["Grulloc"] = {
        {
        MinLevel = 70,
        MaxLevel = 70,
        Classification = "Elite",
        Movement = "Fast Patrol",
        Notes = "Hits extremely hard. extremely dangerous",
        Location = ".pin Blade's Edge Mountains,60.92,47.60;.mob Grulloc"
        },
      },
      ["Maggoc"] = {
        {
        MinLevel = 70,
        MaxLevel = 70,
        Classification = "Elite",
        Movement = "Slow Patrol",
        Notes = "Hits extremely hard. extremely dangerous",
        Location = ".line Blade's Edge Mountains,58.06,64.98,57.98,62.98,58.49,60.96,58.75,59.05,59.27,57.22,59.73,56.17,61.08,54.74,62.34,55.09,63.44,55.38,64.23,55.33,65.34,54.82,66.54,56.21,67.51,58.10,67.85,59.58,68.06,61.57,68.35,62.78,67.98,64.20,67.86,66.44,68.08,67.80,68.05,70.16,68.24,71.99,68.06,74.56,67.98,75.06;.mob Maggoc"
        },
      },
    },
    ["Hellfire Peninsula"] = {
      ["Fel Reaver"] = {
        {
        MinLevel = 70,
        MaxLevel = 70,
        Classification = "Elite",
        Movement = "Fast Patrol",
        Notes = "5 second stun + knockback; hits extremely hard. extremely dangerous",
        Location = ".line Hellfire Peninsula,24.77,65.13,22.78,56.54,18.97,55.85,17.32,50.72,18.81,47.42,17.51,43.18,20.58,46.76,25.89,47.71,28.73,51.07,31.51,50.03,28.99,45.68,27.29,42.60,27.55,40.19,30.17,39.40,32.26,45.02,35.31,47.13,38.44,43.85,40.81,43.33,43.37,45.74,46.32,44.25,46.24,39.72,47.12,35.78,47.97,33.05,48.47,28.23;.line Hellfire Peninsula,71.38,44.04,68.23,40.89,66.69,38.28,65.06,37.84,63.24,34.39,61.19,35.13,59.74,40.22,63.05,48.70,62.61,51.93,61.61,53.83,62.50,56.44,63.91,56.84,66.30,55.58,68.55,56.51,69.40,61.81,66.84,62.03,65.94,63.03,63.25,69.83,61.01,74.72,59.15,74.73,57.71,71.42,54.07,71.88,52.23,72.18,50.60,77.07,49.13,80.31,47.92,76.11,47.77,73.75,46.59,71.67,47.18,69.19,50.19,68.85,49.82,64.17;.mob Fel Reaver"
        },
      },
    },
  },
  ["Horde"] = {
    ["Alterac Mountains"] = {
      ["Warden Belamoore"] = {
        {
        MinLevel = 36,
        MaxLevel = 36,
        Classification = "Normal",
        Movement = "Idle",
        Notes = "High level for area, cone of cold, sheeps if multiple mobs",
        Location = ".pin Alterac Mountains,17.73,82.97;.mob Warden Belamoore"
        },
      },
      ["Frostmaw"] = {
        {
        MinLevel = 37,
        MaxLevel = 37,
        Classification = "Normal",
        Movement = "Idle",
        Notes = "High level for area",
        Location = ".pin Alterac Mountains,36.9,66.3;.mob Frostmaw"
        },
      },
      ["Lord Aliden Perenolde"] = {
        {
        MinLevel = 41,
        MaxLevel = 41,
        Classification = "Normal",
        Movement = "Idle",
        Notes = "High level for the area, has renew/PW:S, social aggro and house is bugged",
        Location = ".pin Alterac Mountains,40.1,15.2;.mob Lord Aliden Perenolde"
        },
      },
      ["Syndicate Assassin"] = {
        {
        MinLevel = 38,
        MaxLevel = 39,
        Classification = "Normal",
        Movement = "Idle",
        Notes = "Stealthed mobs around the house of Lord Aliden Perenolde, easily ass-pulled",
        Location = ".pin Alterac Mountains,38.50,21.80;.pin Alterac Mountains,40.77,19.50;.pin Alterac Mountains,39.55,12.48;.pin Alterac Mountains,36.88,12.91;.pin Alterac Mountains,37.45,16.39;.mob Syndicate Assassin"
        },
      },
      ["Syndicate Enforcer"] = {
        {
        MinLevel = 39,
        MaxLevel = 40,
        Classification = "Normal",
        Movement = "Idle",
        Notes = "Easily double pulled, they have a strong whirlwind ability",
        Location = ".pin Alterac Mountains,38.50,21.80;.pin Alterac Mountains,40.77,19.50;.pin Alterac Mountains,39.55,12.48;.pin Alterac Mountains,36.88,12.91;.pin Alterac Mountains,37.45,16.39;.mob Syndicate Enforcer"
        },
      },
      ["Crushridge Mauler"] = {
        {
        MinLevel = 36,
        MaxLevel = 40,
        Classification = "Elite",
        Movement = "Slow Patrol",
        Notes = "Basic elite",
        Location = ".line Alterac Mountains,34.49,49.84,34.42,50.90,34.77,50.96,36.57,49.58,37.49,51.34,38.06,53.03,38.35,54.29,38.97,54.86,39.28,54.74;.mob Crushridge Mauler"
        },
      },
      ["Crushridge Warmonger"] = {
        {
        MinLevel = 36,
        MaxLevel = 40,
        Classification = "Elite",
        Movement = "Slow Patrol",
        Notes = "Calls for help",
        Location = ".line Alterac Mountains,38.06,53.66,38.17,52.65,38.75,51.61,39.12,51.15,39.31,50.61,39.65,50.14,39.84,48.34;.mob Crushridge Warmonger"
        },
      },
      ["Grel'borg the Miser"] = {
        {
        MinLevel = 39,
        MaxLevel = 39,
        Classification = "Elite",
        Movement = "Slow Patrol",
        Notes = "Basic elite; has a flame ward",
        Location = ".line Alterac Mountains,35.58,54.44,35.26,54.33,35.20,54.18,35.77,53.74,36.26,55.11,36.66,54.81,36.29,53.75,37.30,52.85,37.59,52.71,38.24,52.79,38.87,51.55,39.28,50.93,39.52,49.71,40.14,47.23,40.91,46.30,40.24,46.09,40.13,47.69,39.19,51.17,38.51,52.01,38.11,52.68,37.46,52.78,36.28,53.71,35.88,52.69,35.52,53.01,35.77,53.74,35.20,54.18,35.26,54.33,35.58,54.44;.mob Grel'borg the Miser"
        },
      },
      ["Narillasanz"] = {
        {
        MinLevel = 44,
        MaxLevel = 44,
        Classification = "Rare Elite",
        Movement = "Slow Patrol",
        Notes = "Fire breath, renews, immune to fear",
        Location = ".line Alterac Mountains,73.70,56.43,74.53,54.28,75.04,53.46,76.07,53.20,76.77,52.03,76.99,50.58,76.24,48.99,75.50,48.08,75.01,47.03,77.64,45.17,78.50,43.87,79.70,43.02,80.43,44.45,80.13,46.17,81.00,47.46,81.84,49.20,81.97,50.86,79.93,54.01,78.80,53.01,78.10,50.83,78.93,49.45,78.80,47.67,79.81,47.03,80.98,48.43,82.25,49.38,83.07,50.77,83.85,52.74,83.90,54.22,84.36,55.14,84.24,56.11,82.79,56.17,81.32,55.14,79.41,58.86,78.56,61.08,77.26,62.53,75.47,63.64,74.71,63.20,74.09,60.65,74.29,60.27,73.92,58.40,73.70,56.43;.mob Narillasanz"
        },
      },
    },
    ["Arathi Highlands"] = {
      ["Lieutenant Valorcall"] = {
        {
        MinLevel = 38,
        MaxLevel = 38,
        Classification = "Elite",
        Movement = "Slow Patrol",
        Notes = "Has 2 adds, bubbles/heals",
        Location = ".line Arathi Highlands,53.0,39.6,52.0,41.8,50.8,43.8,49.0,43.9,46.9,45.6,44.2,50.6,44.3,53.0,43.4,54.9,39.7,54.0,37.4,52.9,35.0,52.1,32.1,51.5,29.5,50.2,27.2,50.1,26.2,52.4,25.8,55.5,25.8,58.2"
        },
      },
      ["Stormgarde Cavalryman"] = {
        {
        MinLevel = 36,
        MaxLevel = 37,
        Classification = "Elite",
        Movement = "Slow Patrol",
        Notes = "Stunning charge, high damage",
        Location = ".line Arathi Highlands,53.0,39.6,52.0,41.8,50.8,43.8,49.0,43.9,46.9,45.6,44.2,50.6,44.3,53.0,43.4,54.9,39.7,54.0,37.4,52.9,35.0,52.1,32.1,51.5,29.5,50.2,27.2,50.1,26.2,52.4,25.8,55.5,25.8,58.2"
        },
      },
      ["Nimar the Slayer"] = {
        {
        MinLevel = 37,
        MaxLevel = 37,
        Classification = "Rare",
        Movement = "Idle",
        Notes = "High level for area, has execute",
        Location = ".pin Arathi Highlands,73.51,65.03;.pin Arathi Highlands,70.53,69.56;.pin Arathi Highlands,64.73,73.47;.pin Arathi Highlands,61.17,72.58;.pin Arathi Highlands,63.28,67.56;.pin Arathi Highlands,66.31,64.25;.mob Nimar the Slayer"
        },
      },
      ["Marez Cowl"] = {
        {
        MinLevel = 40,
        MaxLevel = 40,
        Classification = "Elite",
        Movement = "Idle",
        Notes = "Basic elite in area with stealth patrols",
        Location = ".pin Arathi Highlands,29.71,64.65;.mob Marez Cowl"
        },
      },
      ["Boulderfist Ogre"] = {
        {
        MinLevel = 32,
        MaxLevel = 33,
        Classification = "Normal",
        Movement = "Idle",
        Notes = "Fist of Stone: +100 dmg per attack, 54% reduced attack/movement speed",
        Location = ".pin Arathi Highlands,53.54,76.79;.mob Bouldfist Ogre"
        },
      },
      ["Highland Thrasher"] = {
        {
        MinLevel = 33,
        MaxLevel = 34,
        Classification = "Normal",
        Movement = "Idle",
        Notes = "Thrash mob",
        Location = ".pin Arathi Highlands,62.6,65.8;.pin Arathi Highlands,54.6,58.2;.pin Arathi Highlands,36.4,64.0;.pin Arathi Highlands,40.6,35.2;.pin Arathi Highlands,21.2,50.6;.mob Highland Thrasher"
        },
      },
      ["Boulderfist Enforcer"] = {
        {
        MinLevel = 33,
        MaxLevel = 34,
        Classification = "Normal",
        Movement = "Idle",
        Notes = "Fist of Stone: +100 dmg per attack, 54% reduced attack/movement speed",
        Location = ".pin Arathi Highlands,53.54,76.79;.mob Boulderfist Enforcer"
        },
      },
      ["Witherbark Headhunter"] = {
        {
        MinLevel = 34,
        MaxLevel = 35,
        Classification = "Normal",
        Movement = "Idle",
        Notes = "Execute mobs and cast nets",
        Location = ".pin Arathi Highlands,73.51,65.03;.pin Arathi Highlands,70.53,69.56;.pin Arathi Highlands,64.73,73.47;.pin Arathi Highlands,61.17,72.58;.pin Arathi Highlands,63.28,67.56;.pin Arathi Highlands,66.31,64.25;.mob Witherbark Headhunter"
        },
      },
      ["Thundering Exile"] = {
        {
        MinLevel = 38,
        MaxLevel = 39,
        Classification = "Normal",
        Movement = "Idle",
        Notes = "High damage shock ability, sometimes double pull",
        Location = ".pin Arathi Highlands,52.02,50.69;.mob Thundering Exile"
        },
      },
    },
    ["Ashenvale"] = {
      ["Vorsha the Lasher"] = {
        {
        MinLevel = 22,
        MaxLevel = 22,
        Classification = "Normal",
        Movement = "Idle",
        Notes = "High HP/DPS, potential adds",
        Location = ".pin Ashenvale,9.4,27.6;.mob Vorsha the Lasher"
        },
      },
      ["Keeper Ordanus"] = {
        {
        MinLevel = 29,
        MaxLevel = 29,
        Classification = "Normal",
        Movement = "Idle",
        Notes = "2 guards, entangles, summons many treants",
        Location = ".pin Ashenvale,62.0,51.2;.mob Keeper Ordanus"
        },
      },
      ["Sharptalon"] = {
        {
        MinLevel = 31,
        MaxLevel = 31,
        Classification = "Normal",
        Movement = "Slow Patrol",
        Notes = "High level for the area",
        Location = ".line Ashenvale,71.48,70.11,72.16,70.52,72.48,70.60,72.67,70.67,73.23,70.67,74.43,70.07,74.80,70.06,75.44,69.90,75.69,69.81,75.96,69.78,76.10,68.96,76.44,68.58,76.91,68.04,77.59,66.37,77.92,65.94,78.29,65.71;.mob Sharptalon"
        },
      },
      ["Eck'alom"] = {
        {
        MinLevel = 27,
        MaxLevel = 27,
        Classification = "Rare",
        Movement = "Idle",
        Notes = "15 second stun + frost shock; extremely dangerous",
        Location = ".pin Ashenvale,45.6,71.2;.pin Ashenvale,48.8,69.2;.pin Ashenvale,52.8,70.0;.unitscan Eck'alom"
        },
      },
    },
    ["Azshara"] = {
      ["Thundering Invader"] = {
        {
        MinLevel = 55,
        MaxLevel = 57,
        Classification = "Normal",
        Movement = "Idle",
        Notes = "Invasion mobs",
        Location = ".pin Azshara,72.8,22;.pin Azshara,73.0,16.8;.pin Azshara,74.18,21.2;.pin Azshara,78.0,26.2;.pin Azshara,81.6,22.4;.pin Azshara,82.6,17.8;.pin Azshara,77.0,15.8;.mob Thundering Invader"
        },
      },
      ["Monnos the Elder"] = {
        {
        MinLevel = 53,
        MaxLevel = 53,
        Classification = "Rare Elite",
        Movement = "Slow Patrol",
        Notes = "Huge knockback and a high-damage 5 sec aoe stun",
        Location = ".line Azshara,76.20,20.69,76.27,21.13,76.11,23.40,75.67,24.39,74.56,24.91,74.23,25.09,73.82,24.61,73.71,23.88,72.97,23.43,72.26,23.47,71.76,23.33,71.28,22.53,71.06,21.45,71.23,19.97,71.55,19.65,72.04,19.91,72.59,20.94,73.14,21.41,73.52,21.32,74.04,20.21,74.60,19.72,75.22,19.69,75.69,18.53,76.36,18.01,77.01,17.16,78.01,17.28,79.03,18.19,79.31,18.45,80.57,18.52,81.01,18.70,81.55,18.50,81.98,17.89;.mob Monnos the Elder"
        },
      },
      ["Avalanchion"] = {
        {
        MinLevel = 58,
        MaxLevel = 58,
        Classification = "Elite",
        Movement = "Slow Patrol",
        Notes = "Aoe stun + several adds that stun and interrupt",
        Location = ".line Azshara,82.17,20.69,81.93,22.12,81.54,23.16,80.97,23.85,79.12,24.49,77.70,25.02,77.21,25.04,76.65,24.33,76.22,23.15,74.96,22.07,72.94,20.81,72.65,20.18,72.56,19.07,73.01,18.11,75.30,16.67,77.46,16.69,79.24,18.26,81.74,18.58,82.07,19.26,82.17,20.69;.mob Avalanchion"
        },
      },
      ["Blood Elf Surveyor"] = {
        {
        MinLevel = 51,
        MaxLevel = 52,
        Classification = "Normal",
        Movement = "Idle",
        Notes = "Large aggro radius",
        Location = ".pin Azshara,55.2,26.4;.pin Azshara,58.2,30.8;.pin Azshara,59.2,29.6;.pin Azshara,56.6,28.8;.pin Azshara,57.8,26.4;.mob Blood Elf Surveyor"
        },
      },
      ["Blood Elf Reclaimer"] = {
        {
        MinLevel = 52,
        MaxLevel = 53,
        Classification = "Normal",
        Movement = "Idle",
        Notes = "Large aggro radius",
        Location = ".pin Azshara,55.2,26.4;.pin Azshara,58.2,30.8;.pin Azshara,59.2,29.6;.pin Azshara,56.6,28.8;.pin Azshara,57.8,26.4;.mob Blood Elf Reclaimer"
        },
      },
      ["Cliff Walker"] = {
        {
        MinLevel = 52,
        MaxLevel = 53,
        Classification = "Elite",
        Movement = "Idle",
        Notes = "Basic elite",
        Location = ".pin Azshara,57.2,79.0;.pin Azshara,52.6,81.4;.pin Azshara,49.8,77.6;.pin Azshara,46.2,83.4;.pin Azshara,45.8,75.0;.pin Azshara,70.8,23.6;.pin Azshara,70.4,12.8;.pin Azshara,77.2,18.8;.mob Cliff Walker"
        },
      },
      ["Cliff Thunderer"] = {
        {
        MinLevel = 53,
        MaxLevel = 54,
        Classification = "Elite",
        Movement = "Idle",
        Notes = "Basic elite",
        Location = ".pin Azshara,57.2,79.0;.pin Azshara,52.6,81.4;.pin Azshara,49.8,77.6;.pin Azshara,46.2,83.4;.pin Azshara,45.8,75.0;.pin Azshara,70.8,23.6;.pin Azshara,70.4,12.8;.pin Azshara,77.2,18.8;.mob Cliff Thunderer"
        },
      },
      ["Servant of Arkkoroc"] = {
        {
        MinLevel = 53,
        MaxLevel = 54,
        Classification = "Elite",
        Movement = "Idle",
        Notes = "Basic elite",
        Location = ".pin Azshara,70.4,35.8;.pin Azshara,62.6,37.4;.pin Azshara,56.2,42.0;.pin Azshara,53.0,50.2;.pin Azshara,54.0,60.4;.pin Azshara,59.4,68.2;.pin Azshara,65.2,70.6;.pin Azshara,72.2,71.8;.pin Azshara,77.8,70.4;.pin Azshara,77.6,59.8;.pin Azshara,76.0,48.4;.pin Azshara,66.4,46.8;.pin Azshara,61.6,56.2;.pin Azshara,67.4,61.6;.pin Azshara,69.4,53.8;.mob Servant of Arkkoroc"
        },
      },
      ["Cliff Breaker"] = {
        {
        MinLevel = 53,
        MaxLevel = 54,
        Classification = "Elite",
        Movement = "Idle",
        Notes = "Instant-casts Cripple",
        Location = ".pin Azshara,57.2,79.0;.pin Azshara,52.6,81.4;.pin Azshara,49.8,77.6;.pin Azshara,46.2,83.4;.pin Azshara,45.8,75.0;.pin Azshara,70.8,23.6;.pin Azshara,70.4,12.8;.pin Azshara,77.2,18.8;.mob Cliff Breaker"
        },
      },
      ["Son of Arkkoroc"] = {
        {
        MinLevel = 54,
        MaxLevel = 44,
        Classification = "Elite",
        Movement = "Idle",
        Notes = "Basic elite",
        Location = ".pin Azshara,70.4,35.8;.pin Azshara,62.6,37.4;.pin Azshara,56.2,42.0;.pin Azshara,53.0,50.2;.pin Azshara,54.0,60.4;.pin Azshara,59.4,68.2;.pin Azshara,65.2,70.6;.pin Azshara,72.2,71.8;.pin Azshara,77.8,70.4;.pin Azshara,77.6,59.8;.pin Azshara,76.0,48.4;.pin Azshara,66.4,46.8;.pin Azshara,61.6,56.2;.pin Azshara,67.4,61.6;.pin Azshara,69.4,53.8;.mob Son of Arkkoroc"
        },
      },
    },
    ["Badlands"] = {
      ["Siege Golem"] = {
        {
        MinLevel = 40,
        MaxLevel = 40,
        Classification = "Rare Elite",
        Movement = "Slow Patrol",
        Notes = "Basic elite",
        Location = ".line Badlands,41.68,39.71,40.13,40.09,38.96,40.24,37.78,41.88,36.55,42.56,35.95,43.69,34.97,44.76,34.27,46.35,33.49,47.82,33.21,49.64,32.64,51.13,32.20,52.67,31.78,55.21,31.31,56.80,30.62,57.90,29.48,58.40,27.88,58.13,23.79,57.55,21.26,58.27,20.23,57.85,19.28,58.58,18.87,59.91,18.68,60.39,16.24,63.49,14.81,64.16,11.92,64.04,10.60,63.71,7.83,61.88,6.99,61.68;.mob Siege Golem"
        },
      },
      ["Anathemus"] = {
        {
        MinLevel = 45,
        MaxLevel = 45,
        Classification = "Rare Elite",
        Movement = "Slow Patrol",
        Notes = "Patrols the zone",
        Location = ".pin Badlands,36.37,71.63;.pin Badlands,51.70,73.52;.pin Badlands,45.44,51.70;.pin Badlands,56.44,19.50;.pin Badlands,72.73,12.85;.pin Badlands,73.02,32.13;.mob Anathemus"
        },
      },
      ["Zaricotl"] = {
        {
        MinLevel = 55,
        MaxLevel = 55,
        Classification = "Rare Elite",
        Movement = "Idle",
        Notes = "Extremely high level for area",
        Location = ".pin Badlands,53.4,60.2;.pin Badlands,59.2,56.8;.pin Badlands,60.2,65.0;.pin Badlands,56.2,62.6;.pin Badlands,34.8,73.6;.pin Badlands,39.6,65.2;.pin Badlands,32.4,65.2;.pin Badlands,39.8,58.6;.pin Badlands,42.2,52.0;.pin Badlands,32.0,52.8;.pin Badlands,36.4,46.2;.mob Zaricotl"
        },
      },
      ["Boss Tho'grun"] = {
        {
        MinLevel = 41,
        MaxLevel = 42,
        Classification = "Normal",
        Movement = "Slow Patrol",
        Notes = "Patrols zone with 4-6 mob entourage",
        Location = ".line Badlands,36.37,71.63,39.75,72.36,43.61,72.61,51.70,73.52,61.89,67.68,54.73,58.52,48.53,53.02,45.44,51.70,41.01,54.95,35.35,56.99,28.17,56.44,19.50,57.77,16.05,64.35,12.51,72.73,12.85,77.42,14.51,79.15,21.83,78.10,25.39,73.02,32.13,74.04,36.37,71.63;.mob Boss Tho'grun"
        },
      },
    },
    ["Blasted Lands"] = {
      ["Teremus the Devourer"] = {
        {
        MinLevel = 60,
        MaxLevel = 60,
        Classification = "Elite",
        Movement = "Slow Patrol",
        Notes = "Raid boss, immune to cc/snare/fire, pulses damage, breath attack",
        Location = ".line Blasted Lands,45.37,23.42,46.53,21.52,48.73,22.21,51.81,25.45,53.10,27.52,54.07,27.65,56.10,31.05,57.64,34.56,60.06,36.28,61.54,38.09,63.00,36.07,63.54,35.33,63.94,33.29,63.50,31.20,62.90,30.44,61.31,28.62,60.81,27.30,60.31,26.53,58.54,27.84,57.51,28.33,56.94,29.23,56.55,31.32,55.87,34.38,53.27,36.70,50.95,37.33,47.13,38.89,45.42,43.43,46.54,47.86,48.97,51.64,50.16,50.91,51.26,50.03,53.13,49.22,55.34,46.61,56.65,44.70,56.34,42.17,54.60,39.66,51.48,37.97,48.89,35.65,44.72,33.72,44.39,30.60,44.47,26.38,45.37,23.42;.mob Teremus the Devourer"
        },
      },
      ["Helboar"] = {
        {
        MinLevel = 52,
        MaxLevel = 53,
        Classification = "Normal",
        Movement = "Idle",
        Notes = "Fire Nova and Charge, high burst",
        Location = ".pin Blasted Lands,44.6,32.4;.pin Blasted Lands,46.0,40.8;.pin Blasted Lands,48.0,34.4;.pin Blasted Lands,53.6,36.2;.pin Blasted Lands,54.8,44.8;.pin Blasted Lands,51.4,39.6;.pin Blasted Lands,46.6,48.2;.pin Blasted Lands,51.6,55.0;.mob Helboar"
        },
      },
      ["Black Slayer"] = {
        {
        MinLevel = 46,
        MaxLevel = 48,
        Classification = "Normal",
        Movement = "Idle",
        Notes = "Executes",
        Location = ".pin Blasted Lands,46.8,19.6;.pin Blasted Lands,50.6,17.4;.pin Blasted Lands,62.6,26.6;.pin Blasted Lands,56.6,37.8;.pin Blasted Lands,55.6,44.4;.mob Black Slayer"
        },
      },
    },
    ["Burning Steppes"] = {
      ["Frenzied Black Drake"] = {
        {
        MinLevel = 54,
        MaxLevel = 54,
        Classification = "Elite",
        Movement = "Idle",
        Notes = "Enrages, reduces block chance",
        Location = ".pin Burning Steppes,94.6,31.6;.mob Frenzied Black Drake"
        },
      },
      ["Malfunctioning Reaver"] = {
        {
        MinLevel = 56,
        MaxLevel = 56,
        Classification = "Normal",
        Movement = "Idle",
        Notes = "Stuns and knocks back near elites",
        Location = ".pin Burning Steppes,76.8,29.8;.pin Burning Steppes,81.8,29.2;.pin Burning Steppes,88.8,32.6;.pin Burning Steppes,90.6,46.8;.pin Burning Steppes,87.0,55.0;.pin Burning Steppes,84.0,62.2;.mob Malfunctioning Reaver"
        },
      },
      ["Volchan"] = {
        {
        MinLevel = 60,
        MaxLevel = 60,
        Classification = "Rare Elite",
        Movement = "Slow Patrol",
        Notes = "1200+ damage knockback/AoE",
        Location = ".line Burning Steppes,85.42,58.97,89.39,57.86,90.03,52.03,90.27,46.65,90.01,42.20,92.22,37.67,91.72,32.36,90.01,30.11,87.49,30.80,85.03,29.84,83.01,29.65,81.46,28.40,77.96,30.79,76.18,33.98,74.75,36.40,73.71,38.22,74.77,42.17,74.08,46.15,74.86,50.40,76.88,52.34,79.22,55.17,80.92,59.80,83.24,61.59,85.42,58.97;.mob Volchan"
        },
      },
      ["Hematos"] = {
        {
        MinLevel = 60,
        MaxLevel = 60,
        Classification = "Rare Elite",
        Movement = "Fast Patrol",
        Notes = "Roaming elite, breath attack",
        Location = ".line Burning Steppes,16.40,54.96,17.51,53.22,17.88,51.09,17.74,48.30,18.44,46.04,19.93,46.60,21.42,48.65,23.18,49.50,25.11,49.82,26.94,51.35,27.47,52.42,30.70,54.19,32.98,55.00,32.06,58.18,29.46,60.50,27.59,61.17,25.90,60.80,24.31,59.25,22.03,59.88,20.95,59.30,18.99,59.30,17.93,58.71,17.12,56.61,17.06,54.63;.mob Hematos"
        },
      },
      ["Black Drake"] = {
        {
        MinLevel = 50,
        MaxLevel = 52,
        Classification = "Elite",
        Movement = "Slow Patrol",
        Notes = "Roaming elite, breath attack",
        Location = ".line Burning Steppes,91.88,37.08,91.81,38.89,91.34,40.01,91.42,40.79,90.94,41.16,90.37,42.39,89.81,43.13,90.17,45.01,90.16,48.57,91.61,51.14,91.57,53.33,92.09,53.71,92.58,54.40,93.68,55.94;.mob Black Drake"
        },
        {
        MinLevel = 50,
        MaxLevel = 52,
        Classification = "Elite",
        Movement = "Slow Patrol",
        Notes = "Roaming elite, breath attack",
        Location = ".line Burning Steppes,89.76,52.54,89.88,55.43,89.51,56.94,87.83,57.28,85.71,59.33,83.51,60.25,82.51,61.78;.mob Black Drake"
        },
        {
        MinLevel = 50,
        MaxLevel = 52,
        Classification = "Elite",
        Movement = "Slow Patrol",
        Notes = "Roaming elite, breath attack",
        Location = ".line Burning Steppes,82.91,27.05,83.76,28.35,84.97,28.44,85.78,28.98,86.74,30.31,88.20,30.93,89.08,31.00,90.25,31.88,91.27,33.04,91.29,35.11,90.48,35.62,90.25,36.93,89.36,37.33,89.14,37.52,88.67,39.88;.mob Black Drake"
        },
      },
      ["Black Wyrmkin"] = {
        {
        MinLevel = 53,
        MaxLevel = 54,
        Classification = "Elite",
        Movement = "Idle",
        Notes = "Painful fireball/blast wave",
        Location = ".pin Burning Steppes,57.4,60.2;.pin Burning Steppes,76.8,62.2;.pin Burning Steppes,92.2,54.6;.pin Burning Steppes,88.8,37.6;.pin Burning Steppes,84.8,28.6;.mob Black Wyrmkin"
        },
      },
      ["Scalding Drake"] = {
        {
        MinLevel = 53,
        MaxLevel = 55,
        Classification = "Elite",
        Movement = "Idle",
        Notes = "Breath attack",
        Location = ".pin Burning Steppes,35.6,53.4;.pin Burning Steppes,40.0,62.4;.pin Burning Steppes,56.4,65.0;.pin Burning Steppes,62.4,58.6;.pin Burning Steppes,69.8,58.4;.pin Burning Steppes,85.8,95.0;.mob Scalding Drake"
        },
      },
      ["Blackrock Slayer"] = {
        {
        MinLevel = 56,
        MaxLevel = 57,
        Classification = "Normal",
        Movement = "Idle",
        Notes = "Executes",
        Location = ".pin Burning Steppes,40.2,33.8;.pin Burning Steppes,44.0,35.4;.pin Burning Steppes,39.6,55.6;.pin Burning Steppes,45.0,56.6;.pin Burning Steppes,44.4,50.4;.pin Burning Steppes,49.6,54.0;.pin Burning Steppes,56.0,52.8;.mob Blackrock Slayer"
        },
      },
      ["Gor'tesh"] = {
        {
        MinLevel = 54,
        MaxLevel = 54,
        Classification = "Normal",
        Movement = "Idle",
        Notes = "Absolute ton of burst damage + constant knockback",
        Location = ".pin Burning Steppes,39.4,56.6;.mob Gor'tesh"
        },
      },
    },
    ["Desolace"] = {
      ["Khan Hratha"] = {
        {
        MinLevel = 42,
        MaxLevel = 42,
        Classification = "Elite",
        Movement = "Idle",
        Notes = "Executes, has many adds, buffs them, dangerous terrain",
        Location = ".pin Desolace,29.8,50.4;.mob Khan Hratha"
        },
      },
      ["Kolkar Destroyer"] = {
        {
        MinLevel = 32,
        MaxLevel = 33,
        Classification = "Normal",
        Movement = "Idle",
        Notes = "Executes",
        Location = ".pin Desolace,72.0,40.2;.pin Desolace,70.8,43.6;.pin Desolace,74.4,46.8;.pin Desolace,70.8,49.0;.pin Desolace,74.0,50.6;.mob Kolkar Destroyer"
        },
      },
      ["Deepstrider Giant"] = {
        {
        MinLevel = 38,
        MaxLevel = 39,
        Classification = "Elite",
        Movement = "Slow Patrol",
        Notes = "Basic elite, but huge patrol/aggro radius",
        Location = ".line Desolace,20.63,88.19,21.44,84.50,21.99,83.60,23.25,83.11,24.82,81.41,25.37,82.24,25.64,82.89,26.21,82.62,27.05,82.83,27.95,82.73,29.15,82.07,29.83,81.93,30.25,81.30,31.67,80.18,32.30,79.85,33.08,80.02,33.55,79.68,33.73,78.98,33.92,77.68,34.43,76.92,34.64,75.67,35.26,75.39,36.42,75.53,37.62,75.59,39.06,78.94,39.68,79.18,40.22,79.16,40.74,80.26,41.26,80.97,42.45,81.10,43.46,81.14,44.09,80.94,44.64,80.15,44.78,78.92,44.72,77.79,44.69,77.08,44.69,76.65,44.26,75.89,44.02,74.65,43.90,73.38,43.23,72.16,42.80,71.30,42.60,70.16,42.02,69.08,41.91,68.11,42.00,67.77,41.86,65.67,42.02,64.33,42.73,63.53,43.45,63.25,44.11,62.36,44.18,60.67,44.25,59.69,44.06,57.83,43.57,56.78,43.46,55.42,43.46,52.20,43.54,50.72,43.94,49.79,44.29,48.30,44.35,47.11,44.56,45.95,44.68,44.88,44.69,43.46,44.68,42.47,44.96,41.34,45.61,40.99,45.72,40.06,46.51,39.79,47.10,40.00,48.03,39.95,48.60,40.20,48.61,41.23,49.12,42.36,49.30,43.55,49.37,44.65,49.54,45.53,50.12,46.73,50.70,46.91,52.38,46.77,53.71,46.78,54.27,47.36,54.77,47.76,55.29,48.02,55.95,47.94,56.08,47.90,56.76,47.18,57.54,46.95,58.39,47.06,59.21,47.45,60.02,48.01,60.53,48.81,61.24,48.97,61.24,50.30,61.87,51.25,61.86,52.58,61.86,54.86,61.92,55.79,61.84,57.18,61.90,58.40,61.90,58.95,62.69,59.75,63.31,60.78,63.37,61.61,63.43,62.05,63.39,63.60,63.41,65.39,63.45,66.17,63.43,67.01,62.54,67.57,62.03,67.69,61.46,67.97,61.02,68.63,60.59,68.90,59.96,69.83,59.42,70.45,59.24,71.37,59.51,72.27,59.65,72.71,59.71,73.91,59.69,74.62,59.79,75.99,59.69,78.04,59.58,78.94,59.00,79.13,58.66,79.82,58.19,80.03,57.90,80.56,58.29,81.60,58.52,82.09,58.48,82.73,58.40,83.86;.mob Deepstrider Giant"
        },
        {
        MinLevel = 38,
        MaxLevel = 39,
        Classification = "Elite",
        Movement = "Slow Patrol",
        Notes = "Basic elite, but huge patrol/aggro radius",
        Location = ".line Desolace,65.62,59.84,65.65,58.72,65.85,56.75,65.85,55.47,65.68,54.50,66.18,53.38,65.74,52.40,66.17,51.06,66.20,50.00,66.47,48.91,67.28,46.95,67.87,46.00,67.76,44.61,66.84,43.50,66.42,43.28,65.67,42.13,65.02,40.10,64.81,38.78,64.24,37.50,64.19,36.53,64.69,35.65,64.97,34.61,65.51,33.72,66.19,33.21,66.44,31.37,66.60,29.79,66.47,28.91,66.97,26.36,67.01,25.24,66.32,24.24,65.22,22.92,64.75,22.56,64.09,22.35,63.21,22.38,62.90,22.23,62.50,22.39,61.68,21.95,60.98,21.01,60.30,20.07,59.64,20.26,58.91,19.99,58.50,19.76,57.35,19.58,56.03,19.55,55.72,19.70,55.05,19.78,54.78,20.16,54.31,20.13,54.07,19.70,53.74,20.59,53.57,21.18,53.11,21.57,52.72,21.76,51.77,22.64,51.46,25.63,51.04,26.33,50.93,27.58,50.08,27.94,49.46,29.00,48.62,31.47,48.54,32.46,47.99,33.38,47.75,34.62,47.14,35.57,46.87,36.75,46.39,37.72,45.61,38.81,44.82,38.99,44.14,38.84,42.54,38.73,41.05,36.64,40.90,35.95,40.24,35.45,39.22,33.87,38.42,32.73,37.83,32.48,37.15,32.47,36.81,32.34,36.05,31.43,35.51,30.75,34.96,31.04,34.68,32.00,34.91,32.42,34.80,34.57,34.41,35.27,33.77,35.45,32.90,35.37,32.08,33.06,31.35,32.44,30.19,30.96,29.06,30.89,28.53,31.60,28.51,32.67,28.91,33.54,28.63,34.39,28.88,35.42,29.01,36.01,28.36,36.78,27.06,36.32,26.30,36.72,26.16,37.61,25.39,38.28,24.65,39.78,24.28,40.21,24.02,47.58,23.29,49.76,23.18,50.58,22.36,51.70,21.92,52.63,22.05,54.06,22.96,56.11,24.38,56.30,25.42,56.33;.mob Deepstrider Giant"
        },
      },
    },
    ["Durotar"] = {
      ["Warlord Kolkanis"] = {
        {
        MinLevel = 9,
        MaxLevel = 9,
        Classification = "Rare",
        Movement = "Idle",
        Notes = "Pummel, Thunderclap, 3 spawn locations",
        Location = ".pin Durotar,50.2,80.0;.pin Durotar,48.0,77.6;.pin Durotar,46.6,79.8;.mob Warlord Kolkanis"
        },
      },
      ["Zalazane"] = {
        {
        MinLevel = 10,
        MaxLevel = 10,
        Classification = "Normal",
        Movement = "Slow Patrol",
        Notes = "Healing Wave, often double pull",
        Location = ".line Durotar,66.6,87.6,67.6,87.8,67.6,86.8;.mob Zalazane"
        },
      },
      ["Captain Flat Tusk"] = {
        {
        MinLevel = 11,
        MaxLevel = 11,
        Classification = "Rare Elite",
        Movement = "Idle",
        Notes = "Heroic Strike; can burst for 100+ damage",
        Location = ".pin Durotar,44.76,50.66;.pin Durotar,39.20,53.64;.pin Durotar,40.04,48.91;.pin Durotar,43.53,39.93;.pin Durotar,43.51,37.10;.mob Captain Flat Tusk"
        },
      },
      ["Felweaver Scornn"] = {
        {
        MinLevel = 11,
        MaxLevel = 11,
        Classification = "Rare Elite",
        Movement = "Idle",
        Notes = "High damage shadowbolt + voidwalker, in a cave",
        Location = ".pin Durotar,52.78,8.96;.mob Felweaver Scornn"
        },
      },
      ["Fizzle Darkstorm"] = {
        {
        MinLevel = 12,
        MaxLevel = 12,
        Classification = "Normal",
        Movement = "Idle",
        Notes = "High damage Shadowbolt + Drain Life + Imp",
        Location = ".pin Durotar,42.12,26.66;.mob Fizzle Darkstorm"
        },
      },
      ["Makasgar"] = {
        {
        MinLevel = 12,
        MaxLevel = 12,
        Classification = "Normal",
        Movement = "Idle",
        Notes = "Not dangerous, just in a weird place",
        Location = ".pin Durotar,62.6,65.8;.mob Makasgar"
        },
      },
      ["Gazz'uz"] = {
        {
        MinLevel = 14,
        MaxLevel = 14,
        Classification = "Normal",
        Movement = "Idle",
        Notes = "High damage shadowbolt + voidwalker, in a cave",
        Location = ".pin Durotar,52.6,8.8;.mob Gazz'uz"
        },
      },
      ["Voodoo Trolls"] = {
        {
        MinLevel = 8,
        MaxLevel = 9,
        Classification = "Normal",
        Movement = "Idle",
        Notes = "Healing Wave, Lightning Shield",
        Location = ".pin Durotar,66.2,82.4;.pin Durotar,67.6,87.6;.pin Durotar,65.6,86.0;.pin Durotar,67.6,83.6;.mob Voodoo Trolls"
        },
      },
      ["Dustwind Storm Witch"] = {
        {
        MinLevel = 10,
        MaxLevel = 11,
        Classification = "Normal",
        Movement = "Idle",
        Notes = "Casters, easily double pulled",
        Location = ".pin Durotar,51.32,23.44;.pin Durotar,53.01,24.40;.pin Durotar,54.03,22.33;.pin Durotar,51.58,20.91;.pin Durotar,51.41,19.02;.mob Dustwind Storm Witch"
        },
      },
    },
    ["Dustwallow Marsh"] = {
      ["Brimgore"] = {
        {
        MinLevel = 45,
        MaxLevel = 45,
        Classification = "Rare Elite",
        Movement = "Slow Patrol",
        Notes = "Flame breath",
        Location = ".line Dustwallow Marsh,43.82,80.69,42.21,78.44,41.58,75.56;.mob Brimgore"
        },
      },
      ["Coral Shark"] = {
        {
        MinLevel = 46,
        MaxLevel = 47,
        Classification = "Elite",
        Movement = "Idle",
        Notes = "Extremely high level/thrashes/hard to see",
        Location = ".pin Dustwallow Marsh,75.6,32.0;.pin Dustwallow Marsh,81.0,52.8;.pin Dustwallow Marsh,74.8,72.8;.pin Dustwallow Marsh,78.2,69.0;.pin Dustwallow Marsh,67.4,61.2;.pin Dustwallow Marsh,67.2,57.2;.pin Dustwallow Marsh,69.0,55.2;.pin Dustwallow Marsh,70.6,52.4;.pin Dustwallow Marsh,70.6,49.4;.pin Dustwallow Marsh,72.6,53.6;.pin Dustwallow Marsh,71.4,57.8;.pin Dustwallow Marsh,62.6,32.0;.pin Dustwallow Marsh,62.6,28.2;.pin Dustwallow Marsh,62.8,23.8;.pin Dustwallow Marsh,65.8,22.4;.pin Dustwallow Marsh,65.6,20.2;.pin Dustwallow Marsh,66.8,27.8;.pin Dustwallow Marsh,65.8,30.8;.pin Dustwallow Marsh,64.8,32.6;.mob Coral Shark"
        },
      },
    },
    ["Eastern Plaguelands"] = {
      ["Zaeldarr the Outcast"] = {
        {
        MinLevel = 55,
        MaxLevel = 55,
        Classification = "Normal",
        Movement = "Idle",
        Notes = "Stuns; pulls with other mobs",
        Location = ".pin Eastern Plaguelands,27.4,85.6;.mob Zeldarr the Outcast"
        },
      },
      ["Mercutio Filthgorger"] = {
        {
        MinLevel = 57,
        MaxLevel = 57,
        Classification = "Normal",
        Movement = "Idle",
        Notes = "Spawns with adds, gouges,lingers if not killed",
        Location = ".pin Eastern Plaguelands,28.6,87.4;.mob Mercutio Filthgorger"
        },
      },
      ["Infiltrator Hameya"] = {
        {
        MinLevel = 60,
        MaxLevel = 60,
        Classification = "Normal",
        Movement = "Slow Patrol",
        Notes = "Patrols around a dozen graves in Zul'Mashar",
        Location = ".line Eastern Plaguelands,70.21,15.85,70.90,16.76,70.89,17.08,70.54,17.64,70.17,17.52,69.73,16.83,69.73,16.48,70.21,15.85;.mob Infiltrator Hameya"
        },
      },
      ["Duskwing"] = {
        {
        MinLevel = 60,
        MaxLevel = 60,
        Classification = "Elite",
        Movement = "Slow Patrol",
        Notes = "Has an AoE silence",
        Location = ".line Eastern Plaguelands,29.15,63.52,29.70,63.68,30.39,63.87,30.98,64.73,31.35,65.88,31.46,66.66,31.52,67.86,30.96,68.97,30.63,70.77,30.47,72.42,30.62,73.50,31.04,74.76,30.81,76.64,32.04,77.09,32.83,76.38,32.71,74.62,32.76,73.48,33.61,72.86,34.12,72.02,34.72,71.36,35.50,70.75,36.31,70.06,36.67,70.44,37.16,71.03,37.29,71.78,37.47,72.01,39.90,71.95,40.35,71.93,40.74,70.83,40.97,69.30,41.81,68.80,42.92,68.44,43.36,68.07,44.40,67.25,45.35,66.76;.mob Duskwing"
        },
      },
      ["Nerubian Overseer"] = {
        {
        MinLevel = 60,
        MaxLevel = 60,
        Classification = "Elite",
        Movement = "Slow Patrol",
        Notes = "Will remain at range if possible; has a web",
        Location = ".line Eastern Plaguelands,19.54,30.97,19.24,31.17,19.01,31.58,18.67,32.87,18.32,33.53,17.84,33.75,17.27,33.59,16.74,33.13,16.12,32.76,15.61,32.53,15.56,31.62,15.66,31.00,15.99,30.26,15.89,29.44,15.53,29.05,15.23,29.51,14.98,30.10,14.68,30.70,14.86,31.50,14.65,31.74,13.82,31.77,13.48,33.16,12.90,33.48,12.48,33.56,12.11,34.26,11.20,34.53,10.49,35.57,10.58,36.51,10.12,37.47,9.41,37.89,8.85,37.74,8.03,38.28,7.96,39.00,8.14,39.51;.mob Nerubian Overseer"
        },
      },
      ["Crimson Bodyguard"] = {
        {
        MinLevel = 57,
        MaxLevel = 58,
        Classification = "Elite",
        Movement = "Slow Patrol",
        Notes = "Four accompany the Crimson Courier; charges, knocks back, and disarms",
        Location = ".line Eastern Plaguelands,30.85,20.06,30.95,21.06,31.04,23.39,31.57,25.91,32.01,26.80,32.95,28.02,33.41,28.57,34.29,29.10,35.77,29.43,37.58,29.43,38.44,28.76,39.11,28.47,39.55,28.59,40.54,29.23,41.29,29.60,42.77,30.54,43.77,31.05,44.70,31.46,45.79,31.82,46.93,32.53,48.82,33.62,49.73,33.94,50.66,34.26,51.76,34.59,53.33,34.90,55.76,35.46,56.51,35.88,57.60,36.74,58.73,37.92,60.50,40.32,62.25,44.52,63.66,48.15,63.82,49.64,63.71,50.72,63.18,51.91,62.64,53.60,62.46,56.39,62.75,58.46,63.22,60.47,63.27,62.14,62.96,63.35,62.31,64.95,60.81,67.20,59.92,68.37,60.83,69.91,62.64,71.40,64.19,73.01,65.20,75.50,65.70,76.12,67.44,77.08,68.39,77.46,69.21,77.87,70.67,78.33,71.62,78.48,72.17,78.84,73.78,80.37,76.54,81.80,77.36,81.79,78.12,81.64,79.23,81.65,80.26,81.73,81.02,81.96,81.11,82.39,81.36,82.76,81.74,82.71,82.05,82.30,82.51,82.43,84.75,83.67,85.55,84.17,86.61,85.06,86.52,85.30,86.93,85.65,87.04,85.36,87.57,85.77;.mob Crimson Bodyguard"
        },
        {
        MinLevel = 57,
        MaxLevel = 58,
        Classification = "Elite",
        Movement = "Slow Patrol",
        Notes = "Four accompany the Crimson Courier; charges, knocks back, and disarms",
        Location = ".line Eastern Plaguelands,30.85,20.06,30.95,21.06,31.04,23.39,31.57,25.91,32.01,26.80,32.95,28.02,33.41,28.57,34.29,29.10,35.77,29.43,37.58,29.43,38.44,28.76,39.11,28.47,39.55,28.59,40.54,29.23,41.29,29.60,42.77,30.54,43.77,31.05,44.70,31.46,45.79,31.82,46.93,32.53,48.82,33.62,49.73,33.94,50.66,34.26,51.76,34.59,53.33,34.90,55.76,35.46,56.51,35.88,57.60,36.74,58.73,37.92,60.50,40.32,62.25,44.52,63.66,48.15,63.82,49.64,63.71,50.72,63.18,51.91,62.64,53.60,62.46,56.39,62.75,58.46,63.22,60.47,63.27,62.14,62.96,63.35,62.31,64.95,60.81,67.20,59.92,68.37,60.83,69.91,62.64,71.40,64.19,73.01,65.20,75.50,65.70,76.12,67.44,77.08,68.39,77.46,69.21,77.87,70.67,78.33,71.62,78.48,72.17,78.84,73.78,80.37,76.54,81.80,77.36,81.79,78.12,81.64,79.23,81.65,80.26,81.73,81.02,81.96,81.11,82.39,81.36,82.76,81.74,82.71,82.05,82.30,82.51,82.43,84.75,83.67,85.55,84.17,86.61,85.06,86.52,85.30,86.93,85.65,87.04,85.36,87.57,85.77;.mob Crimson Bodyguard"
        },
      },
      ["Horgus the Ravager"] = {
        {
        MinLevel = 60,
        MaxLevel = 60,
        Classification = "Elite",
        Movement = "Idle",
        Notes = "Thrashes, drains HP, lingers after Darrowshire event",
        Location = ".pin Eastern Plaguelands,38.6,89.8;.mob Horgus the Ravager"
        },
      },
      ["Borelgore"] = {
        {
        MinLevel = 61,
        MaxLevel = 61,
        Classification = "Elite",
        Movement = "Slow Patrol",
        Notes = "Kiteable; painful poison dot/aoe if close",
        Location = ".line Eastern Plaguelands,54.48,31.82,55.13,31.80,55.60,31.78,55.86,31.25,56.31,31.15,56.66,31.78,57.17,31.83,57.85,32.03,58.49,32.34,59.34,32.12,59.99,31.95,60.58,31.87,61.13,32.27,61.79,32.98,62.57,33.31,63.17,34.09,63.67,34.56,64.29,34.89;.mob Borelgore"
        },
      },
      ["Demetria"] = {
        {
        MinLevel = 61,
        MaxLevel = 61,
        Classification = "Elite",
        Movement = "Slow Patrol",
        Notes = "Quest mob; patrols Stratholme (Live) to Tyr's Hand with 9-10 non-elite bodyguards and lingers if not slain",
        Location = ".line Eastern Plaguelands,30.85,20.06,30.95,21.06,31.04,23.39,31.57,25.91,32.01,26.80,32.95,28.02,33.41,28.57,34.29,29.10,35.77,29.43,37.58,29.43,38.44,28.76,39.11,28.47,39.55,28.59,40.54,29.23,41.29,29.60,42.77,30.54,43.77,31.05,44.70,31.46,45.79,31.82,46.93,32.53,48.82,33.62,49.73,33.94,50.66,34.26,51.76,34.59,53.33,34.90,55.76,35.46,56.51,35.88,57.60,36.74,58.73,37.92,60.50,40.32,62.25,44.52,63.66,48.15,63.82,49.64,63.71,50.72,63.18,51.91,62.64,53.60,62.46,56.39,62.75,58.46,63.22,60.47,63.27,62.14,62.96,63.35,62.31,64.95,60.81,67.20,59.92,68.37,60.83,69.91,62.64,71.40,64.19,73.01,65.20,75.50,65.70,76.12,67.44,77.08,68.39,77.46,69.21,77.87,70.67,78.33,71.62,78.48,72.17,78.84,73.78,80.37,76.54,81.80,77.36,81.79,78.12,81.64,79.23,81.65,80.26,81.73,81.02,81.96,81.11,82.39,81.36,82.76,81.74,82.71,82.05,82.30,82.51,82.43,84.75,83.67,85.55,84.17,86.61,85.06,86.52,85.30,86.93,85.65,87.04,85.36,87.57,85.77;.mob Demetria"
        },
      },
      ["Plaguebat"] = {
        {
        MinLevel = 53,
        MaxLevel = 55,
        Classification = "Normal",
        Movement = "Idle",
        Notes = "4 sec AoE terrify effect",
        Location = ".pin Eastern Plaguelands,7.6,43.8;.pin Eastern Plaguelands,8.2,50.4;.pin Eastern Plaguelands,11.0,59.6;.pin Eastern Plaguelands,16.6,65.8;.pin Eastern Plaguelands,15.6,78.8;.pin Eastern Plaguelands,21.6,80.8;.pin Eastern Plaguelands,19.8,71.4;.pin Eastern Plaguelands,20.4,66.8;.pin Eastern Plaguelands,22.0,61.4;.pin Eastern Plaguelands,29.2,68.4;.pin Eastern Plaguelands,31.2,64.4;.pin Eastern Plaguelands,32.8,70.8;.pin Eastern Plaguelands,31.6,77.6;.pin Eastern Plaguelands,34.0,81.4;.pin Eastern Plaguelands,42.6,83.4;.pin Eastern Plaguelands,44.2,75.0;.pin Eastern Plaguelands,43.8,66.4;.pin Eastern Plaguelands,48.0,78.4;.pin Eastern Plaguelands,51.4,78.0;.pin Eastern Plaguelands,56.8,75.6;.pin Eastern Plaguelands,57.8,83.8;.pin Eastern Plaguelands,64.0,84.8;.pin Eastern Plaguelands,65.2,77.6;.pin Eastern Plaguelands,70.0,81.6;.pin Eastern Plaguelands,73.6,84.0;.mob Plaguebat"
        },
      },
      ["Unseen Servant"] = {
        {
        MinLevel = 55,
        MaxLevel = 56,
        Classification = "Normal",
        Movement = "Idle",
        Notes = "Invisible patrol, sees through stealth",
        Location = ".pin Eastern Plaguelands,58.6,71.0;.pin Eastern Plaguelands,58.0,66.2;.pin Eastern Plaguelands,62.1,68.9;.mob Unseen Servant"
        },
      },
      ["Eyeless Watcher"] = {
        {
        MinLevel = 57,
        MaxLevel = 58,
        Classification = "Normal",
        Movement = "Idle",
        Notes = "Invisible patrol, sees through stealth",
        Location = ".pin Eastern Plaguelands,81.8,45.8;.pin Eastern Plaguelands,86.2,40.8;.pin Eastern Plaguelands,41.8,54.1;.pin Eastern Plaguelands,41.7,48.8;.pin Eastern Plaguelands,38.1,50.5;.pin Eastern Plaguelands,34.6,61.2;.pin Eastern Plaguelands,69.9,30.5;.pin Eastern Plaguelands,72.4,31.4;.pin Eastern Plaguelands,74.0,34.0;.mob Unseen Servant"
        },
      },
      ["Mossflayer Scout"] = {
        {
        MinLevel = 57,
        MaxLevel = 58,
        Classification = "Normal",
        Movement = "Slow Patrol",
        Notes = "Immediately runs for help/aggros other mobs",
        Location = ".line Eastern Plaguelands,69.46,19.72,69.83,19.39,70.31,18.60,70.88,18.83,71.69,18.87,71.82,18.39,72.66,18.56;.mob Mossflayer Scout"
        },
        {
        MinLevel = 57,
        MaxLevel = 58,
        Classification = "Normal",
        Movement = "Slow Patrol",
        Notes = "Immediately runs for help/aggros other mobs",
        Location = ".line Eastern Plaguelands,70.07,15.50,69.73,16.16,69.56,17.04,69.11,17.94,68.90,19.82,68.88,20.70;.mob Mossflayer Scout"
        },
        {
        MinLevel = 57,
        MaxLevel = 58,
        Classification = "Normal",
        Movement = "Slow Patrol",
        Notes = "Immediately runs for help/aggros other mobs",
        Location = ".line Eastern Plaguelands,69.30,19.71,68.77,20.12,68.38,21.13,67.08,21.52,66.60,21.41,65.18,21.74,64.78,21.79,64.31,22.10;.mob Mossflayer Scout"
        },
      },
      ["Infected Mossflayer"] = {
        {
        MinLevel = 57,
        MaxLevel = 58,
        Classification = "Normal",
        Movement = "Idle",
        Notes = "Stuns, spawn if player gets near graves",
        Location = ".pin Eastern Plaguelands,69.0,20.4;.pin Eastern Plaguelands,68.4,17.4;.pin Eastern Plaguelands,71.2,15.4;.pin Eastern Plaguelands,70.6,18.8;.mob Infected Mossflayer"
        },
      },
    },
    ["Felwood"] = {
      ["Spirit of Trey Lightforge"] = {
        {
        MinLevel = 53,
        MaxLevel = 53,
        Classification = "Elite",
        Movement = "Idle",
        Notes = "Spawns at the end of Rescue from Jaedenar, doable but maybe instructions needed",
        Location = ".pin Felwood,35.6,59.0;.mob Spirit of Trey Lightforge"
        },
      },
      ["Dessecus"] = {
        {
        MinLevel = 56,
        MaxLevel = 56,
        Classification = "Rare Elite",
        Movement = "Idle",
        Notes = "Basic elite. Has a lightning cloud",
        Location = ".pin Felwood,58.2,17.8;.mob Dessecus"
        },
      },
      ["Immolatus"] = {
        {
        MinLevel = 56,
        MaxLevel = 56,
        Classification = "Rare Elite",
        Movement = "Slow Patrol",
        Notes = "Big knockback",
        Location = ".line Felwood,43.58,37.98,44.28,38.39,45.41,38.11,46.07,39.25,45.62,40.58,45.53,42.01,44.47,42.77,43.72,42.87;.mob Immolatus"
        },
      },
      ["Lord Banehollow"] = {
        {
        MinLevel = 59,
        MaxLevel = 59,
        Classification = "Elite",
        Movement = "Idle",
        Notes = "Curse of Thorns, Shadow Shock (instant, high damage)",
        Location = ".pin Felwood,36.0,44.6;.mob Lord Banehollow"
        },
      },
      ["Jadefire Shadowstalker"] = {
        {
        MinLevel = 51,
        MaxLevel = 52,
        Classification = "Normal",
        Movement = "Idle",
        Notes = "Stealth mobs with fire shield/thorns",
        Location = ".pin Felwood,32.2,66.0;.pin Felwood,33.6,66.6;.pin Felwood,36.4,66.8;.pin Felwood,37.6,66.6;.pin Felwood,38.4,69.6;.mob Jadefire Shadowstalker"
        },
      },
      ["Jadefire Trickster"] = {
        {
        MinLevel = 51,
        MaxLevel = 52,
        Classification = "Normal",
        Movement = "Idle",
        Notes = "Mind controls 2+ targets",
        Location = ".pin Felwood,32.2,66.0;.pin Felwood,33.6,66.6;.pin Felwood,36.4,66.8;.pin Felwood,37.6,66.6;.pin Felwood,38.4,69.6;.mob Jadefire Trickster"
        },
      },
      ["Jaedenar Adept"] = {
        {
        MinLevel = 51,
        MaxLevel = 52,
        Classification = "Normal",
        Movement = "Idle",
        Notes = "High damage fireball and fire blast; casts Blink",
        Location = ".pin Felwood,35.0,59.2;.pin Felwood,36.4,61.2;.pin Felwood,38.6,60.6;.mob Jaedenar Adept"
        },
      },
      ["Infernal Bodyguard"] = {
        {
        MinLevel = 53,
        MaxLevel = 54,
        Classification = "Elite",
        Movement = "Idle",
        Notes = "Big knockback",
        Location = ".pin Felwood,39.2,43.4;.pin Felwood,39.0,37.8;.pin Felwood,41.8,38.2;.pin Felwood,42.6,43.6;.pin Felwood,44.6,43.0;.pin Felwood,46.6,40.2;.pin Felwood,45.6,37.0;.pin Felwood,48.6,37.2;.pin Felwood,44.4,47.0;.mob Infernal Bodyguard"
        },
      },
      ["Deadwood Avenger"] = {
        {
        MinLevel = 54,
        MaxLevel = 55,
        Classification = "Normal",
        Movement = "Idle",
        Notes = "Enrages if their allies die around them; has -50% healing taken debuff",
        Location = ".pin Felwood,61.2,6.7;.pin Felwood,63.4,7.9;.pin Felwood,62.8,11.5;.mob Deadwood Avenger"
        },
      },
      ["Salia"] = {
        {
        MinLevel = 54,
        MaxLevel = 54,
        Classification = "Normal",
        Movement = "Idle",
        Notes = "Mind controls 2+ targets",
        Location = ".pin Felwood,39.6,47.0;.mob Salia"
        },
      },
    },
    ["Feralas"] = {
      ["Edana Hatetalon"] = {
        {
        MinLevel = 50,
        MaxLevel = 50,
        Classification = "Elite",
        Movement = "Idle",
        Notes = "Quest mob; lightning cloud",
        Location = ".pin Feralas,40.6,8.6;.mob Edana Hatetalon"
        },
      },
      ["Sea Spray"] = {
        {
        MinLevel = 47,
        MaxLevel = 48,
        Classification = "Normal",
        Movement = "Idle",
        Notes = "Geyser hits very hard, knocks far back, and slows",
        Location = ".pin Feralas,34.4,33.4;.pin Feralas,35.6,35.8;.pin Feralas,37.0,35.8;.pin Feralas,38.2,33.6;.pin Feralas,40.2,37.6;.pin Feralas,42.0,39.2;.pin Feralas,44.6,38.8;.pin Feralas,44.8,46.2;.pin Feralas,44.6,49.8;.pin Feralas,45.8,52.2;.pin Feralas,47.6,50.8;.pin Feralas,48.6,48.2;.pin Feralas,49.8,51.8;.pin Feralas,46.8,54.8;.pin Feralas,47.0,59.6;.pin Feralas,46.6,63.6;.pin Feralas,45.8,66.2;.mob Sea Spray"
        },
      },
      ["Northspring Slayer"] = {
        {
        MinLevel = 49,
        MaxLevel = 50,
        Classification = "Normal",
        Movement = "Idle",
        Notes = "Execute mobs",
        Location = ".pin Feralas,39.8,10.2;.pin Feralas,41.6,12.0;.pin Feralas,39.6,14.6;.pin Feralas,38.2,15.6;.pin Feralas,37.4,12.4;.pin Feralas,39.0,13.2;.mob Northspring Slayer"
        },
      },
    },
    ["Hillsbrad Foothills"] = {
      ["Blacksmith Verringtan"] = {
        {
        MinLevel = 26,
        MaxLevel = 26,
        Classification = "Normal",
        Movement = "Idle",
        Notes = "Double pulls in a crowded area/hyperspawn",
        Location = ".pin Hillsbrad Foothills,32.6,46.8;.mob Blacksmith Verringtan"
        },
      },
      ["Foreman Bonds"] = {
        {
        MinLevel = 30,
        MaxLevel = 30,
        Classification = "Normal",
        Movement = "Idle",
        Notes = "Summons 2 adds around 30-40% hp",
        Location = ".pin Hillsbrad Foothills,31.0,56.2;.mob Foreman Bonds"
        },
      },
      ["Hillsbrad Footman"] = {
        {
        MinLevel = 25,
        MaxLevel = 26,
        Classification = "Normal",
        Movement = "Idle",
        Notes = "Has high block ability/shield bash",
        Location = ".pin Hillsbrad Foothills,30.2,42.2;.pin Hillsbrad Foothills,33.0,38.0;.pin Hillsbrad Foothills,34.6,47.6;.pin Hillsbrad Foothills,37.2,46.4;.mob Hillsbrad Footman"
        },
      },
    },
    ["The Hinterlands"] = {
      ["Gammerita"] = {
        {
        MinLevel = 48,
        MaxLevel = 48,
        Classification = "Elite",
        Movement = "Slow Patrol",
        Notes = "Hits hard, reduces armor, patrols coast",
        Location = ".line The Hinterlands,81.95,49.41,81.21,52.91,81.98,54.30,81.97,56.42,80.77,58.37,80.34,59.40,79.45,60.76,78.69,61.39,76.86,62.73,75.91,63.81,75.29,65.60,76.72,66.85,78.53,67.51,78.60,68.97,77.90,70.97,76.71,71.26,76.52,72.95,77.07,74.64;.mob Gammerita"
        },
      },
      ["Retherokk the Berserker"] = {
        {
        MinLevel = 48,
        MaxLevel = 48,
        Classification = "Rare",
        Movement = "Idle",
        Notes = "Enrage and Thrash",
        Location = ".pin The Hinterlands,50.8,62.6;.mob Retherokk the Berserker"
        },
      },
      ["Vilebranch Kidnapper"] = {
        {
        MinLevel = 49,
        MaxLevel = 49,
        Classification = "Normal",
        Movement = "Idle",
        Notes = "3 spawn on Lard Lost His Lunch; executes",
        Location = ".pin The Hinterlands,84.4,40.9;.mob Vilebranch Kidnapper"
        },
      },
      ["Grimungous"] = {
        {
        MinLevel = 50,
        MaxLevel = 50,
        Classification = "Rare Elite",
        Movement = "Slow Patrol",
        Notes = "5 second aoe stun",
        Location = ".line The Hinterlands,70.26,52.47,69.32,52.28,68.77,51.89,68.54,51.59,68.24,50.31,68.05,48.59,67.21,48.03,66.21,47.91,65.82,48.76,65.17,48.43,64.31,47.29,63.88,48.42,64.20,49.38,64.45,50.15,64.73,51.15,64.90,51.56,65.49,51.70,65.75,52.88,65.76,53.56,65.81,54.12,65.34,54.90,65.47,56.27,65.80,57.20,66.91,57.14,67.93,57.70,68.40,58.99,68.55,59.85,69.30,60.49,70.78,59.00,71.59,58.63,72.21,58.77,72.49,58.93,72.90,58.34,73.00,57.08,73.38,56.03,74.22,55.21,75.03,55.45,75.41,55.23,75.99,55.04,76.24,53.76,76.54,52.72,77.21,51.26,77.00,50.46,76.34,49.67,75.28,49.38,74.45,49.44,74.00,50.40,73.21,50.76,72.93,52.85,72.50,53.47,72.06,53.30,71.66,53.05,71.61,52.84,71.03,53.21,70.26,52.47;.mob Grimungous"
        },
      },
      ["Vilebranch Scalper"] = {
        {
        MinLevel = 46,
        MaxLevel = 47,
        Classification = "Normal",
        Movement = "Idle",
        Notes = "Executes",
        Location = ".pin The Hinterlands,48.2,66.3;.pin The Hinterlands,53.4,40.6;.pin The Hinterlands,67.2,45.6;.pin The Hinterlands,72.6,48.8;.mob Vilebranch Scalper"
        },
      },
      ["Vilebranch Ambusher"] = {
        {
        MinLevel = 47,
        MaxLevel = 48,
        Classification = "Normal",
        Movement = "Idle",
        Notes = "Has execute, 3 spawn during chicken escort",
        Location = ".pin The Hinterlands,69.6,62.4;.mob Vilebranch Ambusher"
        },
      },
    },
    ["Mulgore"] = {
      ["Sister Hatelash"] = {
        {
        MinLevel = 11,
        MaxLevel = 11,
        Classification = "Rare Elite",
        Movement = "Idle",
        Notes = "Painful lightning shield",
        Location = ".pin Mulgore,53.8,13.8;.pin Mulgore,55.6,11.6;.pin Mulgore,54.4,9.4;.pin Mulgore,36.0,10.0;.pin Mulgore,37.2,12.6;.pin Mulgore,30.4,20.8;.pin Mulgore,30.4,23.6;.pin Mulgore,31.8,20.8;.mob Sister Hatelash"
        },
      },
      ["Arra'chea"] = {
        {
        MinLevel = 11,
        MaxLevel = 11,
        Classification = "Normal",
        Movement = "Slow Patrol",
        Notes = "High hp, has a stun",
        Location = ".line Mulgore,50.58,24.63,50.08,23.19,49.29,19.68,49.15,18.53,49.22,18.33,49.08,17.15,49.10,16.36,49.24,15.43,49.54,14.74,50.35,13.48,50.57,13.02,50.94,12.51,51.82,11.83,52.13,11.88,52.61,12.50,52.83,13.10,53.16,15.01,53.54,15.61,53.64,16.07,54.48,19.77,54.09,21.27,54.05,21.43,53.96,22.60,54.09,23.39,54.96,26.06,55.23,28.06,55.19,30.82,55.15,31.14,54.96,31.83,54.83,32.06,54.48,32.26,53.35,32.25,53.06,32.21,52.14,31.43,52.29,30.24,52.38,30.15,52.06,27.92,51.41,26.28,51.09,26.00,51.00,25.61,50.58,24.63;.mob Arra'chea"
        },
      },
      ["Supervisor Fizsprocket "] = {
        {
        MinLevel = 12,
        MaxLevel = 12,
        Classification = "Normal",
        Movement = "Idle",
        Notes = "easily double-pulled",
        Location = ".pin Mulgore,64.6,43.6;.mob Supervisor Fizsprocket"
        },
      },
      ["Galak Centaur"] = {
        {
        MinLevel = 8,
        MaxLevel = 9,
        Classification = "Normal",
        Movement = "Slow Patrol",
        Notes = "Double mob patrol in South-East Mulgore",
        Location = ".line Mulgore,68.68,62.29,68.50,62.43,68.12,62.63,67.80,63.44,67.32,63.64,67.06,63.82,66.83,64.28,66.19,64.74,65.60,64.79,64.37,65.80,63.40,65.78,62.89,65.98,62.54,66.49,62.40,66.59;.mob Galak Centaur"
        },
        {
        MinLevel = 8,
        MaxLevel = 9,
        Classification = "Normal",
        Movement = "Slow Patrol",
        Notes = "Double mob patrol in South-East Mulgore",
        Location = ".line Mulgore,68.22,58.09,67.83,58.37,67.53,58.57,67.37,59.25,66.81,59.86,65.94,59.93,64.58,60.51,62.97,59.65,62.17,58.92,61.74,59.40,61.59,60.25,61.66,60.84,62.25,61.38;.mob Galak Centaur"
        },
      },
      ["Galak Outrunner"] = {
        {
        MinLevel = 9,
        MaxLevel = 10,
        Classification = "Normal",
        Movement = "Slow Patrol",
        Notes = "Double mob patrol in South-East Mulgore",
        Location = ".line Mulgore,68.68,62.29,68.50,62.43,68.12,62.63,67.80,63.44,67.32,63.64,67.06,63.82,66.83,64.28,66.19,64.74,65.60,64.79,64.37,65.80,63.40,65.78,62.89,65.98,62.54,66.49,62.40,66.59;.mob Galak Outrunner"
        },
        {
        MinLevel = 9,
        MaxLevel = 10,
        Classification = "Normal",
        Movement = "Slow Patrol",
        Notes = "Double mob patrol in South-East Mulgore",
        Location = ".line Mulgore,61.83,56.63,62.48,56.91,62.88,57.02,63.40,58.04,64.01,58.62,64.62,58.55,65.43,58.25,66.02,57.57,66.85,57.01;.mob Galak Outrunner"
        },
      },
    },
    ["Searing Gorge"] = {
      ["Dark Iron Sentry"] = {
        {
        MinLevel = 48,
        MaxLevel = 48,
        Classification = "Elite",
        Movement = "Idle",
        Notes = "Sees through stealth",
        Location = ".pin Searing Gorge,42.0,35.4;.pin Searing Gorge,34.2,54.0;.pin Searing Gorge,36.6,60.0;.pin Searing Gorge,43.4,62.0;.pin Searing Gorge,49.4,55.8;.mob Dark Iron Sentry"
        },
      },
      ["Twilight Dark Shaman"] = {
        {
        MinLevel = 47,
        MaxLevel = 48,
        Classification = "Elite",
        Movement = "Idle",
        Notes = "Painful shock/heals",
        Location = ".pin Searing Gorge,18.6,35.4;.pin Searing Gorge,22.0,36.6;.pin Searing Gorge,23.6,41.2;.pin Searing Gorge,26.6,34.6;.pin Searing Gorge,25.0,39.6;.mob Twilight Dark Shaman"
        },
      },
      ["Twilight Fire Guard"] = {
        {
        MinLevel = 48,
        MaxLevel = 49,
        Classification = "Elite",
        Movement = "Idle",
        Notes = "AoE fireball",
        Location = ".pin Searing Gorge,18.6,35.4;.pin Searing Gorge,22.0,36.6;.pin Searing Gorge,23.6,41.2;.pin Searing Gorge,26.6,34.6;.pin Searing Gorge,25.0,39.6;.pin Searing Gorge,25.8,29.6;.pin Searing Gorge,23.6,27.4;.pin Searing Gorge,27.8,25.0;.pin Searing Gorge,30.6,26.4;.mob Twilight Fire Guard"
        },
      },
      ["Twilight Geomancer"] = {
        {
        MinLevel = 49,
        MaxLevel = 50,
        Classification = "Elite",
        Movement = "Idle",
        Notes = "Rain of Fire",
        Location = ".pin Searing Gorge,25.8,29.6;.pin Searing Gorge,23.6,27.4;.pin Searing Gorge,27.8,25.0;.pin Searing Gorge,30.6,26.4;.pin Searing Gorge,16.2,33.6;.pin Searing Gorge,13.6,42.6;.pin Searing Gorge,17.6,43.8;.mob Twilight Geomancer"
        },
      },
      ["Overseer Maltorius"] = {
        {
        MinLevel = 49,
        MaxLevel = 50,
        Classification = "Elite",
        Movement = "Idle",
        Notes = "1-2 adds, ~300 damage shadow bolt",
        Location = ".pin Searing Gorge,41.0,35.4;.mob Overseer Maltorius"
        },
      },
      ["Twilight Idolater"] = {
        {
        MinLevel = 49,
        MaxLevel = 51,
        Classification = "Elite",
        Movement = "Idle",
        Notes = "Nets",
        Location = ".pin Searing Gorge,27.4,26.0;.pin Searing Gorge,29.6,26.6;.mob Twilight Idolater"
        },
      },
    },
    ["Silithus"] = {
      ["Krellack"] = {
        {
        MinLevel = 56,
        MaxLevel = 56,
        Classification = "Rare",
        Movement = "Idle",
        Notes = "\"fatal sting\" is an execute with a dot effect",
        Location = ".pin Silithus,65.80,30.32;.mob Krellack"
        },
      },
      ["Rex Ashil"] = {
        {
        MinLevel = 57,
        MaxLevel = 57,
        Classification = "Rare Elite",
        Movement = "Slow Patrol",
        Notes = "-75% armor debuff",
        Location = ".line Silithus,46.39,22.42,46.77,22.19,46.96,23.19,47.40,23.84,48.01,24.22,48.10,24.87,47.44,25.70,47.43,26.41,47.66,26.81,47.41,27.51,46.83,27.18,46.25,27.81,46.11,28.15,46.25,28.68,46.05,28.95,45.64,28.97;.mob Rex Ashil"
        },
      },
      ["Deathclasp"] = {
        {
        MinLevel = 59,
        MaxLevel = 59,
        Classification = "Elite",
        Movement = "Idle",
        Notes = "8 second stun (poison, no dot)",
        Location = ".pin Silithus,44.03,90.28;.mob Deathclasp"
        },
      },
      ["Zora"] = {
        {
        MinLevel = 59,
        MaxLevel = 59,
        Classification = "Rare Elite",
        Movement = "Idle",
        Notes = "Patrols around many adds",
        Location = ".pin Silithus,18.2,69.6;.pin Silithus,20.0,65.4;.pin Silithus,19.2,56.2;.pin Silithus,21.0,58.8;.pin Silithus,23.6,62.6;.pin Silithus,24.0,71.2;.pin Silithus,26.6,58.8;.pin Silithus,26.6,56.4;.mob Zora"
        },
      },
      ["Twilight Keeper Mayna"] = {
        {
        MinLevel = 60,
        MaxLevel = 60,
        Classification = "Normal",
        Movement = "Slow Patrol",
        Notes = "Fear, dot, mind flay in crowded camp",
        Location = ".line Silithus,27.04,35.62,26.72,35.85,26.53,36.18,26.45,36.55,26.06,37.09;.mob Twilight Keeper Mayna"
        },
      },
      ["The Windreaver"] = {
        {
        MinLevel = 60,
        MaxLevel = 60,
        Classification = "Elite",
        Movement = "Slow Patrol",
        Notes = "Many adds; chain lightning, shock, lightning cloud, cyclone",
        Location = ".line Silithus,24.49,28.14,23.77,27.52,23.07,27.69,22.19,28.42,21.08,28.95,20.20,29.03,19.56,28.59,19.11,27.40,18.92,26.32,18.31,23.16,18.81,22.10,19.74,21.84,20.48,22.26,21.00,24.14,21.11,25.10,21.36,25.91,21.94,26.68,23.76,27.37,24.93,27.86,25.64,27.88,26.90,26.85,27.75,26.62,28.59,26.25,29.38,25.34,29.58,24.44,29.62,23.56,29.52,21.89,29.77,20.09,29.67,18.65,29.49,17.70,29.03,16.72,28.94,15.60,29.28,14.98,30.02,14.83,30.48,14.83,32.16,14.35,32.96,14.45,33.55,15.25,33.61,16.41,33.10,18.01,32.16,19.34,31.66,20.49,31.01,21.23,29.76,26.12,28.62,28.47,27.95,29.22,27.44,29.57,26.69,29.50,24.99,28.56,24.49,28.14;.mob The Windreaver"
        },
      },
      ["Twilight Prophet"] = {
        {
        MinLevel = 60,
        MaxLevel = 60,
        Classification = "Elite",
        Movement = "Slow Patrol",
        Notes = "Multiple adds; fire nova, frost nova, chain lightning, fear",
        Location = ".line Silithus,20.00,83.28,22.00,79.02,25.23,77.02,25.82,75.72,26.51,75.19,27.31,74.15,27.37,72.44,26.91,71.37,25.69,70.84,24.93,69.98,23.95,69.24,23.47,68.65,23.16,68.66,22.86,68.52;.mob Twilight Prophet"
        },
      },
      ["Twilight Marauder Morna"] = {
        {
        MinLevel = 60,
        MaxLevel = 60,
        Classification = "Elite",
        Movement = "Slow Patrol",
        Notes = "Has 4 adds; mortal strikes and piercing howls",
        Location = ".line Silithus,52.35,11.78,52.94,14.46,55.73,17.11,58.41,20.25,60.31,23.07,63.43,27.06,63.35,30.35,71.46,35.72,72.84,37.69,72.09,39.87,70.25,42.40,64.6,44.1,60.1,44.9,53.1,55.1,44.4,59.5,42.8,73.4,37.3,79.7,36.3,80.0,34.4,85.0,30.9,89.2;.mob Twilight Marauder Morna"
        },
      },
      ["Lapress"] = {
        {
        MinLevel = 60,
        MaxLevel = 60,
        Classification = "Rare Elite",
        Movement = "Slow Patrol",
        Notes = "Patrols around many adds",
        Location = ".line Silithus,53.62,71.45,54.32,72.97,55.26,72.34,55.78,71.57,57.79,72.33,58.59,72.01,59.13,71.83,59.06,73.16,58.14,74.38,56.63,75.37,55.94,74.85,55.17,75.03,54.26,75.62,52.08,75.65,51.53,76.53,51.63,77.70,52.24,78.70,54.02,78.93,54.51,78.05,55.08,77.41,56.37,77.13,57.07,76.16,58.23,76.49,58.98,76.06,60.62,75.76,60.70,77.18,60.18,78.22,59.70,78.68,58.83,78.27,57.94,78.32,57.31,78.78,57.09,79.89,56.38,77.10,57.06,76.14,58.32,76.49,59.08,76.01,60.61,75.76,60.69,77.32,59.94,78.58,59.58,78.67,58.82,78.27,57.95,78.32,57.26,78.83,57.07,79.93,56.25,80.46,56.20,81.38,54.48,81.52,53.65,81.26,53.03,80.18,52.26,79.94,51.51,79.81,51.32,81.48,51.47,83.31,52.41,82.66,54.33,83.12,54.62,84.08,54.06,85.52,53.83,86.55,53.82,87.80,54.54,88.98,55.31,89.77,56.05,90.31,56.48,90.99,57.35,91.27,58.16,91.51,58.43,91.44,58.92,91.08,59.10,90.24,60.16,87.53,60.54,87.50,61.27,85.15,61.52,83.93,61.00,83.46,60.84,81.40,60.87,79.75,61.07,79.16,61.78,78.48,62.38,78.26,62.91,78.78,64.60,80.16,64.85,81.57,64.43,82.79,63.78,83.84,61.92,85.70,61.79,87.60,62.53,88.52,63.04,89.85,62.92,91.19,63.08,92.97,62.97,93.80;.mob Lapress"
        },
      },
      ["Mistress Natalia Maralith"] = {
        {
        MinLevel = 62,
        MaxLevel = 62,
        Classification = "Elite",
        Movement = "Idle",
        Notes = "Mind controls even if solo, then heals to full via reset/drags MCed players deep in the cave",
        Location = ".pin Silithus,51.8,99.4;.pin Silithus,53.6,98.0;.pin Silithus,53.8,95.2;.pin Silithus,52.6,91.6;.pin Silithus,52.2,89.8;.pin Silithus,53.8,88.2;.pin Silithus,55.8,87.2;.mob Mistress Natalia Maralith"
        },
      },
      ["Tortured Druid"] = {
        {
        MinLevel = 55,
        MaxLevel = 56,
        Classification = "Normal",
        Movement = "Idle",
        Notes = "summons 2-3 silithid near death",
        Location = ".pin Silithus,66.0,49.6;.pin Silithus,63.8,47.2;.pin Silithus,60.8,49.6;.pin Silithus,58.6,52.6;.pin Silithus,58.8,55.8;.pin Silithus,61.6,58.4;.pin Silithus,65.0,58.4;.pin Silithus,61.6,54.0;.pin Silithus,62.8,51.8;.mob Tortured Druid"
        },
      },
      ["Tortured Sentinel"] = {
        {
        MinLevel = 55,
        MaxLevel = 56,
        Classification = "Normal",
        Movement = "Idle",
        Notes = "summons 2-3 silithid near death",
        Location = ".pin Silithus,66.0,49.6;.pin Silithus,63.8,47.2;.pin Silithus,60.8,49.6;.pin Silithus,58.6,52.6;.pin Silithus,58.8,55.8;.pin Silithus,61.6,58.4;.pin Silithus,65.0,58.4;.pin Silithus,61.6,54.0;.pin Silithus,62.8,51.8;.mob Tortured Sentinel"
        },
      },
      ["Hive'Ashi Ambusher"] = {
        {
        MinLevel = 56,
        MaxLevel = 57,
        Classification = "Normal",
        Movement = "Idle",
        Notes = "3-4 spawn upon entering/ascending the village tower",
        Location = ".pin Silithus,60.2,52.6;.mob Hive'Ashi Ambusher"
        },
      },
    },
    ["Silverpine Forest"] = {
      ["Nightlash"] = {
        {
        MinLevel = 14,
        MaxLevel = 14,
        Classification = "Normal",
        Movement = "Idle",
        Notes = "DoT and drains life",
        Location = ".pin Silverpine Forest,45.9,21.6;.mob Nightlash"
        },
      },
      ["Krethis Shadowspinner"] = {
        {
        MinLevel = 15,
        MaxLevel = 15,
        Classification = "Rare",
        Movement = "Idle",
        Notes = "Shadow shock (15 second CD tons of damage), shadow shield",
        Location = ".pin Silverpine Forest,37.5,15.6;.pin Silverpine Forest,34.9,11.0;.mob Krethis Shadowspinner"
        },
      },
      ["Dalaran Spellscribe"] = {
        {
        MinLevel = 21,
        MaxLevel = 21,
        Classification = "Normal",
        Movement = "Idle",
        Notes = "Freeze, ice armor, painful frostbolt, adds around",
        Location = ".pin Silverpine Forest,63.4,65.6;.mob Dalaran Spellscribe"
        },
      },
      ["Son of Arugal"] = {
        {
        MinLevel = 25,
        MaxLevel = 25,
        Classification = "Elite",
        Movement = "Idle",
        Notes = "Overleveled, runs fast, has a long-lasting but slow-proccing curse",
        Location = ".pin Silverpine Forest,47.41,33.49;.mob Son of Arugal"
        },
        {
        MinLevel = 25,
        MaxLevel = 25,
        Classification = "Elite",
        Movement = "Slow Patrol",
        Notes = "Overleveled, runs fast, has a long-lasting but slow-proccing curse",
        Location = ".line Silverpine Forest,43.89,28.86,42.82,29.52,42.19,30.35,41.44,30.19,39.82,29.59,39.30,28.28,39.27,26.85,37.25,24.08,36.82,22.82,36.48,19.83,35.58,18.49,35.30,17.53,35.74,16.74,36.79,16.69,37.64,15.48,38.24,15.12,38.86,15.38,39.18,14.22,40.30,15.98,40.64,18.01,41.48,19.46,42.13,21.46,43.13,20.33,43.85,19.82,44.21,18.71,44.31,17.63,44.67,17.06,45.63,17.21,46.51,17.95,48.79,21.40,49.47,24.67,48.70,25.50,48.01,25.58,47.56,24.96,46.61,25.54,46.26,28.26,46.01,28.84,43.89,28.86;.mob Son of Arugal"
        },
        {
        MinLevel = 25,
        MaxLevel = 25,
        Classification = "Elite",
        Movement = "Slow Patrol",
        Notes = "Overleveled, runs fast, has a long-lasting but slow-proccing curse",
        Location = ".line Silverpine Forest,53.31,76.14,52.20,75.40,51.81,74.45,50.69,73.88,50.24,75.07,49.63,75.44,48.00,75.32,47.31,77.46,46.58,76.60,45.61,76.13,45.04,76.42,44.37,77.40,44.14,78.56,44.71,79.39,45.25,79.43,45.47,78.94,45.14,80.98,45.64,81.75,45.46,82.95,46.30,83.17,46.95,83.77,47.13,83.77,48.23,84.60,49.15,84.27,49.79,83.60;.mob Son of Arugal"
        },
      },
      ["Rot Hide Mystic"] = {
        {
        MinLevel = 12,
        MaxLevel = 13,
        Classification = "Normal",
        Movement = "Idle",
        Notes = "Healing mobs, easily double pulled",
        Location = ".pin Silverpine Forest,44.0,21.0;.pin Silverpine Forest,44.8,23.2;.pin Silverpine Forest,45.4,19.2;.pin Silverpine Forest,47.2,20.4;.mob Rot Hide Mystic"
        },
      },
      ["Moonrage Darksoul "] = {
        {
        MinLevel = 13,
        MaxLevel = 14,
        Classification = "Normal",
        Movement = "Idle",
        Notes = "Enrage ability at low hp, very high dps",
        Location = ".pin Silverpine Forest,43.2,30.2;.pin Silverpine Forest,55.8,48.6;.pin Silverpine Forest,57.4,44.8;.mob Moonrage Darksoul"
        },
      },
      ["Dalaran Protector"] = {
        {
        MinLevel = 14,
        MaxLevel = 15,
        Classification = "Normal",
        Movement = "Idle",
        Notes = "Summons snake adds and easily double pulled in this area",
        Location = ".pin Silverpine Forest,55.6,56.6;.pin Silverpine Forest,55.0,60.8;.pin Silverpine Forest,55.0,67.6;.pin Silverpine Forest,58.0,66.2;.pin Silverpine Forest,57.4,64.2;.pin Silverpine Forest,57.8,61.6;.pin Silverpine Forest,60.4,63.0;.pin Silverpine Forest,62.2,61.4;.pin Silverpine Forest,62.8,71.0;.mob Dalaran mage"
        },
      },
      ["Dalaran Mage"] = {
        {
        MinLevel = 15,
        MaxLevel = 16,
        Classification = "Normal",
        Movement = "Idle",
        Notes = "High dps caster and easily double pulled in this area",
        Location = ".pin Silverpine Forest,55.6,56.6;.pin Silverpine Forest,55.0,60.8;.pin Silverpine Forest,55.0,67.6;.pin Silverpine Forest,58.0,66.2;.pin Silverpine Forest,57.4,64.2;.pin Silverpine Forest,57.8,61.6;.pin Silverpine Forest,60.4,63.0;.pin Silverpine Forest,62.2,61.4;.pin Silverpine Forest,62.8,71.0;.mob Dalaran mage"
        },
      },
    },
    ["Stonetalon Mountains"] = {
      ["Besseleth "] = {
        {
        MinLevel = 21,
        MaxLevel = 21,
        Classification = "Elite",
        Movement = "Idle",
        Notes = "Webs and poisons, nearby mobs can hyperspawn",
        Location = ".pin Stonetalon Mountains,52.8,72.6;.mob Besseleth"
        },
      },
      ["Taskmaster Whipfang "] = {
        {
        MinLevel = 22,
        MaxLevel = 22,
        Classification = "Rare Elite",
        Movement = "Idle",
        Notes = "Fears, hits very fast",
        Location = ".pin Stonetalon Mountains,61.6,49.2;.pin Stonetalon Mountains,64.8,48.4;.pin Stonetalon Mountains,64.6,54.6;.pin Stonetalon Mountains,65.0,58.4;.pin Stonetalon Mountains,63.0,57.8;.pin Stonetalon Mountains,61.2,58.4;.pin Stonetalon Mountains,59.4,54.0;.pin Stonetalon Mountains,61.8,51.6;.mob Taskmaster Whipfang"
        },
      },
      ["Foreman Rigger"] = {
        {
        MinLevel = 24,
        MaxLevel = 24,
        Classification = "Rare Elite",
        Movement = "Idle",
        Notes = "Nets",
        Location = ".pin Stonetalon Mountains,69.6,44.4;.pin Stonetalon Mountains,69.2,48.6;.pin Stonetalon Mountains,68.0,54.0;.pin Stonetalon Mountains,65.4,55.4;.pin Stonetalon Mountains,62.8,52.4;.pin Stonetalon Mountains,63.6,47.0;.pin Stonetalon Mountains,66.6,46.8;.pin Stonetalon Mountains,65.6,51.4;.mob Foreman Rigger"
        },
      },
      ["Pridewing Patriarch"] = {
        {
        MinLevel = 25,
        MaxLevel = 25,
        Classification = "Rare",
        Movement = "Slow Patrol",
        Notes = "High level for area",
        Location = ".line Stonetalon Mountains,47.60,47.58,47.82,48.01,48.67,48.01,48.89,48.10,49.23,47.98,49.42,47.50,48.98,47.13,48.70,47.04,48.36,47.15,48.18,46.72,47.70,46.72,47.08,45.32,46.95,44.86,47.05,44.17,47.34,43.81,47.14,43.22,46.59,42.55,45.96,41.35,45.77,40.76,45.84,39.81,45.53,39.46,44.76,39.78,44.34,39.69,44.12,40.27,44.10,41.02,44.92,41.70,44.93,42.30,45.13,43.15,45.17,43.48,44.67,43.98,44.50,44.58,44.70,44.97,45.25,44.98,45.61,45.42,45.93,45.93,46.13,46.54,46.72,47.02,47.60,47.58;.mob Pridewing Patriarch"
        },
      },
      ["Bloodfury Ripper"] = {
        {
        MinLevel = 26,
        MaxLevel = 26,
        Classification = "Elite",
        Movement = "Idle",
        Notes = "Enrages",
        Location = ".pin Stonetalon Mountains,30.77,61.75;.mob Bloodfury Ripper"
        },
      },
      ["Sorrow Wing"] = {
        {
        MinLevel = 27,
        MaxLevel = 27,
        Classification = "Rare Elite",
        Movement = "Slow Patrol",
        Notes = "Drains health and mana, hits hard",
        Location = ".line Stonetalon Mountains,48.89,33.99,49.32,33.98,49.68,34.31,50.39,33.80,50.64,34.28,50.88,34.62,51.44,34.65,51.67,35.01,51.33,36.29,50.88,36.81,49.79,36.91,49.53,36.44,49.24,36.21,49.04,36.32,48.29,36.35,48.13,35.71,48.12,35.21,47.79,35.13,47.49,35.40,47.04,35.99,46.85,35.31,46.70,35.49,46.70,35.03,47.07,34.55,47.30,34.22,47.44,33.70,47.69,33.39,48.07,33.35,48.53,33.64,48.89,33.99;.mob Sorrow Wing"
        },
      },
      ["Sister Riven"] = {
        {
        MinLevel = 28,
        MaxLevel = 28,
        Classification = "Rare Elite",
        Movement = "Idle",
        Notes = "Fire shield + flame shock + fire dot ground effect",
        Location = ".pin Stonetalon Mountains,36.8,68.8;.pin Stonetalon Mountains,30.6,69.4;.pin Stonetalon Mountains,27.6,67.8;.pin Stonetalon Mountains,28.0,70.6;.pin Stonetalon Mountains,29.6,72.4;.pin Stonetalon Mountains,28.6,64.6;.mob Sister Riven"
        },
      },
      ["Bloodfury Slayer"] = {
        {
        MinLevel = 25,
        MaxLevel = 26,
        Classification = "Normal",
        Movement = "Idle",
        Notes = "Execute mobs",
        Location = ".pin Stonetalon Mountains,36.8,68.8;.pin Stonetalon Mountains,30.6,69.4;.pin Stonetalon Mountains,27.6,67.8;.pin Stonetalon Mountains,28.0,70.6;.pin Stonetalon Mountains,29.6,72.4;.pin Stonetalon Mountains,28.4,71.6;.pin Stonetalon Mountains,34.4,67.2;.pin Stonetalon Mountains,34.8,71.6;.pin Stonetalon Mountains,37.6,66.6;.mob Bloodfury Slayer"
        },
      },
      ["Bloodfury Roguefeather"] = {
        {
        MinLevel = 25,
        MaxLevel = 26,
        Classification = "Normal",
        Movement = "Idle",
        Notes = "Thrash mobs",
        Location = ".pin Stonetalon Mountains,36.8,68.8;.pin Stonetalon Mountains,30.6,69.4;.pin Stonetalon Mountains,27.6,67.8;.pin Stonetalon Mountains,28.0,70.6;.pin Stonetalon Mountains,29.6,72.4;.pin Stonetalon Mountains,28.4,71.6;.pin Stonetalon Mountains,34.4,67.2;.pin Stonetalon Mountains,34.8,71.6;.pin Stonetalon Mountains,37.6,66.6;.mob Bloodfury Slayer"
        },
      },
    },
    ["Stranglethorn Vale"] = {
      ["Bhag'thera"] = {
        {
        MinLevel = 40,
        MaxLevel = 40,
        Classification = "Elite",
        Movement = "Idle",
        Notes = "Hits hard/fast",
        Location = ".pin Stranglethorn Vale,48.8,20.0;.pin Stranglethorn Vale,49.8,24.6;.pin Stranglethorn Vale,47.6,28.8;.mob Bhag'thera"
        },
      },
      ["Tethis"] = {
        {
        MinLevel = 43,
        MaxLevel = 43,
        Classification = "Elite",
        Movement = "Idle",
        Notes = "Hamstrings",
        Location = ".pin Stranglethorn Vale,28.4,45.0;.pin Stranglethorn Vale,31.4,43.6;.pin Stranglethorn Vale,33.4,39.4;.mob Tethis"
        },
      },
      ["King Bangalash"] = {
        {
        MinLevel = 43,
        MaxLevel = 43,
        Classification = "Elite",
        Movement = "Idle",
        Notes = "Calls for help and summons adds at half HP",
        Location = ".pin Stranglethorn Vale,38.6,35.6;.mob King Bangalash"
        },
      },
      ["Garr Salthoof"] = {
        {
        MinLevel = 43,
        MaxLevel = 43,
        Classification = "Normal",
        Movement = "Idle",
        Notes = "Easily double-pulled, charges, stuns",
        Location = ".pin Stranglethorn Vale,29.2,88.8;.mob Garr Salthoof"
        },
      },
      ["Mogh the Undying"] = {
        {
        MinLevel = 44,
        MaxLevel = 44,
        Classification = "Elite",
        Movement = "Idle",
        Notes = "Summons adds, drains them for HP, hyperspawn",
        Location = ".pin Stranglethorn Vale,47.6,44.2;.mob Mogh the Undying"
        },
      },
      ["Lord Sakrasis"] = {
        {
        MinLevel = 45,
        MaxLevel = 45,
        Classification = "Normal",
        Movement = "Idle",
        Notes = "Executes",
        Location = ".pin Stranglethorn Vale,28.6,62.2;.mob Lord Sakrasis"
        },
      },
      ["Ana'thek the Cruel <Skullsplitter Chief>"] = {
        {
        MinLevel = 45,
        MaxLevel = 45,
        Classification = "Normal",
        Movement = "Slow Patrol",
        Notes = "Executes; pulls with 2 adds in busy area",
        Location = ".line Stranglethorn Vale,44.25,44.95,44.52,44.45,44.69,44.06,45.04,43.04,45.27,42.45,45.52,41.69,45.68,41.29,46.07,40.99,46.64,40.90,46.98,40.87;.mob Ana'thek the Cruel"
        },
      },
      ["Gorlash"] = {
        {
        MinLevel = 47,
        MaxLevel = 47,
        Classification = "Elite",
        Movement = "Idle",
        Notes = "AoE damage",
        Location = ".pin Stranglethorn Vale,36.6,69.6;.mob Gorlash"
        },
      },
      ["Fleet Master Firallon"] = {
        {
        MinLevel = 48,
        MaxLevel = 48,
        Classification = "Normal",
        Movement = "Idle",
        Notes = "Double-pull, dual wields/buffs adds",
        Location = ".pin Stranglethorn Vale,30.6,90.6;.mob Fleet Master Firallon"
        },
      },
      ["Bloodscalp Shaman"] = {
        {
        MinLevel = 33,
        MaxLevel = 34,
        Classification = "Normal",
        Movement = "Idle",
        Notes = "Enrage, Fire Nova, dense area",
        Location = ".pin Stranglethorn Vale,24.6,9.2;.pin Stranglethorn Vale,22.6,8.4;.pin Stranglethorn Vale,23.2,10.8;.pin Stranglethorn Vale,20.8,12.2;.pin Stranglethorn Vale,19.4,12.8;.pin Stranglethorn Vale,21.4,14.4;.mob Bloodscalp Shaman"
        },
      },
      ["Bloodscalp Berserker"] = {
        {
        MinLevel = 36,
        MaxLevel = 37,
        Classification = "Normal",
        Movement = "Idle",
        Notes = "Enrage, dense area",
        Location = ".pin Stranglethorn Vale,24.6,9.2;.pin Stranglethorn Vale,22.6,8.4;.pin Stranglethorn Vale,23.2,10.8;.pin Stranglethorn Vale,20.8,12.2;.pin Stranglethorn Vale,19.4,12.8;.pin Stranglethorn Vale,21.4,14.4;.mob Bloodscalp Berserker"
        },
      },
      ["Bloodscalp Headhunter"] = {
        {
        MinLevel = 36,
        MaxLevel = 37,
        Classification = "Normal",
        Movement = "Idle",
        Notes = "Enrage, net, dense area",
        Location = ".pin Stranglethorn Vale,24.6,9.2;.pin Stranglethorn Vale,22.6,8.4;.pin Stranglethorn Vale,23.2,10.8;.pin Stranglethorn Vale,20.8,12.2;.pin Stranglethorn Vale,19.4,12.8;.pin Stranglethorn Vale,21.4,14.4;.mob Bloodscalp Headhunter"
        },
      },
      ["Bloodscalp Hunter"] = {
        {
        MinLevel = 33,
        MaxLevel = 34,
        Classification = "Normal",
        Movement = "Idle",
        Notes = "Net, pet",
        Location = ".pin Stranglethorn Vale,24.6,9.2;.pin Stranglethorn Vale,22.6,8.4;.pin Stranglethorn Vale,23.2,10.8;.pin Stranglethorn Vale,20.8,12.2;.pin Stranglethorn Vale,19.4,12.8;.pin Stranglethorn Vale,21.4,14.4;.mob Bloodscalp Hunter"
        },
      },
      ["Gan'zulah"] = {
        {
        MinLevel = 41,
        MaxLevel = 41,
        Classification = "Normal",
        Movement = "Idle",
        Notes = "Enrage, dual wield, unavoidable multi-pull, high level for area, hits hard",
        Location = ".pin Stranglethorn Vale,23.8,8.6;.mob Gan'zulah"
        },
      },
      ["Mosh'Ogg Warmonger"] = {
        {
        MinLevel = 41,
        MaxLevel = 42,
        Classification = "Elite",
        Movement = "Idle",
        Notes = "Large aggro radius, near questing area",
        Location = ".pin Stranglethorn Vale,47.0,24.8;.pin Stranglethorn Vale,49.2,27.0;.pin Stranglethorn Vale,50.4,26.4;.pin Stranglethorn Vale,48.8,28.6;.pin Stranglethorn Vale,48.4,31.6;.pin Stranglethorn Vale,49.6,31.0;.mob Mosh'Ogg Warmonger"
        },
      },
      ["Mosh'Ogg Mauler"] = {
        {
        MinLevel = 43,
        MaxLevel = 44,
        Classification = "Elite",
        Movement = "Idle",
        Notes = "Large aggro radius, near questing area",
        Location = ".pin Stranglethorn Vale,47.0,24.8;.pin Stranglethorn Vale,49.2,27.0;.pin Stranglethorn Vale,50.4,26.4;.pin Stranglethorn Vale,48.8,28.6;.pin Stranglethorn Vale,48.4,31.6;.pin Stranglethorn Vale,49.6,31.0;.mob Mosh'Ogg Mauler"
        },
      },
      ["Mosh'Ogg Shaman"] = {
        {
        MinLevel = 43,
        MaxLevel = 44,
        Classification = "Elite",
        Movement = "Idle",
        Notes = "Large aggro radius, near questing area",
        Location = ".pin Stranglethorn Vale,47.0,24.8;.pin Stranglethorn Vale,49.2,27.0;.pin Stranglethorn Vale,50.4,26.4;.pin Stranglethorn Vale,48.8,28.6;.pin Stranglethorn Vale,48.4,31.6;.pin Stranglethorn Vale,49.6,31.0;.mob Mosh'Ogg Shaman"
        },
      },
      ["Jon-Jon the Crow"] = {
        {
        MinLevel = 43,
        MaxLevel = 44,
        Classification = "Normal",
        Movement = "Idle",
        Notes = "Triple-pull",
        Location = ".pin Stranglethorn Vale,34.8,51.8;.mob Jon-Jon the Crow"
        },
      },
    },
    ["Swamp of Sorrows"] = {
      ["Lord Captain Wyrmak"] = {
        {
        MinLevel = 45,
        MaxLevel = 45,
        Classification = "Rare Elite",
        Movement = "Slow Patrol",
        Notes = "Basic elite",
        Location = ".line Swamp of Sorrows,76.06,66.76,77.74,65.82,78.66,64.00,80.08,59.92,79.68,57.92,80.38,57.26,81.00,56.60,82.45,52.64,79.69,51.18,78.41,50.87,78.45,48.80,78.88,47.38,79.94,46.04,79.20,44.32,76.94,41.15,75.55,40.17,74.55,38.64,69.04,37.92,67.25,38.86,66.06,38.41,64.29,38.47,63.34,39.68,62.85,41.74;.mob Lord Captain Wyrmak"
        },
      },
      ["Swamp Talker"] = {
        {
        MinLevel = 50,
        MaxLevel = 50,
        Classification = "Normal",
        Movement = "Idle",
        Notes = "Extremely high level for area, summons adds",
        Location = ".pin Swamp of Sorrows,63.4,91.2;.pin Swamp of Sorrows,61.0,84.2;.pin Swamp of Sorrows,63.4,80.4;.mob Swamp Talker"
        },
      },
      ["Somnus"] = {
        {
        MinLevel = 60,
        MaxLevel = 60,
        Classification = "Elite",
        Movement = "Slow Patrol",
        Notes = "Sleep + knockback",
        Location = ".line Swamp of Sorrows,78.02,60.41,77.21,63.47,76.49,65.57,76.20,65.95,76.18,67.63,76.45,69.93,82.06,72.29,83.61,70.89,84.58,69.16,85.28,66.42,85.33,64.40,87.00,57.71,86.28,55.28,85.22,54.43,85.75,52.05,85.35,49.94,84.25,47.87,83.26,47.49,81.29,46.04,80.24,45.49,78.78,47.78,78.41,49.96,78.71,53.66,78.84,55.21,79.37,57.55,78.67,59.27,78.02,60.41;.mob Somnus"
        },
      },
    },
    ["Tanaris"] = {
      ["Wastewander Assassin"] = {
        {
        MinLevel = 44,
        MaxLevel = 45,
        Classification = "Normal",
        Movement = "Idle",
        Notes = "Executes",
        Location = ".pin Tanaris,58.8,39.2;.pin Tanaris,58.8,36.4;.pin Tanaris,60.8,32.8;.pin Tanaris,60.6,39.0;.pin Tanaris,63.8,39.8;.pin Tanaris,63.2,37.4;.mob Wastewander Assassin"
        },
      },
      ["Dunemaul Warlock"] = {
        {
        MinLevel = 47,
        MaxLevel = 48,
        Classification = "Normal",
        Movement = "Idle",
        Notes = "Curse of Thorns, DoT, high damage shadow bolt",
        Location = ".pin Tanaris,39.0,74.0;.pin Tanaris,39.6,70.6;.pin Tanaris,42.0,71.2;.pin Tanaris,42.0,74.0;.pin Tanaris,45.8,63.8;.pin Tanaris,48.2,64.6;.pin Tanaris,46.8,66.8;.pin Tanaris,48.2,67.6;.pin Tanaris,38.4,57.8;.pin Tanaris,40.8,56.6;.pin Tanaris,39.6,53.0;.pin Tanaris,42.6,54.6;.mob Dunemaul Warlock"
        },
      },
      ["Centipaar Tunneler"] = {
        {
        MinLevel = 47,
        MaxLevel = 48,
        Classification = "Normal",
        Movement = "Idle",
        Notes = "Several spawn during Water Survey quest",
        Location = ".pin Tanaris,39.08,29.17;.mob Centipaar Tunneler"
        },
      },
      ["Glasshide Petrifier"] = {
        {
        MinLevel = 48,
        MaxLevel = 49,
        Classification = "Normal",
        Movement = "Idle",
        Notes = "8 second stun, but cast can be outranged",
        Location = ".pin Tanaris,30.2,52.0;.pin Tanaris,28.0,56.0;.pin Tanaris,28.0,60.4;.pin Tanaris,31.0,60.6;.pin Tanaris,31.2,56.8;.pin Tanaris,33.6,59.6;.pin Tanaris,32.6,55.6;.pin Tanaris,35.8,66.0;.pin Tanaris,33.0,68.4;.pin Tanaris,35.0,70.2;.pin Tanaris,35.8,75.0;.pin Tanaris,33.0,73.2;.pin Tanaris,30.0,71.8;.pin Tanaris,33.6,76.6;.pin Tanaris,43.6,76.0;.pin Tanaris,45.6,71.0;.pin Tanaris,47.8,77.0;.mob Glasshide Petrifier"
        },
      },
      ["Centipaar Swarmer"] = {
        {
        MinLevel = 49,
        MaxLevel = 50,
        Classification = "Normal",
        Movement = "Idle",
        Notes = "Summons can get out of hand very quickly",
        Location = ".pin Tanaris,32.8,50.6;.pin Tanaris,35.6,49.8;.pin Tanaris,36.8,45.6;.pin Tanaris,36.6,40.6;.pin Tanaris,34.4,38.4;.pin Tanaris,33.0,44.2;.pin Tanaris,33.4,46.6;.pin Tanaris,34.6,42.2;.mob Centipaar Swarmer"
        },
      },
      ["Hazzali Swarmer"] = {
        {
        MinLevel = 49,
        MaxLevel = 50,
        Classification = "Normal",
        Movement = "Idle",
        Notes = "Summons can get out of hand very quickly",
        Location = ".pin Tanaris,54.0,72.6;.pin Tanaris,54.6,75.8;.pin Tanaris,56.0,72.6;.pin Tanaris,57.6,70.6;.pin Tanaris,56.0,68.2;.pin Tanaris,54.8,70.4;.mob Hazzali Swarmer"
        },
      },
    },
    ["The Barrens"] = {
      ["Dishu"] = {
        {
        MinLevel = 13,
        MaxLevel = 13,
        Classification = "Rare",
        Movement = "Idle",
        Notes = "Summons 3 adds",
        Location = ".pin The Barrens,50.99,20.68;.mob Dishu"
        },
      },
      ["Elder Mystic Razorsnout"] = {
        {
        MinLevel = 15,
        MaxLevel = 15,
        Classification = "Rare Elite",
        Movement = "Idle",
        Notes = "Earthbind, Searing, Healing Totems + Healing Wave",
        Location = ".pin The Barrens,58.60,27.7;.pin The Barrens,59.24,24.37;.mob Elder Mystic Razorsnout"
        },
      },
      ["Rathorian"] = {
        {
        MinLevel = 15,
        MaxLevel = 15,
        Classification = "Rare",
        Movement = "Idle",
        Notes = "5 levels higher than subzone's other mobs",
        Location = ".pin The Barrens,47.95,19.16;.mob Rathorian"
        },
      },
      ["Kreenig Snarlsnout"] = {
        {
        MinLevel = 15,
        MaxLevel = 15,
        Classification = "Normal",
        Movement = "Slow Patrol",
        Notes = "Easily double pulled",
        Location = ".line The Barrens,58.58,27.42,58.48,27.37,58.37,27.22,58.59,26.97,58.73,27.15,58.75,27.24,58.63,27.40,58.58,27.42;.mob Kreenig Snarlsnout"
        },
      },
      ["Barak Kodobane"] = {
        {
        MinLevel = 16,
        MaxLevel = 16,
        Classification = "Normal",
        Movement = "Idle",
        Notes = "High damage, nets, and likely double pull",
        Location = ".pin The Barrens,42.81,23.53;.mob Barak Kodobane"
        },
      },
      ["Baron Longshore"] = {
        {
        MinLevel = 16,
        MaxLevel = 16,
        Classification = "Normal",
        Movement = "Idle",
        Notes = "Easy to double pull",
        Location = ".pin The Barrens,64.2,47.2;.pin The Barrens,63.6,49.0;.pin The Barrens,62.4,49.4;.mob Baron Longshore"
        },
      },
      ["Overseer Glibby"] = {
        {
        MinLevel = 16,
        MaxLevel = 16,
        Classification = "Normal",
        Movement = "Slow Patrol",
        Notes = "Patrols around the Sludge Ven",
        Location = ".line The Barrens,57.39,8.53,57.47,8.42,57.49,8.03,57.35,7.69,57.19,7.54,57.08,7.40,56.89,7.36,56.65,7.35,56.55,7.43,56.54,7.49,56.41,7.58,56.06,7.59,55.96,7.65,55.77,7.87,55.75,8.17,55.77,8.44,55.82,8.61;.mob Overseer Glibby"
        },
      },
      ["Rocklance"] = {
        {
        MinLevel = 17,
        MaxLevel = 17,
        Classification = "Rare Elite",
        Movement = "Slow Patrol",
        Notes = "Has adds, above average HP for elite level",
        Location = ".line The Barrens,56.52,42.35,56.28,43.03,56.23,43.22,56.25,43.42,56.20,43.55,56.07,43.79,55.74,44.80,55.70,45.03,55.54,45.41,55.42,45.63,55.25,45.80,55.10,45.98,54.69,46.25,54.39,46.24,54.27,46.21,54.12,46.15,53.86,45.94,53.71,45.79,53.48,45.35,53.43,45.02,53.30,44.87,53.27,44.62,52.92,43.44,52.92,43.28,52.94,43.16,53.10,42.84,53.24,42.67,53.39,42.61,53.66,42.55,53.86,42.35,53.88,42.11,53.85,41.36,53.72,40.53,53.81,39.92,54.17,39.13,54.24,38.78,54.55,38.15,54.79,37.95,54.97,37.87,55.24,38.05,55.44,38.27,55.72,38.91,55.91,39.31,56.26,39.78,56.52,42.35;.mob Rocklance"
        },
      },
      ["Sludge Beast"] = {
        {
        MinLevel = 19,
        MaxLevel = 19,
        Classification = "Rare",
        Movement = "Slow Patrol",
        Notes = "Black Sludge (debuff move/attack speed)",
        Location = ".line The Barrens,56.65,8.08,57.03,8.75,57.24,8.67,57.46,8.39,57.45,7.96,57.28,7.63,57.08,7.37,56.75,7.39,56.60,7.65,56.65,8.08;.mob Sludge Beast"
        },
      },
      ["Hezrul Bloodmark"] = {
        {
        MinLevel = 19,
        MaxLevel = 19,
        Classification = "Normal",
        Movement = "Slow Patrol",
        Notes = "Quest mob with 2 adds",
        Location = ".line The Barrens,45.64,38.16,45.84,37.86,45.78,37.41,45.95,37.11,45.93,36.91,46.14,36.85,46.19,36.88,46.28,36.86,46.46,37.17,46.58,37.31,46.66,37.54,46.63,37.93,46.75,38.39,47.27,38.98,47.47,39.27,48.20,39.57,48.40,39.58,48.60,39.51,48.54,39.96,48.58,40.52,48.27,40.82,48.06,40.82,47.86,41.13,47.49,41.33,47.34,41.61,47.22,41.64,46.85,42.05,46.56,41.93,46.27,41.76,46.03,41.15,45.86,41.32,46.09,40.98,46.08,40.68,45.71,40.56,45.64,38.16;.mob Hezrul Bloodmark"
        },
      },
      ["Sister Rathtalon"] = {
        {
        MinLevel = 19,
        MaxLevel = 19,
        Classification = "Rare Elite",
        Movement = "Slow Patrol",
        Notes = "Thunder Cloud, Gust of Wind + patrols around stealth patrols",
        Location = ".line The Barrens,38.75,13.59,38.86,13.10,39.00,12.68,39.27,12.58,39.48,12.85,39.56,13.22,39.52,13.52,39.30,13.90,39.05,14.45,38.55,14.94,38.30,15.37,38.25,15.94,38.32,16.09,38.54,16.30,38.78,16.31,38.99,16.21,39.11,16.11,39.32,15.55,39.59,15.33,40.10,15.15,40.58,15.68,40.69,15.91,40.69,16.33,40.62,16.66,40.35,17.01,40.15,17.03,39.83,16.90,39.36,16.14,39.18,15.80,39.05,15.25,38.82,14.89,38.75,13.59;.mob Sister Rathtalon"
        },
      },
      ["Foreman Grills"] = {
        {
        MinLevel = 19,
        MaxLevel = 19,
        Classification = "Rare",
        Movement = "Slow Patrol",
        Notes = "Hamstrings; high parry",
        Location = ".line The Barrens,56.60,8.82,56.57,8.76,56.50,8.62,56.37,8.18,56.24,8.22,56.21,8.38,56.29,8.72,56.20,8.80,56.31,8.74,56.19,8.36,56.13,8.31,56.06,8.36,56.02,8.51,56.15,8.60,56.24,8.65,56.30,8.54,;.mob Foreman Grills"
        },
      },
      ["Kuz"] = {
        {
        MinLevel = 21,
        MaxLevel = 21,
        Classification = "Normal",
        Movement = "Slow Patrol",
        Notes = "Strong fire blast/frostbolt, and frost nova",
        Location = ".line The Barrens,45.13,79.22,44.89,78.87,44.63,78.77,44.45,78.68,43.80,79.44,43.65,79.10,43.49,78.94,43.07,78.98,42.65,79.88,42.82,80.22,43.22,80.48,43.48,80.49,43.59,80.90,43.78,81.38,44.13,81.45,44.84,80.94,45.46,80.93,45.53,80.47,45.11,80.31,44.31,80.68,44.30,80.58,43.99,80.37,43.91,80.43,43.90,80.48,44.00,80.03,44.42,79.85,44.85,79.87,45.06,79.74,45.13,79.22;.mob Kuz"
        },
      },
      ["Lakota'mani"] = {
        {
        MinLevel = 22,
        MaxLevel = 22,
        Classification = "Normal",
        Movement = "Idle",
        Notes = "Higher level than its subzone",
        Location = ".pin The Barrens,45.20,52.49;.mob Lakota'mani"
        },
      },
      ["Swinegart Spearhide"] = {
        {
        MinLevel = 22,
        MaxLevel = 22,
        Classification = "Rare Elite",
        Movement = "Slow Patrol",
        Notes = "Elite with an aoe fear",
        Location = ".pin The Barrens,41.4,45.6;.pin The Barrens,42.4,47.8;.pin The Barrens,44.0,48.6;.pin The Barrens,43.8,51.0;.mob Swinegart Spearhide"
        },
      },
      ["Grand Foreman Puzik Gallywix"] = {
        {
        MinLevel = 23,
        MaxLevel = 23,
        Classification = "Elite",
        Movement = "Idle",
        Notes = "Rogue class quest; do at 22+",
        Location = ".pin The Barrens,54.75,5.59;.mob Grand Foreman Puzik Gallywix"
        },
      },
      ["Humar the Pridelord"] = {
        {
        MinLevel = 23,
        MaxLevel = 23,
        Classification = "Rare Elite",
        Movement = "Idle",
        Notes = "increase phys damage taken debuff",
        Location = ".pin The Barrens,62.03,33.31;.mob Humar the Pridelord"
        },
      },
      ["Owatanka"] = {
        {
        MinLevel = 24,
        MaxLevel = 24,
        Classification = "Normal",
        Movement = "Idle",
        Notes = "High level for area",
        Location = ".pin The Barrens,49.54,59.13;.pin The Barrens,44.91,62.55;.mob Owatanka"
        },
      },
      ["Aean Swiftriver"] = {
        {
        MinLevel = 25,
        MaxLevel = 25,
        Classification = "Rare Elite",
        Movement = "Slow Patrol",
        Notes = "Group of level 25 rare elite mobs that patrols around middle/south Barrens",
        Location = ".line The Barrens,43.72,40.26,43.73,40.56,43.84,40.87,43.72,41.39,44.26,42.03,44.58,42.46,44.65,42.81,44.94,43.19,45.01,43.71,45.33,44.30,45.62,44.68,45.87,44.83,46.06,45.35,46.37,45.90,46.63,46.39,47.06,46.66,47.29,47.02,47.43,47.36,47.80,47.88,48.20,48.19,48.60,48.21,48.89,48.10,49.55,48.10,49.80,48.47,49.93,48.77,50.15,49.20,50.54,49.27,50.76,49.51,51.17,49.87,51.17,50.72,50.93,51.42,50.81,52.44,50.73,53.12,50.51,53.94,50.22,55.33,49.67,56.13,48.98,57.14,48.65,58.74,48.65,60.07,48.53,62.84,48.18,64.42,47.47,65.75,47.10,67.20,46.65,68.11,46.93,69.52,46.56,71.21,46.78,73.07,47.36,73.98,47.02,75.32,47.22,77.17;.mob Aean Swiftriver"
        },
      },
      ["Bael'dun Officer"] = {
        {
        MinLevel = 26,
        MaxLevel = 26,
        Classification = "Normal",
        Movement = "Idle",
        Notes = "Has a parry ability that parryhastes, thrashes",
        Location = ".pin The Barrens,48.6,84.6;.pin The Barrens,49.6,83.6;.mob Bael'dun Officer"
        },
      },
      ["Razormane Geomancer"] = {
        {
        MinLevel = 12,
        MaxLevel = 13,
        Classification = "Normal",
        Movement = "Idle",
        Notes = "High dps caster with Frost Armor, easily double pulled",
        Location = ".pin The Barrens,58.58,27.42;.mob Razormane Geomancer"
        },
      },
      ["Razormane Mystic"] = {
        {
        MinLevel = 13,
        MaxLevel = 14,
        Classification = "Normal",
        Movement = "Idle",
        Notes = "Healing mobs surrounding Kreenig Snarlsnout, easily double pulled",
        Location = ".pin The Barrens,58.58,27.42;.mob Razormane Mystic"
        },
      },
      ["Witchwing Slayer"] = {
        {
        MinLevel = 16,
        MaxLevel = 17,
        Classification = "Normal",
        Movement = "Idle",
        Notes = "Executes",
        Location = ".pin The Barrens,38.75,13.59;.pin The Barrens,40.6,15.6;.mob Witchwing Slayer"
        },
      },
      ["Sunscale Scytheclaw"] = {
        {
        MinLevel = 16,
        MaxLevel = 18,
        Classification = "Normal",
        Movement = "Idle",
        Notes = "Thrashes; double pull at Stolen Silver",
        Location = ".pin The Barrens,58.03,53.87;.mob Sunscale Scytheclaw"
        },
      },
      ["Silithid Swarmer"] = {
        {
        MinLevel = 21,
        MaxLevel = 22,
        Classification = "Normal",
        Movement = "Idle",
        Notes = "Summons many 1hp adds",
        Location = ".pin The Barrens,41.8,69.0;.pin The Barrens,43.2,71.0;.pin The Barrens,43.6,69.4;.pin The Barrens,45.6,72.4;.pin The Barrens,47.4,70.8;.pin The Barrens,48.6,69.6;.mob Silithid Swarmer"
        },
      },
    },
    ["The Barrens (Stagnant Oasis)"] = {
      ["Kolkar Pack Runner"] = {
        {
        MinLevel = 14,
        MaxLevel = 15,
        Classification = "Normal",
        Movement = "Fast Patrol",
        Notes = "Has hyena pet at Stagnant Oasis",
        Location = ".line The Barrens,53.70,40.25,53.64,39.47,53.34,39.40,53.28,39.83,53.18,40.25,53.29,40.53,53.26,40.86,53.33,41.02,53.47,41.18,53.80,41.01,54.09,40.53,54.57,40.68,54.69,40.84,54.59,39.95,54.28,39.80,54.01,39.83,53.70,40.25;.mob Kolkar Pack Runner"
        },
        {
        MinLevel = 14,
        MaxLevel = 15,
        Classification = "Normal",
        Movement = "Fast Patrol",
        Notes = "Has hyena pet at Stagnant Oasis",
        Location = ".line The Barrens,52.65,38.90,52.87,39.39,53.00,39.40,53.14,39.80,53.14,40.21,53.29,40.56,53.25,40.93,53.41,41.25,53.67,41.39,53.73,40.90,53.94,40.82,54.06,40.49,54.04,40.11,53.88,39.66,53.67,39.42,53.61,39.09,53.33,38.90,52.72,38.88;.mob Kolkar Pack Runner"
        },
        {
        MinLevel = 14,
        MaxLevel = 15,
        Classification = "Normal",
        Movement = "Fast Patrol",
        Notes = "Has hyena pet at Stagnant Oasis",
        Location = ".line The Barrens,56.92,40.67,56.71,40.68,56.60,40.85,56.57,41.44,56.79,41.63,56.94,41.48,57.02,41.80,57.28,42.00,57.40,41.96,57.52,42.13,57.57,42.31,57.33,41.92,57.62,41.49,57.68,41.03,57.54,40.88,57.31,40.78,57.07,40.67,56.92,40.67;.mob Kolkar Pack Runner"
        },
        {
        MinLevel = 14,
        MaxLevel = 15,
        Classification = "Normal",
        Movement = "Fast Patrol",
        Notes = "Has hyena pet at Stagnant Oasis",
        Location = ".line The Barrens,56.46,40.22,56.57,40.57,56.46,41.09,56.27,41.51,56.06,41.40,56.23,41.41,56.59,40.68,57.05,40.60,57.18,40.74,57.40,40.80,57.45,40.93,57.34,40.35,56.95,40.22,56.69,40.38,56.44,40.12,56.46,40.22;.mob Kolkar Pack Runner"
        },
        {
        MinLevel = 14,
        MaxLevel = 15,
        Classification = "Normal",
        Movement = "Fast Patrol",
        Notes = "Has hyena pet at Stagnant Oasis",
        Location = ".line The Barrens,55.95,46.21,56.13,45.97,56.08,45.80,55.93,45.56,55.79,45.27,55.60,45.35,55.33,45.85,55.37,46.18,55.28,46.67,55.50,47.39,56.00,47.61,56.43,47.47,56.63,47.00,56.67,46.60,56.56,46.25,56.20,46.34,55.95,46.21;.mob Kolkar Pack Runner"
        },
        {
        MinLevel = 14,
        MaxLevel = 15,
        Classification = "Normal",
        Movement = "Fast Patrol",
        Notes = "Has hyena pet at Stagnant Oasis",
        Location = ".line The Barrens,52.67,44.88,52.63,44.56,52.74,44.23,52.88,44.16,53.07,44.23,53.18,44.58,52.98,45.03,52.80,45.02,52.65,44.84;.mob Kolkar Pack Runner"
        },
        {
        MinLevel = 14,
        MaxLevel = 15,
        Classification = "Normal",
        Movement = "Fast Patrol",
        Notes = "Has hyena pet at Stagnant Oasis",
        Location = ".line The Barrens,53.03,44.85,53.04,45.09,53.20,45.37,53.48,45.37,53.75,45.11,53.98,44.68,54.02,44.37,53.78,44.10,53.09,43.76,52.42,44.34,52.32,45.10,52.57,45.54,52.92,45.29,53.03,44.85;.mob Kolkar Pack Runner"
        },
        {
        MinLevel = 14,
        MaxLevel = 15,
        Classification = "Normal",
        Movement = "Fast Patrol",
        Notes = "Has hyena pet at Stagnant Oasis",
        Location = ".line The Barrens,56.29,46.26,56.11,45.86,55.83,45.57,55.66,45.50,55.64,45.73,55.60,45.32,55.78,45.17,56.49,45.23,56.34,45.34,56.27,45.73,56.11,45.90,56.06,46.13,55.88,46.14,55.35,46.80,55.66,46.66,55.89,46.66,56.29,46.26;.mob Kolkar Pack Runner"
        },
      },
    },
    ["Thousand Needles"] = {
      ["Arikara"] = {
        {
        MinLevel = 28,
        MaxLevel = 28,
        Classification = "Elite",
        Movement = "Idle",
        Notes = "Adds around the mesa can hyperspawn",
        Location = ".pin Thousand Needles,38.22,35.28;.mob Arikara"
        },
      },
      ["Enraged Panther"] = {
        {
        MinLevel = 30,
        MaxLevel = 30,
        Classification = "Elite",
        Movement = "Idle",
        Notes = "Extremely high damage for its level",
        Location = ".pin Thousand Needles,22.75,24.65;.mob Enraged Panther"
        },
      },
      ["Rok'Alim the Pounder"] = {
        {
        MinLevel = 30,
        MaxLevel = 30,
        Classification = "Elite",
        Movement = "Idle",
        Notes = "Elite that stuns",
        Location = ".pin Thousand Needles,17.19,37.34;.mob Rok'Alim the Pounder"
        },
      },
      ["Steelsnap"] = {
        {
        MinLevel = 30,
        MaxLevel = 30,
        Classification = "Normal",
        Movement = "Slow Patrol",
        Notes = "2 adds",
        Location = ".line Thousand Needles,13.05,26.42,13.40,27.20,13.87,28.83,14.15,29.65,14.46,30.46,15.12,31.63,15.57,31.70,16.19,30.80,16.86,30.01,17.20,29.62,17.62,28.03,17.98,27.32,18.49,26.72,18.64,26.10,18.68,24.65,18.52,23.98,18.10,23.59,17.90,23.13,17.62,22.94,17.55,22.55,17.20,22.27,17.88,20.75,17.98,20.25,17.65,19.42,17.24,18.91,16.65,18.59,16.23,18.51,15.70,18.67,14.72,19.73,14.54,20.11,13.28,20.01,12.95,19.89,12.44,20.44,11.92,20.87,11.17,22.50,11.17,23.26,11.30,23.78,11.48,24.04,11.59,24.56,11.92,25.08,13.05,26.42;.mob Steelsnap"
        },
      },
      ["Grenka Bloodscreech"] = {
        {
        MinLevel = 31,
        MaxLevel = 31,
        Classification = "Normal",
        Movement = "Idle",
        Notes = "Spawns with waves that AoE silence/cyclone",
        Location = ".pin Thousand Needles,25.92,54.69;.mob Grenka Bloodscreech"
        },
      },
      ["Achellios the Banished"] = {
        {
        MinLevel = 31,
        MaxLevel = 31,
        Classification = "Rare",
        Movement = "Fast Patrol",
        Notes = "Gets close to Whitereach post; has adds, buffs them",
        Location = ".line Thousand Needles,22.94,43.16,23.85,43.62,25.14,42.70,25.97,40.96,25.86,38.84,24.91,36.85,23.87,36.52,22.08,37.69,21.62,34.06,19.97,32.85,18.80,33.46,17.34,36.70,18.47,38.41,19.93,39.42,21.17,40.74,22.16,42.32,22.94,43.16;.mob Achellios the Banished"
        },
      },
      ["Heartrazor"] = {
        {
        MinLevel = 32,
        MaxLevel = 32,
        Classification = "Rare Elite",
        Movement = "Slow Patrol",
        Notes = "Poison deals considerable damage",
        Location = ".line Thousand Needles,15.45,40.02,15.58,40.55,15.67,41.06,15.98,41.43,16.19,41.42,16.33,41.56,16.53,41.46,17.01,41.54,17.62,40.66,18.20,41.13,18.13,41.73,18.19,42.07,17.93,42.52,17.52,42.60,16.99,41.91,17.01,41.54;.mob Heartrazor"
        },
      },
      ["Ironeye the Invincible"] = {
        {
        MinLevel = 32,
        MaxLevel = 32,
        Classification = "Rare Elite",
        Movement = "Slow Patrol",
        Notes = "Basic elite",
        Location = ".line Thousand Needles,88.58,76.11,87.99,75.23,87.89,74.49,88.01,73.43,87.81,71.05,87.53,70.40,87.18,70.68,86.28,72.06,86.54,72.94,87.47,74.18,87.85,75.29,87.77,75.87,87.03,76.81,86.78,77.59,86.93,78.28,86.92,79.04,86.79,79.52,86.99,80.73,87.27,81.04,87.54,80.91,88.63,79.81,88.94,78.91,88.99,77.27,88.72,76.20,88.58,76.11;.mob Ironeye the Invincible"
        },
      },
      ["Vile Sting"] = {
        {
        MinLevel = 34,
        MaxLevel = 34,
        Classification = "Rare Elite",
        Movement = "Slow Patrol",
        Notes = "Basic elite",
        Location = ".line Thousand Needles,69.86,64.43,70.49,63.62,70.97,63.43,71.45,63.63,71.48,64.19,71.15,65.20,71.15,65.86,71.74,66.12,72.14,66.13,72.56,66.70,72.27,67.50,72.15,67.72,71.92,68.91,71.94,69.58,72.51,70.25,72.89,71.01,72.94,71.26,72.51,71.98,71.92,72.62,71.54,73.21,71.29,73.52,71.41,73.70,71.52,73.71,71.27,74.50,71.40,75.72,72.74,75.70,73.13,74.62,73.13,74.18,72.89,73.48,72.41,72.96,71.56,72.51,71.23,72.58,70.69,71.29,70.50,70.58,70.33,69.62,70.46,69.24,70.35,68.54,70.00,68.03,69.69,66.71,69.68,65.37,69.86,64.43;.mob Vile Sting"
        },
      },
      ["Salt Flats Scavenger"] = {
        {
        MinLevel = 30,
        MaxLevel = 32,
        Classification = "Normal",
        Movement = "Idle",
        Notes = "Executes",
        Location = ".pin Thousand Needles,84.27,82.13;.pin Thousand Needles,87.56,65.48;.mob Salt Flats Scavenger"
        },
      },
      ["Silithid Searcher"] = {
        {
        MinLevel = 32,
        MaxLevel = 33,
        Classification = "Normal",
        Movement = "Idle",
        Notes = "Massive social aggro radius/call for help",
        Location = ".pin Thousand Needles,65.89,86.11;.pin Thousand Needles,68.69,83.74;.pin Thousand Needles,70.72,85.37;.pin Thousand Needles,69.40,88.20;.pin Thousand Needles,68.91,86.08;.mob Silithid Searcher"
        },
      },
      ["Salt Flats Vulture"] = {
        {
        MinLevel = 32,
        MaxLevel = 34,
        Classification = "Normal",
        Movement = "Idle",
        Notes = "Executes",
        Location = ".pin Thousand Needles,84.27,82.13;.pin Thousand Needles,87.56,65.48;.mob Salt Flats Vulture"
        },
      },
      ["Silithid Hive Drone"] = {
        {
        MinLevel = 33,
        MaxLevel = 34,
        Classification = "Normal",
        Movement = "Idle",
        Notes = "Massive social aggro radius/call for help",
        Location = ".pin Thousand Needles,65.89,86.11;.pin Thousand Needles,68.69,83.74;.pin Thousand Needles,70.72,85.37;.pin Thousand Needles,69.40,88.20;.pin Thousand Needles,68.91,86.08;.mob Silithid Hive Drone"
        },
      },
      ["Silithid Invader"] = {
        {
        MinLevel = 34,
        MaxLevel = 35,
        Classification = "Normal",
        Movement = "Idle",
        Notes = "Massive social aggro radius/call for help",
        Location = ".pin Thousand Needles,65.89,86.11;.pin Thousand Needles,68.69,83.74;.pin Thousand Needles,70.72,85.37;.pin Thousand Needles,69.40,88.20;.pin Thousand Needles,68.91,86.08;.mob Silithid Invader"
        },
      },
    },
    ["Tirisfal Glades"] = {
      ["Unseen"] = {
        {
        MinLevel = 49,
        MaxLevel = 51,
        Classification = "Normal",
        Movement = "Idle",
        Notes = "Invisible mobs in UC courtyard, aggros if AoE'd",
        Location = ".pin Tirisfal Glades,58.8,68.1;.pin Tirisfal Glades,59.2,71.7;.pin Tirisfal Glades,64.0,71.7;.pin Tirisfal Glades,64.5,67.5;.mob Unseen"
        },
      },
      ["Sri'skulk"] = {
        {
        MinLevel = 13,
        MaxLevel = 13,
        Classification = "Normal",
        Movement = "Slow Patrol",
        Notes = "Multiple poison dps abilities",
        Location = ".line Tirisfal Glades,84.26,48.91,84.62,49.57,84.78,50.30;.mob Sri'skulk"
        },
      },
    },
    ["Undercity"] = {
      ["Unseen"] = {
        {
        MinLevel = 49,
        MaxLevel = 51,
        Classification = "Normal",
        Movement = "Idle",
        Notes = "Invisible mobs in UC courtyard, aggros if AoE'd",
        Location = ".pin Undercity,61.3,7.9;.pin Undercity,71.2,7.1;.pin Undercity,64.8,15.4;.pin Undercity,68.8,14.9;.mob Unseen"
        },
      },
    },
    ["Un'Goro Crater"] = {
      ["Blazerunner"] = {
        {
        MinLevel = 56,
        MaxLevel = 56,
        Classification = "Elite",
        Movement = "Idle",
        Notes = "Huge knockback, painful fire AoE if quest item unused",
        Location = ".pin Un'Goro Crater,49.2,49.0;.mob Blazerunner"
        },
      },
      ["Gruff"] = {
        {
        MinLevel = 57,
        MaxLevel = 57,
        Classification = "Rare Elite",
        Movement = "Idle",
        Notes = "Basic elite",
        Location = ".pin Un'Goro Crater,31.8,79.6;.pin Un'Goro Crater,31.8,71.4;.pin Un'Goro Crater,35.6,66.0;.pin Un'Goro Crater,37.8,75.6;.mob Gruff"
        },
      },
      ["Baron Charr"] = {
        {
        MinLevel = 58,
        MaxLevel = 58,
        Classification = "Elite",
        Movement = "Slow Patrol",
        Notes = "Patrols with 3 fire eles; stacking +fire damage taken debuff",
        Location = ".line Un'Goro Crater,55.02,40.84,54.29,40.75,53.28,41.54,52.65,41.77,51.70,41.34,50.05,42.04,49.23,42.24,48.02,42.91,47.14,42.84,46.09,43.57,45.44,44.52,45.17,44.95,44.78,45.01,43.95,46.91,43.63,47.90,43.75,48.69,44.74,50.26,45.17,51.17,45.28,52.03,45.16,52.94,44.94,53.96,45.35,54.76,46.47,55.67,47.50,56.45,48.12,56.63,49.77,56.87,50.56,56.58,51.31,55.97,52.23,56.30,53.09,57.13,54.92,58.05,55.81,57.13,56.31,56.34,56.37,55.16,56.11,53.17,56.06,51.16,56.71,45.98,56.70,44.36,56.43,42.59,55.89,41.82,55.02,40.84;.mob Baron Charr"
        },
      },
      ["Plated Stegodon"] = {
        {
        MinLevel = 52,
        MaxLevel = 54,
        Classification = "Elite",
        Movement = "Idle",
        Notes = "High armor, 5 sec stun",
        Location = ".pin Un'Goro Crater,26.0,54.6;.pin Un'Goro Crater,27.4,63.4;.pin Un'Goro Crater,30.8,70.2;.pin Un'Goro Crater,35.6,75.8;.pin Un'Goro Crater,40.8,77.8;.pin Un'Goro Crater,39.2,70.8;.pin Un'Goro Crater,35.2,68.4;.pin Un'Goro Crater,31.4,64.0;.pin Un'Goro Crater,37.0,61.4;.pin Un'Goro Crater,40.0,67.2;.mob Plated Stegodon"
        },
      },
      ["Stegodon"] = {
        {
        MinLevel = 53,
        MaxLevel = 53,
        Classification = "Elite",
        Movement = "Idle",
        Notes = "Charges, has 5 sec stun",
        Location = ".pin Un'Goro Crater,26.0,54.6;.pin Un'Goro Crater,27.4,63.4;.pin Un'Goro Crater,30.8,70.2;.pin Un'Goro Crater,35.6,75.8;.pin Un'Goro Crater,40.8,77.8;.pin Un'Goro Crater,39.2,70.8;.pin Un'Goro Crater,35.2,68.4;.pin Un'Goro Crater,31.4,64.0;.pin Un'Goro Crater,37.0,61.4;.pin Un'Goro Crater,40.0,67.2;.mob Stegodon"
        },
      },
      ["Spiked Stegodon"] = {
        {
        MinLevel = 53,
        MaxLevel = 54,
        Classification = "Elite",
        Movement = "Idle",
        Notes = "Passive thorns, 5 sec stun",
        Location = ".pin Un'Goro Crater,26.0,54.6;.pin Un'Goro Crater,27.4,63.4;.pin Un'Goro Crater,30.8,70.2;.pin Un'Goro Crater,35.6,75.8;.pin Un'Goro Crater,40.8,77.8;.pin Un'Goro Crater,39.2,70.8;.pin Un'Goro Crater,35.2,68.4;.pin Un'Goro Crater,31.4,64.0;.pin Un'Goro Crater,37.0,61.4;.pin Un'Goro Crater,40.0,67.2;.mob Spiked Stegodon"
        },
      },
      ["Tyrant Devilsaur"] = {
        {
        MinLevel = 54,
        MaxLevel = 55,
        Classification = "Elite",
        Movement = "Fast Patrol",
        Notes = "AoE Fear",
        Location = ".line Un'Goro Crater,57.37,23.89,59.71,28.76,60.41,28.49,63.04,25.96,64.67,26.25,66.24,27.37,67.66,25.84,69.71,26.20,70.35,28.52,70.15,30.43,69.32,30.86,68.58,32.16,67.35,31.50,66.03,31.83,65.66,33.07,65.84,34.85;.mob Tyrant Devilsaur"
        },
        {
        MinLevel = 54,
        MaxLevel = 55,
        Classification = "Elite",
        Movement = "Fast Patrol",
        Notes = "Knockback",
        Location = ".line Un'Goro Crater,31.29,36.58,32.35,37.27,33.37,38.65,36.55,41.44,37.56,43.66,39.82,55.59,38.72,57.29,39.55,60.15,39.92,61.85,41.70,64.18;.mob Devilsaur"
        },
      },
      ["Devilsaur"] = {
        {
        MinLevel = 54,
        MaxLevel = 55,
        Classification = "Elite",
        Movement = "Fast Patrol",
        Notes = "Knockback",
        Location = ".line Un'Goro Crater,62.59,59.21,63.41,59.30,64.01,60.17,64.73,60.23,65.87,59.21,66.89,58.10,69.59,57.31,71.13,51.60,71.77,50.20,72.75,49.60,73.72,49.25,74.33,46.66,75.75,44.95,75.12,43.14,75.28,40.91,74.40,39.86,74.46,38.65,73.69,37.87,74.31,36.36,74.35,33.06;.mob Devilsaur"
        },
        {
        MinLevel = 54,
        MaxLevel = 55,
        Classification = "Elite",
        Movement = "Fast Patrol",
        Notes = "Knockback",
        Location = ".line Un'Goro Crater,30.15,53.32,30.79,50.89,30.82,49.21,31.10,45.38,31.99,45.33,32.70,43.84,33.13,39.47,34.69,37.35,35.62,37.19,36.54,35.18,36.61,32.96,35.60,31.16,35.71,28.77,34.61,27.52,34.65,22.07;.mob Devilsaur"
        },
      },
      ["Ironhide Devilsaur"] = {
        {
        MinLevel = 54,
        MaxLevel = 55,
        Classification = "Elite",
        Movement = "Fast Patrol",
        Notes = "Knockback",
        Location = ".line Un'Goro Crater,56.55,33.92,55.84,36.22,57.56,40.04,59.44,44.54,56.71,47.42,57.32,52.52,59.83,57.24,59.06,60.14,57.34,63.74,57.65,67.31,59.59,69.83,57.86,73.60,59.04,76.36;.mob Devilsaur"
        },
        {
        MinLevel = 54,
        MaxLevel = 56,
        Classification = "Elite",
        Movement = "Fast Patrol",
        Notes = "High armor, long stun",
        Location = ".line Un'Goro Crater,43.55,80.17,44.51,79.04,44.59,76.94,45.37,74.80,46.51,74.12,46.67,69.68,46.19,68.51,46.03,66.17,47.31,62.85,49.05,61.92,50.93,60.08,52.85,58.94,53.60,59.09,54.56,60.91,54.43,63.34,52.69,65.54,52.51,70.90,53.62,72.82,53.74,73.90;.mob Ironhide Devilsaur"
        },
      },
      ["Thunderstomp Stegodon"] = {
        {
        MinLevel = 54,
        MaxLevel = 55,
        Classification = "Elite",
        Movement = "Idle",
        Notes = "Thunderclaps, has 5 sec stun",
        Location = ".pin Un'Goro Crater,26.0,54.6;.pin Un'Goro Crater,27.4,63.4;.pin Un'Goro Crater,30.8,70.2;.pin Un'Goro Crater,35.6,75.8;.pin Un'Goro Crater,40.8,77.8;.pin Un'Goro Crater,39.2,70.8;.pin Un'Goro Crater,35.2,68.4;.pin Un'Goro Crater,31.4,64.0;.pin Un'Goro Crater,37.0,61.4;.pin Un'Goro Crater,40.0,67.2;.mob Thunderstomp Stegodon"
        },
      },
      ["King Mosh"] = {
        {
        MinLevel = 60,
        MaxLevel = 60,
        Classification = "Rare Elite",
        Movement = "Idle",
        Notes = "RECKLESSNESS, Aoe fear, aoe damage, bleed",
        Location = ".pin Un'Goro Crater,29.04,36.41;.mob King Mosh"
        },
      },
    },
    ["Western Plaguelands"] = {
      ["Foulmane"] = {
        {
        MinLevel = 52,
        MaxLevel = 52,
        Classification = "Rare",
        Movement = "Slow Patrol",
        Notes = "physical damage taken debuff, thrashes, bleeds",
        Location = ".line Western Plaguelands,45.69,52.34,45.75,51.39,46.20,51.03,46.64,51.29,46.72,51.95,46.36,52.37,45.69,52.34;.mob Foulmane"
        },
      },
      ["Cauldron Lord Bilemaw"] = {
        {
        MinLevel = 53,
        MaxLevel = 53,
        Classification = "Normal",
        Movement = "Idle",
        Notes = "Spawns as soon as player/pet approaches cauldron",
        Location = ".pin Western Plaguelands,36.8,57.2;.mob Cauldron Lord Bilemaw"
        },
      },
      ["Cauldron Lord Malvinious"] = {
        {
        MinLevel = 55,
        MaxLevel = 55,
        Classification = "Normal",
        Movement = "Idle",
        Notes = "Spawns as soon as player/pet approaches cauldron",
        Location = ".pin Western Plaguelands,46.2,52.6;.mob Cauldron Lord Malvinious"
        },
      },
      ["Lord Maldazzar"] = {
        {
        MinLevel = 56,
        MaxLevel = 56,
        Classification = "Rare",
        Movement = "Idle",
        Notes = "Summons adds, high damage output",
        Location = ".pin Western Plaguelands,48.2,81.0;.pin Western Plaguelands,48.2,78.6;.pin Western Plaguelands,49.6,82.4;.pin Western Plaguelands,49.8,78.6;.pin Western Plaguelands,50.6,75.4;.pin Western Plaguelands,54.6,79.8;.mob Lord Maldazzar"
        },
      },
      ["Cauldron Lord Razarch"] = {
        {
        MinLevel = 56,
        MaxLevel = 56,
        Classification = "Normal",
        Movement = "Idle",
        Notes = "Spawns as soon as player/pet approaches cauldron",
        Location = ".pin Western Plaguelands,52.8,66.0;.mob Cauldron Lord Razarch"
        },
      },
      ["Cavalier Durgen"] = {
        {
        MinLevel = 57,
        MaxLevel = 57,
        Classification = "Normal",
        Movement = "Slow Patrol",
        Notes = "Patrols the stairs, has a long HoJ",
        Location = ".pin Western Plaguelands,54.39,23.70;.mob Cavalier Durgen"
        },
      },
      ["Cauldron Lord Soulwrath"] = {
        {
        MinLevel = 58,
        MaxLevel = 58,
        Classification = "Normal",
        Movement = "Idle",
        Notes = "Spawns as soon as player/pet approaches cauldron",
        Location = ".pin Western Plaguelands,62.6,59.0;.mob Cauldron Lord Soulwrath"
        },
      },
      ["Scarlet Judge"] = {
        {
        MinLevel = 60,
        MaxLevel = 60,
        Classification = "Rare",
        Movement = "Idle",
        Notes = "Long stun in area full of elites/pats",
        Location = ".pin Western Plaguelands,42.6,18.6;.mob Scarlet Judge"
        },
      },
      ["Spectral Attendant"] = {
        {
        MinLevel = 60,
        MaxLevel = 60,
        Classification = "Normal",
        Movement = "Idle",
        Notes = "inflicts the \"cripple\" debuff",
        Location = ".pin Western Plaguelands,45.6,69.2;.mob Spectral Attendant"
        },
      },
      ["Crimson Elite"] = {
        {
        MinLevel = 60,
        MaxLevel = 60,
        Classification = "Elite",
        Movement = "Idle",
        Notes = "Lingers if not slain during In Dreams",
        Location = ".pin Western Plaguelands,53.8,24.6;.mob Crimson Elite"
        },
      },
      ["Scarlet Executioner"] = {
        {
        MinLevel = 60,
        MaxLevel = 60,
        Classification = "Rare Elite",
        Movement = "Fast Patrol",
        Notes = "Enrages, high level, runs up/down the tower stairs",
        Location = ".pin Western Plaguelands,45.78,18.66;.mob Scarlet Executioner"
        },
      },
      ["Scarlet Interrogator"] = {
        {
        MinLevel = 61,
        MaxLevel = 61,
        Classification = "Rare Elite",
        Movement = "Idle",
        Notes = "Hits for 500-600, can social aggro easily",
        Location = ".pin Western Plaguelands,44.4,14.8;.mob Scarlet Interrogator"
        },
      },
      ["Araj the Summoner"] = {
        {
        MinLevel = 61,
        MaxLevel = 61,
        Classification = "Elite",
        Movement = "Idle",
        Notes = "Frostbolts hit hard, has lots of hp, and pulls with many mobs",
        Location = ".pin Western Plaguelands,45.6,69.2;.mob Araj the Summoner"
        },
      },
      ["High Protector Lorik"] = {
        {
        MinLevel = 61,
        MaxLevel = 61,
        Classification = "Elite",
        Movement = "Slow Patrol",
        Notes = "Hits hard, divine shields, heals, and has a ~20yd knockback/shock",
        Location = ".line Western Plaguelands,44.95,17.71,44.53,17.63,44.27,18.14,44.30,18.64,44.27,19.08,43.38,17.76,43.18,17.73,43.39,15.92,42.94,15.54,43.41,15.90,44.09,15.79,44.35,16.31,44.05,15.64,43.98,15.08,44.12,14.60,43.85,14.22,43.82,13.76,43.98,13.67,43.82,13.76,43.85,14.22,44.15,14.51,45.49,14.46,45.41,13.78,45.56,13.19,45.44,13.68,45.60,14.62,45.82,14.89,46.10,14.91,46.08,15.23,46.69,16.21,46.65,16.68,46.65,17.67,46.32,17.21,47.00,18.15,47.40,18.93,47.44,19.35,47.24,20.52,46.26,21.23,45.93,21.05,45.00,20.00,44.08,20.01,45.00,20.00,44.47,19.25,44.29,18.67,44.26,18.15,44.55,17.68,44.70,17.58,44.95,17.71;.mob High Protector Lorik"
        },
      },
      ["Foreman Jerris"] = {
        {
        MinLevel = 62,
        MaxLevel = 62,
        Classification = "Rare Elite",
        Movement = "Idle",
        Notes = "Stuns and thrashes",
        Location = ".pin Western Plaguelands,45.45,9.38;.mob Foreman Jerris"
        },
      },
      ["Scarlet High Clerist"] = {
        {
        MinLevel = 63,
        MaxLevel = 63,
        Classification = "Rare Elite",
        Movement = "Idle",
        Notes = "Big heal, often pulls with adds",
        Location = ".pin Western Plaguelands,55.0,23.6;.mob Scarlet High Clerist"
        },
      },
      ["Skeletal Flayer"] = {
        {
        MinLevel = 50,
        MaxLevel = 51,
        Classification = "Normal",
        Movement = "Idle",
        Notes = "Thrashes",
        Location = ".pin Western Plaguelands,48.2,81.0;.pin Western Plaguelands,48.2,78.6;.pin Western Plaguelands,49.6,82.4;.pin Western Plaguelands,49.8,78.6;.pin Western Plaguelands,50.6,75.4;.pin Western Plaguelands,54.6,79.8;.pin Western Plaguelands,36.2,57.4;.pin Western Plaguelands,37.6,59.6;.pin Western Plaguelands,37.4,55.2;.pin Western Plaguelands,38.6,57.4;.pin Western Plaguelands,38.6,53.4;.mob Skeletal Flayer"
        },
      },
      ["Skeletal Terror"] = {
        {
        MinLevel = 52,
        MaxLevel = 54,
        Classification = "Normal",
        Movement = "Idle",
        Notes = "Fears in a crowded area",
        Location = ".pin Western Plaguelands,44.8,52.2;.pin Western Plaguelands,46.6,51.6;.pin Western Plaguelands,47.4,49.2;.mob Skeletal Terror"
        },
      },
      ["Skeletal Executioner"] = {
        {
        MinLevel = 54,
        MaxLevel = 55,
        Classification = "Normal",
        Movement = "Idle",
        Notes = "Executes",
        Location = ".pin Western Plaguelands,39.6,70.4;.pin Western Plaguelands,41.2,67.4;.pin Western Plaguelands,45.0,65.4;.pin Western Plaguelands,49.4,65.8;.pin Western Plaguelands,48.4,71.8;.pin Western Plaguelands,44.4,72.6;.pin Western Plaguelands,41.0,70.6;.pin Western Plaguelands,44.6,68.6;.mob Skeletal Executioner"
        },
      },
      ["Freezing Ghoul"] = {
        {
        MinLevel = 55,
        MaxLevel = 56,
        Classification = "Normal",
        Movement = "Idle",
        Notes = "Has a 5 second stun",
        Location = ".pin Western Plaguelands,52.4,63.0;.pin Western Plaguelands,53.6,67.6;.mob Freezing Ghoul"
        },
      },
      ["Scarlet Paladin"] = {
        {
        MinLevel = 55,
        MaxLevel = 56,
        Classification = "Elite",
        Movement = "Idle",
        Notes = "Standard elite mob",
        Location = ".pin Western Plaguelands,42.6,18.6;.pin Western Plaguelands,42.0,15.6;.pin Western Plaguelands,44.8,16.4;.pin Western Plaguelands,47.2,20.2;.mob Scarlet Paladin"
        },
      },
      ["Scarlet Sentinel"] = {
        {
        MinLevel = 55,
        MaxLevel = 56,
        Classification = "Elite",
        Movement = "Idle",
        Notes = "Sees through talented stealth, has overpower",
        Location = ".pin Western Plaguelands,42.6,18.6;.pin Western Plaguelands,42.0,15.6;.pin Western Plaguelands,44.8,16.4;.pin Western Plaguelands,47.2,20.2;.pin Western Plaguelands,48.8,22.2;.mob Scarlet Sentinel"
        },
      },
      ["Temporal Parasite"] = {
        {
        MinLevel = 55,
        MaxLevel = 57,
        Classification = "Normal",
        Movement = "Idle",
        Notes = "Lingers if not slain; long slow, multiplies on death",
        Location = ".pin Western Plaguelands,44.8,61.4;.pin Western Plaguelands,48.6,63.6;.pin Western Plaguelands,48.0,66.6;.pin Western Plaguelands,49.6,69.2;.mob Temporal Parasite"
        },
      },
      ["Scarlet Priest"] = {
        {
        MinLevel = 55,
        MaxLevel = 57,
        Classification = "Elite",
        Movement = "Idle",
        Notes = "Standard elite mob with a big heal",
        Location = ".pin Western Plaguelands,43.2,20.8;.pin Western Plaguelands,47.0,20.2;.pin Western Plaguelands,47.6,16.8;.mob Scarlet Priest"
        },
      },
      ["Scarlet Avenger"] = {
        {
        MinLevel = 56,
        MaxLevel = 57,
        Classification = "Normal",
        Movement = "Idle",
        Notes = "Thrashes",
        Location = ".pin Western Plaguelands,53.2,37.4;.pin Western Plaguelands,54.6,34.0;.pin Western Plaguelands,57.2,35.6;.pin Western Plaguelands,54.6,23.8;.mob Scarlet Avenger"
        },
      },
      ["Scarlet Magus"] = {
        {
        MinLevel = 56,
        MaxLevel = 57,
        Classification = "Elite",
        Movement = "Idle",
        Notes = "Standard elite mob; has fire ward",
        Location = ".pin Western Plaguelands,44.80,15.58;.mob Scarlet Magus"
        },
      },
      ["Skeletal Warlord"] = {
        {
        MinLevel = 56,
        MaxLevel = 57,
        Classification = "Elite",
        Movement = "Idle",
        Notes = "Mortal strikes and stuns in a busy area",
        Location = ".pin Western Plaguelands,44.26,63.23;.pin Western Plaguelands,42.36,66.18;.pin Western Plaguelands,40.07,71.64;.pin Western Plaguelands,46.62,71.12;.mob Skeletal Warlord"
        },
      },
      ["Flesh Golem"] = {
        {
        MinLevel = 56,
        MaxLevel = 57,
        Classification = "Elite",
        Movement = "Idle",
        Notes = "Sometimes patrolling, has a knockback",
        Location = ".pin Western Plaguelands,39.6,70.4;.pin Western Plaguelands,41.2,67.4;.pin Western Plaguelands,45.0,65.4;.pin Western Plaguelands,49.4,65.8;.pin Western Plaguelands,48.4,71.8;.pin Western Plaguelands,44.4,72.6;.pin Western Plaguelands,41.0,70.6;.pin Western Plaguelands,44.6,68.6;.pin Western Plaguelands,41.8,68.2;.mob Flesh Golem"
        },
      },
      ["Scarlet Spellbinder"] = {
        {
        MinLevel = 57,
        MaxLevel = 58,
        Classification = "Normal",
        Movement = "Idle",
        Notes = "Frost Novas in busy area with a few pats/elites",
        Location = ".pin Western Plaguelands,55.0,23.4;.mob Scarlet Spellbinder"
        },
      },
      ["Haunting Vision"] = {
        {
        MinLevel = 57,
        MaxLevel = 58,
        Classification = "Normal",
        Movement = "Idle",
        Notes = "Inflicts \"Cripple\" debuff",
        Location = ".pin Western Plaguelands,62.7,58.3;.mob Haunting Vision"
        },
      },
    },
    ["Winterspring"] = {
      ["Berserk Owlbeast"] = {
        {
        MinLevel = 58,
        MaxLevel = 59,
        Classification = "Normal",
        Movement = "Idle",
        Notes = "Enrages at low hp in dense areas",
        Location = ".pin Winterspring,63.6,16.2;.pin Winterspring,66.0,18.6;.pin Winterspring,66.6,22.8;.pin Winterspring,63.6,22.4;.pin Winterspring,59.6,59.8;.pin Winterspring,64.2,59.2;.pin Winterspring,66.6,60.0;.pin Winterspring,65.2,64.0;.pin Winterspring,65.2,61.8;.mob Berserk Owlbeast"
        },
      },
      ["Mezzir the Howler"] = {
        {
        MinLevel = 55,
        MaxLevel = 55,
        Classification = "Rare",
        Movement = "Idle",
        Notes = "3 second AoE fear",
        Location = ".pin Winterspring,31.6,37.4;.pin Winterspring,40.6,36.6;.pin Winterspring,45.0,37.4;.mob Mezzir the Howler"
        },
      },
      ["Spellmaw"] = {
        {
        MinLevel = 56,
        MaxLevel = 56,
        Classification = "Elite",
        Movement = "Slow Patrol",
        Notes = "Purges",
        Location = ".line Winterspring,57.18,52.58,56.57,51.93,56.38,51.56,56.23,51.10,56.12,50.37,56.27,48.95,55.86,48.92,55.40,48.50,55.42,47.84,55.75,47.29,56.15,46.92,56.97,46.71,57.47,46.98,57.86,47.35,58.50,47.54,58.88,47.54,59.42,47.60,59.58,47.66,59.86,48.34,60.35,48.21,60.64,48.29,61.11,49.30,61.00,49.66,60.72,49.84,60.80,50.02,61.09,50.45,60.99,51.93,60.54,53.18,60.15,52.93,59.91,52.99,59.32,53.43,58.68,54.30,58.14,54.32,57.36,53.31,57.18,52.58;.mob Spellmaw"
        },
      },
      ["Ursius"] = {
        {
        MinLevel = 56,
        MaxLevel = 56,
        Classification = "Elite",
        Movement = "Slow Patrol",
        Notes = "Hits for 330+",
        Location = ".line Winterspring,63.78,25.16,64.07,25.09,64.08,25.50,64.41,25.26,64.48,24.86,64.47,24.21,64.35,24.11,64.00,24.15,63.44,24.78,63.31,25.27,63.30,25.74,63.51,26.24,63.30,26.53,63.39,26.96,63.25,27.33,62.81,27.17,62.47,26.81,62.09,26.51,61.42,26.36,61.38,26.61,61.44,26.96,61.47,27.34,61.51,27.48,61.51,27.65,61.80,27.74,61.85,28.00,62.35,28.39,62.59,28.80,62.91,29.95,62.91,30.44,62.78,30.82,62.70,31.39,62.50,31.78,62.39,31.94,62.03,32.06,61.06,31.55,60.95,31.88,61.00,32.26,60.89,32.60,60.72,32.93,60.71,33.28,60.56,33.54,60.24,33.57,59.91,33.25,59.71,32.88,59.25,33.11,58.31,33.06,57.70,32.60,57.43,32.59,57.18,32.81,56.92,32.69,56.67,32.44,56.58,32.30,56.38,32.22,56.09,32.49;.mob Ursius"
        },
      },
      ["Rak'shiri"] = {
        {
        MinLevel = 57,
        MaxLevel = 57,
        Classification = "Rare Elite",
        Movement = "Idle",
        Notes = "4 second terrify",
        Location = ".pin Winterspring,52.4,14.6;.mob Rak'shiri"
        },
      },
      ["Winterfall Runner"] = {
        {
        MinLevel = 57,
        MaxLevel = 57,
        Classification = "Normal",
        Movement = "Slow Patrol",
        Notes = "Grouped with two other furbolg, usually one that can heal",
        Location = ".line Winterspring,28.07,35.29,28.02,36.46,28.32,37.14,28.47,37.92,28.53,39.39,28.80,39.76,29.32,40.86,29.91,42.27,30.44,42.54,31.65,42.44,32.60,42.17,33.59,41.99,34.67,41.91,36.04,42.16,38.21,41.98,40.23,40.75,42.32,39.97,44.29,39.90,46.45,39.66,48.38,38.86,49.19,38.15,49.35,37.79,49.65,37.59,50.57,36.63,51.67,36.21,52.25,35.75,52.75,35.30,53.46,34.27,53.75,33.38,53.93,32.50,53.97,31.32,54.60,30.91,55.51,30.05,57.14,29.72,58.07,28.93,58.74,27.94,59.01,26.99,59.24,26.48,60.37,25.02,60.62,24.75,61.11,24.44,61.29,24.35,61.92,23.82,62.34,23.92,62.37,24.95,62.21,25.30,62.60,25.99,63.04,26.55,63.50,27.81,63.95,28.34,64.12,28.94,64.10,30.84,64.21,31.40,64.97,33.08,65.44,33.48,66.44,33.71,66.63,33.93,66.80,34.47,66.87,34.87,66.97,35.22,67.53,37.01,68.12,37.76,68.65,38.20,68.76,38.13,68.94,37.84,69.29,38.40,69.61,38.29;.mob Winterfall Runner"
        },
      },
      ["Brumeran"] = {
        {
        MinLevel = 58,
        MaxLevel = 58,
        Classification = "Elite",
        Movement = "Slow Patrol",
        Notes = "Enrages, has ice armor",
        Location = ".line Winterspring,54.74,45.75,54.98,46.46,55.00,47.48,55.34,48.57,56.01,48.99,56.25,50.01,56.37,50.93,56.60,52.04,56.93,52.43,57.19,52.90,57.85,53.42,58.33,53.96,58.66,54.20,59.56,54.60,60.58,55.48,61.55,56.52,62.23,56.86,62.55,57.91,61.88,59.55,61.42,60.12,60.93,60.42,60.51,61.04,59.98,61.46,59.53,61.60,58.89,62.24,58.84,62.86;.mob Brumeran"
        },
      },
      ["High Chief Winterfall"] = {
        {
        MinLevel = 59,
        MaxLevel = 59,
        Classification = "Elite",
        Movement = "Idle",
        Notes = "Enrages, socials with two furbolg (one heals)",
        Location = ".pin Winterspring,69.4,38.4;.mob High Chief Winterfall"
        },
      },
      ["Azurous"] = {
        {
        MinLevel = 59,
        MaxLevel = 59,
        Classification = "Rare Elite",
        Movement = "Slow Patrol",
        Notes = "Frost breath attack",
        Location = ".line Winterspring,54.54,45.52,54.79,45.82,54.96,46.67,55.00,47.49,55.21,48.01,55.42,48.03,55.68,47.58,55.84,46.81,55.89,46.33,56.10,45.97,56.55,45.85,56.99,45.83,57.34,45.26,57.59,44.47,57.84,44.01,58.27,43.79,58.72,44.01,59.28,43.84,59.82,42.37,60.13,41.83,61.16,41.41,61.52,41.23,62.04,41.19,62.46,41.39,62.94,41.89,63.46,41.85,63.83,41.67,64.01,41.68,64.28,42.30,64.66,42.77,65.07,42.95,65.51,43.33,65.88,43.74,66.24,44.28,66.56,44.90,66.61,45.65,66.62,47.67,66.63,48.77,66.87,49.68,66.35,51.25,66.26,52.16,66.80,53.98;.mob Azurous"
        },
      },
      ["Kashoch the Reaver"] = {
        {
        MinLevel = 60,
        MaxLevel = 60,
        Classification = "Rare Elite",
        Movement = "Idle",
        Notes = "Basic elite",
        Location = ".pin Winterspring,63.2,70.0;.mob Kashoch the Reaver"
        },
      },
      ["Princess Tempestria"] = {
        {
        MinLevel = 60,
        MaxLevel = 60,
        Classification = "Elite",
        Movement = "Slow Patrol",
        Notes = "Knockback, immune to banish, patrols with group",
        Location = ".line Winterspring,54.18,43.11,54.79,42.41,54.94,42.04,54.83,41.57,54.54,41.03,53.82,40.79,52.37,42.05,51.84,42.21,51.47,42.77,51.80,43.37,52.21,43.67,54.18,43.11;.mob Princess Tempestria"
        },
      },
      ["Watery Invader"] = {
        {
        MinLevel = 56,
        MaxLevel = 58,
        Classification = "Normal",
        Movement = "Idle",
        Notes = "~600 damage frost shock",
        Location = ".pin Winterspring,52.0,39.6;.pin Winterspring,51.4,43.4;.pin Winterspring,54.6,43.6;.pin Winterspring,54.8,39.4;.pin Winterspring,53.4,41.2;.mob Watery Invader"
        },
      },
      ["Frostsaber Stalker"] = {
        {
        MinLevel = 59,
        MaxLevel = 60,
        Classification = "Normal",
        Movement = "Idle",
        Notes = "Stealthed",
        Location = ".pin Winterspring,51.0,21.6;.pin Winterspring,53.4,17.4;.pin Winterspring,56.8,16.6;.pin Winterspring,56.8,11.8;.pin Winterspring,54.8,10.6;.pin Winterspring,52.4,10.4;.pin Winterspring,48.4,12.6;.pin Winterspring,49.0,17.0;.pin Winterspring,51.0,15.6;.pin Winterspring,53.6,13.2;.mob Frostsaber Stalker"
        },
      },
      ["Cobalt Whelp"] = {
        {
        MinLevel = 54,
        MaxLevel = 55,
        Classification = "Normal",
        Movement = "Idle",
        Notes = "High damage frost shock + bleed",
        Location = ".pin Winterspring,54.6,51.6;.pin Winterspring,57.6,50.2;.pin Winterspring,60.4,49.8;.mob Cobalt Whelp"
        },
      },
    },
    ["Blade's Edge Mountains"] = {
      ["Grulloc"] = {
        {
        MinLevel = 70,
        MaxLevel = 70,
        Classification = "Elite",
        Movement = "Fast Patrol",
        Notes = "Hits extremely hard. extremely dangerous",
        Location = ".pin Blade's Edge Mountains,60.92,47.60;.mob Grulloc"
        },
      },
      ["Maggoc"] = {
        {
        MinLevel = 70,
        MaxLevel = 70,
        Classification = "Elite",
        Movement = "Slow Patrol",
        Notes = "Hits extremely hard. extremely dangerous",
        Location = ".line Blade's Edge Mountains,58.06,64.98,57.98,62.98,58.49,60.96,58.75,59.05,59.27,57.22,59.73,56.17,61.08,54.74,62.34,55.09,63.44,55.38,64.23,55.33,65.34,54.82,66.54,56.21,67.51,58.10,67.85,59.58,68.06,61.57,68.35,62.78,67.98,64.20,67.86,66.44,68.08,67.80,68.05,70.16,68.24,71.99,68.06,74.56,67.98,75.06;.mob Maggoc"
        },
      },
    },
    ["Hellfire Peninsula"] = {
      ["Fel Reaver"] = {
        {
        MinLevel = 70,
        MaxLevel = 70,
        Classification = "Elite",
        Movement = "Fast Patrol",
        Notes = "5 second stun + knockback; hits extremely hard. extremely dangerous",
        Location = ".line Hellfire Peninsula,24.77,65.13,22.78,56.54,18.97,55.85,17.32,50.72,18.81,47.42,17.51,43.18,20.58,46.76,25.89,47.71,28.73,51.07,31.51,50.03,28.99,45.68,27.29,42.60,27.55,40.19,30.17,39.40,32.26,45.02,35.31,47.13,38.44,43.85,40.81,43.33,43.37,45.74,46.32,44.25,46.24,39.72,47.12,35.78,47.97,33.05,48.47,28.23;.line Hellfire Peninsula,71.38,44.04,68.23,40.89,66.69,38.28,65.06,37.84,63.24,34.39,61.19,35.13,59.74,40.22,63.05,48.70,62.61,51.93,61.61,53.83,62.50,56.44,63.91,56.84,66.30,55.58,68.55,56.51,69.40,61.81,66.84,62.03,65.94,63.03,63.25,69.83,61.01,74.72,59.15,74.73,57.71,71.42,54.07,71.88,52.23,72.18,50.60,77.07,49.13,80.31,47.92,76.11,47.77,73.75,46.59,71.67,47.18,69.19,50.19,68.85,49.82,64.17;.mob Fel Reaver"
        },
      },
    },
  },
}

addon.dangerousMobs = dangerousMobs[_G.UnitFactionGroup("player")]
