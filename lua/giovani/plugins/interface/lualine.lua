return{
  "nvim-lualine/lualine.nvim",
  dependecies={
    'nvim-tree/nvim-web-devicons',
  },
  --function to config the plugin
  config = function()

    local lazy_status = require("lazy.status")
    local n = require("lualine")

    n.setup({

  options = {
    icons_enabled = true,
    theme = 'auto',
    component_separators = { left = '', right = ''},
    section_separators = { left = '', right = ''},
    disabled_filetypes = {
      statusline = {},
      winbar = {},
    },
    ignore_focus = {},
    always_divide_middle = true,
    globalstatus = false,
    refresh = {
      statusline = 1000,
      tabline = 1000,
      winbar = 1000,
    }
  },
  sections = {
    lualine_a = {'mode'},
    lualine_c = {'filename'},
    lualine_b = {
                  {
                    lazy_status.updates,
                    cond = lazy_status.has_updates,
                    color = { fg = "#ff9e64" },
                  },
                },
    lualine_x = { 'filetype'},
    lualine_y = {'branch', 'diff', 'diagnostics'},
    lualine_z = {'location'}
  },
  inactive_sections = {
    lualine_a = {},
    lualine_b = {},
    lualine_c = {'filename'},
    lualine_x = {'location'},
    lualine_y = {},
    lualine_z = {}
  },
  tabline = {},
  winbar = {},
  inactive_winbar = {},
  extensions = {}
  })
  end
}
