local lspkind = require("lspkind")
local cmp = require("cmp")
cmp.setup {
    -- 指定 snippet 引擎
    snippet = {
        expand = function(args)
            vim.fn["vsnip#anonymous"](args.body)
        end
    },
    -- 来源
    sources = cmp.config.sources(
        {
            {name = "nvim_lsp"},
            {name = "vsnip"}
        },
        {
            {name = "buffer"},
            {name = "path"}
        }
    ),
    -- 快捷键
    -- mapping = require('keybindings').cmp_func(cmp),
    mapping = {
        -- 上一个
        ['<A-Tab>'] = cmp.mapping.select_prev_item(),    
        -- 下一个
        ['<Tab>'] = cmp.mapping.select_next_item(),
        -- 确认
        -- Accept currently selected item. If none selected, `select` first item.
        -- Set `select` to `false` to only confirm explicitly selected items.
        ['<CR>'] = cmp.mapping.confirm({
          select = false ,
          behavior = cmp.ConfirmBehavior.Replace
        }),
        -- ['<C-y>'] = cmp.config.disable, -- Specify `cmp.config.disable` if you want to remove the default `<C-y>` mapping.
        ['<C-u>'] = cmp.mapping(cmp.mapping.scroll_docs(-4), { 'i', 'c' }),
        ['<C-d>'] = cmp.mapping(cmp.mapping.scroll_docs(4), { 'i', 'c' }),
    },
    -- 使用lspkind-nvim显示类型图标
    formatting = {
        format = lspkind.cmp_format(
            {
                with_text = true, -- do not show text alongside icons
                maxwidth = 50, -- prevent the popup from showing more than provided characters 
                before = function(entry, vim_item)
                    -- Source 显示提示来源
                    vim_item.menu = "[" .. string.upper(entry.source.name) .. "]"
                    return vim_item
                end
            }
        )
    }
}

-- Use buffer source for `/`.
cmp.setup.cmdline(
    "/",
    {
        sources = {
            {name = "buffer"}
        }
    }
)

-- Use cmdline & path source for ':'.
cmp.setup.cmdline(
    ":",
    {
        sources = cmp.config.sources(
            {
                {name = "path"}
            },
            {
                {name = "cmdline"}
            }
        )
    }
)

