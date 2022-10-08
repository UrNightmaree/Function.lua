package = "Function"
version = "1.0-1"
source = {
  url = "https://github.com/UrNightmaree/Function.lua/archive/v1.0.tar.gz",
  dir = 'Function.Lua-v1.0'
}
description = {
  summary = 'Implementation of JS Function constructor',
  description = [[
Implementation of JS Function constructor.

Usage can be found in the homepage]],

  homepage = "https://github.com/UrNightmaree/Function.lua",
  license = "MIT"
}
build = {
  type = "builtin",
  modules = {
    Function = "Function.lua"
  }
}
