# Function.lua
Implementation of JS Function constructor into Lua

# Usage
```lua
local Function = require 'Function'

-- Create a function from text
--
-- From arg[1] to arg[#arg - 1] passes a string
-- of function parameters name
--
-- arg[#arg] passes a string of the code
--
-- Returns a function if there's no error.
-- If there's error, return nil + the string
-- containing the error.
local fun, err = Function('x','y',[[
print('sum of x + y is', x + y)
]])

fun()
print(fun,err)
```
