-- ~/.config/nvim/lua/plugins/init.lua

return {
    {
      "rebelot/kanagawa.nvim",
      config = function()
        require('kanagawa').setup({
          transparent = true,  -- Hacer el fondo transparente
          colors = {
            theme = {
              all = {
                ui = {
                  bg_gutter = "none"  -- Eliminar el fondo del gutter
                }
              }
            }
          }
        })
        -- Aplica el tema Kanagawa
        vim.cmd('colorscheme kanagawa')
      end
    }
  }
  