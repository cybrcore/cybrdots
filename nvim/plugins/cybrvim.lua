-- # ---------------------------------------
-- # CYBRvim     neovim theme plugin (part of cybrland)
-- # Project:    https://github.com/scherrer-txt/cybrland
-- # Author:     scherrer-txt   |   License:     GPL-3.0
-- # Source:     ~/.config/nvim/lua/plugins/cybrvim.lua
-- # ---------------------------------------

return {
  name = "cybrvim",
  dir = vim.fn.stdpath("config") .. "/lua/cybrvim",
  lazy = false,
  priority = 1000,
  config = function()
    require("cybrvim").setup({})
    require("cybrvim").load()
  end,
}
