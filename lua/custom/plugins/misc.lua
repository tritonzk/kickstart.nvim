return {
  'tpope/vim-sleuth', -- Detect tabstop and shiftwidth automatically

  { 'kqito/vim-easy-replace' },

  -- 'wfxr/minimap.vim',
  -- 'neoscroll.nvim',

  {
    'akinsho/bufferline.nvim',
    version = '*',
    dependencies = 'nvim-tree/nvim-web-devicons',
    config = function()
      require('bufferline').setup { options = { diagnostics = { 'nvim_lsp', 'coc' } } }
    end,
    opts = {
      -- diagnostics_indicator = function(count, level, diagnostics_dict, context)
      --   local icon = level:match 'error' and ' ' or ' '
      --   return ' ' .. icon .. count
      -- end,
    },
  },

  -- {
  --   'mrcjkb/rustaceanvim',
  --   version = '^5',
  --   lazy = false,
  -- },

  -- { -- browse python documentation within neovim
  --   'girishji/pythondoc.vim',
  --   name = 'pythondoc',
  --   config = function()
  --     require('pythondoc').setup {}
  --   end,
  --   opts = {},
  -- },

  -- {
  --   'girishji/vimsuggest',
  -- },

  -- { 'declancm/cinnamon.nvim', version = '*', keymaps = {
  --   basic = true,
  --   extra = true,
  -- }, opts = {} },

  'petertriho/nvim-scrollbar',

  { 'numToStr/Comment.nvim', opts = {} }, -- "gc" to comment visual regions/lines
}
