vim.pack.add {
  'https://github.com/CRAG666/code_runner.nvim',
}

require('code_runner').setup {
  filetype = {
    python = 'uv run',
  },
}

vim.keymap.set('n', '<F6>', '<cmd>RunCode<CR>', {
  noremap = true,
  silent = false,
  desc = 'Run Python file',
})
