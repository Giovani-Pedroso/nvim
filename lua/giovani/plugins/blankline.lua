return {
  "lukas-reineke/indent-blankline.nvim",
  config = function()
    local n = require("indent_blankline")

    n.setup {
        -- for example, context is off by default, use this to turn it on
        show_current_context = true,
        show_current_context_start = true,
    }
  end
}
