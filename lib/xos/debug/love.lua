--[[
    This file handles debugging on Love2D platforms.
    It is recommended that you have the following extensions installed in VSCode:
        - sumneko.lua
        - tomblind.local-lua-debugger-vscode
]]--

-- Make sure we are actually in debug mode.
if arg[2] == "debug" then
    require("lldebugger").start()
end

-- Replace Love2D's error handler with the extension's.
local love_errorhandler = love.errorhandler

function love.errorhandler(msg)
    if lldebugger then
        error(msg, 2)
    else
        return love_errorhandler(msg)
    end
end