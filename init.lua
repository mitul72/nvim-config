-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")

local ok, _ = pcall(vim.cmd, 'colorscheme catppuccin " catppuccin-latte, catppuccin-frappe, catppuccin-macchiato, catppuccin-mocha')
if not ok then
  vim.cmd 'colorscheme default' -- if the above fails, then use default
end

vim.cmd([[
  nmap <F8> :TagbarToggle<CR>
]]
)




require'nvim-material-icon'.setup {
  -- your personnal icons can go here (to override)
  -- you can specify color or cterm_color instead of specifying both of them
  -- DevIcon will be appended to `name`
  override = {
    zsh = {
      icon = "",
      color = "#428850",
      cterm_color = "65",
      name = "Zsh"
    }
  };
  -- globally enable different highlight colors per icon (default to true)
  -- if set to false all icons will have the default icon's color
  color_icons = true;
  -- globally enable default icons (default to false)
  -- will get overriden by `get_icons` option
  default = true;
}


local web_devicons_ok, web_devicons = pcall(require, "nvim-web-devicons")
if not web_devicons_ok then
	return
end

local material_icon_ok, material_icon = pcall(require, "nvim-material-icon")
if not material_icon_ok then
	return
end

web_devicons.setup({
	override = material_icon.get_icons(),
})