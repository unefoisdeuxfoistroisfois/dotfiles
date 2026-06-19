return {
  "nvim-lualine/lualine.nvim",
  opts = function(_, opts)
    opts.sections = {
      lualine_a = { 'mode' },           -- Mode (Normal, Insert, etc.)
      lualine_b = { 'branch' },         -- Branche git
      lualine_c = { 'filename' },       -- Nom du fichier
      lualine_x = {},                   -- ← VIDE (enlève tout à droite)
      lualine_y = {},                   -- ← VIDE
      lualine_z = { 'progress' },       -- Seulement le % de progression
    }
    return opts
  end,
}
