return {
  "williamboman/mason.nvim",
  dependencies = {
    "williamboman/mason-lspconfig.nvim",
    "WhoIsSethDaniel/mason-tool-installer.nvim",
  },
  config = function()
    -- import mason
    local mason = require("mason")

    -- import mason-lspconfig
    local mason_lspconfig = require("mason-lspconfig")

    local mason_tool_installer = require("mason-tool-installer")

    -- enable mason and configure icons
    mason.setup({
        ui = {
        icons = {
          package_installed = "✓",
          package_pending = "➜",
          package_uninstalled = "✗",
        },
      },
    })

    mason_lspconfig.setup({
      -- list of servers for mason to install
      ensure_installed = {
        "typos_lsp", -- All
        "clangd", -- C & C++
        "rust_analyzer", -- rust
        "tsserver", -- Javascript & Typescritp
        "gopls", -- Go
        "html", -- html
        "cssls", -- css
        "tailwindcss", -- tailwindcss
        "svelte", -- svelte
        "lua_ls", -- lua_ls
        "graphql",
        "prismals", -- prisma ORM
        "pyright", -- python
        "marksman", -- makdown
        "intelephense", -- php
        "sqls", --SQL
        "jsonls", -- json
        "emmet_ls",
      },
    })

    mason_tool_installer.setup({
      ensure_installed = {
        "prettier", -- prettier formatter
        "stylua", -- lua formatter
        "isort", -- python formatter
        "black", -- python formatter

        -- linters
        "pylint",
        "eslint_d",
      },
    })
  end,
}
