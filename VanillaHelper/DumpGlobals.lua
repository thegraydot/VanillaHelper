-- VanillaHelper: /dump and /dumpglobals scan the global environment and record
-- all function-typed globals into SavedVars for offline inspection.
-- _G is assigned explicitly because vanilla 1.12 does not guarantee it exists.
local _G = getfenv(0)
SavedVars = {}

SLASH_DumpGlobals1 = "/dumpglobals"
SLASH_DumpGlobals2 = "/dump"

SlashCmdList["DumpGlobals"] = function()
    print("START")
    for k, v in pairs(_G) do
        if type(v) == "function" then
            SavedVars[k] = v
        end
    end
    print("FINISHED")
end
