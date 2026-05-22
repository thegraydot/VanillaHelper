-- VanillaHelper: /whichframe prints the name of the frame currently under the
-- mouse cursor. Run the command while hovering a frame to identify it.
SLASH_WhichFrame1 = "/whichframe"

SlashCmdList["WhichFrame"] = function()
    print(GetMouseFocus():GetName())
end
