local ls = require("luasnip") --{{{
vim.cmd([[command! LuaSnipEdit :lua require("luasnip.loaders.from_lua").edit_snippet_files()]]) --}}}
vim.keymap.set({ "i", "s" }, "<c-l>", function()
  if ls.jumpable(1) then
    ls.jump(1)
  end
end, { silent = true })
vim.keymap.set({ "i", "s" }, "<c-h>", function()
  if ls.jumpable(-1) then
    ls.jump(-1)
  end
end, { silent = true })
vim.keymap.set({ "i", "s" }, "<a-l>", function()
  if ls.choice_active() then
    ls.change_choice(1)
  else
    local keys = vim.api.nvim_replace_termcodes("<ESC>l", true, false, true)
    vim.api.nvim_feedkeys(keys, "m", false)
    -- vim.cmd.stopinsert()
  end
end)
vim.keymap.set({ "i", "s" }, "<a-h>", function()
  if ls.choice_active() then
    ls.change_choice(-1)
  else
    local keys = vim.api.nvim_replace_termcodes("<ESC>h", true, false, true)
    vim.api.nvim_feedkeys(keys, "m", false)
    -- vim.cmd.stopinsert()
  end
end)
return {
  {
    "L3MON4D3/LuaSnip",
    config = function()
      -- require("luasnip.loaders.from_vscode").lazy_load()
      require("luasnip.loaders.from_lua").load({ paths = "~/.config/nvim/LuaSnip" })
      require("luasnip").config.setup({ store_selection_keys = "<A-p>" })

      -- Virtual Text{{{
      local types = require("luasnip.util.types")
      ls.config.set_config({
        history = true, --keep around last snippet local to jump back
        updateevents = "TextChanged,TextChangedI", --update changes as you type
        enable_autosnippets = true,
        ext_opts = {
          -- choiceNode will appear a hint
          [types.choiceNode] = {
            active = { virt_text = { { "●", "Orange" } }, hl_mode = "combine" },
          },
          -- [types.insertNode] = {
          -- 	active = {
          -- 		virt_text = { { "●", "violet" } },
          -- 	},
          -- },
        },
      })
    end,
  },
}
