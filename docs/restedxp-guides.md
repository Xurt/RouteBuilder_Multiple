# How RestedXP lays out its guides

RestedXP ships one `Guides` folder for every game it supports. This is what is in it, and what RouteBuilder
takes from it. The `rxp` folder in this repository is a copy of it.

## Which files a game loads

The addon's `.toc` loads one list per game; each list is an XML file in `Guides` naming the guide files:

| Game | List | Main leveling files |
|---|---|---|
| Classic Era | `GuideList-classic.xml` | `Classic-Horde-*.lua`, `Classic-Alliance-*.lua`, `Era.lua` (20-60) |
| TBC | `GuideList-tbc.xml` | `tbc/*.lua`, plus the Classic files |
| Mists of Pandaria | `GuideList-mop.xml` | `cata/*.lua` (1-25), `mop/*.lua` |
| Wrath | `GuideList.xml` | the `RestedXP Horde/Alliance ...` files at the top of `Guides` |
| Forever | `GuideList-forever.xml` | the `forever` folder |

So a file can be loaded by several games (the Classic files are in the TBC list too), and files at the top of
the folder are not all for the same game.

## What a guide says about itself

Each `RXPGuides.RegisterGuide([[ ... ]])` block is one guide. The lines above its first `step` say who it is for:

| Line | Meaning |
|---|---|
| `#classic`, `#tbc`, `#mop` | The games it loads in. A guide with `#classic` and `#tbc` is used by both. |
| `<< Horde`, `<< Human Mage` | Who sees it. A race or class here makes it a route for those characters only. |
| `#group`, `#subgroup` | Where it is listed. `#group X << mop` gives a different group in that game. |
| `#name`, `#displayname` | Its name ("12-17 The Barrens"); the display name can differ by class. |
| `#next` | The guide loaded when this one ends. Several, with tags, pick by class or race. |
| `#defaultfor` | The characters it is offered to first (the starting zone for that race). |
| `#xprate <1.99` / `>1.99` | The normal experience rate, or the 2x rate (shorter routes that skip quests). |
| `#season 0,1` / `#season 2` | Classic Era and Hardcore, or Season of Discovery. |
| `#hardcore`, `#softcore` | Hardcore only (the "Survival" guides), or softcore only (routes that die on purpose). |

## How the leveling guides chain

A guide is not a zone: it is a leg of the route, named by its level range, and it goes wherever the route
goes ("17-22 Stonetalon/Barrens/Ashenvale"). `#next` links the legs, so the whole route is one chain per
faction, with branches for races and classes. For Classic Era, Horde:

    1-6 Durotar -> 6-10 Durotar -> 10-12 Durotar -> 12-17 The Barrens -> 17-22 Stonetalon/Barrens/Ashenvale
      -> 22-24 Hillsbrad -> 24-26 Southern Barrens -> 26-28 Ashenvale -> 28-30 Thousand Needles -> ... -> 59-60 Winterspring/Silithus

Undead and Tauren start in their own zones and join it; some take a side trip (Rogues, Orc Warlocks, Troll Mages
and Troll Priests go from Durotar to Tirisfal at 10-12). Levels 1-22 are in the `Classic-*` files and 20-60 in
`Era.lua`; the `SoD` folder holds Season of Discovery's own versions of the early guides. The 2x-rate guides (`1-7 Durotar`, `7-13 Durotar`, `13-20 The Barrens`) are a
second, shorter chain beside the first.

## What RouteBuilder does with them

RouteBuilder plans one zone at a time, so it reads every guide in the game's list and, for each zone, follows
the legs that are about that zone: those named after it, and any that do at least a fifth as many of its quests
as the busiest one, in order of their starting levels. Their order seeds the lock file; their training, vendor and
flight-path steps go in next to the same quests.

It passes over, and RxpToLock counts:

- guides for another game;
- Season of Discovery guides and the 2x-rate chain;
- hardcore-only (Survival) routes;
- guides only for one race and class (the AoE mage routes);
- anything that is not leveling: dungeon quests, professions, reputation, attunements, runes and books,
  dailies, farming, boosted-character and preparation guides.

## The Burning Crusade

`GuideList-tbc.xml` loads the TBC files (`tbc/`): the 1-60 legs rewritten for Blood Elves and Draenei, then
Outland 58-70 (`59-61 Hellfire Peninsula` to `69-70 Shadowmoon Valley`, with Aldor and Scryer versions). The
hardcore copies and the 58 boost guides are passed over, as for Classic Era.

## Mists of Pandaria

For Mists, levels 1-25 come from the Cataclysm-era starting zone guides (`cata/`), 25-60 from `RXP MoP 1-80`,
58-80 from `RXP MoP 60-80` (Outland and Northrend), then `80-85` and `85-90` (Pandaria). The Pandaren start is
`mop/N-Pandaren_The Wandering Isle.lua`. These guides give coordinates as map numbers (`.goto 1411,43.29,68.85`),
which RouteBuilder reads as well.

Most of the 60-90 guides are shells: a header (`#group RXP MoP 85-90 (A)`, `<< Alliance`) and a single step
with `#include RXP-Pandaria\85-86 The Jade Forest`. The guide it names sits in an internal group
(`RXP-Pandaria`, or `RXPGuides` for the Cataclysm zones) and holds both factions' steps, each tagged
`<< Alliance` or `<< Horde`. `Name@first-last` takes only the steps from the one with `#label first` to the one
with `#label last` (how `Dread Wastes` is cut into three parts). RouteBuilder fills the includes in before
reading a guide, and passes over the internal guides themselves, so every step is read once, in the order of
the faction's shell.

The Wandering Isle guide is marked `<< Pandaren !DK` rather than with a faction. A guide marked only with races
is normally one character's route and left out of a faction build; one whose races are everyone the zone's
quests are for (here, Pandaren) is followed.
