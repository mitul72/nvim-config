require("lspconfig").pyright.setup {
    settings = {
        python = {
            analysis = {
                extraPaths = { "path/to/desired/modules" }
            }
        }
    }
}

