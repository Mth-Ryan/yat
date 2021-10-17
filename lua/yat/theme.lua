--[[

__   __    _
\ \ / /_ _| |_
 \ V / _` | __|
  | | (_| | |_
  |_|\__,_|\__|


File:        theme.lua
Author:      Mateus Ryan <mthryan@protonmail.com>
Description: Yes, another theme
Licence:     MIT

--]]

local colors = require("yat.colors")
local theme  = {}

theme.loadEditor = function()
    local ui = {
        Normal       = { fg = colors.fg1, bg = colors.bg1, },
        NonText      = { fg = colors.bg4, bg = colors.bg1, },
        EndOfBuffer  = { fg = colors.bg4, bg = colors.bg1, },
        Cursor       = { fg = colors.bg1, bg = colors.fg1, },
        CursorLineNr = { fg = colors.gre,                  },
        CursorLine   = {                  bg = colors.bg2, },
        CursorColumn = {                  bg = colors.bg4, },
        ColorColumn  = {                  bg = colors.bg4, },
        LineNr       = { fg = colors.bg4,                  },
        VertSplit    = { fg = colors.bg1, bg = colors.bg4, },
        Visual       = { fg = colors.fg1, bg = colors.bg4, },
        MatchParen   = { fg = colors.err, st = "underline" },
        StatusLine   = { fg = colors.fg2, bg = colors.bg3, },
        Pmenu        = { fg = colors.fg2, bg = colors.bg2, },
        PmenuSel     = { fg = colors.bg1, bg = colors.blu, },
        PmenuSbar    = {                  bg = colors.bg3, },
        PmenuThumb   = {                  bg = colors.bg4, },
        IncSearch    = { fg = colors.bg2, bg = colors.fg1, },
        Search       = { fg = colors.err, st = "underline" },
        Directory    = { fg = colors.red,                  },
        Folded       = { fg = colors.fg4,                  },
        WildMenu     = { fg = colors.gre,                  },
        DiffAdd      = { fg = colors.gre, st = "underline" },
        DiffDelete   = { fg = colors.err,                  },
        DiffChange   = { fg = colors.war, st = "bold"      },
        DiffText     = { fg = colors.red, st = "bold"      },
        ErrorMsg     = { fg = colors.err, st = "bold"      },
        WarningMsg   = { fg = colors.war,                  },
    }
    return ui
end

theme.loadSyntax = function()
    local syntax = {
        Label        = { fg = colors.fg1,                  },
        Title        = { fg = colors.fg1,                  },
        SpecialKey   = { fg = colors.cya,                  },
        Todo         = { fg = colors.cya, st = "bold"      },
        Underlined   = {                  st = "underline" },
        Comment      = { fg = colors.gra,                  },
        Type         = { fg = colors.blu,                  },
        Character    = { fg = colors.red,                  },
        String       = { fg = colors.gre,                  },
        Conditional  = { fg = colors.red,                  },
        Repeat       = { fg = colors.red,                  },
        Constant     = { fg = colors.Cya,                  },
        Float        = { fg = colors.Cya,                  },
        Number       = { fg = colors.Cya,                  },
        Function     = { fg = colors.fg1,                  },
        Special      = { fg = colors.fg1,                  },
        Identifier   = { fg = colors.fg1, st = "italic"    },
        Keyword      = { fg = colors.ora,                  },
        Statement    = { fg = colors.ora,                  },
        Tag          = { fg = colors.ora,                  },
        PreProc      = { fg = colors.pur,                  },
        Define       = { fg = colors.pur,                  },
        Operator     = { fg = colors.pur,                  },
        StorageClass = { fg = colors.Pur, st = "italic"    },
    }
    return syntax
end

theme.loadLsp = function()
    local lsp = {
        LspDiagnosticsDefaultError           = { fg = colors.err, },
        LspDiagnosticsVirtualTextError       = { fg = colors.err, },
        LspDiagnosticsUnderlineError         = { fg = colors.err, },
        LspDiagnosticsFloatingError          = { fg = colors.err, },
        LspDiagnosticsSignError              = { fg = colors.err, },
        LspDiagnosticsDefaultWarning         = { fg = colors.war, },
        LspDiagnosticsVirtualTextWarning     = { fg = colors.war, },
        LspDiagnosticsUnderlineWarning       = { fg = colors.war, },
        LspDiagnosticsFloatingWarning        = { fg = colors.war, },
        LspDiagnosticsSignWarning            = { fg = colors.war, },
        LspDiagnosticsDefaultInformation     = { fg = colors.blu, },
        LspDiagnosticsVirtualTextInformation = { fg = colors.blu, },
        LspDiagnosticsUnderlineInformation   = { fg = colors.blu, },
        LspDiagnosticsFloatingInformation    = { fg = colors.blu, },
        LspDiagnosticsSignInformation        = { fg = colors.blu, },
        LspDiagnosticsDefaultHint            = { fg = colors.pur, },
        LspDiagnosticsVirtualTextHint        = { fg = colors.pur, },
        LspDiagnosticsUnderlineHint          = { fg = colors.pur, },
        LspDiagnosticsFloatingHint           = { fg = colors.pur, },
        LspDiagnosticsSignHint               = { fg = colors.pur, },
    }
    return lsp
end

theme.loadTerminal = function ()
  vim.g.terminal_color_0  = colors.bg1
  vim.g.terminal_color_1  = colors.red
  vim.g.terminal_color_2  = colors.gre
  vim.g.terminal_color_3  = colors.org
  vim.g.terminal_color_4  = colors.blu
  vim.g.terminal_color_5  = colors.pur
  vim.g.terminal_color_6  = colors.cya
  vim.g.terminal_color_7  = colors.fg2
  vim.g.terminal_color_8  = colors.bg4
  vim.g.terminal_color_9  = colors.red
  vim.g.terminal_color_10 = colors.gre
  vim.g.terminal_color_11 = colors.ora
  vim.g.terminal_color_12 = colors.blu
  vim.g.terminal_color_13 = colors.pur
  vim.g.terminal_color_14 = colors.cya
  vim.g.terminal_color_15 = colors.fg1
end

return theme
