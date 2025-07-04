return {
  'catppuccin/nvim',
  name = 'catppuccin',
  priority = 1000, -- load early so other plugins can pick up its colors
  opts = {
    flavour = 'macchiato',
    background = { -- map background/foreground for `:terminal`, `vim.g.background`
      light = 'latte',
      dark = 'macchiato',
    },
    transparent_background = false,
    term_colors = true, -- let Catppuccin define your Terminal highlight groups
    dim_inactive = { enabled = false },
    integrations = {
      cmp = true,
      gitsigns = true,
      nvimtree = true,
      telescope = true,
      treesitter = true,
      lualine = false,
      indent_blankline = { enabled = true, colored_indent_levels = true },
      notify = true,
      which_key = true,
      -- add more integrations if you use them...
    },
  },
  config = function(_, opts)
    require('catppuccin').setup(opts)
    vim.cmd 'colorscheme catppuccin'
  end,
}
