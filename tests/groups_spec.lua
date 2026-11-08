local Groups = require("arrowlake.groups")

local core = { "base", "kinds", "semantic_tokens", "treesitter" }

local function colors(style)
  return require("arrowlake.colors").setup(style or "dark")
end

describe("group is valid", function()
  for name in vim.fs.dir("lua/arrowlake/groups") do
    name = name:match("(.+)%.lua$")
    if name and name ~= "init" and not vim.list_contains(core, name) then
      it(name .. " has an url", function()
        local group = Groups.get_group(name)
        assert.is_not_nil(group, group)
        assert.is_not_nil(group.url, group)
      end)

      it(name .. " is in the load list", function()
        assert.is_true(vim.list_contains(Groups.groups, name), name)
      end)
    end
  end

  for _, name in ipairs(Groups.groups) do
    it(name .. " exists", function()
      local ok = pcall(Groups.get_group, name)
      assert(ok, name)
    end)
  end
end)

describe("group setup", function()
  it("merges every configured group", function()
    local ret, names = Groups.setup(colors("dark"), { cache = false })
    assert.same(Groups.groups, names)
    assert.is_true(vim.tbl_count(ret) > 100)
    assert.is_not_nil(ret.Normal)
    assert.is_not_nil(ret.TreesitterContext)
  end)

  it("applies the configured transparency to Normal", function()
    local opaque = Groups.setup(colors("dark"), { cache = false, transparent = false })
    local transparent = Groups.setup(colors("dark"), { cache = false, transparent = true })
    assert.is_not_nil(opaque.Normal.bg)
    assert.are.equal("NONE", transparent.Normal.bg)
  end)
end)
