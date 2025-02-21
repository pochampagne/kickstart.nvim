-- You can add your own plugins here or in other files in this directory!
--  I promise not to create any merge conflicts in this directory :)
--
-- See the kickstart.nvim README for more information
return {
  -- lazygit
  {
    'kdheepak/lazygit.nvim',
    lazy = false,
    cmd = {
      'LazyGit',
      'LazyGitConfig',
      'LazyGitCurrentFile',
      'LazyGitFilter',
      'LazyGitFilterCurrentFile',
    },
    -- optional for floating window border decoration
    dependencies = {
      'nvim-telescope/telescope.nvim',
      'nvim-lua/plenary.nvim',
    },
    keys = {
      { '<leader>gg', '<cmd>LazyGit<cr>', desc = 'LazyGit' },
    },
    config = function()
      require('telescope').load_extension 'lazygit'
    end,
  },

  -- vim-test
  {
    'vim-test/vim-test',
    keys = {
      { '<leader>tf', '<cmd>TestFile<cr>', silent = true, desc = 'Run this file' },
      { '<leader>tn', '<cmd>TestNearest<cr>', silent = true, desc = 'Run nearest test' },
      { '<leader>tl', '<cmd>TestLast<cr>', silent = true, desc = 'Run last test' },
      { '<leader>ta', '<cmd>TestSuite<cr>', silent = true, desc = 'Run all test suite' },
    },
  },

  -- copilot
  {
    'zbirenbaum/copilot.lua',
    cmd = 'Copilot',
    event = 'InsertEnter',
    config = function()
      require('copilot').setup {
        panel = {
          enabled = true,
          auto_refresh = false,
          keymap = {
            jump_prev = '<C-b>',
            jump_next = '<C-n>',
            accept = '<CR>',
            refresh = 'gr',
            open = '<C-CR>',
          },
          layout = {
            position = 'bottom', -- | top | left | right
            ratio = 0.4,
          },
        },
        suggestion = {
          enabled = true,
          auto_trigger = true,
          debounce = 75,
          keymap = {
            accept = '<C-c>',
            accept_word = false,
            accept_line = false,
            next = '<C-n>',
            prev = '<C-b>',
            dismiss = '<C-;>',
          },
        },
        filetypes = {
          yaml = false,
          markdown = false,
          help = false,
          gitcommit = false,
          gitrebase = false,
          hgcommit = false,
          svn = false,
          cvs = false,
          ['.'] = false,
        },
        copilot_node_command = 'node', -- Node.js version must be > 16.x
        server_opts_overrides = {},
      }
    end,
  },

  -- oil
  {
    'stevearc/oil.nvim',
    opts = {},
    -- Optional dependencies
    dependencies = { 'nvim-tree/nvim-web-devicons' },
    config = function()
      require('oil').setup { view_options = { show_hidden = true } }
    end,
  },

  -- git blame
  {
    'FabijanZulj/blame.nvim',
    lazy = false,
    config = function()
      require('blame').setup {}
    end,
  },

  -- Zen
  {
    'folke/zen-mode.nvim',
    opts = {
      -- your configuration comes here
      -- or leave it empty to use the default settings
      -- refer to the configuration section below
    },
  },

  -- rose-pine
  { 'rose-pine/neovim', name = 'rose-pine' },
}
