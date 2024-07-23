-- @diagnostic disable: missing-fields
-- 代码补全 和 括号补齐
local kind_icons = {
  Text = "",
  Method = "m",
  Function = "",
  Constructor = "",
  Field = "",
  Variable = "",
  Class = "",
  Interface = "",
  Module = "",
  Property = "",
  Unit = "",
  Value = "",
  Enum = "",
  Keyword = "",
  Snippet = "",
  Color = "",
  File = "",
  Reference = "",
  Folder = "",
  EnumMember = "",
  Constant = "",
  Struct = "",
  Event = "",
  Operator = "",
  TypeParameter = "",
}

return {
  {
    "hrsh7th/nvim-cmp",
    event = { "BufReadPost", "BufNewFile" },
    dependencies = {
      "hrsh7th/cmp-nvim-lsp",
      "hrsh7th/cmp-buffer",
      "hrsh7th/cmp-path",
      "L3MON4D3/LuaSnip",
      "saadparwaiz1/cmp_luasnip",
      "rafamadriz/friendly-snippets",
      "onsails/lspkind.nvim",
      "windwp/nvim-ts-autotag",
      "windwp/nvim-autopairs",
    },
    config = function()
      local cmp_autopairs = require("nvim-autopairs.completion.cmp")
      local cmp = require("cmp")
      local luasnip = require("luasnip")
      local lspkind = require("lspkind")

      require("nvim-autopairs").setup()

      -- Integrate nvim-autopairs with cmp
      cmp.event:on("confirm_done", cmp_autopairs.on_confirm_done())

      -- Load snippets
      require("luasnip.loaders.from_vscode").lazy_load()

      cmp.setup({
        snippet = {
          expand = function(args)
            luasnip.lsp_expand(args.body)
          end,
        },
        window = {
          completion = cmp.config.window.bordered(),
          documentation = cmp.config.window.bordered(),
        },
        mapping = cmp.mapping.preset.insert({

          ["<C-k>"] = cmp.mapping.select_prev_item(), -- previous suggestion
          ["<C-j>"] = cmp.mapping.select_next_item(), -- next suggestion
          ["<tab>"] = cmp.mapping(function(fallback)
            if cmp.visible() then
              cmp.select_next_item()
            elseif luasnip.expand_or_jumpable() then
              luasnip.expand_or_jump()
            else
              fallback()
            end
          end, { "i", "s" }),
          ["<s-tab>"] = cmp.mapping(function(fallback)
            if cmp.visible() then
              cmp.select_prev_item()
            elseif luasnip.jumpable(-1) then
              luasnip.jump(-1)
            else
              fallback()
            end
          end, { "i", "s" }),
          ["<C-u>"] = cmp.mapping.scroll_docs(4), -- scroll up preview
          ["<C-d>"] = cmp.mapping.scroll_docs(-4), -- scroll down preview
          ["<C-Space>"] = cmp.mapping.complete({}), -- show completion suggestions
          ["<C-c>"] = cmp.mapping.abort(), -- close completion window
          ["<CR>"] = cmp.mapping.confirm({ select = true }), -- select suggestion
        }),
        -- sources for autocompletion
        sources = cmp.config.sources({
          { name = "nvim_lsp" }, -- lsp
          { name = "buffer", max_item_count = 5 }, -- text within current buffer
          { name = "path", max_item_count = 3 }, -- file system paths
          { name = "luasnip", max_item_count = 3 }, -- snippets
        }),
        -- Enable pictogram icons for lsp/autocompletion
        formatting = {
          fields = { "kind", "abbr", "menu" },
          format = function(entry, vim_item)
            -- Kind icons
            vim_item.kind = string.format("%s", kind_icons[vim_item.kind])
            -- vim_item.kind = string.format('%s %s', kind_icons[vim_item.kind], vim_item.kind) -- This concatonates the icons with the name of the item kind
            vim_item.menu = ({
              -- copilot = "[Copilot]",
              luasnip = "LuaSnip",
              nvim_lua = "[NVim Lua]",
              nvim_lsp = "[LSP]",
              buffer = "[Buffer]",
              path = "[Path]",
            })[entry.source.name]
            return vim_item
          end,
        },
        -- format
        confirm_opts = {
          behavior = cmp.ConfirmBehavior.Replace,
          select = false,
        },
        experimental = {

          ghost_text = true,
        },
      })
    end,
  },
}
