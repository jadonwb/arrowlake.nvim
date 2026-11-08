local Config = require("arrowlake.config")
local Init = require("arrowlake")
local Util = require("arrowlake.util")

before_each(function()
  vim.o.background = "dark"
  vim.cmd.colorscheme("default")
  Config.setup()
end)

describe("colorscheme names", function()
  it("loads dark explicitly", function()
    vim.cmd.colorscheme("arrowlake-dark")
    assert.same("dark", vim.o.background)
    assert.same("arrowlake-dark", vim.g.colors_name)
  end)

  it("loads light explicitly", function()
    vim.cmd.colorscheme("arrowlake-light")
    assert.same("light", vim.o.background)
    assert.same("arrowlake-light", vim.g.colors_name)
  end)

  it("follows the background for the bare name", function()
    vim.o.background = "light"
    vim.cmd.colorscheme("arrowlake")
    assert.same("light", vim.o.background)
    assert.same("arrowlake-light", vim.g.colors_name)
  end)

  it("switches when the background changes", function()
    vim.cmd.colorscheme("arrowlake-dark")
    vim.o.background = "light"
    assert.same("light", vim.o.background)
    assert.same("arrowlake-light", vim.g.colors_name)
  end)
end)

describe("transparency", function()
  it("removes the Normal background and restores it", function()
    Init.load({ style = "dark" })
    local bg = vim.api.nvim_get_hl(0, { name = "Normal" }).bg
    assert.is_not_nil(bg)

    Init.toggle_transparency()
    assert.is_nil(vim.api.nvim_get_hl(0, { name = "Normal" }).bg)

    Init.toggle_transparency()
    assert.are.equal(bg, vim.api.nvim_get_hl(0, { name = "Normal" }).bg)
  end)
end)

describe("cache fingerprint", function()
  it("changes when a source file changes", function()
    local dir = vim.fn.tempname()
    vim.fn.mkdir(dir, "p")

    local file = dir .. "/one.lua"
    Util.write(file, "return 1\n")
    local first = Util.source_fingerprint(dir)
    assert.are.equal(64, #first)

    vim.uv.fs_utime(file, 1, 1)
    local second = Util.source_fingerprint(dir)
    assert.are_not.equal(first, second)
  end)
end)
