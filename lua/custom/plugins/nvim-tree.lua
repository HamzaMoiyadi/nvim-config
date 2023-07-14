return {
  "nvim-tree/nvim-tree.lua",
  version = "*",
  lazy = false,
  dependencies = {
    "nvim-tree/nvim-web-devicons",
  },
  config = function()
    require("nvim-tree").setup {
      -- actions = {
      -- open_file = { quit_on_open = true },
      -- },

      sort_by = "filetype",
      view = {
        number = true,
        relativenumber = true,
        side = "right",
        width = 30,
      },
      update_focused_file = {
        enable = true,
      },
      renderer = {
        group_empty = true,
        highlight_git = true,
        indent_markers = {
          enable = true,
          inline_arrows = true,
          icons = {
            corner = "└",
            edge = "│",
            item = "│",
            bottom = "─",
            none = " ",
          },
        },
      },
      filters = {
        dotfiles = false,
      },
      git = {
        ignore = false,
      }
    }
  end,
}
