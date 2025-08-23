--  NOTE: Highlight todo, notes, etc in comments

return {
  'folke/todo-comments.nvim',
  event = 'VimEnter',
  dependencies = { 'nvim-lua/plenary.nvim', 'nvim-telescope/telescope.nvim' },
  opts = { signs = false },
  config = function()
    require('telescope').load_extension 'todo-comments'
    vim.keymap.set('n', '<leader>st', '<cmd>TodoTelescope<CR>', { desc = "Search TODO's" })
  end,
}
