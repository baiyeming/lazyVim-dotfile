local function configure()
  local dashboard = require("alpha.themes.dashboard")

  vim.api.nvim_set_hl(0, "NeovimDashboardLogo1", { fg = "#DA4939" })
  vim.api.nvim_set_hl(0, "NeovimDashboardLogo2", { fg = "#FF875F" })
  vim.api.nvim_set_hl(0, "NeovimDashboardLogo3", { fg = "#FFC66D" })
  vim.api.nvim_set_hl(0, "NeovimDashboardLogo4", { fg = "#00FF03" })
  vim.api.nvim_set_hl(0, "NeovimDashboardLogo5", { fg = "#00AFFF" })
  vim.api.nvim_set_hl(0, "NeovimDashboardLogo6", { fg = "#8800FF" })

  dashboard.section.header.type = "group"
  local function header_title()
    local datetime = os.date("%Y-%m-%d %H:%M:%S")
    return {
      {
        type = "text",
        val = "Welcome to Monica Nvim!",
        opts = { hl = "Title", position = "center" },
      },
      {
        type = "text",
        val = "",
        opts = { hl = "Comment", position = "center" },
      },
      {
        type = "text",
        val = "Enjoy your coding time! 󰒲 " .. datetime,
        opts = { hl = "Comment", position = "center" },
      },
    }
  end
  dashboard.section.header.val = header_title()
  -- dashboard.section.header.val = {
  --   {
  --     type = "text",
  --     val = "   ███╗   ██╗███████╗ ██████╗ ██╗   ██╗██╗███╗   ███╗ ",
  --     opts = { hl = "NeovimDashboardLogo1", shrink_margin = false, position = "center" },
  --   },
  --   {
  --     type = "text",
  --     val = "   ████╗  ██║██╔════╝██╔═══██╗██║   ██║██║████╗ ████║ ",
  --     opts = { hl = "NeovimDashboardLogo2", shrink_margin = false, position = "center" },
  --   },
  --   {
  --     type = "text",
  --     val = "   ██╔██╗ ██║█████╗  ██║   ██║██║   ██║██║██╔████╔██║ ",
  --     opts = { hl = "NeovimDashboardLogo3", shrink_margin = false, position = "center" },
  --   },
  --   {
  --     type = "text",
  --     val = "   ██║╚██╗██║██╔══╝  ██║   ██║╚██╗ ██╔╝██║██║╚██╔╝██║ ",
  --     opts = { hl = "NeovimDashboardLogo4", shrink_margin = false, position = "center" },
  --   },
  --   {
  --     type = "text",
  --     val = "   ██║ ╚████║███████╗╚██████╔╝ ╚████╔╝ ██║██║ ╚═╝ ██║ ",
  --     opts = { hl = "NeovimDashboardLogo5", shrink_margin = false, position = "center" },
  --   },
  --   {
  --     type = "text",
  --     val = "   ╚═╝  ╚═══╝╚══════╝ ╚═════╝   ╚═══╝  ╚═╝╚═╝     ╚═╝ ",
  --     opts = { hl = "NeovimDashboardLogo6", shrink_margin = false, position = "center" },
  --   },
  -- }

  dashboard.section.buttons.val = {
    dashboard.button("n", " " .. " New file", ":ene <BAR> startinsert <CR>"),
    dashboard.button("f", " " .. " Find file", ":Telescope find_files <CR>"),
    dashboard.button("g", "󰷾 " .. " Find text", ":Telescope live_grep <CR>"),
    dashboard.button("p", " " .. " Recent Project", "<Cmd>Telescope projects<CR>"),
    dashboard.button("r", "󰄉 " .. " Recent files", ":Telescope oldfiles <CR>"),
    dashboard.button("c", " " .. " LuaConfig", ":e $MYVIMRC <CR>"),
    dashboard.button("s", " " .. " Restore Session", [[:lua require("persistence").load()<CR>]]),
    dashboard.button("l", "󰒲 " .. " Lazy", ":Lazy<CR>"),
    dashboard.button("q", " " .. " Quit", ":qa<CR>"),
  }

  return dashboard.config
end
return {
  "goolord/alpha-nvim",
  dependencies = { "nvim-tree/nvim-web-devicons" },
  config = function()
    require("alpha").setup(configure())
  end,
}
