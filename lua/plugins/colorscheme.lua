return {
  {
    'catppuccin/nvim',
    name = 'catppuccin',
    config = function()
      require('catppuccin').setup {
        flavour = 'mocha',
        transparent_background = true,
        term_colors = true,
      }
    end,
    -- init = function()
    --   vim.cmd.colorscheme 'catppuccin'
    -- end,
  },
  {
    'ellisonleao/gruvbox.nvim',
    name = 'gruvbox',
    config = function()
      require('gruvbox').setup {
        terminal_colors = true, -- add neovim terminal colors
        undercurl = true,
        underline = true,
        bold = true,
        italic = {
          strings = true,
          emphasis = true,
          comments = true,
          operators = false,
          folds = true,
        },
        strikethrough = true,
        invert_selection = false,
        invert_signs = false,
        invert_tabline = false,
        invert_intend_guides = false,
        inverse = true, -- invert background for search, diffs, statuslines and errors
        contrast = '', -- can be "hard", "soft" or empty string
        palette_overrides = {},
        overrides = {},
        dim_inactive = false,
        transparent_mode = true,
      }
    end,
    -- init = function()
    --   vim.cmd.colorscheme 'gruvbox'
    -- end,
  },
  {
    'folke/tokyonight.nvim',
    name = 'tokyonight',
    config = function()
      require('tokyonight').setup {
        transparent = true,
        style = 'night',
      }
    end,
    init = function()
      vim.cmd.colorscheme 'tokyonight'
    end,
  },
  {
    'rose-pine/neovim',
    name = 'rose-pine',
    config = function()
      require('rose-pine').setup {
        style = {
          transparent_background = true,
        },
      }
    end,
    -- init = function()
    --   vim.cmd.colorscheme 'rose-pine'
    -- end,
  },
}
