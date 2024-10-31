require("conf.love")
require("lib.xos.love")
require("lib.xstd.all")

local D = XOS.drawing
local x = Object:extend({value = 5})

function XOS.onLoad()

end

function XOS.update(dt)
    x.value = x.value + 1
end

function XOS.draw()
    D.drawRectangle(x.value, 100, 10, 10)
end