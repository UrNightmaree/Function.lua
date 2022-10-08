local L = require 'Lust'

local concat = table.concat

---@param ... string The function args and code
---@return function # The function from the code
local function Function(...)
  local args = {...}
  local f,e = load(L[[
  return function($farg)
    $fcode
  end
  ]]:gen{
    farg = concat(args,',',1,#args - 1),
    fcode = args[#args]
  })

  if not f and e then
    return nil,e
  end

  return f()
end

--[[
Construct a function. Return the function if there's no error.
If there's error, return nil + a string that tells the error.
]]
---@overload fun(...: string): function?, string?
local mt = setmetatable({},{
  __call = function(_,...)
    return Function(...)
  end
})

return mt
