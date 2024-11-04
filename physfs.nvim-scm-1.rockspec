---@diagnostic disable: lowercase-global
rockspec_format = "3.0"
package = "physfs.nvim"
version = "scm-1"
source = {
  url = "git+https://github.com/pearagit/physfs.nvim.git",
}
description = {
  homepage = "https://github.com/pearagit/physfs.nvim",
  license = "No License",
  summary = "PhysicsFS bindings for Lua",
  detailed = "C bindings to Lua for PhysicsFS, a library to provide abstract access to various archives. See the github page for more information.",
}
dependencies = {
  "lua ~> 5.1",
}
external_dependencies = {
  PHYSFS = {
    header = "physfs.h",
  },
}
build = {
  type = "builtin",
  modules = {
    physfs = {
      sources = "src/physfs.c",
      libraries = { "physfs" },
      incdirs = { "$(PHYSFS_INCDIR)" },
      libdirs = { "$(PHYSFS_LIBDIR)" },
    },
  },
}
