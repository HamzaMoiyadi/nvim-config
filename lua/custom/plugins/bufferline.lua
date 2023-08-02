return {
  'akinsho/bufferline.nvim',
  version = "*",
  dependencies = 'nvim-tree/nvim-web-devicons',
  config = function()
    require('bufferline').setup {
      options = {
        diagnostics = 'nvim_lsp',
        color_icons = true,
        show_buffer_close_icons = false,
        hover = {
          enabled = true,
          delay = 200,
          reveal = { 'close' }
        },
        separator_style = "slant",
        -- highlights = require("catppuccin.groups.integrations.bufferline").get()
      }
    }

    -- vim.g.transparent_groups = vim.list_extend(
    --   vim.g.transparent_groups or {},
    --   vim.tbl_map(function(v)
    --     return v.hl_group
    --   end, vim.tbl_values(require('bufferline.config').highlights))
    -- )
  end
}
