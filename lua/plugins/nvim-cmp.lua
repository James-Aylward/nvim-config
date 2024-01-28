return {
    "hrsh7th/nvim-cmp",
    event = "InsertEnter",
    dependencies = {
        {"L3MON4D3/LuaSnip"},
    },
    config = function()

        local lsp_zero = require("lsp-zero")
        lsp_zero.extend_cmp()

        local cmp = require("cmp")
        local cmp_action = lsp_zero.cmp_action()
        local cmp_select = {behaviour = cmp.SelectBehavior.Select}

        cmp.setup({
            formatting = lsp_zero.cmp_format(),
            mapping = cmp.mapping.preset.insert({
                ['<CR>'] = cmp.mapping.confirm({select = true}),
                ['<C-Space>'] = cmp.mapping.complete(),
                ['<C-k>'] = cmp.mapping.select_prev_item(cmp_select),
                ['<C-j>'] = cmp.mapping.select_next_item(cmp_select),
                ['<C-e>'] = cmp.mapping.abort(),
            })
        })
    end
}

