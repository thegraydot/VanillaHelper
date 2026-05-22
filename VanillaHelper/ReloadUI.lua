-- VanillaHelper: /reloadui, /reload and /rl trigger a full UI reload.
-- ConsoleExec is the vanilla equivalent of the later ReloadUI() API function.
SLASH_ReloadUI1 = "/reloadui"
SLASH_ReloadUI2 = "/reload"
SLASH_ReloadUI3 = "/rl"

SlashCmdList["ReloadUI"] = function()
    ConsoleExec("reloadui")
end
