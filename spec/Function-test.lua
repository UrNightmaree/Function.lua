local F = require 'Function'

describe('Function.lua',function ()
  it('should return "Hi!"',function()
    local fn = F[[
    return "Hi!"
    ]]

    assert.equals(fn(),'Hi!')
  end)

  it('should return sum of x + y',function ()
    local fn = F('x','y',[[
    return x + y
    ]])

    assert.equals(fn(1,2),3)
  end)

  it('should return nil + error', function ()
    local fn,err = F[[
    =
    ]]

    assert.falsy(fn)
    assert.truthy(err)
  end)

  it('should return nil',function ()
    local fn = F[[
    return nil
    ]]

    assert.falsy(fn())
  end)
end)
