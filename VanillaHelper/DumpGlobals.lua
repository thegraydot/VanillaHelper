SLASH_DumpGlobals1 = "/dumpglobals"
SLASH_DumpGlobals2 = "/dump"

local _G, _M = getfenv(0), {}
SavedVars = {};

SlashCmdList["DumpGlobals"] = function(msg, editbox)
    print("START")
    for k,v in pairs(_G) do
        -- print(type(v))
        if type(v) == "function" then
            SavedVars[k] = v
        end
            -- print("TABLE", k)
        -- print("KEY", k)
        -- print("VALUE" v)
            
    end
    print("FINISHED")
end
