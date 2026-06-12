-- Python-specific configuration
return {
  -- Python LSP configuration
  {
    "AstroNvim/astrolsp",
    opts = {
      config = {
        pyright = {
          settings = {
            python = {
              analysis = {
                typeCheckingMode = "basic",
                autoSearchPaths = true,
                useLibraryCodeForTypes = true,
              },
            },
          },
        },
      },
    },
  },
  -- Python formatter and linter
  {
    "AstroNvim/astrocore",
    opts = {
      mappings = {
        n = {
          ["<Leader>tp"] = { "<Cmd>!python %<CR>", desc = "Run Python file" },
        },
      },
    },
  },
  -- Virtual environment support
  {
    "linux-cultist/venv-selector.nvim",
    dependencies = { "neovim/nvim-lspconfig", "nvim-telescope/telescope.nvim", "mfussenegger/nvim-dap-python" },
    opts = {
      name = "venv",
      auto_refresh = false,
    },
    event = "VeryLazy",
    keys = {
      { "<leader>vs", "<cmd>VenvSelect<cr>" },
    },
  },
}
