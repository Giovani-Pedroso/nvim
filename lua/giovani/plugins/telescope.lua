return{
  "nvim-telescope/telescope.nvim",
  dependecies = {"nvim-lua/plenary.nvim"},
  config = function()
    local n =  require("telescope.builtin")


    --keybinds
    local opts = { noremap = true, silent = true }
    local term_opts = { silent = true }
    local keymap = vim.api.nvim_set_keymap

    -- Find all files 
    keymap("n", "<leader>ff", ":Telescope find_files<CR>", opts)

    -- Find all files add in the git (will ignore the node moduls folder
    keymap("n", "<leader>fg", ":Telescope git_files<CR>", opts)

    -- Find word does not work and I don't find useful
    -- vim.keymap.set("n", "<leader>fw", function ()
    --   n.grep_string({search = vim.fn.input("Grep > ")})
    -- end)

    keymap("n", "<leader>fb", ":Telescope buffers<CR>", opts)
  end
}
