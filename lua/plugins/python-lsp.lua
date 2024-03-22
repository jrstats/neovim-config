return {
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        pyright = {
          enabled = vim.g.lazyvim_python_lsp == "ruff_lsp",
          setup = {
            pyright = function()
              LazyVim.lsp.on_attach(function(client, _)
                if client.name == "ruff_lsp" then
                  -- Disable all features except hover
                  client.server_capabilities.documentFormattingProvider = false
                  client.server_capabilities.documentRangeFormattingProvider = false
                  client.server_capabilities.documentSymbolProvider = false
                  client.server_capabilities.workspaceSymbolProvider = false
                  client.server_capabilities.codeActionProvider = false
                  -- client.server_capabilities.definitionProvider = false
                  -- client.server_capabilities.declarationProvider = false
                  -- client.server_capabilities.typeDefinitionProvider = false
                  -- client.server_capabilities.implementationProvider = false
                  -- client.server_capabilities.referencesProvider = false
                end
              end)
            end,
          },
        },
        basedpyright = {
          enabled = vim.g.lazyvim_python_lsp == "basedpyright",
        },
        ruff_lsp = {
          enabled = vim.g.lazyvim_python_lsp == "ruff_lsp",
          keys = {
            {
              "<leader>co",
              function()
                vim.lsp.buf.code_action({
                  apply = true,
                  context = {
                    only = { "source.organizeImports" },
                    diagnostics = {},
                  },
                })
              end,
              desc = "Organize Imports",
            },
          },
        },
      },
      setup = {
        ruff_lsp = function()
          LazyVim.lsp.on_attach(function(client, _)
            if client.name == "ruff_lsp" then
              -- Disable hover in favor of Pyright
              -- client.server_capabilities.documentFormattingProvider = false
              client.server_capabilities.hoverProvider = false
            end
          end)
        end,
      },
    },
  },
  {
    "nvim-treesitter/nvim-treesitter",
    opts = function(_, opts)
      if type(opts.ensure_installed) == "table" then
        vim.list_extend(opts.ensure_installed, { "ninja", "python", "rst", "toml" })
      end
    end,
  },
}
