local _, addon = ...

if addon.player.class ~= "PALADIN" or addon.game ~= "CATA" then return end

addon.talents.RegisterGuide([[
#name Retribution 10-85
#minLevel 10
#maxLevel 85

level -- Crusade
    .talent 3,1,2,1

level -- Crusade
    .talent 3,1,2,2

level -- Crusade
    .talent 3,1,2,3

level -- Improved Judgement
    .talent 3,1,3,1

level -- Improved Judgement
    .talent 3,1,3,2

level -- Pursuit of Justice
    .talent 3,2,4,1

level -- Pursuit of Justice
    .talent 3,2,4,2

level -- Rule of Law
    .talent 3,2,2,1

level -- Rule of Law
    .talent 3,2,2,2

level -- Rule of Law
    .talent 3,2,2,3

level -- Communion
    .talent 3,3,1,1

level -- The Art of War
    .talent 3,3,2,1

level -- The Art of War
    .talent 3,3,2,2

level -- The Art of War
    .talent 3,3,2,3

level -- Divine Storm
    .talent 3,3,4,1

level --Seals of Command
    .talent 3,4,3,1

level -- Sacred Shield
    .talent 3,4,1,1

level -- Sanctity of Battle
    .talent 3,4,2,1

level -- Sanctified Wrath
    .talent 3,4,4,1

level -- Sanctified Wrath
    .talent 3,4,4,2

level -- Divine Purpose
    .talent 3,5,3,1

level -- Divine Purpose
    .talent 3,5,3,2

level -- Repentance
    .talent 3,5,2,1

level -- Eye for an Eye
    .talent 3,1,1,1

level -- Eye for an Eye
    .talent 3,1,1,2

level -- Inquiry of Faith
    .talent 3,6,2,1

level -- Inquiry of Faith
    .talent 3,6,2,2

level -- Inquiry of Faith
    .talent 3,6,2,3

level -- Acts of Sacrifice
    .talent 3,6,3,1

level -- Acts of Sacrifice
    .talent 3,6,3,2

level -- Zealotry
    .talent 3,7,2,1

level -- Judgements of the Pure
    .talent 1,1,3,1

level -- Judgements of the Pure
    .talent 1,1,3,2

level -- Judgements of the Pure
    .talent 1,1,3,3

level -- Arbiter of the Light
    .talent 1,1,1,1

level -- Arbiter of the Light
    .talent 1,1,1,2

level -- Blazing Light
    .talent 1,2,3,1

level -- Blazing Light
    .talent 1,2,3,2

level -- Seals of the Pure
    .talent 2,1,2,1

level -- Seals of the Pure
    .talent 2,1,2,2

level -- Guardian's Favor
    .talent 3,2,1,1
]])
