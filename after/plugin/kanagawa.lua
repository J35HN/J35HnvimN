require('kanagawa-paper').setup({
    undercurl = true,
    transparent = true,
    gutter = false,
    dimInactive = false, -- disabled when transparent
    terminalColors = true,
    commentStyle = { italic = true },
    functionStyle = { italic = false },
    keywordStyle = { italic = false, bold = false },
    statementStyle = { italic = false, bold = false },
    typeStyle = { italic = false },
    colors = { theme = {}, palette = {
        fujiGray = "#FFFFFF",
        waveBlue1 = "#FFFFFF"
        }
    }, -- override default palette and theme colors
    overrides = function()  -- override highlight groups
        return {}
    end,
})

-- setup must be called before loading
--vim.cmd("colorscheme kanagawa-paper")
