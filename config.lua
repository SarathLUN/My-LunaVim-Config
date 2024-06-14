-- Read the docs: https://www.lunarvim.org/docs/configuration
-- Example configs: https://github.com/LunarVim/starter.lvim
-- Video Tutorials: https://www.youtube.com/watch?v=sFA9kX-Ud_c&list=PLhoH5vyxr6QqGu0i7tt_XoVK9v-KvZ3m6
-- Forum: https://www.reddit.com/r/lunarvim/
-- Discord: https://discord.com/invite/Xb9B4Ny

-- general option:
vim.opt.relativenumber = true -- relative line numbers


-- Configure rust-analyzer.cargo.sysroot in LunaVim:
require'lspconfig'.rust_analyzer.setup{
    settings = {
        ["rust-analyzer.cargo.sysroot"] = "/Users/sarath.lun/.rustup/toolchains/stable-aarch64-apple-darwin"
    }
}

-- select color theme
lvim.colorscheme = "tokyonight-night"

lvim.plugins = {
  -- install colorscheme
  {
    "folke/tokyonight.nvim",
    lazy = false,
    priority = 1000,
    opts = {},
  },

  -- install rainbow_csv
  {'cameron-wags/rainbow_csv.nvim',
    config = true,
    ft = {
        'csv',
        'tsv',
        'csv_semicolon',
        'csv_whitespace',
        'csv_pipe',
        'rfc_csv',
        'rfc_semicolon'
    },
    cmd = {
        'RainbowDelim',
        'RainbowDelimSimple',
        'RainbowDelimQuoted',
        'RainbowMultiDelim'
    },
  },
  -- install markdown-preview
  {
    "iamcco/markdown-preview.nvim",
    build = "cd app && npm install",
    ft = "markdown",
    lazy = true,
    config = function()
      vim.g.mkdp_auto_start = 0
    end,
  },

}

