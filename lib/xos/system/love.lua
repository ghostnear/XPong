-- This module replaces Love2D's native functions with XOS's.

function love.load()
    if XOS.onLoad ~= nil then
        XOS.onLoad()
    end
end

function love.update(dt)
    if XOS.update ~= nil then
        XOS.update(dt)
    end
end

function love.draw()
    if XOS.draw ~= nil then
        XOS.draw()
    end
end