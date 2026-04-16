return {
  {
    "folke/snacks.nvim",
    opts = function(_, opts)
      local palette = require("catppuccin.palettes").get_palette()
      opts.zen = vim.tbl_deep_extend("force", opts.zen or {}, {
        show = { statusline = false, tabline = false },
      })
      opts.styles = opts.styles or {}
      opts.styles.zen = vim.tbl_deep_extend("force", opts.styles.zen or {}, {
        backdrop = { transparent = false, blend = 90, bg = palette.crust },
      })
      return opts
    end,
  },
}
