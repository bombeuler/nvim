return {
  {
    "williamboman/mason.nvim",
    opts = {
      ensure_installed = {
        "findent",
        "fortls",
        "fprettify",
      },
    },
  },
  {
    "nvim-treesitter/nvim-treesitter",
    opts = {
      ensure_installed = { "fortran" },
    },
  },
  {
    "neovim/nvim-lspconfig",
    opts = {
      server = {
        fortls = {},
      },
    },
  },
  {
    "stevearc/conform.nvim",
    optional = true,
    opts = {
      formatters_by_ft = {
        ["fortran"] = { "fprettify" },
      },
    },
  },
}
