return {
  {
  "williamboman/mason-lspconfig.nvim",
    opts = {
      ensure_installed = {
        "tsserver",
        "lua_ls",
        "angularls",
        "bashls",
        "cssls",
        "cssmodules_ls",
        "dockerls",
        "docker_compose_language_service",
        "dotls",
        "eslint",
        "html",
        "jsonls",
        "tailwindcss",
        "bufls"
      },
    },
  },
  {
    "simrat39/rust-tools.nvim",
    after = "mason-lspconfig.nvim",
    init = function()
      print("asdf")
    end,
    opts = {
      server = {
        settings = {
          ['rust-analyzer'] = {
            cargo = {
              autoReload = true
            },
            inlayHints = {
              bindingModeHints = { enable = true },
              closureReturnTypeHints = { enable = "always" },
              lifetimeElisionHints = { enable = "always", useParameterNames = true },
            }
          }
        }
      }
    }
  },
}
