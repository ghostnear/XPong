--[[
    This module handles creating extendable objects in a simple, Lua manner.
    Taken from knife.lua
]]--

local Object = {
    extend = function (self, defaults)
        -- Create the default metatable with our default values.
        defaults = defaults or {}
        local defaultMeta = { __index = defaults }

        -- Assign the functions of the class to the default metatable and return the result.
        return setmetatable(defaults, {
            __index = self,
            __call = function (_, ...)
                local instance = setmetatable({}, defaultMeta)
                return instance, instance:new(...)
            end
        })
    end,

    -- Default constructor should do nothing.
    new = function () end,
}

return Object