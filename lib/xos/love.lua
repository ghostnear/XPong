XOS = {}

local currentDir = (...):match("(.-)[^%.]+$")

if BUILD_TYPE == "debug" then
    require(currentDir .. 'debug.love')
end
require(currentDir .. 'system.love')
require(currentDir .. 'drawing.love')