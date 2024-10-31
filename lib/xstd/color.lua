--[[
    This module handles simple color handling.
]]--

local Color = Object:extend({
    red = 0,
    green = 0,
    blue = 0,
    alpha = 255
})

Color.new = function(self, r, g, b, a)
    a = a or 255
    self.red = r
    self.green = g
    self.blue = b
    self.alpha = a
end