-- Configuración básica de Neovim
local set = vim.opt

-- Número de línea
set.number = true

-- Número de línea relativo
set.relativenumber = true

-- Espacios en lugar de tabulaciones
set.expandtab = true

-- Tamaño de tabulación
set.tabstop = 4
set.shiftwidth = 4

-- Habilitar el uso del ratón
set.mouse = 'a'

-- Resaltar la línea actual
set.cursorline = true

-- Habilitar el portapapeles del sistema
set.clipboard = 'unnamedplus'

-- Búsqueda incremental
set.incsearch = true

-- Ignorar mayúsculas en la búsqueda
set.ignorecase = true
set.smartcase = true

-- Deshabilitar el modo de compatibilidad con Vi
set.compatible = false

-- Habilitar el uso de colores 24-bit (true color)
set.termguicolors = true

-- Configuración de la línea de estado
set.laststatus = 2

-- Mostrar el número de columna
set.signcolumn = 'yes'

-- Tiempo de espera para las combinaciones de teclas
set.timeoutlen = 500

-- Deshabilitar el empaquetado de líneas
set.wrap = false

-- Configuración de la pestaña
set.showtabline = 2

-- Configuración de la ventana dividida
set.splitright = true
set.splitbelow = true