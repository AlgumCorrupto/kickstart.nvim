return {
  'kelly-lin/ranger.nvim',
  config = function()
    require('ranger-nvim').setup {
      replace_netrw = true,
      ui = {
        height = 0.95,
      },
    }
    vim.api.nvim_set_keymap('n', '\\', '', {
      noremap = true,
      callback = function()
        require('ranger-nvim').open(true)
      end,
    })
  end,
}
