local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
	vim.fn.system({
		"git",
		"clone",
		"--filter=blob:none",
		"https://github.com/folke/lazy.nvim.git",
		"--branch=stable", -- latest stable release
		lazypath,
	})
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup({
	{ import = "giovani.plugins" },
	{ import = "giovani.plugins.lsp" },
	{ import = "giovani.plugins.interface" },
	{ import = "giovani.plugins.life-quality" },
	{ import = "giovani.plugins.essential" },
	{ import = "giovani.plugins.navegation" },
	{ import = "giovani.plugins.useless" },
	{ import = "giovani.plugins.editing" },
	checker = { enable = true, notify = false },
	change_detection = { notify = false },
})
