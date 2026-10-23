-- RouteBuilder: export one game's merged QuestieDB data (base data with its static corrections) as standalone Lua,
-- one entity per line, the same way QuestieDB's tools/export-forever.lua does for Forever.
-- Run from the QuestieDB folder:  <lua> <path to this file> <flavor> <output folder>
--   flavor: QuestieDB's name for it (Vanilla, TBC, Wrath, Cata, Mists)
-- Writes <flavor>QuestDB.lua, <flavor>NpcDB.lua, <flavor>ItemDB.lua and <flavor>ObjectDB.lua. Nothing in QuestieDB changes.
local name, out = arg[1], arg[2]
assert(name and out, "usage: export-flavor.lua <flavor> <output folder>")
local config = dofile("src/config.lua")
local lib = dofile("generator/lib.lua")
local inline = dofile("tools/export/inline.lua")
local flavor = assert(config.flavorByName[name], "unknown QuestieDB flavor: " .. name)
local loaded = dofile("generator/flavor.lua").load(flavor, nil, false)
local runtime = dofile("generator/runtime.lua")
local db = runtime.build()
runtime.loadCorrections(db, flavor)
local outputs = {}
for _, et in ipairs(config.entityTypes) do
  db.Corrections.ApplyStaticToEntities(et.name, loaded[et.name].entities, flavor, db.Corrections.OWNER)
  local path = out .. "/" .. name .. et.name .. "DB.lua"
  local source = inline.render(loaded[et.name], true)
  local decoded = assert(loadstring(source, "@" .. path))()
  assert(lib.deepEqual(loaded[et.name].entities, decoded), "Export round-trip failed: " .. et.name)
  outputs[#outputs + 1] = { path = path, source = source, count = lib.count(loaded[et.name].entities) }
end
for _, o in ipairs(outputs) do
  local f = assert(io.open(o.path, "wb")); f:write(o.source); f:close()
  print(string.format("%s: %d rows", o.path, o.count))
end
