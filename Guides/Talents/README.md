# Talent Guides

`level` correspond to the levels starting at `#minLevel` and onward.

Talent Guide commands and syntax are much simpler than leveling guides.

## Grid layout

WoW talents are represented in a grid pattern, 4-wide by however many tall.

Even if a column doesn't have a talent for that row, it's still counted, for example:

| Hunter, Tab 1 | Col1         | Col2                          | Col3               | Col4                |
|---------------|--------------|-------------------------------|--------------------|---------------------|
| Row1          |              | Improved Aspect of the Hawk   | Endurance Training |                     |
| Row2          | Focused Fire | Improved Aspect of the Monkey | Thick Hide         | Improved Revive Pet |
| Row3          | Pathfinding  | Aspect Mastery                | Unleashed Fury     |                     |
| ...           |              |                               |                    |                     |
| Row10         |              | Kindred Spirits               |                    |                     |
| Row11         |              | Beast Mastery                 |                    |                     |

```text
#name Beast Mastery
#minlevel 22
level -- level 22 BM talent, Unleashed Fury Rank 2
    .talent 1,3,3,2

level -- level 23 BM talent, Unleashed Fury Rank 3
    .talent 1,3,3,3
```

## Commands

* `.talent TAB,ROW,COLUMN,RANK`
  * `TAB`: 1-3
  * `ROW`: 1-11
  * `COLUMN`: 1-4
  * `RANK`: 1-5
* `.pettalent TAB,ROW,COLUMN,RANK`
  * Pet talents points are earned every 4 levels starting at Level 20
  * Talent plan drawing is not supported
  * Pet talents are processed by available points, not `#minLevel` + `level`

## Tags

* `#name`
  * Name of guide
* `#next`
  * Automatically loads the next guide at `#maxLevel` or after final step
  * Not supported on `#pet` guides
* `#minLevel X`
  * Disables the guide if you're *below* X level
* `#maxLevel X`
  * Disables the guide if you're *above* X level
* `#pet FAMILY`
  * `FAMILY`: `Cunning`, `Ferocity`, or `Tenacity`
  * Only used for separate Hunter pet talent guides

## Optional talents

Because of complexity with talent processing, optional branches aren't supported. However, use a combination of guides to meet your needs.

For instance, Rogues and Warriors have weapon specific talents. To account for differences, use something similar to the following.

```lua
addon.talents.RegisterGuide([[
#name Arms - Early
#minLevel 10
#maxlevel 30
...
level -- Sweeping Strikes Rank 1
    .talent 1,5,2,1
]])

addon.talents.RegisterGuide([[
#name Arms - Axes
#next Arms - Mid
#minLevel 31
#maxLevel 35

level -- Poleaxe Specialization Rank 1
    .talent 1,5,1,1
...
level -- Poleaxe Specialization Rank 1
    .talent 1,5,1,5
]])

addon.talents.RegisterGuide([[
#name Arms - Maces
#next Arms - Mid
#minLevel 31
#maxLevel 35

level -- Mace Specialization Rank 1
    .talent 1,5,3,1
...
level -- Mace Specialization Rank 1
    .talent 1,5,3,5
]])

addon.talents.RegisterGuide([[
#name Arms - Sword
#next Arms - Mid
#minLevel 31
#maxLevel 35

level -- Sword Specialization Rank 1
    .talent 1,5,4,1
...
level -- Sword Specialization Rank 1
    .talent 1,5,4,5
]])

addon.talents.RegisterGuide([[
#name Arms - Mid
#minLevel 36
#maxlevel 70
level -- Trauma Rank 1
    .talent 1,6,4,1
...
]])
```
