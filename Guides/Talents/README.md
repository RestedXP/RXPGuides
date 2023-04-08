# Talent Guides

WoW talents are represented in a grid pattern, 4-wide by however many tall.

Even if a column doesn't have a talent for that row, it's still counted.

## Commands

* `.talent`
* `.pettalent`
  * Pet talents are not dependant on player level

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
  * Where `FAMILY` is `Cunning`, `Ferocity`, `Tenacity`
  * Only used for separate Hunter pet talent guides
  * Talent points are earned every 4 levels starting at Level 20

## Creating new guides

## Making optional talents
