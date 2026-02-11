-- fluoromachine
return {
    {
        'maxmx03/fluoromachine.nvim',
        lazy = false,
        priority = 1000,
        config = function ()
         local fm = require 'fluoromachine'

         fm.setup {
            glow = true,
            theme = 'retrowave',  -- Options : 'fluoromachine', 'retrowave', 'delta'
            transparent = false,
         }

         vim.cmd.colorscheme 'fluoromachine'
        end
    }
}

-- shades_of_purple
--return {
--  -- Installer Shades of Purple depuis GitHub
--  {
--    "Rigellute/shades-of-purple.vim",
--    lazy = false,
--    priority = 1000,
--  },
--
---- Activer le thème
--  {
--    "LazyVim/LazyVim",
--    opts = {
--      colorscheme = "shades_of_purple",
--    },
--  },
--}
