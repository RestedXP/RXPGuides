# Forever compatibility work

Target: World of Warcraft Forever beta **1.60.1.69913**, interface **16001**.
The installed `WowB.exe` version matches the reference source. Work started
from the installed RestedXP v4.11.7 package, which already contained some
Forever fixes and Forever leveling guides. This contribution is based on the official main branch.

## Reference material

API decisions were checked against Blizzard's shipped UI source in the
[Forever source mirror](https://github.com/Gethe/wow-ui-source/tree/forever),
downloaded on 2026-09-21. Particularly relevant sources:

- [Generated API documentation](https://github.com/Gethe/wow-ui-source/tree/forever/Interface/AddOns/Blizzard_APIDocumentationGenerated): QuestLog, Spell, SpellShared, SpellBook, MerchantFrame, SkillInfo, Bank, ActionBarFrame, UnitAura, FrameAPICooldown.
- [Spell-book migration wrappers](https://github.com/Gethe/wow-ui-source/blob/forever/Interface/AddOns/Blizzard_DeprecatedSpellBook/Deprecated_SpellBook.lua): player/pet bank enums and the different spell-knowledge semantics.
- [Forever bank implementation](https://github.com/Gethe/wow-ui-source/blob/forever/Interface/AddOns/Blizzard_UIPanels_Game/Camelot/BankFrame.lua): character-bank tab IDs and bank availability.
- [Taxi implementation](https://github.com/Gethe/wow-ui-source/blob/forever/Interface/AddOns/Blizzard_UIPanels_Game/Shared/TaxiFrame.lua): `TaxiGetNodeSlot` replaces destination-coordinate helpers for route legs.
- [Forever talent implementation](https://github.com/Gethe/wow-ui-source/blob/forever/Interface/AddOns/Blizzard_PlayerSpells/Camelot/ClassTalents/Blizzard_ClassTalentsFrame.lua): trait configurations and groups replace the Classic talent frame.

Build-matched game tables were downloaded from
[Wago's DB2 export](https://wago.tools/db2/TraitNode/csv?build=1.60.1.69913).
`Scripts/import_forever_traits.py` imports their identities, records SHA-256 hashes,
checks all 53 Warrior nodes against the user's live snapshot, and audits the 31
original plans. All nine class trees are distinguished by surviving spell IDs
and the client's SkillLineXTraitTree bindings. The compatibility map changes
API interpretation only; it contains no leveling order or replacement choices.

## Implemented changes

| Area | Changes |
| --- | --- |
| Loading | Added `RXPGuides_Camelot.toc`; updated alternate beta manifests; corrected mainline library selection; prevented duplicate Classic/Forever database loads; load unchanged Classic talent payloads only after the Forever API adapter; prioritize saved-guide restoration while the window is empty so the regular ticker cannot indefinitely defer it. |
| Shared compatibility | Explicit Forever detection, API availability checks, spell-book enum conversion, tuple adapters for quests/cooldowns/merchant items, public-value accessors, character-bank helpers. Modern Settings is preserved even if `C_SettingsUtil` is absent. |
| Core and professions | Correct spell-known APIs, legacy skill fallback spelling, highest learned riding rank selection, missing zone-ability spell data handling, guarded extra-action data. |
| Quest log | Correct structured quest completion and IDs, missing-entry handling, header-aware index validation, public tooltip IDs. |
| Guide instructions | Correct merchant quantities, action/spell cooldown tuple ordering, absent cooldown handling, reputation data checks, bank tab enumeration, scenario API capability selection, aura and cast-event restrictions. |
| Active items | Modern item cooldown API and duration-object spell cooldown display; legacy fallback retained. Restricted cooldowns are not used for guide arithmetic. |
| Settings | Safe recursive nested-profile copy, including shared tables/cycles; modern category opening; retain current XP rate when aura-derived bonuses are unavailable. |
| Maps | Guard secret positions/facing in addon navigation and embedded HereBeDragons; correct instance/scenario comparison. |
| Flights | Use route-leg node slots on Forever; retain old-client coordinate helpers; tolerate unavailable positions and absent route records. |
| Inventory | Correct container icon field to `iconFileID`; enumerate valid modern item buttons, avoid duplicate hooks and tolerate missing junk icons; skip uncached prices and locked items when selling. |
| Item upgrades | Scoring no longer requires Classic talent APIs on Forever; stable default/manual weight selection; modern item tooltip callbacks and displayed-item lookup; omit hidden comparison tooltip from callbacks to prevent recursion; preserve exact item variants during auction scoring. |
| Auctions | Modern bulk-snapshot backend with batched processing, filtering, item-data retries, cancellation, timeout and session snapshot reuse; modern frame overlay and native search handoff; legacy query backend retained. |
| Talent migration diagnostics | `/rxp talentdump` saves the active spec group's live trees, group IDs, node coordinates, entry IDs, spell IDs, names and rank limits to `RXPCData.foreverTalentSnapshot`. No talent changes are performed. |
| Forever talents | Separate backend reads unchanged legacy plans through a build-matched slot-to-spell API map, resolves live nodes/rank limits, displays upcoming levels, and stages valid ranks through Blizzard's talent frame. It reports incompatible steps without substituting talents. Native Apply remains separate. |
| Targeting/tips | Live Forever rejects automatic raid marking even outside combat, so automatic set/clear calls are disabled there; NPC buttons use secure /targetexact macro actions without invalid NPC unit attributes. Removed the destructive forbidden-popup hook. Forever proximity observes nameplates, target and mouseover instead of probing protected TargetUnit calls. Public health checks; resolve modern action-button slots; correct macro spell return; tolerate missing buttons. |
| Communications/tracker | Skip secret XP strings and inspection identifiers; use cached report level rather than treating a player name as a unit token. |
| Hearthstone | Guard restricted interrupted-cast payloads. |
| UI libraries | Forever uses mainline color-picker alpha semantics. Existing backdrop, resize, spell-drag and settings adapters were inspected. |
| Other modules/data | GuideLoader, Themes, Help, locale files, UI V2 files, guide payloads and databases retained where no corresponding API change was found. Syntax checks include inactive client variants. |

## Verification

Run `python Scripts/verify_forever.py` with Python and `lupa` installed.

- All **407 Lua files** compile under Lua 5.1.
- Four Forever-compatible entry manifests each resolve **176 Lua loads**, with
  no missing script/include targets, duplicate Lua loads, or the obsolete Classic talent API module.
- Regression cases cover modern and legacy tuple adapters, player/pet spell
  banks, absent data, simulated secret values, bank tab IDs and availability,
  public aura extraction, nested profile copying, action-bar macros and taxi legs.
- Literal event registrations were compared with the target build's generated
  events. Auction registration selects the modern replication event or legacy list event.
- Modern auction regressions cover exact variants, lowest buyout, non-equipment
  and unusable-item filtering, multi-batch scans, stale callbacks, snapshot reuse,
  closed auction frames, missing item-data retries and request timeouts.
  Cancel/retry retains the pending server request for up to 60 seconds, avoiding
  duplicate replication calls; regressions verify response reuse and retry after
  a lost response. UI cancellation does not cancel a server request.
- Talent inventory regressions verify the active spec group, copied node/entry
  identities, saved snapshot and incomplete-data handling. The inventory does
  not enable the legacy plans or prove their compatibility.
  The export resides in the existing SettingsPanel.lua load path so `/reload`
  does not depend on discovering a newly added Lua file.
- Inventory regressions cover modern/legacy button enumeration, recycled invalid
  slots, duplicate hooks, absent junk icons, uncached prices and locked items.
- A user-exported Warrior tree from build 69913 contains 53 complete nodes.
  `Scripts/fixtures/forever-warrior-69913.json` retains only build/class/locale and
  static tree identities (no character/account identity or current allocations).
  All six bundled Warrior plans contain names that do not directly match this
  tree: Tactical Mastery, Weapon Specialization or Improved Battle Shout.
  The data also confirms moved talents and new spells, so Classic coordinates
  cannot be treated as a valid conversion by themselves.
- Both unchanged Warrior 10–30 plans resolve all 21 steps against that live fixture.
  Unchanged Mage AoE starter plans are also exercised; duplicate ranks in their
  source remain untouched. The contribution changes no files under Guides/. The user explicitly scoped this work to addon code, not guide edits.
  Preview regressions cover character-level limits, exhausted points, combat,
  inactive spec locks, conflicting allocations, changed rank limits and duplicate
  spell identities. Upcoming labels clear when plans change. These checks do not
  establish the plans' leveling optimality or prove live preview behavior.
- Optional-choice regression cases verify that the adapter never picks an
  alternative automatically, recognizes a manually selected alternative, and
  rejects unresolved choices. Incompatible-plan selection reports a reason.
  Guide level ranges and hardcore menu filtering remain in effect.
- Targeting regressions cover legacy public NPC marking and group preferences,
  no automatic SetRaidTarget calls on Forever, secure macro attributes on both
  button rows, preservation of Blizzard's popup definitions, and proximity polling
  without protected TargetUnit calls. Live tests confirmed SetRaidTarget is forbidden
  even outside combat; its popup crashed because the old hook deleted the dialog
  definition. The user confirmed button targeting and manual right-click marking; proximity still needs live verification.
- The native secure target action rejects NPC names at its UnitExists check.
  Buttons now clear the unit attribute and use the supported secure macro action
  with `/targetexact`. A routing test executing the build-matched Blizzard conversion
  function and macro handler reproduces the rejected old click and verifies that
  the corrected button reaches C_Macro.RunMacroText. The user confirmed target selection in-game.
- Saved-guide restoration tests simulate the regular update ticker running before
  the loader on every rendered frame, both with ready metadata and delayed embedded
  metadata. The saved step and step ID are preserved. Background parsing still
  defers on busy frames once a guide is active. Live intermittent-reload retest is pending.
- User confirmed an error-free reload after the Classic talent load fix.
  A subsequent delayed settings-copy error was reproduced from its source,
  corrected, and covered by the nested-profile regression. Its live retest is pending.
- Inventory comparison tooltips subsequently raised a missing `GetItem` error.
  Item scoring and quest tooltip fallback now use Blizzard's modern
  `TooltipUtil.GetDisplayedItem`, with a legacy method fallback. Regression cases
  cover comparison frames without `GetItem`, legacy frames, forbidden frames,
  and unavailable tooltip methods. Live hover verification remains pending.

`Scripts/audit_forever.py <source-checkout>` lists API names that may have
moved into namespaces. It is an inventory aid, not proof of incompatibility:
local aliases, feature guards, duplicate names and native globals require review.

## Remaining limits and required live checks

This is an API migration, not proof that every gameplay path works. Offline
tests cannot reproduce WoW's secure execution, taint, secret-value enforcement,
frame layouts, server quest state, or persistence across client restarts.

- **Guide content is outside scope.** The user requested addon updates only.
  The new backend loads original talent guides unchanged. Build-matched spell
  identities and rank limits differ for 27 of 31 plans; the backend reports
  incompatible steps rather than assigning replacement talents. The two Warrior
  starter plans and two Mage AoE starter plans retain valid identities/rank limits.
  Their content and leveling quality are not certified by the API migration.
  Live UI check: fully restart WoW, open talents, choose an existing plan in the
  RestedXP menu and inspect its labels/preview or compatibility message. Apply
  or undo staged points using Blizzard's controls.
- **Modern auction scanning is implemented but needs live validation.** At an
  auctioneer, open the RXPGuides button, run Search, cancel/retry, and select a
  result to View auctions in Blizzard's interface. The session reuses snapshots
  for 20 minutes. Server throttling may cause a scan to time out as cancelled.
  The new panel layout and server replication behavior have not been tested in-game.
- Combat-restricted health, identity, aura and cooldown data cannot drive
  automation or arithmetic. Client-supported cooldown display remains available.
- Automatic raid marking is unavailable through the tested Forever addon API;
  the Active Targets buttons now offer a manual right-click action through
  Blizzard's secure raidtarget handler. Left-click selects the NPC; right-click
  marks the current target if unmarked, using the relevant guide marker preference.
  The tooltip explains both actions. The user confirmed left-click targeting and right-click raid marking in-game.
  Restricted player health is unrelated
  to whether a public NPC can be identified and is not used as a targeting gate.
- Embedded quest routes, flight-time data and stat weights were not re-authored
  against changed Forever gameplay; the existing package's Forever guides remain.

Live checks still needed: allow the delayed settings snapshot to run, reopen
settings, log out/in to check persistence, accept/complete/turn in quests, inspect
quest reward and inventory tooltips, buy a stack from a merchant, use character
bank deposit/withdraw instructions, take a multi-leg flight, rotate the minimap,
and exercise guide steps in and out of combat. Report the first error with its
stack and triggering action. No claim of full module parity is made yet.
