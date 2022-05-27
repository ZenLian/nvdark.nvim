-- TODO: split plugins into seperate files
local M = {}
local p = require('nvdark.palette')
local style = require('nvdark.style')
local config = require('nvdark.config').options

-- TODO: unify colors
local c = {
  -- terminal compatibility
  base = {
    black = p.bg,
    red = p.red,
    green = p.green,
    yello = p.yello,
    blue = p.blue,
    magenta = p.pink,
    cyan = p.blueGreen,
    white = p.fg,
  },
  syntax = {
    comment = p.green,
    number = p.lightGreen,
    string = p.orange,
    boolean = p.blue,
    func = p.yellow,
    keyword = p.pink,
    operator = p.fg,
    type = p.blueGreen,
    typeBuiltin = p.blue,
    variable = p.lightBlue,
    variableBuiltin = p.blue,
  },
  diff = {
    add = p.diffGreenLight,
  },
  notify = {
    error = p.red,
    warn = p.yellowOrange,
    info = p.blue,
    debug = p.gray,
    trace = p.pink,
  },
  tab = {
    fg = p.tabFg,
    fgVisible = p.fg,
    fgInactive = p.tabInactiveFg,

    indicator = p.blue,
    pick = p.red,
    modified = p.green,

    bgFill = p.tabOutside,
    bgCurrent = p.tabCurrent,
    bgVisible = p.tabOther,
    bgInactive = p.tabOther,
  },
}

-- terminal colors support
vim.g.terminal_color_0 = c.base.black
vim.g.terminal_color_1 = c.base.red
vim.g.terminal_color_2 = c.base.green
vim.g.terminal_color_3 = c.base.yellow
vim.g.terminal_color_4 = c.base.blue
vim.g.terminal_color_5 = c.base.magenta
vim.g.terminal_color_6 = c.base.cyan
vim.g.terminal_color_7 = c.base.white
vim.g.terminal_color_8 = c.base.black
vim.g.terminal_color_9 = c.base.red
vim.g.terminal_color_10 = c.base.green
vim.g.terminal_color_11 = c.base.yellow
vim.g.terminal_color_12 = c.base.blue
vim.g.terminal_color_13 = c.base.magenta
vim.g.terminal_color_14 = c.base.cyan
vim.g.terminal_color_15 = c.base.white

-- builtin highlighting groups
M.builtin = {
  Normal = { fg = p.fg, bg = p.bg },
  ColorColumn = { bg = p.cursorDarkDark },
  Cursor = { fg = p.cursorDark, bg = p.cursorLight },
  -- lCursor          = { 'Cursor' },
  -- CursorIM         = { 'Cursor' },
  -- TermCursor       = { 'Cursor' },
  -- TermCursorNC = { 'Cursor' }, -- cursor in an unfocused termina
  CursorLine = { bg = p.cursorDarkDark },
  CursorColumn = { bg = p.cursorDarkDark },
  Directory = { fg = p.blue, bg = p.bg },
  DiffAdd = { bg = p.diffGreenLight },
  DiffChange = { bg = p.diffRedDark },
  DiffDelete = { bg = p.diffRedLight },
  DiffText = { bg = p.diffRedLight },
  EndOfBuffer = { fg = p.bg },

  Conceal = { fg = p.fg, bg = p.bg },
  ErrorMsg = { fg = p.red, bg = p.bg },
  VertSplit = { fg = p.splitDark, bg = p.bg }, -- Column separating vertically split window
  -- WinSeparator = { 'VertSplit' } -- separators between window split

  Folded = { fg = p.gray, bg = p.folded },
  FoldColumn = { fg = p.lineNumber },
  SignColumn = { fg = p.fg, bg = p.bg },
  IncSearch = { fg = p.none, bg = p.searchCurrent },
  -- Substitute       = { fg = c.bg0, bg = c.yellow }, --TODO
  LineNr = { fg = p.lineNumber, bg = p.bg },
  -- LineNrAbove = {
  -- LineNrBelow = {
  CursorLineNr = { fg = p.popupFront, bg = p.bg },
  -- CursorLineSign -- Like SignColumn when 'cursorline' is set for the cursor line
  -- CursorLineFold -- Like FoldColumn when 'cursorline' is set for the cursor line
  MatchParen = { fg = p.none, bg = p.cursorDark },
  ModeMsg = { fg = p.fg, bg = p.leftDark },
  -- MsgArea -- Area for messages and cmdlin
  -- MsgSeparator -- Separator for scrolled messages, `msgsep` flag of 'display
  MoreMsg = { fg = p.fg, bg = p.leftDark },
  NonText = { fg = p.lineNumber, bg = p.bg },
  NormalFloat = { fg = p.popupFront, bg = p.popupBack },
  -- NormalNC = { },
  FloatBorder = { fg = p.blue, bg = p.popupBack },
  Pmenu = { fg = p.popupFront, bg = p.popupBack },
  PmenuSel = { fg = p.popupFront, bg = p.popupHighlightBlue },
  PmenuSbar = { bg = p.popupBack },
  PmenuThumb = { bg = p.lineNumber },
  Question = { fg = p.blue, bg = p.bg },
  -- QuickFixLine     = { fg = c.purple, bg = c.none, 'bold' }, --TODO
  Search = { fg = p.none, bg = p.search },
  SpecialKey = { fg = p.blue, bg = p.none },
  SpellBad = { fg = p.red, bg = p.bg, style = 'undercurl', sp = p.red },
  SpellCap = { fg = p.red, bg = p.bg, style = 'undercurl', sp = p.red },
  SpellLocal = { fg = p.red, bg = p.bg, style = 'undercurl', sp = p.red },
  SpellRare = { fg = p.red, bg = p.bg, style = 'undercurl', sp = p.red },
  StatusLine = { fg = p.fg, bg = p.leftMid },
  StatusLineNC = { fg = p.fg, bg = p.leftDark },
  -- StatusLineTermNC = { fg = c.grey, bg = c.bg1 }, --TODO
  TabLine = { fg = p.fg, bg = p.tabOther },
  TabLineFill = { fg = p.fg, bg = p.tabOutside },
  TabLineSel = { fg = p.fg, bg = p.tabCurrent },
  Title = { fg = p.blue, bg = p.none, style = 'bold' },
  Visual = { fg = p.none, bg = p.selection },
  VisualNOS = { fg = p.none, bg = p.selection },
  WarningMsg = { fg = p.yellowOrange, bg = p.bg, style = 'bold' },
  Whitespace = { fg = p.lineNumber, bg = p.none },
  WildMenu = { fg = p.none, bg = p.selection },
}

-- common syntax groups
-- see :h group-name
M.syntax = {
  Comment = { fg = c.syntax.comment, style = style.comment },

  Constant = { fg = p.blue },
  String = { fg = c.syntax.string },
  Boolean = { fg = c.syntax.boolean },
  Character = { fg = c.syntax.string },
  Number = { fg = c.syntax.number },
  Float = { fg = c.syntax.number },

  Identifier = { fg = p.lightBlue },
  Function = { fg = c.syntax.func },

  Statement = { fg = c.syntax.keyword },
  Conditional = { fg = c.syntax.keyword },
  Repeat = { fg = c.syntax.keyword },
  Label = { fg = c.syntax.keyword },
  Operator = { fg = c.syntax.operator },
  Keyword = { fg = c.syntax.keyword },
  Exception = { fg = c.syntax.keyword },

  PreProc = { fg = c.syntax.keyword },
  Include = { fg = c.syntax.keyword },
  Define = { fg = c.syntax.keyword },
  Macro = { fg = c.syntax.keyword },
  PreCondit = { fg = c.syntax.keyword },

  Type = { fg = p.blue },
  StorageClass = { fg = p.blue },
  Structure = { fg = p.blue },
  Typedef = { fg = p.blue },

  Special = { fg = p.blue },
  SpecialChar = { fg = p.fg },
  Tag = { fg = p.fg },
  Delimiter = { fg = p.fg },
  SpecialComment = { fg = p.green },
  Debug = { fg = p.fg },

  Underlined = { fg = p.none, style = 'underline' },

  Ignore = { fg = p.fg },

  Error = { fg = p.red, style = 'undercurl' },

  Todo = { fg = p.yellowOrange, bg = p.bg, style = 'bold' },
}

-- Tree-Sitter syntax groups. Most link to corresponding
-- vim syntax groups (e.g. TSKeyword => Keyword) by default.
--
-- See :h nvim-treesitter-highlights
--
M.treesitter = {
  TSAttribute = { fg = p.blueGreen }, -- Annotations that can be attached to the code to denote some kind of meta information. e.g. C++/Dart attributes.
  TSAnnotation = { fg = p.yellow },
  TSBoolean = { 'Boolean' },
  TSCharacter = { 'Character' },
  TSCharacterSpecial = { 'SpecialChar' }, -- Special characters.
  TSComment = { 'Comment' },
  TSConditional = { 'Conditional' },
  TSConstant = { fg = p.yellow }, -- Constants identifiers. These might not be semantically constant. E.g. uppercase variables in Python.
  TSConstBuiltin = { fg = p.blue }, -- Built-in constant values: `nil` in Lua.
  TSConstMacro = { fg = p.blueGreen }, -- Constants defined by macros: `NULL` in C.
  TSConstructor = { fg = p.blueGreen }, -- Constructor calls and definitions: `{}` in Lua, and Java constructors.
  TSDebug = { 'Debug' }, -- Debugging statements.
  TSDefine = { 'Define' }, -- Preprocessor #define statements.
  TSError = { 'Error' }, -- Syntax/parser errors. This might highlight large sections of code while the user is typing still incomplete code, use a sensible highlight.
  TSException = { 'Exception' }, -- Exception related keywords: `try`, `except`, `finally` in Python.
  TSField = { fg = p.blueGreen }, -- Object and struct fields.
  TSFloat = { 'Float' }, -- Floating-point number literals.
  TSFunction = { 'Function' }, -- Function calls and definitions.
  TSFuncBuiltin = { fg = p.yellow }, -- Built-in functions: `print` in Lua.
  TSFuncMacro = { fg = p.yellow }, -- Macro defined functions (calls and definitions): each `macro_rules` in Rust.
  TSInclude = { 'Include' }, -- File or module inclusion keywords: `#include` in C, `use` or `extern crate` in Rust.
  TSKeyword = { 'Keyword' }, -- Keywords that don't fit into other categories.
  TSKeywordFunction = { fg = c.blue }, -- Keywords used to define a function: `function` in Lua, `def` and `lambda` in Python.
  TSKeywordOperator = { fg = p.blue }, -- Unary and binary operators that are English words: `and`, `or` in Python; `sizeof` in C.
  TSKeywordReturn = { 'Keyword' }, -- Keywords like `return` and `yield`.
  TSLabel = { fg = p.lightBlue }, -- GOTO labels: `label:` in C, and `::label::` in Lua.
  TSMethod = { fg = p.yellow }, -- Method calls and definitions.
  TSNamespace = { fg = p.blueGreen }, -- Identifiers referring to modules and namespaces.
  -- TSNone               { } , -- No highlighting (sets all highlight arguments to `NONE`). this group is used to clear certain ranges, for example, string interpolations. Don't change the values of this highlight group.
  -- TSNumber             = { "Number" }, -- Numeric literals that don't fit into other categories.
  -- TSOperator           = { "Operator" }, -- Binary or unary operators: `+`, and also `->` and `*` in C.
  TSParameter = { fg = p.lightBlue, style = style.parameter }, -- Parameters of a function.
  TSParameterReference = { 'TSParameter' }, -- References to parameters of a function.
  -- TSPreProc            = { "PreCondit" }, -- Preprocessor #if, #else, #endif, etc.
  TSProperty = { fg = p.lightBlue }, -- Same as `TSField`.
  TSPunctDelimiter = { fg = p.fg }, -- Punctuation delimiters: Periods, commas, semicolons, etc.
  TSPunctBracket = { fg = p.fg }, -- Brackets, braces, parentheses, etc.
  TSPunctSpecial = { fg = p.fg }, -- Special punctuation that doesn't fit into the previous categories.
  TSRepeat = { 'Keyword' }, -- Keywords related to loops: `for`, `while`, etc.
  TSStorageClass = { 'Keyword' }, -- Keywords that affect how a variable is stored: `static`, `comptime`, `extern`, etc.
  TSString = { 'String' }, -- String literals.
  TSStringRegex = { 'String' }, -- Regular expression literals.
  TSStringEscape = { fg = c.syntax.string, style = 'bold' }, -- Escape characters within a string: `\n`, `\t`, etc.
  TSStringSpecial = { 'String' }, -- Strings with special meaning that don't fit into the previous categories.
  TSSymbol = { fg = p.lightBlue }, -- Identifiers referring to symbols or atoms.
  TSTag = { fg = p.blue }, -- Tags like HTML tag names.
  -- TSTagAttribute       = { "Blue" }, -- HTML tag attributes.
  TSTagDelimiter = { fg = p.gray }, -- Tag delimiters like `<` `>` `/`.
  TSText = { fg = p.fg }, -- Non-structured text. Like text in a markup language.
  TSStrong = { fg = p.blue, style = 'bold' }, -- Text to be represented in bold.
  TSEmphasis = { style = style.enable }, -- Text to be represented with emphasis.
  TSUnderline = { fg = p.yellowOrange }, -- Text to be represented with an underline.
  -- TSStrike             = { "Grey" }, -- Strikethrough text.
  TSTitle = { fg = p.blue }, -- Text that is part of a title.
  -- TSTodo               = { "Todo" },
  TSLiteral = { fg = p.fg }, -- Literal or verbatim text.
  TSURI = { style = 'underline' }, -- URIs like hyperlinks or email addresses.
  -- TSMath               = { "Green" }, -- Math environments like LaTeX's `$ ... $`
  TSTextReference = { fg = p.orange }, -- Footnotes, text references, citations, etc.
  -- TSEnvironment        { } , -- Text environments of markup languages.
  -- TSEnvironmentName    { } , -- Text/string indicating the type of text environment. Like the name of a `\begin` block in LaTeX.
  TSNote = { fg = c.notify.info, style = 'bold' }, -- Text representation of an informational note.
  TSWarning = { fg = c.notify.warn, style = 'bold' }, -- Text representation of a warning note.
  TSDanger = { fg = c.notify.error, style = 'bold' }, -- Text representation of a danger note.
  TSType = { fg = c.syntax.type }, -- Type (and class) definitions and annotations.
  TSTypeBuiltin = { fg = c.syntax.typeBuiltin }, -- Built-in types: `i32` in Rust.
  TSVariable = { fg = c.syntax.variable }, -- Variable names that don't fit into other categories.
  TSVariableBuiltin = { fg = c.syntax.variableBuiltin }, -- Variable names defined by the language: `this` or `self` in Javascript.
}

-- see :h lsp-highlight
M.lsp = {
  LspReferenceText = { bg = p.leftMid },
  LspReferenceRead = { bg = p.leftMid },
  LspReferenceWrite = { bg = p.leftMid },
  -- LspCodeLens -- Used to color the virtual text of the codelens. See |nvim_buf_set_extmark()|.
  -- LspCodeLensSeparator -- Used to color the separator between two or more code lens.
  -- Used to highlight the active parameter in the signature help. See |vim.lsp.handlers.signature_help()|.
  LspSignatureActiveParameter = { fg = p.blue },
}

-- see :h diagnostic-highlights
M.diagnostic = {
  DiagnosticError = { fg = c.notify.error },
  DiagnosticWarn = { fg = c.notify.warn },
  DiagnosticInfo = { fg = c.notify.info },
  DiagnosticHint = { fg = c.notify.info },
  -- DiagnosticFloatingError    = { fg = c.red },
  -- DiagnosticFloatingWarn     = { fg = c.yellow },
  -- DiagnosticFloatingInfo     = { fg = c.blue },
  -- DiagnosticFloatingHint     = { fg = c.blue },
  DiagnosticVirtualTextError = { 'NonText' },
  DiagnosticVirtualTextWarn = { 'NonText' },
  DiagnosticVirtualTextInfo = { 'NonText' },
  DiagnosticVirtualTextHint = { 'NonText' },
  DiagnosticUnderlineError = { style = 'undercurl', sp = c.notify.error },
  DiagnosticUnderlineWarn = { style = 'undercurl', sp = c.notify.warn },
  DiagnosticUnderlineInfo = { style = 'undercurl', sp = c.notify.info },
  DiagnosticUnderlineHint = { style = 'undercurl', sp = c.notify.info },
  -- DiagnosticSignError      = { fg = c.red },
  -- DiagnosticSignWarn       = { fg = c.yellow },
  -- DiagnosticSignInfo       = { fg = c.blue },
  -- DiagnosticSignHint       = { fg = c.blue },
}

if config.diagnostic.colorful_virtual_text then
  M.diagnostic.DiagnosticVirtualTextError = { fg = c.notify.error }
  M.diagnostic.DiagnosticVirtualTextWarn = { fg = c.notify.warn }
  M.diagnostic.DiagnosticVirtualTextInfo = { fg = c.notify.info }
  M.diagnostic.DiagnosticVirtualTextHint = { fg = c.notify.info }
end

--
-- language specific
--
M.html = {
  htmlH1 = { fg = p.blue, style = 'bold' },
  htmlH2 = { 'htmlH1' },
  htmlH3 = { 'htmlH1' },
  htmlH4 = { 'htmlH1' },
  htmlH5 = { 'htmlH1' },
  htmlH6 = { 'htmlH1' },
}

M.markdown = {
  markdownH1 = { 'htmlH1' },
  markdownH2 = { 'htmlH2' },
  markdownH3 = { 'htmlH3' },
  markdownH4 = { 'htmlH4' },
  markdownH5 = { 'htmlH5' },
  markdownH6 = { 'htmlH6' },
  markdownUrl = { fg = p.green, style = 'underline' },
  markdownUrlTitle = { fg = p.orange },
  markdownUrlDelimiter = { fg = p.gray },
  markdownUrlTitleDelimiter = { fg = p.gray },
  markdownItalic = { style = 'italic' },
  markdownBold = { style = 'bold' },
  markdownItalicDelimiter = { fg = p.grey, style = 'italic' },
  markdownCode = { fg = p.lightBlue },
  markdownCodeBlock = { fg = p.lightBlue },
  markdownCodeDelimiter = { fg = p.lightBlue },
  markdownBlockquote = { 'Comment' },
  markdownListMarker = { fg = p.pink },
  markdownOrderdListMarker = { 'markdownListMarker' },
  --     markdownRule                 = { 'Yellow' },
  --     markdownHeadingRule          = { 'Grey' },
  --     markdownLinkDelimiter        = { 'Grey' },
  --     markdownLinkTextDelimiter    = { 'Grey' },
  --     markdownHeadingDelimiter     = { 'Grey' },
  --     markdownLinkText             = { 'Purple' },
  --     markdownIdDeclaration        = { 'markdownLinkText' },
  --     markdownBoldDelimiter        = { 'Grey' },
  --     markdownId                   = { 'Green' },
}

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
  CmpItemAbbrMatch = { fg = p.mediumBlue, style = 'bold' },
  CmpItemAbbrMatchFuzzy = { fg = p.mediumBlue, style = 'bold' },
  CmpItemAbbr = { fg = p.fg },
  CmpItemAbbrDeprecated = { fg = p.cursorDark, bg = p.popupBack, style = 'strikethrough' },
  CmpItemMenu = { fg = p.popupFront },
  CmpItemKind = { 'Pmenu' },
  CmpItemKindText = { fg = p.lightBlue },
  CmpItemKindMethod = { fg = p.pink },
  CmpItemKindFunction = { fg = p.pink },
  CmpItemKindConstructor = { fg = p.orange }, -- TODO
  CmpItemKindField = { 'TSField' },
  CmpItemKindVariable = { fg = p.lightBlue },
  CmpItemKindClass = { 'CmpItemKindConstructor' },
  CmpItemKindInterface = { fg = p.lightBlue },
  CmpItemKindModule = { 'CmpItemKindKeyword' },
  CmpItemKindProperty = { fg = p.fg },
  CmpItemKindUnit = { fg = p.fg },
  CmpItemKindValue = { 'TSField' },
  CmpItemKindEnum = { 'TSField' },
  CmpItemKindKeyword = { fg = p.fg },
  CmpItemKindSnippet = { 'TSText' },
  CmpItemKindColor = { fg = p.orange },
  CmpItemKindFile = { fg = p.fg },
  CmpItemKindReference = { 'TSParameterReference' },
  CmpItemKindFolder = { 'CmpItemKindFile' },
  CmpItemKindEnumMember = { 'TSField' },
  CmpItemKindConstant = { 'TSConstant' },
  CmpItemKindStruct = { fg = p.lightBlue },
  CmpItemKindEvent = { 'TSConstant' },
  CmpItemKindOperator = { 'TSOperator' },
  CmpItemKindTypeParameter = { 'TSParameter' },
}

-- nvim-telescope
M.telescope = {
  TelescopeNormal = { fg = p.fg, bg = p.leftDark },
  -- TelescopeBorder         = { fg = c.gray },
  TelescopePromptPrefix = { fg = p.lightBlue },
  TelescopePromptNormal = { fg = p.fg, bg = p.leftMid },
  TelescopePromptBorder = { fg = p.leftMid, bg = p.leftMid },
  TelescopePromptTitle = { fg = p.mediumBlue },
  TelescopePromptCounter = { fg = p.gray },
  TelescopeSelection = { fg = p.fg, bg = p.popupHighlightBlue },
  TelescopeMultiSelection = { fg = p.fg, bg = p.popupHighlightBlue },
  TelescopeMatching = { fg = p.mediumBlue, style = 'bold' },
  TelescopeResultsBorder = { fg = p.leftDark, bg = p.leftDark },
  TelescopeResultsTitle = { fg = p.gray },
  TelescopePreviewNormal = { fg = p.fg, bg = p.leftDark },
  TelescopePreviewBorder = { fg = p.blue, bg = p.leftDark },
  TelescopePreviewTitle = { fg = p.gray },
}

-- kyazdani42/nvim-tree.lua
M.nvimTree = {
  NvimTreeNormal = { fg = p.fg, bg = p.leftDark },
  NvimTreeCursorLine = { bg = p.leftMid },
  NvimTreeVertSplit = { fg = p.bg, bg = p.bg },
  NvimTreeEndOfBuffer = { fg = p.leftDark },
  -- NvimTreeSymlink = { 'Fg' },
  NvimTreeFolderName = { fg = p.fg },
  NvimTreeRootFolder = { fg = p.fg, style = 'bold' },
  -- NvimTreeFolderIcon = { 'Blue' },
  NvimTreeEmptyFolderName = { fg = p.gray },
  NvimTreeOpenedFolderName = { fg = p.fg },
  NvimTreeExecFile = { fg = p.blueGreen },
  -- NvimTreeOpenedFile = { 'Fg' },
  NvimTreeSpecialFile = { fg = p.pink },
  NvimTreeImageFile = { fg = p.violet },
  NvimTreeMarkdownFile = { fg = p.yellow, style = 'underline' },
  NvimTreeIndentMarker = { fg = p.context },
  NvimTreeGitDirty = { fg = p.yellow },
  -- NvimTreeGitStaged = { 'Blue' },
  -- NvimTreeGitMerge = { 'Cyan' },
  -- NvimTreeGitRenamed = { 'Purple' },
  NvimTreeGitNew = { fg = p.green },
  -- NvimTreeGitDeleted = { 'Red' },
  -- NvimTreeLspDiagnosticsError = { 'RedSign' },
  -- NvimTreeLspDiagnosticsWarning = { 'YellowSign' },
  -- NvimTreeLspDiagnosticsInformation = { 'BlueSign' },
  -- NvimTreeLspDiagnosticsHint = { 'GreenSign' },
  -- NvimTreWindowPicker = { 'NormalFloat' },
}

-- lewis6991/gitsigns.nvim
M.gitsigns = {
  GitSignsAdd = { fg = p.green },
  GitSignsChange = { fg = p.blue },
  GitSignsDelete = { fg = p.red },
  -- GitSignsAddNr            = { fg = c.bg, bg = c.green },
  -- GitSignsChangeNr         = { fg = c.bg, bg = c.blue },
  -- GitSignsDeleteNr         = { fg = c.bg, bg = c.red },
  GitSignsAddLn = { fg = p.bg, bg = p.green },
  GitSignsChangeLn = { fg = p.bg, bg = p.blue },
  GitSignsDeleteLn = { fg = p.bg, bg = p.red },
  -- GitSignsCurrentLineBlame = { fg = c.green },
}

-- folke/which-key.nvim
M.whichkey = {
  -- WhichKey          = { fg = c.mediumBlue },
  WhichKeySeperator = { fg = p.green },
  WhichKeyGroup = { fg = p.pink },
  WhichKeyDesc = { fg = p.blue },
  -- WhichKeyFloat = { 'NormalFloat' },
  -- WhichKeyValue = { 'Comment' },
}

-- rcarriga/nvim-notify
M.notify = {
  NotifyERRORBorder = { fg = c.notify.error },
  NotifyERRORIcon = { fg = c.notify.error },
  NotifyERRORTitle = { fg = c.notify.error },
  NotifyWARNBorder = { fg = c.notify.warn },
  NotifyWARNIcon = { fg = c.notify.warn },
  NotifyWARNTitle = { fg = c.notify.warn },
  NotifyINFOBorder = { fg = c.notify.info },
  NotifyINFOIcon = { fg = c.notify.info },
  NotifyINFOTitle = { fg = c.notify.info },
  NotifyDEBUGBorder = { fg = c.notify.debug },
  NotifyDEBUGIcon = { fg = c.notify.debug },
  NotifyDEBUGTitle = { fg = c.notify.debug },
  NotifyTRACEBorder = { fg = c.notify.trace },
  NotifyTRACEIcon = { fg = c.notify.trace },
  NotifyTRACETitle = { fg = c.notify.trace },
  NotifyERRORBody = { 'Normal' },
  NotifyWARNBody = { 'Normal' },
  NotifyINFOBody = { 'Normal' },
  NotifyDEBUGBody = { 'Normal' },
  NotifyTRACEBody = { 'Normal' },
}

-- indentBlankLine
M.indentline = {
  IndentBlanklineContextChar = { fg = p.contextCurrent, style = 'nocombine' },
  IndentBlanklineContextStart = { fg = p.contextCurrent, style = 'nocombine' },
  IndentBlanklineChar = { fg = p.context, style = 'nocombine' },
  IndentBlanklineSpaceChar = { fg = p.context, style = 'nocombine' },
  IndentBlanklineSpaceCharBlankline = { fg = p.context, style = 'nocombine' },
}

-- p00f/nvim-ts-rainbow
M.rainbow = {
  rainbowcol1 = { fg = p.fg },
  rainbowcol2 = { fg = p.lightBlue },
  rainbowcol3 = { fg = p.violet },
  rainbowcol4 = { fg = p.blueGreen },
  rainbowcol5 = { fg = p.yellow },
  rainbowcol6 = { fg = p.orange },
  rainbowcol7 = { fg = p.pink },
}

M.neogit = {
  NeogitNotificationInfo = { fg = c.notify.info },
  NeogitNotificationWarning = { fg = c.notify.warn },
  NeogitNotificationError = { fg = c.notify.error },
  NeogitDiffAddHighlight = { 'DiffAdd' },
  NeogitDiffDeleteHighlight = { 'DiffDelete' },
  NeogitDiffContextHighlight = { fg = p.none, bg = p.popupHighlightGray }, --guibg=#333333 guifg=#b2b2b2
  NeogitHunkHeader = { fg = p.fg, bg = p.context }, --guifg=#cccccc guibg=#404040
  NeogitHunkHeaderHighlight = { fg = p.fg, bg = p.contextCurrent }, --guifg=#cccccc guibg=#4d4d4d
}

-- vim-illuminate
M.illumate = {
  illuminatedWord = { 'LspReferenceText' },
  -- illuminatedCurWord = {}
}

M.bufferline = {
  BufferLineFill = { fg = c.tab.bgFill, bg = c.tab.bgFill },
  BufferLineBackground = { fg = c.tab.fgInactive, bg = c.tab.bgInactive },
  BufferLineBuffer = { fg = c.tab.fgInactive, bg = c.tab.bgInactive },
  BufferLineCloseButton = { fg = c.tab.fgInactive, bg = c.tab.bgInactive },
  BufferLineModified = { fg = c.tab.modified, bg = c.tab.bgInactive },
  BufferLineDiagnostic = { 'BufferLineBuffer' },
  BufferLineInfo = { 'BufferLineBuffer' },
  BufferLineInfoDiagnostic = { 'BufferLineBuffer' },
  BufferLineWarning = { 'BufferLineBuffer' },
  BufferLineWarningDiagnostic = { 'BufferLineBuffer' },
  BufferLineError = { 'BufferLineBuffer' },
  BufferLineErrorDiagnostic = { 'BufferLineBuffer' },
  BufferLineDuplicate = { fg = c.tab.fgInactive, bg = c.tab.bgInactive, style = 'italic' },
  BufferLineSeparator = { fg = c.tab.bgFill, bg = c.tab.bgInactive },
  BufferLinePick = { fg = c.tab.pick, bg = c.tab.bgInactive },

  -- visible
  BufferLineBufferVisible = { fg = c.tab.fgVisible, bg = c.tab.bgVisible },
  BufferLineCloseButtonVisible = { fg = c.tab.fgVisible, bg = c.tab.bgVisible },
  BufferLineModifiedVisible = { fg = c.tab.modified, bg = c.tab.bgVisible },
  BufferLineDiagnosticVisible = { 'BufferLineBufferVisible' },
  BufferLineInfoVisible = { 'BufferLineBufferVisible' },
  BufferLineInfoDiagnosticVisible = { 'BufferLineBufferVisible' },
  BufferLineWarningVisible = { 'BufferLineBufferVisible' },
  BufferLineWarningDiagnosticVisible = { 'BufferLineBufferVisible' },
  BufferLineErrorVisible = { 'BufferLineBufferVisible' },
  BufferLineErrorDiagnosticVisible = { 'BufferLineBufferVisible' },
  BufferLineDuplicateVisible = { fg = c.tab.fgInactive, bg = c.tab.bgVisible, style = 'italic' },
  BufferLineSeparatorVisible = { fg = c.tab.bgFill, bg = c.tab.bgVisible },
  BufferLinePickVisible = { fg = c.tab.pick, bg = c.tab.bgVisible },

  -- selected
  BufferLineBufferSelected = { fg = c.tab.fg, bg = c.tab.bgCurrent },
  BufferLineCloseButtonSelected = { fg = c.tab.fg, bg = c.tab.bgCurrent },
  BufferLineModifiedSelected = { fg = c.tab.modified, bg = c.tab.bgCurrent },
  BufferLineDiagnosticSelected = { fg = c.tab.fg, bg = c.tab.bgCurrent, style = 'italic' },
  BufferLineInfoSelected = { fg = c.notify.info, bg = c.tab.bgCurrent },
  BufferLineInfoDiagnosticSelected = { fg = c.notify.info, bg = c.tab.bgCurrent },
  BufferLineWarningSelected = { fg = c.notify.warn, bg = c.tab.bgCurrent },
  BufferLineWarningDiagnosticSelected = { fg = c.notify.warn, bg = c.tab.bgCurrent },
  BufferLineErrorSelected = { fg = c.notify.error, bg = c.tab.bgCurrent },
  BufferLineErrorDiagnosticSelected = { fg = c.notify.error, bg = c.tab.bgCurrent },
  BufferLineDuplicateSelected = { fg = c.tab.fgInactive, bg = c.tab.bgCurrent, style = 'italic' },
  BufferLineSeparatorSelected = { fg = c.tab.bgFill, bg = c.tab.bgCurrent },
  BufferLineIndicatorSelected = { fg = c.tab.indicator, bg = c.tab.bgCurrent },
  BufferLinePickSelected = { fg = c.tab.pick, bg = c.tab.bgCurrent },

  -- tab
  BufferLineTab = { 'BufferLineBuffer' },
  BufferLineTabSelected = { fg = c.tab.indicator, bg = c.tab.bgCurrent },
  BufferLineTabClose = { fg = c.tab.indicator, bg = c.tab.bgFill },
}

M.barbar = {
  BufferCurrent = { fg = c.tab.fg, bg = c.tab.bgCurrent },
  BufferCurrentIndex = { fg = c.tab.indicator, bg = c.tab.bgCurrent },
  BufferCurrentMod = { fg = c.tab.modified, bg = c.tab.bgCurrent },
  BufferCurrentSign = { fg = c.tab.indicator, bg = c.tab.bgCurrent },
  BufferCurrentTarget = { fg = c.tab.pick, bg = c.tab.bgCurrent },
  BufferVisible = { fg = c.tab.fgVisible, bg = c.tab.bgVisible },
  BufferVisibleIndex = { fg = c.tab.fgVisible, bg = c.tab.bgVisible },
  BufferVisibleMod = { fg = c.tab.modified, bg = c.tab.bgVisible },
  BufferVisibleSign = { fg = c.tab.fgVisible, bg = c.tab.bgVisible },
  BufferVisibleTarget = { fg = c.tab.pick, bg = c.tab.bgVisible },
  BufferInactive = { fg = c.tab.fgInactive, bg = c.tab.bgInactive },
  BufferInactiveIndex = { fg = c.tab.fgInactive, bg = c.tab.bgInactive },
  BufferInactiveMod = { fg = c.tab.modified, bg = c.tab.bgInactive },
  BufferInactiveSign = { fg = c.tab.fgInactive, bg = c.tab.bgInactive },
  BufferInactiveTarget = { fg = c.tab.pick, bg = c.tab.bgInactive },
  BufferTabpages = { fg = c.tab.indicator, bg = c.tab.bgFill, style = 'bold' },
  BufferTabpageFill = { fg = c.tab.bgFill, bg = c.tab.bgFill },
  BufferOffset = { fg = c.tab.indicator, bg = c.tab.bgFill },

  BufferCurrentIcon = { 'BufferCurrent' },
  BufferVisibleIcon = { 'BufferVisible' },
  BufferInactiveIcon = { 'BufferInactive' },
}

-- stevearc/aerial.nvim
M.aerial = {
  AerialLine = { bg = p.popupHighlightBlue },
  AerialLineNC = { bg = p.popupHighlightGray },
  AerialGuide = { fg = p.gray },
}

-- TODO: below

return M
