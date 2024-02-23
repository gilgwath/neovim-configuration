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

require("lazy").setup(plugins, opts)


local plugin_specs = {

}

-- configuration for lazy itself.
local lazy_opts = {
  ui = {
    border = "rounded",
    title = "Plugin Manager",
    title_pos = "center",
  },
}

-- loading the above configuration
require("lazy").setup(plugin_specs, lazy_opts)
