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
  * `ROW`: 1-4
  * `COLUMN`: 1-11
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
