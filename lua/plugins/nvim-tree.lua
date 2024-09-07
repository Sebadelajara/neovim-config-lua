return {
  -- Configura `nvim-web-devicons`
  {
    "nvim-tree/nvim-web-devicons",
    config = function()
      require('nvim-web-devicons').setup {
        default = true -- Usa la configuración predeterminada para todos los íconos
      }
    end
  },
  -- Configura `nvim-tree.lua`
  {
    "nvim-tree/nvim-tree.lua",
    requires = {
      "nvim-tree/nvim-web-devicons", -- opcional, para los íconos de archivos
    },
    config = function()
      -- Desactiva netrw al principio de tu configuración
      vim.g.loaded_netrw = 1
      vim.g.loaded_netrwPlugin = 1
      -- Habilita el soporte de 24-bit color si es necesario
      vim.opt.termguicolors = true

      -- Configura `nvim-tree` con las opciones que desees
      require("nvim-tree").setup({
        sort_by = "case_sensitive",
        view = {
          width = 30,
        },
        renderer = {
          group_empty = true,
          icons = {
            webdev_colors = true, -- Habilita los colores de los íconos
            git_placement = "after", -- Coloca los íconos de git después del nombre del archivo
            padding = " ", -- Añade un espacio de padding entre el ícono y el nombre del archivo
            symlink_arrow = " ➛ ", -- Define el símbolo de flecha para los enlaces simbólicos
            show = {
              file = true, -- Muestra íconos para archivos
              folder = true, -- Muestra íconos para carpetas
              folder_arrow = true, -- Muestra íconos para las flechas de las carpetas
              git = true, -- Muestra íconos para git
            },
          },
        },
        filters = {
          dotfiles = true,
        },
      })
      -- Mapea una tecla para abrir/cerrar `nvim-tree`
      vim.api.nvim_set_keymap('n', '<C-n>', ':NvimTreeToggle<CR>', { noremap = true, silent = true })
    end,
  }
}