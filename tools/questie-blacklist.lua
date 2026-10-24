-- Reads Questie's quest blacklist (Database/Corrections/QuestieQuestBlacklist.lua in the Questie addon) for one game and
-- writes the IDs of the quests it takes out, one per line. QuestieDB has the quest data but not this list, and without it
-- quests Blizzard removed (the old Stonetalon quests in Mists, test entries, Collector's Edition "Welcome!" quests) look real.
--
--   lua questie-blacklist.lua <QuestieQuestBlacklist.lua> <Era|Tbc|MoP> <out file>
--
-- The file runs in a closed environment that holds only the stand-ins it needs: no io, os or require.
-- Content phases count as all released (every phase-gated quest stays in), and "HIDE_ON_MAP" quests stay in too:
-- Questie only hides their markers, they are in the game.

local file, expansion, out = arg[1], arg[2], arg[3]
if not (file and expansion and out) then
  io.stderr:write("usage: lua questie-blacklist.lua <QuestieQuestBlacklist.lua> <Era|Tbc|MoP> <out file>\n")
  os.exit(2)
end

-- Questie's own numbering (Modules/Expansions.lua)
local Expansions = { Era = 1, Tbc = 2, Wotlk = 3, Cata = 4, MoP = 5 }
Expansions.Current = Expansions[expansion]
if not Expansions.Current then io.stderr:write("unknown expansion " .. expansion .. "\n"); os.exit(2) end

local phases = setmetatable({}, { __index = function() return 99 end })
local ContentPhases = setmetatable({ activePhases = setmetatable({}, { __index = function() return 99 end }) }, {
  __index = function(_, k)
    if type(k) == "string" and k:match("^Blacklist") then return function(list) return list end end
    return phases
  end })
local modules = { Expansions = Expansions, ContentPhases = ContentPhases }
local created
local env = {
  QuestieLoader = {
    CreateModule = function(_, name) created = {}; return created end,
    ImportModule = function(_, name) return modules[name] or setmetatable({}, { __index = function() return function() end end }) end,
  },
  -- every season or region switch off: the plain game
  Questie = setmetatable({ Debug = function() end }, { __index = function() return false end }),
  pairs = pairs, ipairs = ipairs, type = type, tostring = tostring, tonumber = tonumber, next = next, select = select,
  table = { insert = table.insert, remove = table.remove }, math = { floor = math.floor, max = math.max, min = math.min },
}

local src = assert(io.open(file, "rb")):read("*a")
local chunk = assert(loadstring(src, "QuestieQuestBlacklist"))
setfenv(chunk, env)
chunk()
assert(created and created.Load, "no QuestieQuestBlacklist:Load in " .. file)
local list = created:Load()

local ids = {}
for id, v in pairs(list) do if v == true then ids[#ids + 1] = id end end
table.sort(ids)
local f = assert(io.open(out, "wb"))
f:write("# Quests Questie's blacklist takes out for " .. expansion .. " (made by tools/questie-blacklist.lua)\n")
for _, id in ipairs(ids) do f:write(id, "\n") end
f:close()
print(("Questie blacklist: %d quests are not in the game for %s."):format(#ids, expansion))
