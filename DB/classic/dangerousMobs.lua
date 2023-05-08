local _, addon = ...

local dangerousMobs = {
    ['Horde'] = {
        ['Arathi Highlands'] = {
            ["Nimar the Slayer <Warband Leader>"] = {
                {
                    MinLevel = 37,
                    MaxLevel = 37,
                    Classification = "Rare",
                    Movement = "Idle",
                    Notes = "Not sure if he has a patrol path, has execute and is high lvl for area (witherbark trolls in South-East Arathi)",
                    Location = "mob does not appear to patrol"
                }
            }
        },
        ['Ashenvale'] = {
            ["Sharptalon"] = {
                {
                    MinLevel = 31,
                    MaxLevel = 31,
                    Classification = "Normal",
                    Movement = "Slow Patrol",
                    Notes = "Part of The Ashenvale Hunt, the high lvl makes him more difficult",
                    Location = ".line Ashenvale,71.48,70.11,72.16,70.52,72.48,70.60,72.67,70.67,73.23,70.67,74.43,70.07,74.80,70.06,75.44,69.90,75.69,69.81,75.96,69.78,76.10,68.96,76.44,68.58,76.91,68.04,77.59,66.37,77.92,65.94,78.29,65.71"
                }
            }
        },
        ['Azshara'] = {
            ["Monnos the Elder"] = {
                {
                    MinLevel = 53,
                    MaxLevel = 53,
                    Classification = "Rare Elite",
                    Movement = "Slow Patrol",
                    Notes = "Has a huge knockback and a high-damage 5 sec aoe stun",
                    Location = ".line Azshara,76.20,20.69,76.27,21.13,76.11,23.40,75.67,24.39,74.56,24.91,74.23,25.09,73.82,24.61,73.71,23.88,72.97,23.43,72.26,23.47,71.76,23.33,71.28,22.53,71.06,21.45,71.23,19.97,71.55,19.65,72.04,19.91,72.59,20.94,73.14,21.41,73.52,21.32,74.04,20.21,74.60,19.72,75.22,19.69,75.69,18.53,76.36,18.01,77.01,17.16,78.01,17.28,79.03,18.19,79.31,18.45,80.57,18.52,81.01,18.70,81.55,18.50,81.98,17.89"
                }
            },
            ["Avalanchion"] = {
                {
                    MinLevel = 58,
                    MaxLevel = 58,
                    Classification = "Elite",
                    Movement = "Slow Patrol",
                    Notes = "Aoe stun + several adds that stun and interrupt",
                    Location = ".loop 30,Azshara,82.17,20.69,81.93,22.12,81.54,23.16,80.97,23.85,79.12,24.49,77.70,25.02,77.21,25.04,76.65,24.33,76.22,23.15,74.96,22.07,72.94,20.81,72.65,20.18,72.56,19.07,73.01,18.11,75.30,16.67,77.46,16.69,79.24,18.26,81.74,18.58,82.07,19.26,82.17,20.69"
                }
            }
        },
        ['Badlands'] = {
            ["Siege Golem"] = {
                {
                    MinLevel = 40,
                    MaxLevel = 40,
                    Classification = "Rare Elite",
                    Movement = "Slow Patrol",
                    Notes = "Basic elite, nothing special",
                    Location = ".line Badlands,41.68,39.71,40.13,40.09,38.96,40.24,37.78,41.88,36.55,42.56,35.95,43.69,34.97,44.76,34.27,46.35,33.49,47.82,33.21,49.64,32.64,51.13,32.20,52.67,31.78,55.21,31.31,56.80,30.62,57.90,29.48,58.40,27.88,58.13,23.79,57.55,21.26,58.27,20.23,57.85,19.28,58.58,18.87,59.91,18.68,60.39,16.24,63.49,14.81,64.16,11.92,64.04,10.60,63.71,7.83,61.88,6.99,61.68"
                }
            },
            ["Anathemus"] = {
                {
                    MinLevel = 45,
                    MaxLevel = 45,
                    Classification = "Rare Elite",
                    Movement = "Slow Patrol",
                    Notes = "Patrolling around the zone",
                    Location = ".loop 25,Badlands,36.37,71.63,39.75,72.36,43.61,72.61,51.70,73.52,61.89,67.68,54.73,58.52,48.53,53.02,45.44,51.70,41.01,54.95,35.35,56.99,28.17,56.44,19.50,57.77,16.05,64.35,12.51,72.73,12.85,77.42,14.51,79.15,21.83,78.10,25.39,73.02,32.13,74.04,36.37,71.63"
                }
            },
            ["Zaricotl"] = {
                {
                    MinLevel = 55,
                    MaxLevel = 55,
                    Classification = "Rare Elite",
                    Movement = "Idle",
                    Notes = "",
                    Location = "does not seem to patrol"
                }
            },
            ["Boss Tho'grun"] = {
                {
                    MinLevel = 41,
                    MaxLevel = 42,
                    Classification = "Normal",
                    Movement = "Slow Patrol",
                    Notes = "Quest mob patrolling around the zone with 4-6 mob entourage",
                    Location = ".loop 25,Badlands,36.37,71.63,39.75,72.36,43.61,72.61,51.70,73.52,61.89,67.68,54.73,58.52,48.53,53.02,45.44,51.70,41.01,54.95,35.35,56.99,28.17,56.44,19.50,57.77,16.05,64.35,12.51,72.73,12.85,77.42,14.51,79.15,21.83,78.10,25.39,73.02,32.13,74.04,36.37,71.63"
                }
            }
        },
        ['Blasted Lands'] = {
            ["Teremus the Devourer"] = {
                {
                    MinLevel = 60,
                    MaxLevel = 60,
                    Classification = "Elite",
                    Movement = "Slow Patrol",
                    Notes = "Dragon boss patrolling around the zone",
                    Location = ".loop 25,Badlands,45.37,23.42,46.53,21.52,48.73,22.21,51.81,25.45,53.10,27.52,54.07,27.65,56.10,31.05,57.64,34.56,60.06,36.28,61.54,38.09,63.00,36.07,63.54,35.33,63.94,33.29,63.50,31.20,62.90,30.44,61.31,28.62,60.81,27.30,60.31,26.53,58.54,27.84,57.51,28.33,56.94,29.23,56.55,31.32,55.87,34.38,53.27,36.70,50.95,37.33,47.13,38.89,45.42,43.43,46.54,47.86,48.97,51.64,50.16,50.91,51.26,50.03,53.13,49.22,55.34,46.61,56.65,44.70,56.34,42.17,54.60,39.66,51.48,37.97,48.89,35.65,56.80,35.26,44.72,33.72,44.39,30.60,44.47,26.38,45.37,23.42"
                }
            }
        },
        ['Burning Steppes'] = {
            ["Volchan"] = {
                {
                    MinLevel = 60,
                    MaxLevel = 60,
                    Classification = "Rare Elite",
                    Movement = "Slow Patrol",
                    Notes = "1200+ damage knockback/AoE",
                    Location = ".loop 25,Burning Steppes,85.42,58.97,89.39,57.86,90.03,52.03,90.27,46.65,90.01,42.20,92.22,37.67,91.72,32.36,90.01,30.11,87.49,30.80,85.03,29.84,83.01,29.65,81.46,28.40,77.96,30.79,76.18,33.98,74.75,36.40,73.71,38.22,74.77,42.17,74.08,46.15,74.86,50.40,76.88,52.34,79.22,55.17,80.92,59.80,83.24,61.59,85.42,58.97"
                }
            },
            ["Hematos"] = {
                {
                    MinLevel = 60,
                    MaxLevel = 60,
                    Classification = "Rare Elite",
                    Movement = "Fast Patrol",
                    Notes = "Roaming elite",
                    Location = ".line Burning Steppes,16.40,54.96,17.51,53.22,17.88,51.09,17.74,48.30,18.44,46.04,19.93,46.60,21.42,48.65,23.18,49.50,25.11,49.82,26.94,51.35,27.47,52.42,30.70,54.19,32.98,55.00,32.06,58.18,29.46,60.50,27.59,61.17,25.90,60.80,24.31,59.25,22.03,59.88,20.95,59.30,18.99,59.30,17.93,58.71,17.12,56.61,17.06,54.63"
                }
            },
            ["Black Drake"] = {
                {
                    MinLevel = 50,
                    MaxLevel = 52,
                    Classification = "Elite",
                    Movement = "Slow Patrol",
                    Notes = "Patrols in Eastern Burning Steppes",
                    Location = ".line Burning Steppes,91.88,37.08,91.81,38.89,91.34,40.01,91.42,40.79,90.94,41.16,90.37,42.39,89.81,43.13,90.17,45.01,90.16,48.57,91.61,51.14,91.57,53.33,92.09,53.71,92.58,54.40,93.68,55.94"
                }, {
                    MinLevel = 50,
                    MaxLevel = 52,
                    Classification = "Elite",
                    Movement = "Slow Patrol",
                    Notes = "Patrols in Southeastern Burning Steppes",
                    Location = ".line Burning Steppes,89.76,52.54,89.88,55.43,89.51,56.94,87.83,57.28,85.71,59.33,83.51,60.25,82.51,61.78"
                }, {
                    MinLevel = 50,
                    MaxLevel = 52,
                    Classification = "Elite",
                    Movement = "Slow Patrol",
                    Notes = "Patrols in Northeastern Burning Steppes",
                    Location = ".line Burning Steppes,82.91,27.05,83.76,28.35,84.97,28.44,85.78,28.98,86.74,30.31,88.20,30.93,89.08,31.00,90.25,31.88,91.27,33.04,91.29,35.11,90.48,35.62,90.25,36.93,89.36,37.33,89.14,37.52,88.67,39.88"
                }
            }
        },
        ['Desolace'] = {
            ["Khan Hratha"] = {
                {
                    MinLevel = 42,
                    MaxLevel = 42,
                    Classification = "Elite",
                    Movement = "Idle",
                    Notes = "Executes, has many adds, buffs them, dangerous terrain",
                    Location = ".goto Desolace,29.8,50.4"
                }
            },
            ["Kolkar Destroyer"] = {
                {
                    MinLevel = 32,
                    MaxLevel = 33,
                    Classification = "Normal",
                    Movement = "Idle",
                    Notes = "Executes",
                    Location = "Kolkar Village subzone (east Desolace)"
                }
            },
            ["Deepstrider Giant"] = {
                {
                    MinLevel = 38,
                    MaxLevel = 39,
                    Classification = "Elite",
                    Movement = "Slow Patrol",
                    Notes = "Basic elite, but huge patrol",
                    Location = ".line Desolace,20.63,88.19,21.44,84.50,21.99,83.60,23.25,83.11,24.82,81.41,25.37,82.24,25.64,82.89,26.21,82.62,27.05,82.83,27.95,82.73,29.15,82.07,29.83,81.93,30.25,81.30,31.67,80.18,32.30,79.85,33.08,80.02,33.55,79.68,33.73,78.98,33.92,77.68,34.43,76.92,34.64,75.67,35.26,75.39,36.42,75.53,37.62,75.59,39.06,78.94,39.68,79.18,40.22,79.16,40.74,80.26,41.26,80.97,42.45,81.10,43.46,81.14,44.09,80.94,44.64,80.15,44.78,78.92,44.72,77.79,44.69,77.08,44.69,76.65,44.26,75.89,44.02,74.65,43.90,73.38,43.23,72.16,42.80,71.30,42.60,70.16,42.02,69.08,41.91,68.11,42.00,67.77,41.86,65.67,42.02,64.33,42.73,63.53,43.45,63.25,44.11,62.36,44.18,60.67,44.25,59.69,44.06,57.83,43.57,56.78,43.46,55.42,43.46,52.20,43.54,50.72,43.94,49.79,44.29,48.30,44.35,47.11,44.56,45.95,44.68,44.88,44.69,43.46,44.68,42.47,44.96,41.34,45.61,40.99,45.72,40.06,46.51,39.79,47.10,40.00,48.03,39.95,48.60,40.20,48.61,41.23,49.12,42.36,49.30,43.55,49.37,44.65,49.54,45.53,50.12,46.73,50.70,46.91,52.38,46.77,53.71,46.78,54.27,47.36,54.77,47.76,55.29,48.02,55.95,47.94,56.08,47.90,56.76,47.18,57.54,46.95,58.39,47.06,59.21,47.45,60.02,48.01,60.53,48.81,61.24,48.97,61.24,50.30,61.87,51.25,61.86,52.58,61.86,54.86,61.92,55.79,61.84,57.18,61.90,58.40,61.90,58.95,62.69,59.75,63.31,60.78,63.37,61.61,63.43,62.05,63.39,63.60,63.41,65.39,63.45,66.17,63.43,67.01,62.54,67.57,62.03,67.69,61.46,67.97,61.02,68.63,60.59,68.90,59.96,69.83,59.42,70.45,59.24,71.37,59.51,72.27,59.65,72.71,59.71,73.91,59.69,74.62,59.79,75.99,59.69,78.04,59.58,78.94,59.00,79.13,58.66,79.82,58.19,80.03,57.90,80.56,58.29,81.60,58.52,82.09,58.48,82.73,58.40,83.86"
                }, {
                    MinLevel = 38,
                    MaxLevel = 39,
                    Classification = "Elite",
                    Movement = "Slow Patrol",
                    Notes = "Basic elite, but huge patrol",
                    Location = ".line Desolace,65.62,59.84,65.65,58.72,65.85,56.75,65.85,55.47,65.68,54.50,66.18,53.38,65.74,52.40,66.17,51.06,66.20,50.00,66.47,48.91,67.28,46.95,67.87,46.00,67.76,44.61,66.84,43.50,66.42,43.28,65.67,42.13,65.02,40.10,64.81,38.78,64.24,37.50,64.19,36.53,64.69,35.65,64.97,34.61,65.51,33.72,66.19,33.21,66.44,31.37,66.60,29.79,66.47,28.91,66.97,26.36,67.01,25.24,66.32,24.24,65.22,22.92,64.75,22.56,64.09,22.35,63.21,22.38,62.90,22.23,62.50,22.39,61.68,21.95,60.98,21.01,60.30,20.07,59.64,20.26,58.91,19.99,58.50,19.76,57.35,19.58,56.03,19.55,55.72,19.70,55.05,19.78,54.78,20.16,54.31,20.13,54.07,19.70,53.74,20.59,53.57,21.18,53.11,21.57,52.72,21.76,51.77,22.64,51.46,25.63,51.04,26.33,50.93,27.58,50.08,27.94,49.46,29.00,48.62,31.47,48.54,32.46,47.99,33.38,47.75,34.62,47.14,35.57,46.87,36.75,46.39,37.72,45.61,38.81,44.82,38.99,44.14,38.84,42.54,38.73,41.05,36.64,40.90,35.95,40.24,35.45,39.22,33.87,38.42,32.73,37.83,32.48,37.15,32.47,36.81,32.34,36.05,31.43,35.51,30.75,34.96,31.04,34.68,32.00,34.91,32.42,34.80,34.57,34.41,35.27,33.77,35.45,32.90,35.37,32.08,33.06,31.35,32.44,30.19,30.96,29.06,30.89,28.53,31.60,28.51,32.67,28.91,33.54,28.63,34.39,28.88,35.42,29.01,36.01,28.36,36.78,27.06,36.32,26.30,36.72,26.16,37.61,25.39,38.28,24.65,39.78,24.28,40.21,24.02,47.58,23.29,49.76,23.18,50.58,22.36,51.70,21.92,52.63,22.05,54.06,22.96,56.11,24.38,56.30,25.42,56.33"
                }
            },
            ["Deepstrider Searcher"] = {
                {
                    MinLevel = 39,
                    MaxLevel = 40,
                    Classification = "Elite",
                    Movement = "Slow Patrol",
                    Notes = "Basic elite, but huge patrol",
                    Location = "did not find this mob type; shared spawn with deepstrider giant?"
                }
            }
        },
        ['Durotar'] = {
            ["Warlord Kolkanis"] = {
                {
                    MinLevel = 9,
                    MaxLevel = 9,
                    Classification = "Rare",
                    Movement = "Idle",
                    Notes = "Pummel, Thunderclap, 3 spawn locations",
                    Location = ".line Durotar,50.2,80.0,48.0,77.6,46.6,79.8"
                }
            },
            ["Zalazane"] = {
                {
                    MinLevel = 10,
                    MaxLevel = 10,
                    Classification = "Normal",
                    Movement = "Slow Patrol",
                    Notes = "Healing Wave, short patrol",
                    Location = ".line Durotar,66.6,87.6,67.6,87.8,67.6,86.8"
                }
            },
            ["Captain Flat Tusk"] = {
                {
                    MinLevel = 11,
                    MaxLevel = 11,
                    Classification = "Rare Elite",
                    Movement = "Idle",
                    Notes = "Heroic Strike; can burst for 100+ damage",
                    Location = ".line Durotar,44.76,50.66,39.20,53.64,40.04,48.91,43.53,39.93,43.51,37.10"
                }
            },
            ["Felweaver Scornn"] = {
                {
                    MinLevel = 11,
                    MaxLevel = 11,
                    Classification = "Rare Elite",
                    Movement = "Idle",
                    Notes = "High damage shadowbolt + voidwalker, in a cave",
                    Location = ".goto Durotar,52.78,8.96"
                }
            },
            ["Fizzle Darkstorm"] = {
                {
                    MinLevel = 12,
                    MaxLevel = 12,
                    Classification = "Normal",
                    Movement = "Idle",
                    Notes = "High damage Shadowbolt + Drain Life + Imp",
                    Location = ".goto Durotar,42.12,26.66"
                }
            },
            ["Makasgar"] = {
                {
                    MinLevel = 12,
                    MaxLevel = 12,
                    Classification = "Normal",
                    Movement = "Idle",
                    Notes = "Not dangerous, just in a weird place",
                    Location = ".goto Durotar,62.6,65.8"
                }
            },
            ["Gazz'uz"] = {
                {
                    MinLevel = 14,
                    MaxLevel = 14,
                    Classification = "Normal",
                    Movement = "Idle",
                    Notes = "High damage shadowbolt + voidwalker, in a cave",
                    Location = ".goto Durotar,52.6,8.8"
                }
            },
            ["Voodoo Trolls"] = {
                {
                    MinLevel = 8,
                    MaxLevel = 9,
                    Classification = "Normal",
                    Movement = "Idle",
                    Notes = "Healing Wave, Lightning Shield",
                    Location = ".line Durotar,65.3,83.1,66.9,83.5,67.3,81.1,68.2,81.9,68.0,84.6,67.6,86.5,65.3,85.7,65.3,83.1"
                }
            },
            ["Dustwind Storm Witch"] = {
                {
                    MinLevel = 10,
                    MaxLevel = 11,
                    Classification = "Normal",
                    Movement = "Idle",
                    Notes = "Casters, easily double pulled",
                    Location = ".line Durotar,51.32,23.44,53.01,24.40,53.97,24.42,54.03,22.33,51.58,20.91,51.41,19.02"
                }
            }
        },
        ['Dustwallow Marsh'] = {
            ["Brimgore"] = {
                {
                    MinLevel = 45,
                    MaxLevel = 45,
                    Classification = "Rare Elite",
                    Movement = "Slow Patrol",
                    Notes = "Flame breath",
                    Location = "The Wyrmbog subzone (south/southwest Dustwallow Marsh)"
                }
            },
            ["Coral Shark"] = {
                {
                    MinLevel = 46,
                    MaxLevel = 47,
                    Classification = "Elite",
                    Movement = "Idle",
                    Notes = "Not far past Theramore Docks",
                    Location = "East/southeast of Theramore Docks"
                }
            }
        },
        ['Eastern Plaguelands'] = {
            ["Infiltrator Hameya"] = {
                {
                    MinLevel = 60,
                    MaxLevel = 60,
                    Classification = "Normal",
                    Movement = "Slow Patrol",
                    Notes = "Patrols around a dozen graves in Zul'Mashar",
                    Location = ".loop 20,Eastern Plaguelands,70.21,15.85,70.90,16.76,70.89,17.08,70.54,17.64,70.17,17.52,69.73,16.83,69.73,16.48,70.21,15.85"
                }
            },
            ["Duskwing"] = {
                {
                    MinLevel = 60,
                    MaxLevel = 60,
                    Classification = "Elite",
                    Movement = "Slow Patrol",
                    Notes = "Has an AoE silence",
                    Location = ".line Eastern Plaguelands,29.15,63.52,29.70,63.68,30.39,63.87,30.98,64.73,31.35,65.88,31.46,66.66,31.52,67.86,30.96,68.97,30.63,70.77,30.47,72.42,30.62,73.50,31.04,74.76,30.81,76.64,32.04,77.09,32.83,76.38,32.71,74.62,32.76,73.48,33.61,72.86,34.12,72.02,34.72,71.36,35.50,70.75,36.31,70.06,36.67,70.44,37.16,71.03,37.29,71.78,37.47,72.01,39.90,71.95,40.35,71.93,40.74,70.83,40.97,69.30,41.81,68.80,42.92,68.44,43.36,68.07,44.40,67.25,45.35,66.76"
                }
            },
            ["Nerubian Overseer"] = {
                {
                    MinLevel = 60,
                    MaxLevel = 60,
                    Classification = "Elite",
                    Movement = "Slow Patrol",
                    Notes = "Will remain at range if possible; has a web",
                    Location = ".line Eastern Plaguelands,19.54,30.97,19.24,31.17,19.01,31.58,18.67,32.87,18.32,33.53,17.84,33.75,17.27,33.59,16.74,33.13,16.12,32.76,15.61,32.53,15.56,31.62,15.66,31.00,15.99,30.26,15.89,29.44,15.53,29.05,15.23,29.51,14.98,30.10,14.68,30.70,14.86,31.50,14.65,31.74,13.82,31.77,13.48,33.16,12.90,33.48,12.48,33.56,12.11,34.26,11.20,34.53,10.49,35.57,10.58,36.51,10.12,37.47,9.41,37.89,8.85,37.74,8.03,38.28,7.96,39.00,8.14,39.51"
                }
            },
            ["Crimson Courier"] = {
                {
                    MinLevel = 60,
                    MaxLevel = 60,
                    Classification = "Elite",
                    Movement = "Slow Patrol",
                    Notes = "Patrols Stratholme (Live) to Tyr's Hand",
                    Location = ".line Eastern Plaguelands,55.06,17.48,30.85,20.06,30.95,21.06,31.04,23.39,31.57,25.91,32.01,26.80,32.95,28.02,33.41,28.57,34.29,29.10,35.77,29.43,37.58,29.43,38.44,28.76,39.11,28.47,39.55,28.59,40.54,29.23,41.29,29.60,42.77,30.54,43.77,31.05,44.70,31.46,45.79,31.82,46.93,32.53,48.82,33.62,49.73,33.94,50.66,34.26,51.76,34.59,53.33,34.90,55.76,35.46,56.51,35.88,57.60,36.74,58.73,37.92,60.50,40.32,62.25,44.52,63.66,48.15,63.82,49.64,63.71,50.72,63.18,51.91,62.64,53.60,62.46,56.39,62.75,58.46,63.22,60.47,63.27,62.14,62.96,63.35,62.31,64.95,60.81,67.20,59.92,68.37,60.83,69.91,62.64,71.40,64.19,73.01,65.20,75.50,65.70,76.12,67.44,77.08,68.39,77.46,69.21,77.87,70.67,78.33,71.62,78.48,72.17,78.84,73.78,80.37,76.54,81.80,77.36,81.79,78.12,81.64,79.23,81.65,80.26,81.73,81.02,81.96,81.11,82.39,81.36,82.76,81.74,82.71,82.05,82.30,82.51,82.43,84.75,83.67,85.55,84.17,86.61,85.06,86.52,85.30,86.93,85.65,87.04,85.36,87.57,85.77"
                }
            },
            ["Borelgore"] = {
                {
                    MinLevel = 61,
                    MaxLevel = 61,
                    Classification = "Elite",
                    Movement = "Slow Patrol",
                    Notes = "Kiteable",
                    Location = ".line Eastern Plaguelands,54.48,31.82,55.13,31.80,55.60,31.78,55.86,31.25,56.31,31.15,56.66,31.78,57.17,31.83,57.85,32.03,58.49,32.34,59.34,32.12,59.99,31.95,60.58,31.87,61.13,32.27,61.79,32.98,62.57,33.31,63.17,34.09,63.67,34.56,64.29,34.89"
                }
            },
            ["Demetria"] = {
                {
                    MinLevel = 61,
                    MaxLevel = 61,
                    Classification = "Elite",
                    Movement = "Slow Patrol",
                    Notes = "Quest mob; patrols Stratholme (Live) to Tyr's Hand with 9-10 non-elite bodyguards and lingers if not slain",
                    Location = ".line Eastern Plaguelands,55.06,17.48,30.85,20.06,30.95,21.06,31.04,23.39,31.57,25.91,32.01,26.80,32.95,28.02,33.41,28.57,34.29,29.10,35.77,29.43,37.58,29.43,38.44,28.76,39.11,28.47,39.55,28.59,40.54,29.23,41.29,29.60,42.77,30.54,43.77,31.05,44.70,31.46,45.79,31.82,46.93,32.53,48.82,33.62,49.73,33.94,50.66,34.26,51.76,34.59,53.33,34.90,55.76,35.46,56.51,35.88,57.60,36.74,58.73,37.92,60.50,40.32,62.25,44.52,63.66,48.15,63.82,49.64,63.71,50.72,63.18,51.91,62.64,53.60,62.46,56.39,62.75,58.46,63.22,60.47,63.27,62.14,62.96,63.35,62.31,64.95,60.81,67.20,59.92,68.37,60.83,69.91,62.64,71.40,64.19,73.01,65.20,75.50,65.70,76.12,67.44,77.08,68.39,77.46,69.21,77.87,70.67,78.33,71.62,78.48,72.17,78.84,73.78,80.37,76.54,81.80,77.36,81.79,78.12,81.64,79.23,81.65,80.26,81.73,81.02,81.96,81.11,82.39,81.36,82.76,81.74,82.71,82.05,82.30,82.51,82.43,84.75,83.67,85.55,84.17,86.61,85.06,86.52,85.30,86.93,85.65,87.04,85.36,87.57,85.77"
                }
            },
            ["Crimson Bodyguard"] = {
                {
                    MinLevel = 57,
                    MaxLevel = 58,
                    Classification = "Elite",
                    Movement = "Slow Patrol",
                    Notes = "Four accompany the Crimson Courier; charges, knocks back, and disarms",
                    Location = ".line Eastern Plaguelands,55.06,17.48,30.85,20.06,30.95,21.06,31.04,23.39,31.57,25.91,32.01,26.80,32.95,28.02,33.41,28.57,34.29,29.10,35.77,29.43,37.58,29.43,38.44,28.76,39.11,28.47,39.55,28.59,40.54,29.23,41.29,29.60,42.77,30.54,43.77,31.05,44.70,31.46,45.79,31.82,46.93,32.53,48.82,33.62,49.73,33.94,50.66,34.26,51.76,34.59,53.33,34.90,55.76,35.46,56.51,35.88,57.60,36.74,58.73,37.92,60.50,40.32,62.25,44.52,63.66,48.15,63.82,49.64,63.71,50.72,63.18,51.91,62.64,53.60,62.46,56.39,62.75,58.46,63.22,60.47,63.27,62.14,62.96,63.35,62.31,64.95,60.81,67.20,59.92,68.37,60.83,69.91,62.64,71.40,64.19,73.01,65.20,75.50,65.70,76.12,67.44,77.08,68.39,77.46,69.21,77.87,70.67,78.33,71.62,78.48,72.17,78.84,73.78,80.37,76.54,81.80,77.36,81.79,78.12,81.64,79.23,81.65,80.26,81.73,81.02,81.96,81.11,82.39,81.36,82.76,81.74,82.71,82.05,82.30,82.51,82.43,84.75,83.67,85.55,84.17,86.61,85.06,86.52,85.30,86.93,85.65,87.04,85.36,87.57,85.77"
                }
            },
            ["Mossflayer Scout"] = {
                {
                    MinLevel = 57,
                    MaxLevel = 58,
                    Classification = "Normal",
                    Movement = "Slow Patrol",
                    Notes = "Prematurely runs for help/aggros other mobs",
                    Location = ".line Eastern Plaguelands,69.46,19.72,69.83,19.39,70.31,18.60,70.88,18.83,71.69,18.87,71.82,18.39,72.66,18.56"
                }, {
                    MinLevel = 57,
                    MaxLevel = 58,
                    Classification = "Normal",
                    Movement = "Slow Patrol",
                    Notes = "Prematurely runs for help/aggros other mobs",
                    Location = ".line Eastern Plaguelands,70.07,15.50,69.73,16.16,69.56,17.04,69.11,17.94,68.90,19.82,68.88,20.70"
                }, {
                    MinLevel = 57,
                    MaxLevel = 58,
                    Classification = "Normal",
                    Movement = "Slow Patrol",
                    Notes = "Prematurely runs for help/aggros other mobs",
                    Location = ".line Eastern Plaguelands,69.30,19.71,68.77,20.12,68.38,21.13,67.08,21.52,66.60,21.41,65.18,21.74,64.78,21.79,64.31,22.10"
                }
            }
        },
        ['Feralas'] = {
            ["Edana Hatetalon"] = {
                {
                    MinLevel = 50,
                    MaxLevel = 50,
                    Classification = "Elite",
                    Movement = "Idle",
                    Notes = "Quest mob",
                    Location = ".goto Feralas,40.6,8.6"
                }
            },
            ["Sea Spray"] = {
                {
                    MinLevel = 47,
                    MaxLevel = 48,
                    Classification = "Normal",
                    Movement = "Idle",
                    Notes = "Geyser hits very hard, knocks far back, and slows",
                    Location = "The Forgotten Coast subzone (west Feralas)"
                }
            },
            ["Northspring Slayer"] = {
                {
                    MinLevel = 49,
                    MaxLevel = 50,
                    Classification = "Normal",
                    Movement = "Idle",
                    Notes = "Execute mobs",
                    Location = "Ruins of Ravenwind subzone (northwest Feralas)"
                }
            }
        },
        ['Hinterlands'] = {
            ["Gammerita"] = {
                {
                    MinLevel = 48,
                    MaxLevel = 48,
                    Classification = "Elite",
                    Movement = "Slow Patrol",
                    Notes = "Quest mob that patrols along the coast",
                    Location = ".line The Hinterlands,81.95,49.41,81.21,52.91,81.98,54.30,81.97,56.42,80.77,58.37,80.34,59.40,79.45,60.76,78.69,61.39,76.86,62.73,75.91,63.81,75.29,65.60,76.72,66.85,78.53,67.51,78.60,68.97,77.90,70.97,76.71,71.26,76.52,72.95,77.07,74.64"
                }
            },
            ["Retherokk the Berserker"] = {
                {
                    MinLevel = 48,
                    MaxLevel = 48,
                    Classification = "Rare",
                    Movement = "Slow Patrol",
                    Notes = "Short patrol path? Has multiple strong offensive abilities Enrage and Thrash",
                    Location = "waited around near mob but found no patrol path"
                }
            },
            ["Grimungous"] = {
                {
                    MinLevel = 50,
                    MaxLevel = 50,
                    Classification = "Rare Elite",
                    Movement = "Slow Patrol",
                    Notes = "Seems to patrol in Eastern Hinterlands",
                    Location = ".loop 30,The Hinterlands,70.26,52.47,69.32,52.28,68.77,51.89,68.54,51.59,68.24,50.31,68.05,48.59,67.21,48.03,66.21,47.91,65.82,48.76,65.17,48.43,64.31,47.29,63.88,48.42,64.20,49.38,64.45,50.15,64.73,51.15,64.90,51.56,65.49,51.70,65.75,52.88,65.76,53.56,65.81,54.12,65.34,54.90,65.47,56.27,65.80,57.20,66.91,57.14,67.93,57.70,68.40,58.99,68.55,59.85,69.30,60.49,70.78,59.00,71.59,58.63,72.21,58.77,72.49,58.93,72.90,58.34,73.00,57.08,73.38,56.03,74.22,55.21,75.03,55.45,75.41,55.23,75.99,55.04,76.24,53.76,76.54,52.72,77.21,51.26,77.00,50.46,76.34,49.67,75.28,49.38,74.45,49.44,74.00,50.40,73.21,50.76,72.93,52.85,72.50,53.47,72.06,53.30,71.66,53.05,71.61,52.84,71.03,53.21,70.26,52.47"
                }
            }
        },
        ['Mulgore'] = {
            ["Arra'chea"] = {
                {
                    MinLevel = 11,
                    MaxLevel = 11,
                    Classification = "Normal",
                    Movement = "Slow Patrol",
                    Notes = "High hp, has a stun",
                    Location = ".loop 25,Mulgore,50.58,24.63,50.08,23.19,49.29,19.68,49.15,18.53,49.22,18.33,49.08,17.15,49.10,16.36,49.24,15.43,49.54,14.74,50.35,13.48,50.57,13.02,50.94,12.51,51.82,11.83,52.13,11.88,52.61,12.50,52.83,13.10,53.16,15.01,53.54,15.61,53.64,16.07,54.48,19.77,54.09,21.27,54.05,21.43,53.96,22.60,54.09,23.39,54.96,26.06,55.23,28.06,55.19,30.82,55.15,31.14,54.96,31.83,54.83,32.06,54.48,32.26,53.35,32.25,53.06,32.21,52.14,31.43,52.29,30.24,52.38,30.15,52.06,27.92,51.41,26.28,51.09,26.00,51.00,25.61,50.58,24.63"
                }
            },
            ["Supervisor Fizsprocket "] = {
                {
                    MinLevel = 12,
                    MaxLevel = 12,
                    Classification = "Normal",
                    Movement = "Idle",
                    Notes = "easily double-pulled",
                    Location = ".goto Mulgore,64.6,43.6"
                }
            },
            ["Galak Centaur"] = {
                {
                    MinLevel = 8,
                    MaxLevel = 9,
                    Classification = "Normal",
                    Movement = "Slow Patrol",
                    Notes = "Double mob patrol in South-East Mulgore",
                    Location = ".loop 25,Mulgore,68.68,62.29,68.50,62.43,68.12,62.63,67.80,63.44,67.32,63.64,67.06,63.82,66.83,64.28,66.19,64.74,65.60,64.79,64.37,65.80,63.40,65.78,62.89,65.98,62.54,66.49,62.40,66.59"
                }, {
                    MinLevel = 8,
                    MaxLevel = 9,
                    Classification = "Normal",
                    Movement = "Slow Patrol",
                    Notes = "Double mob patrol in South-East Mulgore",
                    Location = ".loop 25,Mulgore,68.22,58.09,67.83,58.37,67.53,58.57,67.37,59.25,66.81,59.86,65.94,59.93,64.58,60.51,62.97,59.65,62.17,58.92,61.74,59.40,61.59,60.25,61.66,60.84,62.25,61.38"
                }
            },
            ["Galak Outrunner"] = {
                {
                    MinLevel = 9,
                    MaxLevel = 10,
                    Classification = "Normal",
                    Movement = "Slow Patrol",
                    Notes = "Double mob patrol in South-East Mulgore",
                    Location = ".loop 25,Mulgore,68.68,62.29,68.50,62.43,68.12,62.63,67.80,63.44,67.32,63.64,67.06,63.82,66.83,64.28,66.19,64.74,65.60,64.79,64.37,65.80,63.40,65.78,62.89,65.98,62.54,66.49,62.40,66.59"
                }, {
                    MinLevel = 9,
                    MaxLevel = 10,
                    Classification = "Normal",
                    Movement = "Slow Patrol",
                    Notes = "Double mob patrol in South-East Mulgore",
                    Location = ".loop 25,Mulgore,61.83,56.63,62.48,56.91,62.88,57.02,63.40,58.04,64.01,58.62,64.62,58.55,65.43,58.25,66.02,57.57,66.85,57.01"
                }
            }
        },
        ['Silithus'] = {
            ["Krellack"] = {
                {
                    MinLevel = 56,
                    MaxLevel = 56,
                    Classification = "Rare",
                    Movement = "Idle",
                    Notes = "'fatal sting' is an execute with a dot effect",
                    Location = ".goto Silithus,65.80,30.32"
                }
            },
            ["Rex Ashil"] = {
                {
                    MinLevel = 57,
                    MaxLevel = 57,
                    Classification = "Rare Elite",
                    Movement = "Slow Patrol",
                    Notes = "-75% armor debuff",
                    Location = ".line Silithus,46.39,22.42,46.77,22.19,46.96,23.19,47.40,23.84,48.01,24.22,48.10,24.87,47.44,25.70,47.43,26.41,47.66,26.81,47.41,27.51,46.83,27.18,46.25,27.81,46.11,28.15,46.25,28.68,46.05,28.95,45.64,28.97"
                }
            },
            ["Deathclasp"] = {
                {
                    MinLevel = 59,
                    MaxLevel = 59,
                    Classification = "Elite",
                    Movement = "Idle",
                    Notes = "8 second stun (poison, no dot)",
                    Location = ".goto Silithus,44.03,90.28"
                }
            },
            ["Zora"] = {
                {
                    MinLevel = 59,
                    MaxLevel = 59,
                    Classification = "Rare Elite",
                    Movement = "Idle",
                    Notes = "slowly patrols in a room full of wasps in hive'zora",
                    Location = "did not find"
                }
            },
            ["Twilight Keeper Mayna"] = {
                {
                    MinLevel = 60,
                    MaxLevel = 60,
                    Classification = "Normal",
                    Movement = "Slow Patrol",
                    Notes = "Fear, dot, mind flay in crowded camp",
                    Location = ".line Silithus,27.04,35.62,26.72,35.85,26.53,36.18,26.45,36.55,26.06,37.09"
                }
            },
            ["The Windreaver"] = {
                {
                    MinLevel = 60,
                    MaxLevel = 60,
                    Classification = "Elite",
                    Movement = "Slow Patrol",
                    Notes = "Many adds; chain lightning, shock, lightning cloud, cyclone",
                    Location = ".loop 30,Silithus,24.49,28.14,23.77,27.52,23.07,27.69,22.19,28.42,21.08,28.95,20.20,29.03,19.56,28.59,19.11,27.40,18.92,26.32,18.31,23.16,18.81,22.10,19.74,21.84,20.48,22.26,21.00,24.14,21.11,25.10,21.36,25.91,21.94,26.68,23.76,27.37,24.93,27.86,25.64,27.88,26.90,26.85,27.75,26.62,28.59,26.25,29.38,25.34,29.58,24.44,29.62,23.56,29.52,21.89,29.77,20.09,29.67,18.65,29.49,17.70,29.03,16.72,28.94,15.60,29.28,14.98,30.02,14.83,30.48,14.83,32.16,14.35,32.96,14.45,33.55,15.25,33.61,16.41,33.10,18.01,32.16,19.34,31.66,20.49,31.01,21.23,29.76,26.12,28.62,28.47,27.95,29.22,27.44,29.57,26.69,29.50,24.99,28.56,24.49,28.14"
                }
            },
            ["Twilight Prophet"] = {
                {
                    MinLevel = 60,
                    MaxLevel = 60,
                    Classification = "Elite",
                    Movement = "Slow Patrol",
                    Notes = "Multiple adds; fire nova, frost nova, chain lightning, fear",
                    Location = ".line Silithus,20.00,83.28,22.00,79.02,25.23,77.02,25.82,75.72,26.51,75.19,27.31,74.15,27.37,72.44,26.91,71.37,25.69,70.84,24.93,69.98,23.95,69.24,23.47,68.65,23.16,68.66,22.86,68.52"
                }
            },
            ["Twilight Marauder Morna"] = {
                {
                    MinLevel = 60,
                    MaxLevel = 60,
                    Classification = "Elite",
                    Movement = "Slow Patrol",
                    Notes = "Has 4 adds; mortal strikes and piercing howls",
                    Location = ".line Silithus,52.35,11.78,52.94,14.46,55.73,17.11,58.41,20.25,60.31,23.07,63.43,27.06,63.35,30.35,71.46,35.72,72.84,37.69,72.09,39.87,70.25,42.40,68.64,45.43,65.44,46.71,63.89,47.98,63.38,50.82,61.29,53.70,60.40,55.68,59.69,56.33,58.17,58.60,56.24,62.76,50.85,66.67,49.42,69.19,37.12,84.28,34.63,84.32,30.18,88.44,30.11,89.76,29.05,93.14,28.92,95.64"
                }
            },
            ["Lapress"] = {
                {
                    MinLevel = 60,
                    MaxLevel = 60,
                    Classification = "Rare Elite",
                    Movement = "Slow Patrol",
                    Notes = "patrols hive'regal",
                    Location = ".line Silithus,53.62,71.45,54.32,72.97,55.26,72.34,55.78,71.57,57.79,72.33,58.59,72.01,59.13,71.83,59.06,73.16,58.14,74.38,56.63,75.37,55.94,74.85,55.17,75.03,54.26,75.62,52.08,75.65,51.53,76.53,51.63,77.70,52.24,78.70,54.02,78.93,54.51,78.05,55.08,77.41,56.37,77.13,57.07,76.16,58.23,76.49,58.98,76.06,60.62,75.76,60.70,77.18,60.18,78.22,59.70,78.68,58.83,78.27,57.94,78.32,57.31,78.78,57.09,79.89,56.38,77.10,57.06,76.14,58.32,76.49,59.08,76.01,60.61,75.76,60.69,77.32,59.94,78.58,59.58,78.67,58.82,78.27,57.95,78.32,57.26,78.83,57.07,79.93,56.25,80.46,56.20,81.38,54.48,81.52,53.65,81.26,53.03,80.18,52.26,79.94,51.51,79.81,51.32,81.48,51.47,83.31,52.41,82.66,54.33,83.12,54.62,84.08,54.06,85.52,53.83,86.55,53.82,87.80,54.54,88.98,55.31,89.77,56.05,90.31,56.48,90.99,57.35,91.27,58.16,91.51,58.43,91.44,58.92,91.08,59.10,90.24,60.16,87.53,60.54,87.50,61.27,85.15,61.52,83.93,61.00,83.46,60.84,81.40,60.87,79.75,61.07,79.16,61.78,78.48,62.38,78.26,62.91,78.78,64.60,80.16,64.85,81.57,64.43,82.79,63.78,83.84,61.92,85.70,61.79,87.60,62.53,88.52,63.04,89.85,62.92,91.19,63.08,92.97,62.97,93.80"
                }
            },
            ["Mistress Natalia Maralith"] = {
                {
                    MinLevel = 62,
                    MaxLevel = 62,
                    Classification = "Elite",
                    Movement = "Idle",
                    Notes = "Mind controls even if solo, then heals to full via reset (drags MCed players into many mobs deep in the cave)",
                    Location = "Hive'Regal subzone"
                }
            },
            ["Tortured Druid"] = {
                {
                    MinLevel = 55,
                    MaxLevel = 56,
                    Classification = "Normal",
                    Movement = "Idle",
                    Notes = "summons 2-3 silithid near death",
                    Location = "Southwind Village subzone"
                }
            },
            ["Tortured Sentinel"] = {
                {
                    MinLevel = 55,
                    MaxLevel = 56,
                    Classification = "Normal",
                    Movement = "Idle",
                    Notes = "summons 2-3 silithid near death",
                    Location = "Southwind Village subzone"
                }
            },
            ["Hive'Ashi Ambusher"] = {
                {
                    MinLevel = 56,
                    MaxLevel = 57,
                    Classification = "Normal",
                    Movement = "Idle",
                    Notes = "3-4 spawn upon entering/ascending the village tower",
                    Location = "Southwind Village subzone"
                }
            }
        },
        ['Silverpine Forest'] = {
            ["Dalaran Spellscribe"] = {
                {
                    MinLevel = 21,
                    MaxLevel = 21,
                    Classification = "Normal",
                    Movement = "Idle",
                    Notes = "Lvl 21 rare mob with Freeze, could encounter him during The Weaver quest)",
                    Location = "https://www.wowhead.com/classic/spell=5276/freeze"
                }
            },
            ["Son of Arugal"] = {
                {
                    MinLevel = 25,
                    MaxLevel = 25,
                    Classification = "Elite",
                    Movement = "Idle",
                    Notes = "",
                    Location = "47.41,33.49"
                }, {
                    MinLevel = 25,
                    MaxLevel = 25,
                    Classification = "Elite",
                    Movement = "Slow Patrol",
                    Notes = "Overleveled, runs fast, has a long-lasting but slow-proccing curse",
                    Location = ".loop 25,Silverpine Forest,43.89,28.86,42.82,29.52,42.19,30.35,41.44,30.19,39.82,29.59,39.30,28.28,39.27,26.85,37.25,24.08,36.82,22.82,36.48,19.83,35.58,18.49,35.30,17.53,35.74,16.74,36.79,16.69,37.64,15.48,38.24,15.12,38.86,15.38,39.18,14.22,40.30,15.98,40.64,18.01,41.48,19.46,42.13,21.46,43.13,20.33,43.85,19.82,44.21,18.71,44.31,17.63,44.67,17.06,45.63,17.21,46.51,17.95,48.79,21.40,49.47,24.67,48.70,25.50,48.01,25.58,47.56,24.96,46.61,25.54,46.26,28.26,46.01,28.84,43.89,28.86"
                }, {
                    MinLevel = 25,
                    MaxLevel = 25,
                    Classification = "Elite",
                    Movement = "Slow Patrol",
                    Notes = "Overleveled, runs fast, has a long-lasting but slow-proccing curse",
                    Location = ".line Silverpine Forest,53.31,76.14,52.20,75.40,51.81,74.45,50.69,73.88,50.24,75.07,49.63,75.44,48.00,75.32,47.31,77.46,46.58,76.60,45.61,76.13,45.04,76.42,44.37,77.40,44.14,78.56,44.71,79.39,45.25,79.43,45.47,78.94,45.14,80.98,45.64,81.75,45.46,82.95,46.30,83.17,46.95,83.77,47.13,83.77,48.23,84.60,49.15,84.27,49.79,83.60"
                }
            }
        },
        ['Stonetalon Mountains'] = {
            ["Besseleth "] = {
                {
                    MinLevel = 21,
                    MaxLevel = 21,
                    Classification = "Elite",
                    Movement = "Idle",
                    Notes = "Webs and poisons, nearby mobs can hyperspawn",
                    Location = ".goto Stonetalon Mountains,52.8,72.6"
                }
            },
            ["Taskmaster Whipfang "] = {
                {
                    MinLevel = 22,
                    MaxLevel = 22,
                    Classification = "Rare Elite",
                    Movement = "Idle",
                    Notes = "Fears, hits very fast",
                    Location = "did not find this mob"
                }
            },
            ["Foreman Rigge"] = {
                {
                    MinLevel = 24,
                    MaxLevel = 24,
                    Classification = "Rare Elite",
                    Movement = "Idle",
                    Notes = "Nets",
                    Location = "did not find this mob"
                }
            },
            ["Bloodfury Ripper"] = {
                {
                    MinLevel = 26,
                    MaxLevel = 26,
                    Classification = "Elite",
                    Movement = "Idle",
                    Notes = "Enrages",
                    Location = ".goto Stonetalon Mountains,30.77,61.75"
                }
            },
            ["Sorrow Wing"] = {
                {
                    MinLevel = 27,
                    MaxLevel = 27,
                    Classification = "Rare Elite",
                    Movement = "Slow Patrol",
                    Notes = "Drains health and mana, hits hard",
                    Location = ".loop 25 Stonetalon Mountains,48.89,33.99,49.32,33.98,49.68,34.31,50.39,33.80,50.64,34.28,50.88,34.62,51.44,34.65,51.67,35.01,51.33,36.29,50.88,36.81,49.79,36.91,49.53,36.44,49.24,36.21,49.04,36.32,48.29,36.35,48.13,35.71,48.12,35.21,47.79,35.13,47.49,35.40,47.04,35.99,46.85,35.31,46.70,35.49,46.70,35.03,47.07,34.55,47.30,34.22,47.44,33.70,47.69,33.39,48.07,33.35,48.53,33.64,48.89,33.99"
                }
            },
            ["Sister Riven"] = {
                {
                    MinLevel = 28,
                    MaxLevel = 28,
                    Classification = "Rare Elite",
                    Movement = "Idle",
                    Notes = "Patrols through Windshear Crag",
                    Location = "mob was not patting and was also in charred vale (not windshear)"
                }
            },
            ["Bloodfury Slayer"] = {
                {
                    MinLevel = 25,
                    MaxLevel = 26,
                    Classification = "Normal",
                    Movement = "Idle",
                    Notes = "Execute mobs",
                    Location = "Charred Vale subzone (southwest STM)"
                }
            },
            ["Bloodfury Roguefeather"] = {
                {
                    MinLevel = 25,
                    MaxLevel = 26,
                    Classification = "Normal",
                    Movement = "Idle",
                    Notes = "Thrash mobs",
                    Location = "Charred Vale subzone (southwest STM)"
                }
            }
        },
        ['Stranglethorn Vale'] = {
            ["Ana'thek the Cruel <Skullsplitter Chief>"] = {
                {
                    MinLevel = 45,
                    MaxLevel = 45,
                    Classification = "Normal",
                    Movement = "Slow Patrol",
                    Notes = "Quest mob that patrols occaccionally out of his cave. Has execute and 2 adds",
                    Location = ".line Stranglethorn Vale,44.25,44.95,44.52,44.45,44.69,44.06,45.04,43.04,45.27,42.45,45.52,41.69,45.68,41.29,46.07,40.99,46.64,40.90,46.98,40.87"
                }
            }
        },
        ['Swamp of Sorrows'] = {
            ["Lord Captain Wyrmak"] = {
                {
                    MinLevel = 45,
                    MaxLevel = 45,
                    Classification = "Rare Elite",
                    Movement = "Slow Patrol",
                    Notes = "Patrols around Sunken Temple lake",
                    Location = ".loop 25,Swamp of Sorrows,76.06,66.76,77.74,65.82,78.66,64.00,80.08,59.92,79.68,57.92,80.38,57.26,81.00,56.60,82.45,52.64,79.69,51.18,78.41,50.87,78.45,48.80,78.88,47.38,79.94,46.04,79.20,44.32,76.94,41.15,75.55,40.17,74.55,38.64,69.04,37.92,67.25,38.86,66.06,38.41,64.29,38.47,63.34,39.68,62.85,41.74"
                }
            },
            ["Somnus"] = {
                {
                    MinLevel = 60,
                    MaxLevel = 60,
                    Classification = "Elite",
                    Movement = "Slow Patrol",
                    Notes = "Patrols east of the Sunken Temple lake",
                    Location = ".loop 25,Swamp of Sorrows,78.02,60.41,77.21,63.47,76.49,65.57,76.20,65.95,76.18,67.63,76.45,69.93,82.06,72.29,83.61,70.89,84.58,69.16,85.28,66.42,85.33,64.40,87.00,57.71,86.28,55.28,85.22,54.43,85.75,52.05,85.35,49.94,84.25,47.87,83.26,47.49,81.29,46.04,80.24,45.49,78.78,47.78,78.41,49.96,78.71,53.66,78.84,55.21,79.37,57.55,78.67,59.27,78.02,60.41"
                }
            }
        },
        ['Tanaris'] = {
            ["Wastewander Assassin"] = {
                {
                    MinLevel = 44,
                    MaxLevel = 45,
                    Classification = "Normal",
                    Movement = "Idle",
                    Notes = "Executes",
                    Location = "Waterspring Field subzone (East-Central Tanaris)"
                }
            },
            ["Dunemaul Warlock"] = {
                {
                    MinLevel = 47,
                    MaxLevel = 48,
                    Classification = "Normal",
                    Movement = "Idle",
                    Notes = "Curse of Thorns, DoT, high damage shadow bolt",
                    Location = "Dunemaul Compound, Eastmoon Ruins, and Southmoon Ruins subzones"
                }
            },
            ["Centipaar Tunneler"] = {
                {
                    MinLevel = 47,
                    MaxLevel = 48,
                    Classification = "Normal",
                    Movement = "Idle",
                    Notes = "Spawns during Gadgetzan Water Survey",
                    Location = ".goto Tanaris,39.08,29.17"
                }
            },
            ["Glasshide Petrifier"] = {
                {
                    MinLevel = 48,
                    MaxLevel = 49,
                    Classification = "Normal",
                    Movement = "Idle",
                    Notes = "8 second stun, but cast can be outranged",
                    Location = "Southwestern corner of Tanaris"
                }
            },
            ["Centipaar Swarmer"] = {
                {
                    MinLevel = 49,
                    MaxLevel = 50,
                    Classification = "Normal",
                    Movement = "Idle",
                    Notes = "High lvl and summons beetles, scary for classes without aoe/thorns",
                    Location = "The Noxious Lair subzone (western Tanaris)"
                }
            },
            ["Hazzali Swarmer"] = {
                {
                    MinLevel = 49,
                    MaxLevel = 50,
                    Classification = "Normal",
                    Movement = "Idle",
                    Notes = "High lvl and summons beetles, scary for classes without aoe/thorns",
                    Location = "The Gaping Chasm subzone (southeastern Tanaris)"
                }
            }
        },
        ['The Barrens'] = {
            ["Dishu"] = {
                {
                    MinLevel = 13,
                    MaxLevel = 13,
                    Classification = "Rare",
                    Movement = "Idle",
                    Notes = "Summons 3 adds",
                    Location = ".goto The Barrens,50.99,20.68"
                }
            },
            ["Elder Mystic Razorsnout"] = {
                {
                    MinLevel = 15,
                    MaxLevel = 15,
                    Classification = "Rare Elite",
                    Movement = "Idle",
                    Notes = "Earthbind, Searing, Healing Totems + Healing Wave",
                    Location = ".goto The Barrens,58.60,27.7,30,0.goto The Barrens,59.24,24.37"
                }
            },
            ["Rathorian"] = {
                {
                    MinLevel = 15,
                    MaxLevel = 15,
                    Classification = "Rare",
                    Movement = "Idle",
                    Notes = "5 levels higher than subzone's other mobs",
                    Location = ".goto The Barrens,47.95,19.16"
                }
            },
            ["Kreenig Snarlsnout"] = {
                {
                    MinLevel = 15,
                    MaxLevel = 15,
                    Classification = "Normal",
                    Movement = "Slow Patrol",
                    Notes = "Easily double pulled",
                    Location = ".loop 20,The Barrens,58.58,27.42,58.48,27.37,58.37,27.22,58.59,26.97,58.73,27.15,58.75,27.24,58.63,27.40,58.58,27.42"
                }
            },
            ["Barak Kodobane"] = {
                {
                    MinLevel = 16,
                    MaxLevel = 16,
                    Classification = "Normal",
                    Movement = "Idle",
                    Notes = "High damage, nets, and likely double pull",
                    Location = ".goto The Barrens,42.81,23.53"
                }
            },
            ["Baron Longshore"] = {
                {
                    MinLevel = 16,
                    MaxLevel = 16,
                    Classification = "Normal",
                    Movement = "Idle",
                    Notes = "Easy to double pull",
                    Location = ".goto The Barrens,64.2,47.2,30,0.goto The Barrens,63.6,49.0,30,0.goto The Barrens,62.4,49.4"
                }
            },
            ["Overseer Glibby"] = {
                {
                    MinLevel = 16,
                    MaxLevel = 16,
                    Classification = "Normal",
                    Movement = "Slow Patrol",
                    Notes = "Patrols around the Sludge Ven",
                    Location = ".line The Barrens,57.39,8.53,57.47,8.42,57.49,8.03,57.35,7.69,57.19,7.54,57.08,7.40,56.89,7.36,56.65,7.35,56.55,7.43,56.54,7.49,56.41,7.58,56.06,7.59,55.96,7.65,55.77,7.87,55.75,8.17,55.77,8.44,55.82,8.61"
                }
            },
            ["Rocklance"] = {
                {
                    MinLevel = 17,
                    MaxLevel = 17,
                    Classification = "Rare Elite",
                    Movement = "Slow Patrol",
                    Notes = "Has adds, above average HP for elite level",
                    Location = ".loop 25,The Barrens,56.52,42.35,56.28,43.03,56.23,43.22,56.25,43.42,56.20,43.55,56.07,43.79,55.74,44.80,55.70,45.03,55.54,45.41,55.42,45.63,55.25,45.80,55.10,45.98,54.69,46.25,54.39,46.24,54.27,46.21,54.12,46.15,53.86,45.94,53.71,45.79,53.48,45.35,53.43,45.02,53.30,44.87,53.27,44.62,52.92,43.44,52.92,43.28,52.94,43.16,53.10,42.84,53.24,42.67,53.39,42.61,53.66,42.55,53.86,42.35,53.88,42.11,53.85,41.36,53.72,40.53,53.81,39.92,54.17,39.13,54.24,38.78,54.55,38.15,54.79,37.95,54.97,37.87,55.24,38.05,55.44,38.27,55.72,38.91,55.91,39.31,56.26,39.78,56.52,42.35"
                }
            },
            ["Sludge Beast"] = {
                {
                    MinLevel = 19,
                    MaxLevel = 19,
                    Classification = "Rare",
                    Movement = "Slow Patrol",
                    Notes = "Black Sludge (debuff move/attack speed)",
                    Location = ".loop 30,The Barrens,56.65,8.08,57.03,8.75,57.24,8.67,57.46,8.39,57.45,7.96,57.28,7.63,57.08,7.37,56.75,7.39,56.60,7.65,56.65,8.08"
                }
            },
            ["Hezrul Bloodmark"] = {
                {
                    MinLevel = 19,
                    MaxLevel = 19,
                    Classification = "Normal",
                    Movement = "Slow Patrol",
                    Notes = "Quest mob with 2 adds",
                    Location = ".loop 25,The Barrens,45.64,38.16,45.84,37.86,45.78,37.41,45.95,37.11,45.93,36.91,46.14,36.85,46.19,36.88,46.28,36.86,46.46,37.17,46.58,37.31,46.66,37.54,46.63,37.93,46.75,38.39,47.27,38.98,47.47,39.27,48.20,39.57,48.40,39.58,48.60,39.51,48.54,39.96,48.58,40.52,48.27,40.82,48.06,40.82,47.86,41.13,47.49,41.33,47.34,41.61,47.22,41.64,46.85,42.05,46.56,41.93,46.27,41.76,46.03,41.15,45.86,41.32,46.09,40.98,46.08,40.68,45.71,40.56,45.64,38.16"
                }
            },
            ["Sister Rathtalon"] = {
                {
                    MinLevel = 19,
                    MaxLevel = 19,
                    Classification = "Rare Elite",
                    Movement = "Slow Patrol",
                    Notes = "Thunder Cloud, Gust of Wind + patrols around stealth patrols",
                    Location = ".loop 25,The Barrens,38.75,13.59,38.86,13.10,39.00,12.68,39.27,12.58,39.48,12.85,39.56,13.22,39.52,13.52,39.30,13.90,39.05,14.45,38.55,14.94,38.30,15.37,38.25,15.94,38.32,16.09,38.54,16.30,38.78,16.31,38.99,16.21,39.11,16.11,39.32,15.55,39.59,15.33,40.10,15.15,40.58,15.68,40.69,15.91,40.69,16.33,40.62,16.66,40.35,17.01,40.15,17.03,39.83,16.90,39.36,16.14,39.18,15.80,39.05,15.25,38.82,14.89,38.75,13.59"
                }
            },
            ["Foreman Grills"] = {
                {
                    MinLevel = 19,
                    MaxLevel = 19,
                    Classification = "Rare",
                    Movement = "Slow Patrol",
                    Notes = "Hamstrings; high parry",
                    Location = ".line The Barrens,56.60,8.82,56.57,8.76,56.50,8.62,56.37,8.18,56.24,8.22,56.21,8.38,56.29,8.72,56.20,8.80,56.31,8.74,56.19,8.36,56.13,8.31,56.06,8.36,56.02,8.51,56.15,8.60,56.24,8.65,56.30,8.54,"
                }
            },
            ["Kuz"] = {
                {
                    MinLevel = 21,
                    MaxLevel = 21,
                    Classification = "Normal",
                    Movement = "Slow Patrol",
                    Notes = "Unexpected strong quest mob with fire blast burst and frost nova + casts",
                    Location = ".loop 25,The Barrens,45.13,79.22,44.89,78.87,44.63,78.77,44.45,78.68,43.80,79.44,43.65,79.10,43.49,78.94,43.07,78.98,42.65,79.88,42.82,80.22,43.22,80.48,43.48,80.49,43.59,80.90,43.78,81.38,44.13,81.45,44.84,80.94,45.46,80.93,45.53,80.47,45.11,80.31,44.31,80.68,44.30,80.58,43.99,80.37,43.91,80.43,43.90,80.48,44.00,80.03,44.42,79.85,44.85,79.87,45.06,79.74,45.13,79.22"
                }
            },
            ["Lakota'mani"] = {
                {
                    MinLevel = 22,
                    MaxLevel = 22,
                    Classification = "Normal",
                    Movement = "Idle",
                    Notes = "Higher level than its subzone",
                    Location = ".goto The Barrens,45.20,52.49"
                }
            },
            ["Swinegart Spearhide"] = {
                {
                    MinLevel = 22,
                    MaxLevel = 22,
                    Classification = "Rare Elite",
                    Movement = "Slow Patrol",
                    Notes = "Not sure if he has a small patrol path or not",
                    Location = "could not find this mob"
                }
            },
            ["Grand Foreman Puzik Gallywix"] = {
                {
                    MinLevel = 23,
                    MaxLevel = 23,
                    Classification = "Elite",
                    Movement = "Idle",
                    Notes = "Rogue class quest; do at 22+",
                    Location = ".goto The Barrens,54.75,5.59"
                }
            },
            ["Humar the Pridelord"] = {
                {
                    MinLevel = 23,
                    MaxLevel = 23,
                    Classification = "Rare Elite",
                    Movement = "Idle",
                    Notes = "increase phys damage taken debuff",
                    Location = ".goto The Barrens,62.03,33.31"
                }
            },
            ["Owatanka"] = {
                {
                    MinLevel = 24,
                    MaxLevel = 24,
                    Classification = "Normal",
                    Movement = "Idle",
                    Notes = "",
                    Location = ".goto The Barrens,49.54,59.13,30,0.goto The Barrens,44.91,62.55"
                }
            },
            ["Aean Swiftriver"] = {
                {
                    MinLevel = 25,
                    MaxLevel = 25,
                    Classification = "Rare Elite",
                    Movement = "Slow Patrol",
                    Notes = "Group of 25 rare elite mobs that patrols around middle/south Barrens",
                    Location = ".line The Barrens,43.72,40.26,43.73,40.56,43.84,40.87,43.72,41.39,44.26,42.03,44.58,42.46,44.65,42.81,44.94,43.19,45.01,43.71,45.33,44.30,45.62,44.68,45.87,44.83,46.06,45.35,46.37,45.90,46.63,46.39,47.06,46.66,47.29,47.02,47.43,47.36,47.80,47.88,48.20,48.19,48.60,48.21,48.89,48.10,49.55,48.10,49.80,48.47,49.93,48.77,50.15,49.20,50.54,49.27,50.76,49.51,51.17,49.87,51.17,50.72,50.93,51.42,50.81,52.44,50.73,53.12,50.51,53.94,50.22,55.33,49.67,56.13,48.98,57.14,48.65,58.74,48.65,60.07,48.53,62.84,48.18,64.42,47.47,65.75,47.10,67.20,46.65,68.11,46.93,69.52,46.56,71.21,46.78,73.07,47.36,73.98,47.02,75.32,47.22,77.17"
                }
            },
            ["Bael'dun Officer"] = {
                {
                    MinLevel = 26,
                    MaxLevel = 26,
                    Classification = "Normal",
                    Movement = "Idle",
                    Notes = "Has a parry ability and also thrashes",
                    Location = "Bael Modan subzone"
                }
            },
            ["Razormane Geomancer"] = {
                {
                    MinLevel = 12,
                    MaxLevel = 13,
                    Classification = "Normal",
                    Movement = "Idle",
                    Notes = "High dps caster with Frost Armor, easily double pulled",
                    Location = ".loop 20,The Barrens,58.58,27.42,58.48,27.37,58.37,27.22,58.59,26.97,58.73,27.15,58.75,27.24,58.63,27.40,58.58,27.42"
                }
            },
            ["Razormane Mystic"] = {
                {
                    MinLevel = 13,
                    MaxLevel = 14,
                    Classification = "Normal",
                    Movement = "Idle",
                    Notes = "Healing mobs surrounding Kreenig Snarlsnout, easily double pulled",
                    Location = ".loop 20,The Barrens,58.58,27.42,58.48,27.37,58.37,27.22,58.59,26.97,58.73,27.15,58.75,27.24,58.63,27.40,58.58,27.42"
                }
            },
            ["Witchwing Slayer"] = {
                {
                    MinLevel = 16,
                    MaxLevel = 17,
                    Classification = "Normal",
                    Movement = "Idle",
                    Notes = "Executes",
                    Location = ".loop 25,The Barrens,38.75,13.59,38.86,13.10,39.00,12.68,39.27,12.58,39.48,12.85,39.56,13.22,39.52,13.52,39.30,13.90,39.05,14.45,38.55,14.94,38.30,15.37,38.25,15.94,38.32,16.09,38.54,16.30,38.78,16.31,38.99,16.21,39.11,16.11,39.32,15.55,39.59,15.33,40.10,15.15,40.58,15.68,40.69,15.91,40.69,16.33,40.62,16.66,40.35,17.01,40.15,17.03,39.83,16.90,39.36,16.14,39.18,15.80,39.05,15.25,38.82,14.89,38.75,13.59"
                }
            },
            ["Sunscale Scytheclaw"] = {
                {
                    MinLevel = 16,
                    MaxLevel = 18,
                    Classification = "Normal",
                    Movement = "Idle",
                    Notes = "Thrashes; double pull at Stolen Silver",
                    Location = ".goto The Barrens,58.03,53.87"
                }
            },
            ["Silithid Swarmer"] = {
                {
                    MinLevel = 21,
                    MaxLevel = 22,
                    Classification = "Normal",
                    Movement = "Idle",
                    Notes = "Summons many 1hp adds",
                    Location = "Field of Giants subzone S of Camp T"
                }
            }
        },
        ['The Barrens (Stagnant Oasis)'] = {
            ["Kolkar Pack Runner"] = {
                {
                    MinLevel = 14,
                    MaxLevel = 15,
                    Classification = "Normal",
                    Movement = "Fast Patrol",
                    Notes = "Has hyena pet at Stagnant Oasis",
                    Location = ".loop 25,The Barrens,53.70,40.25,53.64,39.47,53.34,39.40,53.28,39.83,53.18,40.25,53.29,40.53,53.26,40.86,53.33,41.02,53.47,41.18,53.80,41.01,54.09,40.53,54.57,40.68,54.69,40.84,54.59,39.95,54.28,39.80,54.01,39.83,53.70,40.25"
                }, {
                    MinLevel = 14,
                    MaxLevel = 15,
                    Classification = "Normal",
                    Movement = "Fast Patrol",
                    Notes = "Has hyena pet at Stagnant Oasis",
                    Location = ".loop 25,The Barrens,52.65,38.90,52.87,39.39,53.00,39.40,53.14,39.80,53.14,40.21,53.29,40.56,53.25,40.93,53.41,41.25,53.67,41.39,53.73,40.90,53.94,40.82,54.06,40.49,54.04,40.11,53.88,39.66,53.67,39.42,53.61,39.09,53.33,38.90,52.72,38.88"
                }, {
                    MinLevel = 14,
                    MaxLevel = 15,
                    Classification = "Normal",
                    Movement = "Fast Patrol",
                    Notes = "Has hyena pet at Stagnant Oasis",
                    Location = ".loop 25,The Barrens,56.92,40.67,56.71,40.68,56.60,40.85,56.57,41.44,56.79,41.63,56.94,41.48,57.02,41.80,57.28,42.00,57.40,41.96,57.52,42.13,57.57,42.31,57.33,41.92,57.62,41.49,57.68,41.03,57.54,40.88,57.31,40.78,57.07,40.67,56.92,40.67"
                }, {
                    MinLevel = 14,
                    MaxLevel = 15,
                    Classification = "Normal",
                    Movement = "Fast Patrol",
                    Notes = "Has hyena pet at Stagnant Oasis",
                    Location = ".loop 25,The Barrens,56.46,40.22,56.57,40.57,56.46,41.09,56.27,41.51,56.06,41.40,56.23,41.41,56.59,40.68,57.05,40.60,57.18,40.74,57.40,40.80,57.45,40.93,57.34,40.35,56.95,40.22,56.69,40.38,56.44,40.12,56.46,40.22"
                }, {
                    MinLevel = 14,
                    MaxLevel = 15,
                    Classification = "Normal",
                    Movement = "Fast Patrol",
                    Notes = "Has hyena pet at Stagnant Oasis",
                    Location = ".loop 25,The Barrens,55.95,46.21,56.13,45.97,56.08,45.80,55.93,45.56,55.79,45.27,55.60,45.35,55.33,45.85,55.37,46.18,55.28,46.67,55.50,47.39,56.00,47.61,56.43,47.47,56.63,47.00,56.67,46.60,56.56,46.25,56.20,46.34,55.95,46.21"
                }, {
                    MinLevel = 14,
                    MaxLevel = 15,
                    Classification = "Normal",
                    Movement = "Fast Patrol",
                    Notes = "Has hyena pet at Stagnant Oasis",
                    Location = ".loop 25,The Barrens,52.67,44.88,52.63,44.56,52.74,44.23,52.88,44.16,53.07,44.23,53.18,44.58,52.98,45.03,52.80,45.02,52.65,44.84"
                }, {
                    MinLevel = 14,
                    MaxLevel = 15,
                    Classification = "Normal",
                    Movement = "Fast Patrol",
                    Notes = "Has hyena pet at Stagnant Oasis",
                    Location = ".loop 25,The Barrens,53.03,44.85,53.04,45.09,53.20,45.37,53.48,45.37,53.75,45.11,53.98,44.68,54.02,44.37,53.78,44.10,53.09,43.76,52.42,44.34,52.32,45.10,52.57,45.54,52.92,45.29,53.03,44.85"
                }, {
                    MinLevel = 14,
                    MaxLevel = 15,
                    Classification = "Normal",
                    Movement = "Fast Patrol",
                    Notes = "Has hyena pet at Stagnant Oasis",
                    Location = ".loop 25,The Barrens,56.29,46.26,56.11,45.86,55.83,45.57,55.66,45.50,55.64,45.73,55.60,45.32,55.78,45.17,56.49,45.23,56.34,45.34,56.27,45.73,56.11,45.90,56.06,46.13,55.88,46.14,55.35,46.80,55.66,46.66,55.89,46.66,56.29,46.26"
                }
            }
        },
        ['Thousand Needles'] = {
            ["Arikara"] = {
                {
                    MinLevel = 28,
                    MaxLevel = 28,
                    Classification = "Elite",
                    Movement = "Idle",
                    Notes = "Adds around the mesa can hyperspawn",
                    Location = ".goto Thousand Needles,38.22,35.28"
                }
            },
            ["Enraged Panther"] = {
                {
                    MinLevel = 30,
                    MaxLevel = 30,
                    Classification = "Elite",
                    Movement = "Idle",
                    Notes = "Extremely high damage for its level",
                    Location = ".goto Thousand Needles,22.75,24.65"
                }
            },
            ["Rok'Alim the Pounder"] = {
                {
                    MinLevel = 30,
                    MaxLevel = 30,
                    Classification = "Elite",
                    Movement = "Idle",
                    Notes = "Elite that stuns",
                    Location = ".goto Thousand Needles,17.19,37.34"
                }
            },
            ["Steelsnap"] = {
                {
                    MinLevel = 30,
                    MaxLevel = 30,
                    Classification = "Normal",
                    Movement = "Slow Patrol",
                    Notes = "2 adds",
                    Location = ".loop 30,Thousand Needles,13.05,26.42,13.40,27.20,13.87,28.83,14.15,29.65,14.46,30.46,15.12,31.63,15.57,31.70,16.19,30.80,16.86,30.01,17.20,29.62,17.62,28.03,17.98,27.32,18.49,26.72,18.64,26.10,18.68,24.65,18.52,23.98,18.10,23.59,17.90,23.13,17.62,22.94,17.55,22.55,17.20,22.27,17.88,20.75,17.98,20.25,17.65,19.42,17.24,18.91,16.65,18.59,16.23,18.51,15.70,18.67,14.72,19.73,14.54,20.11,13.28,20.01,12.95,19.89,12.44,20.44,11.92,20.87,11.17,22.50,11.17,23.26,11.30,23.78,11.48,24.04,11.59,24.56,11.92,25.08,13.05,26.42"
                }
            },
            ["Grenka Bloodscreech"] = {
                {
                    MinLevel = 31,
                    MaxLevel = 31,
                    Classification = "Normal",
                    Movement = "Idle",
                    Notes = "Spawns with waves that AoE silence/cyclone",
                    Location = ".goto Thousand Needles,25.92,54.69"
                }
            },
            ["Achellios the Banished"] = {
                {
                    MinLevel = 31,
                    MaxLevel = 31,
                    Classification = "Rare",
                    Movement = "Fast Patrol",
                    Notes = "Gets close to Whitereach post; has adds, buffs them",
                    Location = ".loop 30,Thousand Needles,22.94,43.16,23.85,43.62,25.14,42.70,25.97,40.96,25.86,38.84,24.91,36.85,23.87,36.52,22.08,37.69,21.62,34.06,19.97,32.85,18.80,33.46,17.34,36.70,18.47,38.41,19.93,39.42,21.17,40.74,22.16,42.32,22.94,43.16"
                }
            },
            ["Heartrazor"] = {
                {
                    MinLevel = 32,
                    MaxLevel = 32,
                    Classification = "Rare Elite",
                    Movement = "Slow Patrol",
                    Notes = "Poison deals considerable damage",
                    Location = ".line Thousand Needles,15.45,40.02,15.58,40.55,15.67,41.06,15.98,41.43,16.19,41.42,16.33,41.56,16.53,41.46,17.01,41.54,17.62,40.66,18.20,41.13,18.13,41.73,18.19,42.07,17.93,42.52,17.52,42.60,16.99,41.91,17.01,41.54"
                }
            },
            ["Ironeye the Invincible"] = {
                {
                    MinLevel = 32,
                    MaxLevel = 32,
                    Classification = "Rare Elite",
                    Movement = "Slow Patrol",
                    Notes = "",
                    Location = ".loop 25,Thousand Needles,88.58,76.11,87.99,75.23,87.89,74.49,88.01,73.43,87.81,71.05,87.53,70.40,87.18,70.68,86.28,72.06,86.54,72.94,87.47,74.18,87.85,75.29,87.77,75.87,87.03,76.81,86.78,77.59,86.93,78.28,86.92,79.04,86.79,79.52,86.99,80.73,87.27,81.04,87.54,80.91,88.63,79.81,88.94,78.91,88.99,77.27,88.72,76.20,88.58,76.11"
                }
            },
            ["Vile Sting"] = {
                {
                    MinLevel = 34,
                    MaxLevel = 34,
                    Classification = "Rare Elite",
                    Movement = "Slow Patrol",
                    Notes = "",
                    Location = ".loop 25,Thousand Needles,69.86,64.43,70.49,63.62,70.97,63.43,71.45,63.63,71.48,64.19,71.15,65.20,71.15,65.86,71.74,66.12,72.14,66.13,72.56,66.70,72.27,67.50,72.15,67.72,71.92,68.91,71.94,69.58,72.51,70.25,72.89,71.01,72.94,71.26,72.51,71.98,71.92,72.62,71.54,73.21,71.29,73.52,71.41,73.70,71.52,73.71,71.27,74.50,71.40,75.72,72.74,75.70,73.13,74.62,73.13,74.18,72.89,73.48,72.41,72.96,71.56,72.51,71.23,72.58,70.69,71.29,70.50,70.58,70.33,69.62,70.46,69.24,70.35,68.54,70.00,68.03,69.69,66.71,69.68,65.37,69.86,64.43"
                }
            },
            ["Salt Flats Scavenger"] = {
                {
                    MinLevel = 30,
                    MaxLevel = 32,
                    Classification = "Normal",
                    Movement = "Idle",
                    Notes = "Executes",
                    Location = ".goto Thousand Needles,84.27,82.13,30,0.goto Thousand Needles,87.56,65.48"
                }
            },
            ["Silithid Searcher"] = {
                {
                    MinLevel = 32,
                    MaxLevel = 33,
                    Classification = "Normal",
                    Movement = "Idle",
                    Notes = "Massive social aggro radius/call for help",
                    Location = ".goto Thousand Needles,65.89,86.11,30,0.goto Thousand Needles,68.69,83.74,30,0.goto Thousand Needles,70.72,85.37,30,0.goto Thousand Needles,69.40,88.20,30,0.goto Thousand Needles,68.91,86.08"
                }
            },
            ["Salt Flats Vulture"] = {
                {
                    MinLevel = 32,
                    MaxLevel = 34,
                    Classification = "Normal",
                    Movement = "Idle",
                    Notes = "Executes",
                    Location = ".goto Thousand Needles,84.27,82.13,30,0.goto Thousand Needles,87.56,65.48"
                }
            },
            ["Silithid Hive"] = {
                {
                    MinLevel = 33,
                    MaxLevel = 34,
                    Classification = "Normal",
                    Movement = "Idle",
                    Notes = "Massive social aggro radius/call for help",
                    Location = ".goto Thousand Needles,65.89,86.11,30,0.goto Thousand Needles,68.69,83.74,30,0.goto Thousand Needles,70.72,85.37,30,0.goto Thousand Needles,69.40,88.20,30,0.goto Thousand Needles,68.91,86.08"
                }
            },
            ["Silithid Invader"] = {
                {
                    MinLevel = 34,
                    MaxLevel = 35,
                    Classification = "Normal",
                    Movement = "Idle",
                    Notes = "Massive social aggro radius/call for help",
                    Location = ".goto Thousand Needles,65.89,86.11,30,0.goto Thousand Needles,68.69,83.74,30,0.goto Thousand Needles,70.72,85.37,30,0.goto Thousand Needles,69.40,88.20,30,0.goto Thousand Needles,68.91,86.08"
                }
            }
        },
        ['Tirisfal Glades'] = {
            ["Sri'skulk"] = {
                {
                    MinLevel = 13,
                    MaxLevel = 13,
                    Classification = "Normal",
                    Movement = "Slow Patrol",
                    Notes = "lvl 13 rare spider with multiple poison dps abilities, south of SM",
                    Location = ".line Tirisfal Glades,84.26,48.91,84.62,49.57,84.78,50.30"
                }
            }
        },
        ['Un’Goro Crater'] = {
            ["Gruff"] = {
                {
                    MinLevel = 57,
                    MaxLevel = 57,
                    Classification = "Rare Elite",
                    Movement = "Idle",
                    Notes = "Not sure if he has a short patrol path or not",
                    Location = "does not appear to patrol"
                }
            },
            ["Baron Charr"] = {
                {
                    MinLevel = 58,
                    MaxLevel = 58,
                    Classification = "Elite",
                    Movement = "Slow Patrol",
                    Notes = "Elite with adds, patrols around Fire Plume Ridge",
                    Location = ".loop 30,Un'goro Crater,55.02,40.84,54.29,40.75,53.28,41.54,52.65,41.77,51.70,41.34,50.05,42.04,49.23,42.24,48.02,42.91,47.14,42.84,46.09,43.57,45.44,44.52,45.17,44.95,44.78,45.01,43.95,46.91,43.63,47.90,43.75,48.69,44.74,50.26,45.17,51.17,45.28,52.03,45.16,52.94,44.94,53.96,45.35,54.76,46.47,55.67,47.50,56.45,48.12,56.63,49.77,56.87,50.56,56.58,51.31,55.97,52.23,56.30,53.09,57.13,54.92,58.05,55.81,57.13,56.31,56.34,56.37,55.16,56.11,53.17,56.06,51.16,56.71,45.98,56.70,44.36,56.43,42.59,55.89,41.82,55.02,40.84"
                }
            },
            ["Plated Stegodon"] = {
                {
                    MinLevel = 52,
                    MaxLevel = 54,
                    Classification = "Elite",
                    Movement = "Idle",
                    Notes = "High armor, 5 sec stun",
                    Location = "Southwest Un'goro Crater; Terror Run subzone"
                }
            },
            ["Stegodon"] = {
                {
                    MinLevel = 53,
                    MaxLevel = 53,
                    Classification = "Elite",
                    Movement = "Idle",
                    Notes = "Charges, has 5 sec stun",
                    Location = "Southwest Un'goro Crater; Terror Run subzone"
                }
            },
            ["Spiked Stegodon"] = {
                {
                    MinLevel = 53,
                    MaxLevel = 54,
                    Classification = "Elite",
                    Movement = "Idle",
                    Notes = "Passive thorns, 5 sec stun",
                    Location = "Southwest Un'goro Crater; Terror Run subzone"
                }
            },
            ["Tyrant Devilsaur"] = {
                {
                    MinLevel = 54,
                    MaxLevel = 55,
                    Classification = "Elite",
                    Movement = "Fast Patrol",
                    Notes = "AoE Fear",
                    Location = ".line Un'goro Crater,57.37,23.89,59.71,28.76,60.41,28.49,63.04,25.96,64.67,26.25,66.24,27.37,67.66,25.84,69.71,26.20,70.35,28.52,70.15,30.43,69.32,30.86,68.58,32.16,67.35,31.50,66.03,31.83,65.66,33.07,65.84,34.85"
                }
            },
            ["Devilsaur"] = {
                {
                    MinLevel = 54,
                    MaxLevel = 55,
                    Classification = "Elite",
                    Movement = "Fast Patrol",
                    Notes = "Knockback",
                    Location = ".line Un'goro Crater,31.29,36.58,32.35,37.27,33.37,38.65,36.55,41.44,37.56,43.66,39.82,55.59,38.72,57.29,39.55,60.15,39.92,61.85,41.70,64.18"
                }, {
                    MinLevel = 54,
                    MaxLevel = 55,
                    Classification = "Elite",
                    Movement = "Fast Patrol",
                    Notes = "Knockback",
                    Location = ".line Un'goro Crater,62.59,59.21,63.41,59.30,64.01,60.17,64.73,60.23,65.87,59.21,66.89,58.10,69.59,57.31,71.13,51.60,71.77,50.20,72.75,49.60,73.72,49.25,74.33,46.66,75.75,44.95,75.12,43.14,75.28,40.91,74.40,39.86,74.46,38.65,73.69,37.87,74.31,36.36,74.35,33.06"
                }, {
                    MinLevel = 54,
                    MaxLevel = 55,
                    Classification = "Elite",
                    Movement = "Fast Patrol",
                    Notes = "Knockback",
                    Location = ".line Un'goro Crater,30.15,53.32,30.79,50.89,30.82,49.21,31.10,45.38,31.99,45.33,32.70,43.84,33.13,39.47,34.69,37.35,35.62,37.19,36.54,35.18,36.61,32.96,35.60,31.16,35.71,28.77,34.61,27.52,34.65,22.07"
                }, {
                    MinLevel = 54,
                    MaxLevel = 55,
                    Classification = "Elite",
                    Movement = "Fast Patrol",
                    Notes = "Knockback",
                    Location = ".line Un'goro Crater,56.55,33.92,55.84,36.22,57.56,40.04,59.44,44.54,56.71,47.42,57.32,52.52,59.83,57.24,59.06,60.14,57.34,63.74,57.65,67.31,59.59,69.83,57.86,73.60,59.04,76.36"
                }
            },
            ["Thunderstomp Stegodon"] = {
                {
                    MinLevel = 54,
                    MaxLevel = 55,
                    Classification = "Elite",
                    Movement = "Idle",
                    Notes = "Thunderclaps, has 5 sec stun",
                    Location = "Southwest Un'goro Crater; Terror Run subzone"
                }
            },
            ["Ironhide Devilsaur"] = {
                {
                    MinLevel = 54,
                    MaxLevel = 56,
                    Classification = "Elite",
                    Movement = "Fast Patrol",
                    Notes = "High armor, long stun",
                    Location = ".line Un'goro Crater,43.55,80.17,44.51,79.04,44.59,76.94,45.37,74.80,46.51,74.12,46.67,69.68,46.19,68.51,46.03,66.17,47.31,62.85,49.05,61.92,50.93,60.08,52.85,58.94,53.60,59.09,54.56,60.91,54.43,63.34,52.69,65.54,52.51,70.90,53.62,72.82,53.74,73.90"
                }
            },
            ["King Mosh"] = {
                {
                    MinLevel = 60,
                    MaxLevel = 60,
                    Classification = "Rare Elite",
                    Movement = "Idle",
                    Notes = "RECKLESSNESS, Aoe fear, aoe damage, bleed",
                    Location = ".goto Un'goro Crater,29.04,36.41"
                }
            }
        },
        ['Western Plaguelands'] = {
            ["Foulmane"] = {
                {
                    MinLevel = 52,
                    MaxLevel = 52,
                    Classification = "Rare",
                    Movement = "Slow Patrol",
                    Notes = "physical damage taken debuff, thrashes, bleeds",
                    Location = ".loop 20,Western Plaguelands,45.69,52.34,45.75,51.39,46.20,51.03,46.64,51.29,46.72,51.95,46.36,52.37,45.69,52.34"
                }
            },
            ["Cavalier Durgen"] = {
                {
                    MinLevel = 57,
                    MaxLevel = 57,
                    Classification = "Normal",
                    Movement = "Slow Patrol",
                    Notes = "Pats up and down the stairs, has a long HoJ",
                    Location = ".line Western Plaguelands,54.39,23.70,54.58,23.55,54.63,23.02,54.97,22.70,55.33,22.89,55.43,23.21,55.40,23.75,55.16,24.07,54.82,24.03,54.65,23.83,54.53,24.03,54.67,23.68,54.77,23.60,54.81,23.23,55.12,23.08,55.24,23.38,55.15,23.67,54.90,23.68"
                }
            },
            ["Scarlet Executioner"] = {
                {
                    MinLevel = 60,
                    MaxLevel = 60,
                    Classification = "Rare Elite",
                    Movement = "Fast Patrol",
                    Notes = "Enrages, high level, runs up/down the tower stairs",
                    Location = ".line Western Plaguelands,45.78,18.66,45.99,18.62,45.88,18.90,45.63,18.87,45.53,18.53,45.66,18.28,45.91,18.36,45.95,18.64,45.82,18.89,45.65,18.78,45.60,18.52,45.76,18.37,45.82,18.45,45.70,18.80,45.60,18.58,45.69,18.36,45.91,18.44,45.92,18.75,45.81,18.85,45.70,18.80"
                }
            },
            ["High Protector Lorik"] = {
                {
                    MinLevel = 61,
                    MaxLevel = 61,
                    Classification = "Elite",
                    Movement = "Slow Patrol",
                    Notes = "Hits hard, divine shields, heals, and has a ~20yd knockback/shock",
                    Location = ".loop 25,Western Plaguelands,44.95,17.71,44.53,17.63,44.27,18.14,44.30,18.64,44.27,19.08,43.38,17.76,43.18,17.73,43.39,15.92,42.94,15.54,43.41,15.90,44.09,15.79,44.35,16.31,44.05,15.64,43.98,15.08,44.12,14.60,43.85,14.22,43.82,13.76,43.98,13.67,43.82,13.76,43.85,14.22,44.15,14.51,45.49,14.46,45.41,13.78,45.56,13.19,45.44,13.68,45.60,14.62,45.82,14.89,46.10,14.91,46.08,15.23,46.69,16.21,46.65,16.68,46.65,17.67,46.32,17.21,47.00,18.15,47.40,18.93,47.44,19.35,47.24,20.52,46.26,21.23,45.93,21.05,45.00,20.00,44.08,20.01,45.00,20.00,44.47,19.25,44.29,18.67,44.26,18.15,44.55,17.68,44.70,17.58,44.95,17.71"
                }
            }
        },
        ['Winterspring'] = {
            ["Spellmaw"] = {
                {
                    MinLevel = 56,
                    MaxLevel = 56,
                    Classification = "Elite",
                    Movement = "Slow Patrol",
                    Notes = "patrols the mountain pass west of mazthoril. has a purge",
                    Location = ".loop 25,Winterspring,57.18,52.58,56.57,51.93,56.38,51.56,56.23,51.10,56.12,50.37,56.27,48.95,55.86,48.92,55.40,48.50,55.42,47.84,55.75,47.29,56.15,46.92,56.97,46.71,57.47,46.98,57.86,47.35,58.50,47.54,58.88,47.54,59.42,47.60,59.58,47.66,59.86,48.34,60.35,48.21,60.64,48.29,61.11,49.30,61.00,49.66,60.72,49.84,60.80,50.02,61.09,50.45,60.99,51.93,60.54,53.18,60.15,52.93,59.91,52.99,59.32,53.43,58.68,54.30,58.14,54.32,57.36,53.31,57.18,52.58"
                }
            },
            ["Ursius"] = {
                {
                    MinLevel = 56,
                    MaxLevel = 56,
                    Classification = "Elite",
                    Movement = "Slow Patrol",
                    Notes = "patrolling quest mob north of everlook; hits for 330+",
                    Location = ".line Winterspring,63.78,25.16,64.07,25.09,64.08,25.50,64.41,25.26,64.48,24.86,64.47,24.21,64.35,24.11,64.00,24.15,63.44,24.78,63.31,25.27,63.30,25.74,63.51,26.24,63.30,26.53,63.39,26.96,63.25,27.33,62.81,27.17,62.47,26.81,62.09,26.51,61.42,26.36,61.38,26.61,61.44,26.96,61.47,27.34,61.51,27.48,61.51,27.65,61.80,27.74,61.85,28.00,62.35,28.39,62.59,28.80,62.91,29.95,62.91,30.44,62.78,30.82,62.70,31.39,62.50,31.78,62.39,31.94,62.03,32.06,61.06,31.55,60.95,31.88,61.00,32.26,60.89,32.60,60.72,32.93,60.71,33.28,60.56,33.54,60.24,33.57,59.91,33.25,59.71,32.88,59.25,33.11,58.31,33.06,57.70,32.60,57.43,32.59,57.18,32.81,56.92,32.69,56.67,32.44,56.58,32.30,56.38,32.22,56.09,32.49"
                }
            },
            ["Winterfall Runner"] = {
                {
                    MinLevel = 57,
                    MaxLevel = 57,
                    Classification = "Normal",
                    Movement = "Slow Patrol",
                    Notes = "grouped with two other furbolg. ",
                    Location = ".line Winterspring,28.07,35.29,28.02,36.46,28.32,37.14,28.47,37.92,28.53,39.39,28.80,39.76,29.32,40.86,29.91,42.27,30.44,42.54,31.65,42.44,32.60,42.17,33.59,41.99,34.67,41.91,36.04,42.16,38.21,41.98,40.23,40.75,42.32,39.97,44.29,39.90,46.45,39.66,48.38,38.86,49.19,38.15,49.35,37.79,49.65,37.59,50.57,36.63,51.67,36.21,52.25,35.75,52.75,35.30,53.46,34.27,53.75,33.38,53.93,32.50,53.97,31.32,54.60,30.91,55.51,30.05,57.14,29.72,58.07,28.93,58.74,27.94,59.01,26.99,59.24,26.48,60.37,25.02,60.62,24.75,61.11,24.44,61.29,24.35,61.92,23.82,62.34,23.92,62.37,24.95,62.21,25.30,62.60,25.99,63.04,26.55,63.50,27.81,63.95,28.34,64.12,28.94,64.10,30.84,64.21,31.40,64.97,33.08,65.44,33.48,66.44,33.71,66.63,33.93,66.80,34.47,66.87,34.87,66.97,35.22,67.53,37.01,68.12,37.76,68.65,38.20,68.76,38.13,68.94,37.84,69.29,38.40,69.61,38.29"
                }
            },
            ["Brumeran"] = {
                {
                    MinLevel = 58,
                    MaxLevel = 58,
                    Classification = "Elite",
                    Movement = "Slow Patrol",
                    Notes = "patrols mostly south of mazthoril; enrages and uses ice armor",
                    Location = ".line Winterspring,54.74,45.75,54.98,46.46,55.00,47.48,55.34,48.57,56.01,48.99,56.25,50.01,56.37,50.93,56.60,52.04,56.93,52.43,57.19,52.90,57.85,53.42,58.33,53.96,58.66,54.20,59.56,54.60,60.58,55.48,61.55,56.52,62.23,56.86,62.55,57.91,61.88,59.55,61.42,60.12,60.93,60.42,60.51,61.04,59.98,61.46,59.53,61.60,58.89,62.24,58.84,62.86"
                }
            },
            ["Azurous"] = {
                {
                    MinLevel = 59,
                    MaxLevel = 59,
                    Classification = "Rare Elite",
                    Movement = "Slow Patrol",
                    Notes = "patrols east of mazthoril",
                    Location = ".line Winterspring,54.54,45.52,54.79,45.82,54.96,46.67,55.00,47.49,55.21,48.01,55.42,48.03,55.68,47.58,55.84,46.81,55.89,46.33,56.10,45.97,56.55,45.85,56.99,45.83,57.34,45.26,57.59,44.47,57.84,44.01,58.27,43.79,58.72,44.01,59.28,43.84,59.82,42.37,60.13,41.83,61.16,41.41,61.52,41.23,62.04,41.19,62.46,41.39,62.94,41.89,63.46,41.85,63.83,41.67,64.01,41.68,64.28,42.30,64.66,42.77,65.07,42.95,65.51,43.33,65.88,43.74,66.24,44.28,66.56,44.90,66.61,45.65,66.62,47.67,66.63,48.77,66.87,49.68,66.35,51.25,66.26,52.16,66.80,53.98"
                }
            },
            ["Princess Tempestria"] = {
                {
                    MinLevel = 60,
                    MaxLevel = 60,
                    Classification = "Elite",
                    Movement = "Slow Patrol",
                    Notes = "spawns every couple days at lake kel'theril. immune to banish; patrols in a large group",
                    Location = ".loop 25,Winterspring,54.18,43.11,54.79,42.41,54.94,42.04,54.83,41.57,54.54,41.03,53.82,40.79,52.37,42.05,51.84,42.21,51.47,42.77,51.80,43.37,52.21,43.67,54.18,43.11"
                }
            }
        }
    }
}

addon.dangerousMobs = dangerousMobs[_G.UnitFactionGroup("player")]
