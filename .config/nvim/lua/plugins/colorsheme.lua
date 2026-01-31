--return {
--  {
--    "LazyVim/LazyVim",
--    opts = {
--      colorscheme = "tokyonight",
--      --colorscheme = "tokyonight-day",
--      --colorscheme = "tokyonight-moon",
--      --colorscheme = "tokyonight-night",
--      --colorscheme = "tokyonighti-strom",
--    },
--  },
--}
--
return {
    {
        'maxmx03/fluoromachine.nvim',
        lazy = false,
        priority = 1000,
        config = function ()
         local fm = require 'fluoromachine'

         fm.setup {
            glow = true,
            theme = 'fluoromachine',  -- Options: 'fluoromachine', 'retrowave', 'delta'
            transparent = false,
         }

         vim.cmd.colorscheme 'fluoromachine'
        end
    }
}
