-- customize mason plugins
return {
    -- use mason-lspconfig to configure LSP installations
    {
        "williamboman/mason-lspconfig.nvim",
        -- overrides `require("mason-lspconfig").setup(...)`
        opts = function(_, opts)
            -- add more things to the ensure_installed table protecting against community packs modifying it
            opts.ensure_installed =
                require("astronvim.utils").list_insert_unique(
                    opts.ensure_installed, {
                        "asm_lsp", "bashls", "clangd", "cssls",
                        "custom_elements_ls", "dockerls", "dotls", "gopls",
                        "html", "jdtls", "jsonls", "kotlin_language_server",
                        "lemminx", "lua_ls", "marksman", "ocamllsp",
                        "rust_analyzer", "sqlls", "taplo", "tsserver",
                        "wgsl_analyzer", "yamlls"
                    })
        end
    },
    -- use mason-null-ls to configure Formatters/Linter installation for null-ls sources
    {
        "jay-babu/mason-null-ls.nvim",
        -- overrides `require("mason-null-ls").setup(...)`
        opts = function(_, opts)
            -- add more things to the ensure_installed table protecting against community packs modifying it
            opts.ensure_installed =
                require("astronvim.utils").list_insert_unique(
                    opts.ensure_installed, {
                        "asmfmt", "beautysh", "clang-format", "cpplint",
                        "eslint_d", "gofumpt", "golangci-lint", "jsonlint",
                        "ktlint", "luacheck", "luaformatter", "markdownlint",
                        "markuplint", "ocamlformat", "prettier", "shfmt",
                        "sonarlint-language-server", "sqlfluff",
                        "sql-formatter", "stylelint", "xmlformatter", "yamlfmt",
                        "yamllint"
                    })
        end
    }, {
        "jay-babu/mason-nvim-dap.nvim",
        -- overrides `require("mason-nvim-dap").setup(...)`
        opts = function(_, opts)
            -- add more things to the ensure_installed table protecting against community packs modifying it
            opts.ensure_installed =
                require("astronvim.utils").list_insert_unique(
                    opts.ensure_installed, {
                        "bash-debug-adapter", "codelldb", "delve",
                        "java-debug-adapter", "kotlin-debug-adapter"
                    })
        end
    }
}
