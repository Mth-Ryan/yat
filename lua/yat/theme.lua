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
        CursorLineNr = { fg = colors.cya,                  },
        CursorLine   = {                  bg = colors.bg2, },
        CursorColumn = {                  bg = colors.bg4, },
        ColorColumn  = {                  bg = colors.bg4, },
        SignColumn   = {                                   },
        LineNr       = { fg = colors.gra,                  },
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
        WildMenu     = { fg = colors.cya,                  },
        DiffAdd      = { fg = colors.cya, st = "underline" },
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
        Todo         = { fg = colors.blu, st = "bold"      },
        Underlined   = {                  st = "underline" },
        Comment      = { fg = colors.gra,                  },
        Type         = { fg = colors.pur,                  },
        Character    = { fg = colors.cya,                  },
        String       = { fg = colors.cya,                  },
        Conditional  = { fg = colors.pik,                  },
        Repeat       = { fg = colors.pik,                  },
        Constant     = { fg = colors.blu,                  },
        Float        = { fg = colors.blu,                  },
        Number       = { fg = colors.blu,                  },
        Function     = { fg = colors.fg1, st = "italic"    },
        Special      = { fg = colors.fg1,                  },
        Identifier   = { fg = colors.fg1,                  },
        Keyword      = { fg = colors.pik,                  },
        Statement    = { fg = colors.pik,                  },
        Tag          = { fg = colors.pik,                  },
        PreProc      = { fg = colors.yel,                  },
        Define       = { fg = colors.pur,                  },
        Operator     = { fg = colors.red,                  },
        StorageClass = { fg = colors.Pur,                  },
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
        DiagnosticVirtualTextError           = { fg = colors.err, },
        DiagnosticUnderlineError             = { fg = colors.err, },
        DiagnosticFloatingError              = { fg = colors.err, },
        DiagnosticSignError                  = { fg = colors.err, },
        DiagnosticVirtualTextWarn            = { fg = colors.war, },
        DiagnosticUnderlineWarn              = { fg = colors.war, },
        DiagnosticFloatingWarn               = { fg = colors.war, },
        DiagnosticSignWarn                   = { fg = colors.war, },
        DiagnosticVirtualTextInfo            = { fg = colors.blu, },
        DiagnosticUnderlineInfo              = { fg = colors.blu, },
        DiagnosticFloatingInfo               = { fg = colors.blu, },
        DiagnosticSignInfo                   = { fg = colors.blu, },
        DiagnosticVirtualTextHint            = { fg = colors.pur, },
        DiagnosticUnderlineHint              = { fg = colors.pur, },
        DiagnosticFloatingHint               = { fg = colors.pur, },
        DiagnosticSignHint                   = { fg = colors.pur, },
    }
    return lsp
end

theme.loadLspIcons = function() 
    local lsp = {
        LspDiagnosticsSignError = {
            text = "", 
            texthl = "LspDiagnosticsDefaultError"
        },
        LspDiagnosticsSignWarning = {
            text = "", 
            texthl = "LspDiagnosticsDefaultWarning"
        },
        LspDiagnosticsSignInformation = {
            text = "", 
            texthl = "LspDiagnosticsDefaultInformation"
        },
        LspDiagnosticsSignError = {
            text = "",
            texthl = "LspDiagnosticsDefaultHint"
        },
    }
    return lsp
end

theme.loadTerminal = function ()
  vim.g.terminal_color_0  = colors.bg1
  vim.g.terminal_color_1  = colors.red
  vim.g.terminal_color_2  = colors.cya
  vim.g.terminal_color_3  = colors.pik
  vim.g.terminal_color_4  = colors.blu
  vim.g.terminal_color_5  = colors.pur
  vim.g.terminal_color_6  = colors.cya
  vim.g.terminal_color_7  = colors.fg2
  vim.g.terminal_color_8  = colors.bg4
  vim.g.terminal_color_9  = colors.red
  vim.g.terminal_color_10 = colors.cya
  vim.g.terminal_color_11 = colors.pik
  vim.g.terminal_color_12 = colors.blu
  vim.g.terminal_color_13 = colors.pur
  vim.g.terminal_color_14 = colors.cya
  vim.g.terminal_color_15 = colors.fg1
end

return theme
