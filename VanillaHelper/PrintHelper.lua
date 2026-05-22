-- VanillaHelper: replaces the removed stdlib print() with a chat frame equivalent.
-- The vanilla Lua sandbox strips os/io and the default print; this restores a
-- usable print() for all other helper scripts that load after this file.
function print(text)
	DEFAULT_CHAT_FRAME:AddMessage(text)
end
