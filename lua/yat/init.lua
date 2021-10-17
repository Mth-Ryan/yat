local theme = require("yat.theme")

function highlight(group, color)
  local style = color.st and "gui="   .. color.st or "gui=NONE"
  local fg    = color.fg and "guifg=" .. color.fg or "guifg=NONE"
  local bg    = color.bg and "guibg=" .. color.bg or "guibg=NONE"
  local sp    = color.sp and "guisp=" .. color.sp or ""

  local hl = "highlight " .. group .. " " .. style .. " " .. fg .. " " .. bg .. " " .. sp

  vim.cmd(hl)
  if color.link then vim.cmd("highlight! link " .. group .. " " .. color.link) end
end

function tableHighlight(table)
    for group, color in pairs(table) do
        highlight(group, color)
    end
end

function setup()
    vim.cmd("hi clear")
    if vim.fn.exists("syntax_on") then vim.cmd("syntax reset") end
    vim.o.background    = "dark"
    vim.o.termguicolors = true
    vim.o.colors_name   = "yat"

    local editor = theme.loadEditor()
    local syntax = theme.loadSyntax()
    local lsp    = theme.loadLsp()

    tableHighlight(editor)
    tableHighlight(syntax)
    tableHighlight(lsp)

    theme.loadTerminal()
end

return { setup = setup }
