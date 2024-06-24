--local kanagawa_paper = require("lualine.themes.kanagawa-paper")
--local horizon = require("lualine.themes.horizon")

local colors = {
    black        = "#1c1e26",
    white        = '#ffffff',
    red          = '#F43E5C',
    green        = '#09F7A0',
    blue         = '#25B2BC',
    yellow       = '#F09383',
    gray         = '#E95678',
    darkgray     = '#1A1C23',
    lightgray    = '#2E303E',
    inactivegray = '#1C1E26',
}

local branch = {
    "branch",
    icon = "",
    color = { fg = colors.magenta, bg = "None", gui = "bold" },
}

require('lualine').setup{
    options = {
        icons_enabled = true,
        --theme = horizon,
        section_separators = { left = '', right = '' },
        component_separators = { left = '', right = '|' },
        theme = {
            normal = {
                a = { bg = "None", fg = colors.white, gui = "bold" },
                b = { bg = "None", fg = colors.white, gui = "bold" },
                c = { bg = "None", fg = colors.white, gui = "bold" },
            },
            insert = {
                a = { bg = "None", fg = colors.white, gui = "bold" },
                b = { bg = "None", fg = colors.white, gui = "bold" },
                c = { bg = "None", fg = colors.white, gui = "bold" },
            },
            visual = {
                a = { bg = "None", fg = colors.white, gui = "bold" },
                b = { bg = "None", fg = colors.white, gui = "bold" },
                c = { bg = "None", fg = colors.white, gui = "bold" },
            },
            replace = {
                a = { bg = "None", fg = colors.white, gui = "bold" },
                b = { bg = "None", fg = colors.white, gui = "bold" },
                c = { bg = "None", fg = colors.white, gui = "bold" },
            },
            command = {
                a = { bg = "None", fg = colors.white, gui = "bold" },
                b = { bg = "None", fg = colors.white, gui = "bold" },
                c = { bg = "None", fg = colors.white, gui = "bold" },
            },
            inactive = {
                a = { bg = "None", fg = colors.white, gui = "bold" },
                b = { bg = "None", fg = colors.white, gui = "bold" },
                c = { bg = "None", fg = colors.white, gui = "bold" },
            },
        },
    },
    sections = {
        lualine_a = { 'mode' },
        lualine_b = { branch },
        lualine_c = { 'filename' },
        lualine_x = { 'diagnostics' },
        lualine_y = { 'diff' },
        lualine_z = { 'location' }

    },
}
