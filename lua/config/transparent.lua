local transparent = require("transparent")
transparent.setup({
    enable = true,
    extra_groups = {
        "Normal",
        "NormalNC",
        "SignColumn",
        "EndOfBuffer",

        "NormalFloat",
        "FloatBorder",
        "Pmenu",

        "NeoTreeNormalNC",

        "BufferLineFill",
        "BufferLineBackground",
        "StatusLine",
        "StatusLineNC",
        "TabLine",
        "TabLineSel",
        "TabLineFill",

        "WinSeparator",
    },
})
