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
        separator_style = "slant"
      }
    }
  end
}
