local function gh(repo)
  return "https://github.com/" .. repo
end

vim.pack.add({
  gh("stevearc/aerial.nvim"),
  gh("nvim-treesitter/nvim-treesitter"),
  gh("nvim-tree/nvim-web-devicons"),
  gh("wfxr/code-minimap"),
})

require("aerial").setup({
  layout = {
    placement = "window",
    default_direction = "prefer_right",
    min_width = { 15, 0.2 },
    max_width = { 50, 0.3 },
  },

  on_attach = function(bufnr)
    vim.keymap.set("n", "{", "<cmd>AerialPrev<CR>", { buffer = bufnr })
    vim.keymap.set("n", "}", "<cmd>AerialNext<CR>", { buffer = bufnr })
    vim.keymap.set("n", "<leader>a", "<cmd>AerialToggle!<CR>", { buffer = bufnr })
  end,
})
