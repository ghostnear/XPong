-- This module implements XOS's functions using Love2D's functions.
XOS.drawing = {}

XOS.drawing.drawRectangle = function(x, y, w, h)
    love.graphics.rectangle("fill", x, y, w, h)
end