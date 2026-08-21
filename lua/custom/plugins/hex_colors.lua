vim.pack.add {
  'https://github.com/catgoose/nvim-colorizer.lua',
}

require('colorizer').setup {
  user_default_options = {
    names = false,
    RGB = false,
    RRGGBB = true,
    RRGGBBAA = true,
    AARRGGBB = false,
  },
}
