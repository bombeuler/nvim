-- This is a config for LaTeX in neovim

return {
  {
    "lervag/vimtex",
    lazy = false, -- lazy-loading will disable inverse search
    opts = function()
      vim.g.vimtex_view_method = "zathura"
      vim.g.vimtex_mappings_disable = { ["n"] = { "K" } } -- disable `K` as it conflicts with LSP hover
      vim.g.vimtex_quickfix_method = vim.fn.executable("pplatex") == 1 and "pplatex" or "latexlog"
    end,
    keys = {
      { "<localLeader>l", "", desc = "+vimtext" },
    },
  },
}
