local M = {
  "nvim-treesitter/nvim-treesitter",
  cmd = { "TSInstall", "TSUpdate" },
--  commit = "226c1475a46a2ef6d840af9caa0117a439465500",
  event = "BufReadPost",
  dependencies = {
    {
      "JoosepAlviste/nvim-ts-context-commentstring",
      event = "VeryLazy",
--      commit = "729d83ecb990dc2b30272833c213cc6d49ed5214",
    },
    {
      "nvim-tree/nvim-web-devicons",
      event = "VeryLazy",
    },
  },
}
function M.config()
  local treesitter = require "nvim-treesitter"
  local configs = require "nvim-treesitter.configs"
  local devicons = require "nvim-web-devicons"

  configs.setup {
    ensure_installed = { "lua", "markdown", "markdown_inline", "bash", "python" }, -- put the language you want in this array
    -- ensure_installed = "all", -- one of "all" or a list of languages
    ignore_install = { "" },                                                       -- List of parsers to ignore installing
    sync_install = false,                                                          -- install languages synchronously (only applied to `ensure_installed`)

    highlight = {
      enable = true,       -- false will disable the whole extension
      disable = { "css" }, -- list of language that will be disabled
    },
    autopairs = {
      enable = true,
    },
    indent = { enable = true, disable = { "python", "css" } },

    context_commentstring = {
      enable = true,
      enable_autocmd = false,
    },
  }

  devicons.setup{
     -- your personnal icons can go here (to override)
     -- you can specify color or cterm_color instead of specifying both of them
     -- DevIcon will be appended to `name`
     override = {
      zsh = {
        icon = "",
        color = "#428850",
        cterm_color = "65",
        name = "Zsh"
      },
     };
     -- globally enable different highlight colors per icon (default to true)
     -- if set to false all icons will have the default icon's color
     color_icons = true;
     -- globally enable default icons (default to false)
     -- will get overriden by `get_icons` option
     default = true;
     -- globally enable "strict" selection of icons - icon will be looked up in
     -- different tables, first by filename, and if not found by extension; this
     -- prevents cases when file doesn't have any extension but still gets some icon
     -- because its name happened to match some extension (default to false)
     strict = true;
     -- same as `override` but specifically for overrides by filename
     -- takes effect when `strict` is true
     override_by_filename = {
      [".gitignore"] = {
        icon = "",
        color = "#f1502f",
        name = "Gitignore"
      }
     };
     -- same as `override` but specifically for overrides by extension
     -- takes effect when `strict` is true
     override_by_extension = {
      ["log"] = {
        icon = "",
        color = "#81e043",
        name = "Log"
      }
     };
  }
end

return M
