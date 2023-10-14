return {
    "nvim-treesitter/nvim-treesitter",
    opts = function(_, opts)
        -- add more things to the ensure_installed table protecting against community packs modifying it
        opts.ensure_installed = require("astronvim.utils").list_insert_unique(
                                    opts.ensure_installed, {
                "bash", "c", "cpp", "css", "dot", "go", "html", "java",
                "javascript", "json", "kotlin", "lua", "markdown", "ocaml",
                "rust", "scss", "sql", "toml", "typescript", "wgsl", "xml",
                "yaml"
            })
    end
}
