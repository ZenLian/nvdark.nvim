-- TODO: split plugins into seperate files
local M = {}
local c = require('nvdark.palette')
local style = require('nvdark.style')
local config = require('nvdark.config').options

-- terminal colors support
vim.g.terminal_color_0  = c.bg
vim.g.terminal_color_1  = c.red
vim.g.terminal_color_2  = c.green
vim.g.terminal_color_3  = c.yellow
vim.g.terminal_color_4  = c.blue
vim.g.terminal_color_5  = c.pink
vim.g.terminal_color_6  = c.blueGreen
vim.g.terminal_color_7  = c.fg
vim.g.terminal_color_8  = c.bg
vim.g.terminal_color_9  = c.red
vim.g.terminal_color_10 = c.green
vim.g.terminal_color_11 = c.yellow
vim.g.terminal_color_12 = c.blue
vim.g.terminal_color_13 = c.pink
vim.g.terminal_color_14 = c.blueGreen
vim.g.terminal_color_15 = c.fg

-- builtin highlighting groups
M.builtin = {
    Normal       = { fg = c.fg, bg = c.bg },
    ColorColumn  = { bg = c.cursorDarkDark },
    Cursor       = { fg = c.cursorDark, bg = c.cursorLight },
    -- lCursor          = { 'Cursor' },
    -- CursorIM         = { 'Cursor' },
    -- TermCursor       = { 'Cursor' },
    -- TermCursorNC = { 'Cursor' }, -- cursor in an unfocused termina
    CursorLine   = { bg = c.cursorDarkDark },
    CursorColumn = { bg = c.cursorDarkDark },
    Directory    = { fg = c.blue, bg = c.bg },
    DiffAdd      = { bg = c.diffGreenLight },
    DiffChange   = { bg = c.diffRedDark },
    DiffDelete   = { bg = c.diffRedLight },
    DiffText     = { bg = c.diffRedLight },
    EndOfBuffer  = { fg = c.bg },

    Conceal      = { fg = c.fg, bg = c.bg },
    ErrorMsg     = { fg = c.red, bg = c.bg },
    VertSplit    = { fg = c.splitDark, bg = c.bg }, -- Column separating vertically split window
    -- WinSeparator = {} -- separators between window split
    --
    Folded       = { fg = c.leftLight, bg = c.leftDark },
    FoldColumn   = { fg = c.lineNumber },
    SignColumn   = { fg = c.fg, bg = c.bg },
    IncSearch    = { fg = c.none, bg = c.searchCurrent },
    -- Substitute       = { fg = c.bg0, bg = c.yellow }, --TODO
    LineNr       = { fg = c.lineNumber, bg = c.bg },
    -- LineNrAbove = {
    -- LineNrBelow = {
    CursorLineNr = { fg = c.popupFront, bg = c.bg },
    -- CursorLineSign -- Like SignColumn when 'cursorline' is set for the cursor line
    -- CursorLineFold -- Like FoldColumn when 'cursorline' is set for the cursor line
    MatchParen   = { fg = c.none, bg = c.cursorDark },
    ModeMsg      = { fg = c.fg, bg = c.leftDark },
    -- MsgArea -- Area for messages and cmdlin
    -- MsgSeparator -- Separator for scrolled messages, `msgsep` flag of 'display
    MoreMsg      = { fg = c.fg, bg = c.leftDark },
    NonText      = { fg = c.lineNumber, bg = c.bg },
    -- NormalFloat      = { fg = c.fg, bg = c.bg2 }, --TODO
    -- NormalNC = { fg = palette.fg, bg = palette.bg0 },--TODO
    -- FloatBorder      = { fg = c.grey, bg = c.bg2 }, --TODO
    Pmenu        = { fg = c.popupFront, bg = c.popupBack },
    PmenuSel     = { fg = c.popupFront, bg = c.popupHighlightBlue },
    PmenuSbar    = { bg = c.popupBack },
    PmenuThumb   = { bg = c.lineNumber },
    Question     = { fg = c.blue, bg = c.bg },
    -- QuickFixLine     = { fg = c.purple, bg = c.none, 'bold' }, --TODO
    Search       = { fg = c.none, bg = c.search },
    SpecialKey   = { fg = c.blue, bg = c.none },
    SpellBad     = { fg = c.red, bg = c.bg, style = 'undercurl', sp = c.red },
    SpellCap     = { fg = c.red, bg = c.bg, style = 'undercurl', sp = c.red },
    SpellLocal   = { fg = c.red, bg = c.bg, style = 'undercurl', sp = c.red },
    SpellRare    = { fg = c.red, bg = c.bg, style = 'undercurl', sp = c.red },
    StatusLine   = { fg = c.fg, bg = c.leftMid },
    StatusLineNC = { fg = c.fg, bg = c.leftDark },
    -- StatusLineTermNC = { fg = c.grey, bg = c.bg1 }, --TODO
    TabLine      = { fg = c.fg, bg = c.tabOther },
    TabLineFill  = { fg = c.fg, bg = c.tabOutside },
    TabLineSel   = { fg = c.fg, bg = c.tabCurrent },
    Title        = { fg = c.none, bg = c.none, style = 'bold' },
    Visual       = { fg = c.none, bg = c.selection },
    VisualNOS    = { fg = c.none, bg = c.selection },
    WarningMsg   = { fg = c.red, bg = c.bg, style = 'bold' },
    Whitespace   = { fg = c.lineNumber, bg = c.none },
    WildMenu     = { fg = c.none, bg = c.selection },
}

-- common syntax groups
-- see :h group-name
M.syntax = {
    Comment = { fg = c.green, style = style.comment },

    Constant  = { fg = c.blue },
    String    = { fg = c.orange },
    Boolean   = { fg = c.blue },
    Character = { fg = c.orange },
    Number    = { fg = c.lightGreen },
    Float     = { fg = c.lightGreen },

    Identifier = { fg = c.lightBlue },
    Function   = { fg = c.yellow },

    Statement   = { fg = c.pink },
    Conditional = { fg = c.pink },
    Repeat      = { fg = c.pink },
    Label       = { fg = c.pink },
    Operator    = { fg = c.fg },
    Keyword     = { fg = c.pink },
    Exception   = { fg = c.pink },

    PreProc   = { fg = c.pink },
    Include   = { fg = c.pink },
    Define    = { fg = c.pink },
    Macro     = { fg = c.pink },
    PreCondit = { fg = c.pink },

    Type         = { fg = c.blue },
    StorageClass = { fg = c.blue },
    Structure    = { fg = c.blue },
    Typedef      = { fg = c.blue },

    Special        = { fg = c.blue },
    SpecialChar    = { fg = c.fg },
    Tag            = { fg = c.fg },
    Delimiter      = { fg = c.fg },
    SpecialComment = { fg = c.green },
    Debug          = { fg = c.fg },

    Underlined = { fg = c.none, style = 'underline' },

    Ignore = { fg = c.fg },

    Error = { fg = c.red, style = "undercurl" },

    Todo = { fg = c.yellowOrange, bg = c.bg, style = 'bold' },
}

-- Tree-Sitter syntax groups. Most link to corresponding
-- vim syntax groups (e.g. TSKeyword => Keyword) by default.
--
-- See :h nvim-treesitter-highlights
--
M.treesitter = {
    TSAttribute          = { fg = c.blueGreen }, -- Annotations that can be attached to the code to denote some kind of meta information. e.g. C++/Dart attributes.
    TSAnnotation         = { fg = c.yellow },
    -- TSBoolean            = { "Boolean" },
    -- TSCharacter          = { "Character" },
    -- TSCharacterSpecial   = { "SpecialChar" }, -- Special characters.
    -- TSComment            = { "Comment" },
    -- TSConditional        = { "Conditional" },
    TSConstant           = { fg = c.yellow }, -- Constants identifiers. These might not be semantically constant. E.g. uppercase variables in Python.
    TSConstBuiltin       = { fg = c.blue }, -- Built-in constant values: `nil` in Lua.
    TSConstMacro         = { fg = c.blueGreen }, -- Constants defined by macros: `NULL` in C.
    TSConstructor        = { fg = c.blueGreen }, -- Constructor calls and definitions: `{}` in Lua, and Java constructors.
    -- TSDebug           = { "Debug" }, -- Debugging statements.
    -- TSDefine             = { "Define" }, -- Preprocessor #define statements.
    -- TSError              = { "Error" }, -- Syntax/parser errors. This might highlight large sections of code while the user is typing still incomplete code, use a sensible highlight.
    -- TSException          = { "Exception" }, -- Exception related keywords: `try`, `except`, `finally` in Python.
    TSField              = { fg = c.lightBlue }, -- Object and struct fields.
    -- TSFloat              = { "Float" }, -- Floating-point number literals.
    -- TSFunction           = { "Function" }, -- Function calls and definitions.
    TSFuncBuiltin        = { fg = c.yellow }, -- Built-in functions: `print` in Lua.
    TSFuncMacro          = { fg = c.yellow }, -- Macro defined functions (calls and definitions): each `macro_rules` in Rust.
    -- TSInclude         = { "Include" }, -- File or module inclusion keywords: `#include` in C, `use` or `extern crate` in Rust.
    TSKeyword            = { fg = c.blue }, -- Keywords that don't fit into other categories.
    TSKeywordFunction    = { fg = c.blue }, -- Keywords used to define a function: `function` in Lua, `def` and `lambda` in Python.
    TSKeywordOperator    = { fg = c.blue }, -- Unary and binary operators that are English words: `and`, `or` in Python; `sizeof` in C.
    -- TSKeywordReturn      = { "Keyword" }, -- Keywords like `return` and `yield`.
    TSLabel              = { fg = c.lightBlue }, -- GOTO labels: `label:` in C, and `::label::` in Lua.
    TSMethod             = { fg = c.yellow }, -- Method calls and definitions.
    TSNamespace          = { fg = c.blueGreen }, -- Identifiers referring to modules and namespaces.
    -- TSNone               { } , -- No highlighting (sets all highlight arguments to `NONE`). this group is used to clear certain ranges, for example, string interpolations. Don't change the values of this highlight group.
    -- TSNumber             = { "Number" }, -- Numeric literals that don't fit into other categories.
    -- TSOperator           = { "Operator" }, -- Binary or unary operators: `+`, and also `->` and `*` in C.
    TSParameter          = { fg = c.lightBlue, style = style.parameter }, -- Parameters of a function.
    TSParameterReference = { "TSParameter" }, -- References to parameters of a function.
    -- TSPreProc            = { "PreCondit" }, -- Preprocessor #if, #else, #endif, etc.
    TSProperty           = { fg = c.lightBlue }, -- Same as `TSField`.
    TSPunctDelimiter     = { fg = c.fg }, -- Punctuation delimiters: Periods, commas, semicolons, etc.
    TSPunctBracket       = { fg = c.fg }, -- Brackets, braces, parentheses, etc.
    TSPunctSpecial       = { fg = c.fg }, -- Special punctuation that doesn't fit into the previous categories.
    TSRepeat             = { "Keyword" }, -- Keywords related to loops: `for`, `while`, etc.
    TSStorageClass       = { "Keyword" }, -- Keywords that affect how a variable is stored: `static`, `comptime`, `extern`, etc.
    TSString             = { "String" }, -- String literals.
    TSStringRegex        = { "String" }, -- Regular expression literals.
    TSStringEscape       = { fg = c.orange, style = 'bold' }, -- Escape characters within a string: `\n`, `\t`, etc.
    TSStringSpecial      = { "String" }, -- Strings with special meaning that don't fit into the previous categories.
    TSSymbol             = { fg = c.lightBlue }, -- Identifiers referring to symbols or atoms.
    TSTag                = { fg = c.blue }, -- Tags like HTML tag names.
    -- TSTagAttribute       = { "Blue" }, -- HTML tag attributes.
    TSTagDelimiter       = { fg = c.gray }, -- Tag delimiters like `<` `>` `/`.
    TSText               = { fg = c.fg }, -- Non-structured text. Like text in a markup language.
    TSStrong             = { fg = c.blue, style = 'bold' }, -- Text to be represented in bold.
    TSEmphasis           = { style = style.enable }, -- Text to be represented with emphasis.
    TSUnderline          = { fg = c.yellowOrange }, -- Text to be represented with an underline.
    -- TSStrike             = { "Grey" }, -- Strikethrough text.
    TSTitle              = { fg = c.blue }, -- Text that is part of a title.
    -- TSTodo               = { "Todo" },
    TSLiteral            = { fg = c.fg }, -- Literal or verbatim text.
    TSURI                = { style = "underline" }, -- URIs like hyperlinks or email addresses.
    -- TSMath               = { "Green" }, -- Math environments like LaTeX's `$ ... $`
    TSTextReference      = { fg = c.orange }, -- Footnotes, text references, citations, etc.
    -- TSEnvironment        { } , -- Text environments of markup languages.
    -- TSEnvironmentName    { } , -- Text/string indicating the type of text environment. Like the name of a `\begin` block in LaTeX.
    TSNote               = { fg = c.blueGreen, style = 'bold' }, -- Text representation of an informational note.
    TSWarning            = { fg = c.yellowOrange, style = 'bold' }, -- Text representation of a warning note.
    TSDanger             = { fg = c.red, style = 'bold' }, -- Text representation of a danger note.
    TSType               = { fg = c.blueGreen }, -- Type (and class) definitions and annotations.
    TSTypeBuiltin        = { fg = c.blue }, -- Built-in types: `i32` in Rust.
    TSVariable           = { fg = c.lightBlue }, -- Variable names that don't fit into other categories.
    TSVariableBuiltin    = { fg = c.lightBlue }, -- Variable names defined by the language: `this` or `self` in Javascript.
}

-- see :h lsp-highlight
M.lsp = {
    LspReferenceText            = { bg = c.popupHighlightGray },
    LspReferenceRead            = { bg = c.popupHighlightGray },
    LspReferenceWrite           = { bg = c.popupHighlightGray },
    -- LspCodeLens -- Used to color the virtual text of the codelens. See |nvim_buf_set_extmark()|.
    -- LspCodeLensSeparator -- Used to color the separator between two or more code lens.
    -- Used to highlight the active parameter in the signature help. See |vim.lsp.handlers.signature_help()|.
    LspSignatureActiveParameter = { fg = c.blue },
}

-- see :h diagnostic-highlights
M.diagnostic = {
    DiagnosticError            = { fg = c.red },
    DiagnosticWarn             = { fg = c.yellow },
    DiagnosticInfo             = { fg = c.blue },
    DiagnosticHint             = { fg = c.blue },
    -- DiagnosticFloatingError    = { fg = c.red },
    -- DiagnosticFloatingWarn     = { fg = c.yellow },
    -- DiagnosticFloatingInfo     = { fg = c.blue },
    -- DiagnosticFloatingHint     = { fg = c.blue },
    DiagnosticVirtualTextError = { 'NonText' },
    DiagnosticVirtualTextWarn  = { 'NonText' },
    DiagnosticVirtualTextInfo  = { 'NonText' },
    DiagnosticVirtualTextHint  = { 'NonText' },
    DiagnosticUnderlineError   = { style = 'undercurl', sp = c.red },
    DiagnosticUnderlineWarn    = { style = 'undercurl', sp = c.yellow },
    DiagnosticUnderlineInfo    = { style = 'undercurl', sp = c.blue },
    DiagnosticUnderlineHint    = { style = 'undercurl', sp = c.blue },
    -- DiagnosticSignError      = { fg = c.red },
    -- DiagnosticSignWarn       = { fg = c.yellow },
    -- DiagnosticSignInfo       = { fg = c.blue },
    -- DiagnosticSignHint       = { fg = c.blue },
}


if config.diagnostic.colorful_virtual_text then
    M.diagnostic.DiagnosticVirtualTextError = { fg = c.red }
    M.diagnostic.DiagnosticVirtualTextWarn  = { fg = c.yellow }
    M.diagnostic.DiagnosticVirtualTextInfo  = { fg = c.blue }
    M.diagnostic.DiagnosticVirtualTextHint  = { fg = c.blue }
end

--
-- language specific
--

-- M.markdown = {
--     markdownH1                   = { fg = c.purple, style = 'bold' },
--     markdownH2                   = { fg = c.red, style = 'bold' },
--     markdownH3                   = { fg = c.blue, style = 'bold' },
--     markdownH4                   = { fg = c.yellow, style = 'bold' },
--     markdownH5                   = { fg = c.green, style = 'bold' },
--     markdownH6                   = { fg = c.cyan, style = 'bold' },
--     markdownUrl                  = { fg = c.green, style = 'underline' },
--     markdownItalic               = { style = style.markdown },
--     markdownBold                 = { 'Bold' },
--     markdownItalicDelimiter      = { fg = c.grey, style = style.markdown },
--     markdownCode                 = { 'Green' },
--     markdownCodeBlock            = { 'Green' },
--     markdownCodeDelimiter        = { 'Green' },
--     markdownBlockquote           = { 'Grey' },
--     markdownListMarker           = { 'Red' },
--     markdownOrdepurpleListMarker = { 'Red' },
--     markdownRule                 = { 'Yellow' },
--     markdownHeadingRule          = { 'Grey' },
--     markdownUrlDelimiter         = { 'Grey' },
--     markdownLinkDelimiter        = { 'Grey' },
--     markdownLinkTextDelimiter    = { 'Grey' },
--     markdownHeadingDelimiter     = { 'Grey' },
--     markdownLinkText             = { 'Purple' },
--     markdownUrlTitleDelimiter    = { 'Blue' },
--     markdownIdDeclaration        = { 'markdownLinkText' },
--     markdownBoldDelimiter        = { 'Grey' },
--     markdownId                   = { 'Green' },
-- }

-- M.help = {
--     helpNote = { fg = c.yellow, bg = c.none, style = 'bold' },
--     helpHeadline = { fg = c.purple, bg = c.none, style = 'bold' },
--     helpHeader = { fg = c.blue, bg = c.none, style = 'bold' },
--     helpURL = { fg = c.blue, bg = c.none, style = 'underline' },
--     helpHyperTextEntry = { fg = c.red, bg = c.none, style = 'bold' },
--     helpHyperTextJump = { 'Red' },
--     helpCommand = { 'Cyan' },
--     helpExample = { 'Green' },
--     helpSpecial = { 'Yellow' },
--     helpSectionDelim = { 'Grey' },
-- }

--
-- plugins
--

-- hrsh7th/nvim-cmp
M.cmp = {
    CmpItemAbbrMatch         = { fg = c.mediumBlue, style = 'bold' },
    CmpItemAbbrMatchFuzzy    = { fg = c.mediumBlue, style = 'bold' },
    CmpItemAbbr              = { fg = c.fg },
    CmpItemAbbrDeprecated    = { fg = c.cursorDark, bg = c.popupBack, style = 'strikethrough' },
    CmpItemMenu              = { fg = c.popupFront },
    CmpItemKind              = { 'Pmenu' },
    CmpItemKindText          = { fg = c.lightBlue },
    CmpItemKindMethod        = { fg = c.pink },
    CmpItemKindFunction      = { fg = c.pink },
    CmpItemKindConstructor   = { fg = c.orange }, -- TODO
    CmpItemKindField         = { 'TSField' },
    CmpItemKindVariable      = { fg = c.lightBlue },
    CmpItemKindClass         = { 'CmpItemKindConstructor' },
    CmpItemKindInterface     = { fg = c.lightBlue },
    CmpItemKindModule        = { 'CmpItemKindKeyword' },
    CmpItemKindProperty      = { fg = c.fg },
    CmpItemKindUnit          = { fg = c.fg },
    CmpItemKindValue         = { 'TSField' },
    CmpItemKindEnum          = { 'TSField' },
    CmpItemKindKeyword       = { fg = c.fg },
    CmpItemKindSnippet       = { 'TSText' },
    CmpItemKindColor         = { fg = c.orange },
    CmpItemKindFile          = { fg = c.fg },
    CmpItemKindReference     = { 'TSParameterReference' },
    CmpItemKindFolder        = { 'CmpItemKindFile' },
    CmpItemKindEnumMember    = { 'TSField' },
    CmpItemKindConstant      = { 'TSConstant' },
    CmpItemKindStruct        = { fg = c.lightBlue },
    CmpItemKindEvent         = { 'TSConstant' },
    CmpItemKindOperator      = { 'TSOperator' },
    CmpItemKindTypeParameter = { 'TSParameter' },
}

-- nvim-telescope
M.telescope = {
    TelescopeNormal         = { fg = c.fg, bg = c.leftDark },
    -- TelescopeBorder         = { fg = c.gray },
    TelescopePromptPrefix   = { fg = c.lightBlue },
    TelescopePromptNormal   = { fg = c.fg, bg = c.leftMid },
    TelescopePromptBorder   = { fg = c.leftMid, bg = c.leftMid },
    TelescopePromptTitle    = { fg = c.mediumBlue },
    TelescopePromptCounter  = { fg = c.gray },
    TelescopeSelection      = { fg = c.fg, bg = c.popupHighlightBlue },
    TelescopeMultiSelection = { fg = c.fg, bg = c.popupHighlightBlue },
    TelescopeMatching       = { fg = c.mediumBlue, style = 'bold' },
    TelescopeResultsBorder  = { fg = c.leftDark, bg = c.leftDark },
    TelescopeResultsTitle   = { fg = c.gray },
    TelescopePreviewNormal  = { fg = c.fg, bg = c.leftDark },
    TelescopePreviewBorder  = { fg = c.blue, bg = c.leftDark },
    TelescopePreviewTitle   = { fg = c.gray },
}

-- kyazdani42/nvim-tree.lua
M.nvimTree = {
    NvimTreeNormal = { fg = c.fg, bg = c.leftDark },
    NvimTreeCursorLine = { bg = c.leftMid },
    NvimTreeVertSplit = { fg = c.bg, bg = c.bg },
    NvimTreeEndOfBuffer = { fg = c.leftDark },
    -- NvimTreeSymlink = { 'Fg' },
    NvimTreeFolderName = { fg = c.fg },
    NvimTreeRootFolder = { fg = c.fg, style = 'bold' },
    -- NvimTreeFolderIcon = { 'Blue' },
    NvimTreeEmptyFolderName = { fg = c.gray },
    NvimTreeOpenedFolderName = { fg = c.fg },
    NvimTreeExecFile = { fg = c.blueGreen },
    -- NvimTreeOpenedFile = { 'Fg' },
    NvimTreeSpecialFile = { fg = c.pink },
    NvimTreeImageFile = { fg = c.violet },
    NvimTreeMarkdownFile = { fg = c.yellow, style = 'underline' },
    NvimTreeIndentMarker = { fg = c.context },
    NvimTreeGitDirty = { fg = c.yellow },
    -- NvimTreeGitStaged = { 'Blue' },
    -- NvimTreeGitMerge = { 'Cyan' },
    -- NvimTreeGitRenamed = { 'Purple' },
    NvimTreeGitNew = { fg = c.green },
    -- NvimTreeGitDeleted = { 'Red' },
    -- NvimTreeLspDiagnosticsError = { 'RedSign' },
    -- NvimTreeLspDiagnosticsWarning = { 'YellowSign' },
    -- NvimTreeLspDiagnosticsInformation = { 'BlueSign' },
    -- NvimTreeLspDiagnosticsHint = { 'GreenSign' },
    -- NvimTreWindowPicker = { 'NormalFloat' },
}

-- lewis6991/gitsigns.nvim
M.gitsigns = {
    GitSignsAdd      = { fg = c.green },
    GitSignsChange   = { fg = c.blue },
    GitSignsDelete   = { fg = c.red },
    -- GitSignsAddNr            = { fg = c.bg, bg = c.green },
    -- GitSignsChangeNr         = { fg = c.bg, bg = c.blue },
    -- GitSignsDeleteNr         = { fg = c.bg, bg = c.red },
    GitSignsAddLn    = { fg = c.bg, bg = c.green },
    GitSignsChangeLn = { fg = c.bg, bg = c.blue },
    GitSignsDeleteLn = { fg = c.bg, bg = c.red },
    -- GitSignsCurrentLineBlame = { fg = c.green },
}

-- folke/which-key.nvim
M.whichkey = {
    -- WhichKey          = { fg = c.mediumBlue },
    WhichKeySeperator = { fg = c.green },
    WhichKeyGroup     = { fg = c.pink },
    WhichKeyDesc      = { fg = c.blue },
    -- WhichKeyFloat = { 'NormalFloat' },
    -- WhichKeyValue = { 'Comment' },
}

-- rcarriga/nvim-notify
M.notify = {
    NotifyERRORBorder = { fg = c.red },
    NotifyERRORIcon   = { fg = c.red },
    NotifyERRORTitle  = { fg = c.red },
    NotifyWARNBorder  = { fg = c.yellow },
    NotifyWARNIcon    = { fg = c.yellow },
    NotifyWARNTitle   = { fg = c.yellow },
    NotifyINFOBorder  = { fg = c.green },
    NotifyINFOIcon    = { fg = c.green },
    NotifyINFOTitle   = { fg = c.green },
    NotifyDEBUGBorder = { fg = c.gray },
    NotifyDEBUGIcon   = { fg = c.gray },
    NotifyDEBUGTitle  = { fg = c.gray },
    NotifyTRACEBorder = { fg = c.pink },
    NotifyTRACEIcon   = { fg = c.pink },
    NotifyTRACETitle  = { fg = c.pink },
    NotifyERRORBody   = { 'Normal' },
    NotifyWARNBody    = { 'Normal' },
    NotifyINFOBody    = { 'Normal' },
    NotifyDEBUGBody   = { 'Normal' },
    NotifyTRACEBody   = { 'Normal' },
}

-- indentBlankLine
M.indentline = {
    IndentBlanklineContextChar = { fg = c.contextCurrent, style = 'nocombine' },
    IndentBlanklineContextStart = { fg = c.contextCurrent, style = 'nocombine' },
    IndentBlanklineChar = { fg = c.context, style = 'nocombine' },
    IndentBlanklineSpaceChar = { fg = c.context, style = 'nocombine' },
    IndentBlanklineSpaceCharBlankline = { fg = c.context, style = 'nocombine' },
}

-- p00f/nvim-ts-rainbow
M.rainbow = {
    rainbowcol1 = { fg = c.orange },
    rainbowcol2 = { fg = c.yellow },
    rainbowcol3 = { fg = c.blue },
    rainbowcol4 = { fg = c.pink },
    rainbowcol5 = { fg = c.blueGreen },
    rainbowcol6 = { fg = c.violet },
    rainbowcol7 = { fg = c.gray },
}

-- barbar.nvim
local barbar = {
    fg_target = c.red,
    fg_current = c.fg,
    fg_visible = c.fg,
    fg_inactive = c.gray,

    fg_modified = c.orange,
    fg_special = c.blue,
    fg_subtle = c.gray,

    bg_fill = c.tabOutside,
    bg_current = c.tabCurrent,
    bg_visible = c.tabOther,
    bg_inactive = c.tabOther,
}

M.barbar = {
    BufferCurrent        = { fg = barbar.fg_current, bg = barbar.bg_current },
    BufferCurrentIndex   = { fg = barbar.fg_special, bg = barbar.bg_current },
    BufferCurrentMod     = { fg = barbar.fg_modified, bg = barbar.bg_current },
    BufferCurrentSign    = { fg = barbar.fg_special, bg = barbar.bg_current },
    BufferCurrentTarget  = { fg = barbar.fg_target, bg = barbar.bg_current, style = 'bold' },
    BufferVisible        = { fg = barbar.fg_visible, bg = barbar.bg_visible },
    BufferVisibleIndex   = { fg = barbar.fg_visible, bg = barbar.bg_visible },
    BufferVisibleMod     = { fg = barbar.fg_modified, bg = barbar.bg_visible },
    BufferVisibleSign    = { fg = barbar.fg_visible, bg = barbar.bg_visible },
    BufferVisibleTarget  = { fg = barbar.fg_target, bg = barbar.bg_visible, style = 'bold' },
    BufferInactive       = { fg = barbar.fg_inactive, bg = barbar.bg_inactive },
    BufferInactiveIndex  = { fg = barbar.fg_subtle, bg = barbar.bg_inactive },
    BufferInactiveMod    = { fg = barbar.fg_modified, bg = barbar.bg_inactive },
    BufferInactiveSign   = { fg = barbar.fg_subtle, bg = barbar.bg_inactive },
    BufferInactiveTarget = { fg = barbar.fg_target, bg = barbar.bg_inactive, style = 'bold' },
    BufferTabpages       = { fg = barbar.fg_special, bg = barbar.bg_fill, style = 'bold' },
    BufferTabpageFill    = { fg = barbar.fg_inactive, bg = barbar.bg_fill },

    BufferCurrentIcon = { 'BufferCurrent' },
    BufferVisibleIcon = { 'BufferVisible' },
    BufferInactiveIcon = { 'BufferInactive' },
    BufferOffset = { 'BufferTabpageFill' },
}

-- TODO: below
-- M.bufferline = {

-- }

return M
