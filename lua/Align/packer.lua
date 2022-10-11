local fn = vim.fn

-- Automatically install packer
local install_path = fn.stdpath('data').."\\site\\pack\\packer\\start\\packer.nvim"

if fn.empty(fn.glob(install_path)) > 0 then
    PACKER_BOOTSTRAP = fn.system {
        "git",
        "clone",
        "--depth",
        "1",
        "https://github.com/wbthomason/packer.nvim",
        install_path,
    }
    print("Installing packer. Close and reopen Neovim...")
    vim.cmd [[packadd packer.nvim]]
end

-- Autocommand that reloads Neovim whenever you save the plugins.lua file\
vim.cmd [[
    augroup packer_user_config
        autocmd!
        autocmd BufWritePost plugins.lua source <afile> | PackerSync
    augroup end
]]

-- Use a protected call so we don't error out on  first use
local status_ok, packer = pcall(require, "packer")
if not status_ok then
    return
end

-- Install your plugins below
return packer.startup(function(use)
    -- Basic Plugins
    use "wbthomason/packer.nvim"    -- have packer manage itself
    use "nvim-lua/popup.nvim"       -- Popup API from vim for Neovim
    use "nvim-lua/plenary.nvim"     -- useful lua functions used by lots of plugins

    -- Markdown Preview Plugin
    use({ "iamcco/markdown-preview.nvim", run = "cd app && npm install", setup = function() vim.g.mkdp_filetypes = { "markdown" } end, ft = { "markdown" }, })
    -- Themes
    use "gruvbox-community/gruvbox"

  -- Automatically set up your configuration after cloning packer.nvim
  -- Put this at the end after all plugins
  if PACKER_BOOTSTRAP then
    require("packer").sync()
  end
end)
