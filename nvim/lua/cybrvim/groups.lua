-- # ---------------------------------------
-- # CYBRvim     neovim theme syntax highlight (part of cybrland)
-- # Project:    https://github.com/scherrer-txt/cybrland
-- # Author:     scherrer-txt   |   License:     GPL-3.0
-- # Source:     ~/.config/nvim/lua/cybrvim/groups.lua
-- # ---------------------------------------

---@class Highlight
---@variable.member fg string color name or "#RRGGBB"
---@variable.member foreground string same fg, color name or "#RRGGBB"
---@variable.member bg string color name or "#RRGGBB"
---@variable.member background string same bg, color name or "#RRGGBB"
---@variable.member sp string color name or "#RRGGBB"
---@variable.member special string same sg, color name or "#RRGGBB"
---@variable.member blend integer value between 0 and 100
---@variable.member bold boolean
---@variable.member standout boolean
---@variable.member underline boolean
---@variable.member undercurl boolean
---@variable.member underdouble boolean
---@variable.member underdotted boolean
---@variable.member underdashed boolean
---@variable.member strikethrough boolean
---@variable.member italic boolean
---@variable.member reverse boolean
---@variable.member nocombine boolean
---@variable.member link string name of another highlight group to link to, see |:hi-link|.
---@variable.member default string Don't override existing definition |:hi-default|
---@variable.member ctermfg integer Sets foreground of cterm color |highlight-ctermfg|
---@variable.member ctermbg integer Sets background of cterm color |highlight-ctermbg|
---@variable.member cterm table cterm attribute map, like |highlight-args|.

---@alias HighlightGroups table<string, Highlight>

---setup highlight groups
---@param configs CybrvimConfig
---@return HighlightGroups
---@nodiscard
local function setup(configs)
   local colors = configs.colors
   assert(colors ~= nil, "Must pass colors")

   local endOfBuffer = {
      fg = configs.show_end_of_buffer and colors.visual or colors.bg,
   }

   return {
      Normal = { fg = colors.fg, bg = colors.bg, },
      NormalFloat = { fg = colors.fg, bg = colors.tr0, },
      Comment = { fg = colors.me0, italic = configs.italic_comment, },
      Constant = { fg = colors.ye0, },
      String = { fg = colors.ye0, },
      Character = { fg = colors.gr0, },
      Number = { fg = colors.or0, },
      Boolean = { fg = colors.cy0, },
      Float = { fg = colors.or0, },
      FloatBorder = { fg = colors.wh0, },
      Operator = { fg = colors.vi0, },
      Keyword = { fg = colors.cy0, },
      Keywords = { fg = colors.cy0, },
      Identifier = { fg = colors.cy0, },
      Function = { fg = colors.ye0, },
      Statement = { fg = colors.vi0, },
      Conditional = { fg = colors.pi0, },
      Repeat = { fg = colors.pi0, },
      Label = { fg = colors.cy0, },
      Exception = { fg = colors.vi0, },
      PreProc = { fg = colors.ye0, },
      Include = { fg = colors.vi0, },
      Define = { fg = colors.vi0, },
      Title = { fg = colors.cy0, },
      Macro = { fg = colors.vi0, },
      PreCondit = { fg = colors.cy0, },
      Type = { fg = colors.cy0, },
      StorageClass = { fg = colors.pi0, },
      Structure = { fg = colors.ye0, },
      TypeDef = { fg = colors.ye0, },
      Special = { fg = colors.gr0, italic = true },
      SpecialComment = { fg = colors.me0, italic = true, },
      Error = { fg = colors.re1, }, --FIX LATER
      Todo = { fg = colors.vi0, bold = true, italic = true, },
      Underlined = { fg = colors.cy0, underline = true, },

      Cursor = { reverse = true, },
      CursorLineNr = { fg = colors.fg, bold = true, },

      SignColumn = { bg = colors.bg, },

      Conceal = { fg = colors.me0, },
      CursorColumn = { bg = colors.no0, },
      CursorLine = { bg = colors.sel, },
      ColorColumn = { bg = colors.sel, },

      StatusLine = { fg = colors.wh0, bg = colors.sel, }, --FIGURE OUT
      StatusLineNC = { fg = colors.me0, }, --FIGURE OUT
      StatusLineTerm = { fg = colors.wh0, bg = colors.no0, }, --FIGURE OUT
      StatusLineTermNC = { fg = colors.me0, }, --FIGURE OUT

      Directory = { fg = colors.cy0, },
      DiffAdd = { fg = colors.bg, bg = colors.gr0, },
      DiffChange = { fg = colors.or0, },
      DiffDelete = { fg = colors.re0, },
      DiffText = { fg = colors.me0, },

      ErrorMsg = { fg = colors.re1, }, --FIX LATER
      VertSplit = { fg = colors.no0, },
      WinSeparator = { fg = colors.no0, },
      Folded = { fg = colors.me0, },
      FoldColumn = {},
      Search = { fg = colors.ye0, bg = colors.ye1, },
      IncSearch = { fg = colors.ye2, bg = colors.ye0, },
      LineNr = { fg = colors.me0, },
      MatchParen = { fg = colors.fg, underline = true, },
      NonText = { fg = colors.nontext, },
      Pmenu = { fg = colors.wh0, bg = colors.menu, },
      PmenuSel = { fg = colors.wh0, bg = colors.sel, },
      PmenuSbar = { bg = colors.bg, },
      PmenuThumb = { bg = colors.sel, },

      Question = { fg = colors.vi0, },
      QuickFixLine = { fg = colors.no0, bg = colors.ye0, },
      SpecialKey = { fg = colors.nontext, },

      SpellBad = { fg = colors.re1, underline = true, }, --FIX LATER
      SpellCap = { fg = colors.ye0, },
      SpellLocal = { fg = colors.ye0, },
      SpellRare = { fg = colors.ye0, },

      TabLine = { fg = colors.me0, },
      TabLineSel = { fg = colors.wh0, },
      TabLineFill = { bg = colors.bg, },
      Terminal = { fg = colors.wh0, bg = colors.no0, },
      Visual = { bg = colors.visual, },
      VisualNOS = { fg = colors.visual, },
      WarningMsg = { fg = colors.or0, bg = colors.or2 },
      WildMenu = { fg = colors.no0, bg = colors.wh0, },

      EndOfBuffer = endOfBuffer,

      -- TreeSitter
      ['@error'] = { fg = colors.re1, }, --FIX LATER
      ['@punctuation.delimiter'] = { fg = colors.fg, },
      ['@punctuation.bracket'] = { fg = colors.fg, },
      ['@markup.list'] = { fg = colors.cy0, },

      ['@constant'] = { fg = colors.vi0, },
      ['@constant.builtin'] = { fg = colors.vi0, },
      ['@markup.link.label.symbol'] = { fg = colors.vi0, },

      ['@constant.macro'] = { fg = colors.cy0, },
      ['@string.regexp'] = { fg = colors.re0, },
      ['@string'] = { fg = colors.ye0, },
      ['@string.escape'] = { fg = colors.cy0, },
      ['@string.special.symbol'] = { fg = colors.vi0, },
      ['@character'] = { fg = colors.gr0, },
      ['@number'] = { fg = colors.vi0, },
      ['@boolean'] = { fg = colors.vi0, },
      ['@number.float'] = { fg = colors.gr0, },
      ['@annotation'] = { fg = colors.ye0, },
      ['@attribute'] = { fg = colors.cy0, },
      ['@module'] = { fg = colors.or0, },

      ['@function.builtin'] = { fg = colors.cy0, },
      ['@function'] = { fg = colors.gr0, },
      ['@function.macro'] = { fg = colors.gr0, },
      ['@variable.parameter'] = { fg = colors.or0, },
      ['@variable.parameter.reference'] = { fg = colors.or0, },
      ['@function.method'] = { fg = colors.gr0, },
      ['@variable.member'] = { fg = colors.or0, },
      ['@property'] = { fg = colors.vi0, },
      ['@constructor'] = { fg = colors.cy0, },

      ['@keyword.conditional'] = { fg = colors.pi0, },
      ['@keyword.repeat'] = { fg = colors.pi0, },
      ['@label'] = { fg = colors.cy0, },

      ['@keyword'] = { fg = colors.pi0, },
      ['@keyword.function'] = { fg = colors.cy0, },
      ['@keyword.function.ruby'] = { fg = colors.pi0, },
      ['@keyword.operator'] = { fg = colors.pi0, },
      ['@operator'] = { fg = colors.pi0, },
      ['@keyword.exception'] = { fg = colors.vi0, },
      ['@type'] = { fg = colors.cy1, }, --FIX LATER
      ['@type.builtin'] = { fg = colors.cy0, italic = true, },
      ['@type.qualifier'] = { fg = colors.pi0, },
      ['@structure'] = { fg = colors.vi0, },
      ['@keyword.include'] = { fg = colors.pi0, },

      ['@variable'] = { fg = colors.fg, },
      ['@variable.builtin'] = { fg = colors.vi0, },

      ['@markup'] = { fg = colors.or0, },
      ['@markup.strong'] = { fg = colors.or0, bold = true, },     -- bold
      ['@markup.emphasis'] = { fg = colors.ye0, italic = true, }, -- italic
      ['@markup.underline'] = { fg = colors.or0, },
      ['@markup.heading'] = { fg = colors.pi0, bold = true, },        -- title
      ['@markup.raw'] = { fg = colors.ye0, },                 -- inline code
      ['@markup.link.url'] = { fg = colors.ye0, italic = true, },      -- urls
      ['@markup.link'] = { fg = colors.or0, bold = true, },

      ['@tag'] = { fg = colors.cy0, },
      ['@tag.attribute'] = { fg = colors.gr0, },
      ['@tag.delimiter'] = { fg = colors.cy0, },

      -- Semantic
      ['@class'] = { fg = colors.cy0 },
      ['@struct'] = { fg = colors.cy0 },
      ['@enum'] = { fg = colors.cy0 },
      ['@enumMember'] = { fg = colors.vi0 },
      ['@event'] = { fg = colors.cy0 },
      ['@interface'] = { fg = colors.cy0 },
      ['@modifier'] = { fg = colors.cy0 },
      ['@regexp'] = { fg = colors.ye0 },
      ['@typeParameter'] = { fg = colors.cy0 },
      ['@decorator'] = { fg = colors.cy0 },

      -- LSP Semantic (0.9+)
      ['@lsp.type.class'] = { fg = colors.cy0 },
      ['@lsp.type.enum'] = { fg = colors.cy0 },
      ['@lsp.type.decorator'] = { fg = colors.gr0 },
      ['@lsp.type.enumMember'] = { fg = colors.vi0 },
      ['@lsp.type.function'] = { fg = colors.gr0, },
      ['@lsp.type.interface'] = { fg = colors.cy0 },
      ['@lsp.type.macro'] = { fg = colors.cy0 },
      ['@lsp.type.method'] = { fg = colors.gr0, },
      ['@lsp.type.namespace'] = { fg = colors.or0, },
      ['@lsp.type.parameter'] = { fg = colors.or0, },
      ['@lsp.type.property'] = { fg = colors.vi0, },
      ['@lsp.type.struct'] = { fg = colors.cy0 },
      ['@lsp.type.type'] = { fg = colors.cy1, }, --FIX LATER
      ['@lsp.type.variable'] = { fg = colors.fg, },

      -- HTML
      htmlArg = { fg = colors.gr0, },
      htmlBold = { fg = colors.ye0, bold = true, },
      htmlEndTag = { fg = colors.cy0, },
      htmlH1 = { fg = colors.pi0, },
      htmlH2 = { fg = colors.pi0, },
      htmlH3 = { fg = colors.pi0, },
      htmlH4 = { fg = colors.pi0, },
      htmlH5 = { fg = colors.pi0, },
      htmlH6 = { fg = colors.pi0, },
      htmlItalic = { fg = colors.vi0, italic = true, },
      htmlLink = { fg = colors.vi0, underline = true, },
      htmlSpecialChar = { fg = colors.ye0, },
      htmlSpecialTagName = { fg = colors.cy0, },
      htmlTag = { fg = colors.cy0, },
      htmlTagN = { fg = colors.cy0, },
      htmlTagName = { fg = colors.cy0, },
      htmlTitle = { fg = colors.wh0, },

      -- Markdown
      markdownBlockquote = { fg = colors.ye0, italic = true, },
      markdownBold = { fg = colors.or0, bold = true, },
      markdownCode = { fg = colors.gr0, },
      markdownCodeBlock = { fg = colors.or0, },
      markdownCodeDelimiter = { fg = colors.re0, },
      markdownH2 = { link = "rainbow2" },
      markdownH1 = { link = "rainbow1" },
      markdownH3 = { link = "rainbow3" },
      markdownH4 = { link = "rainbow4" },
      markdownH5 = { link = "rainbow5" },
      markdownH6 = { link = "rainbow6" },
      markdownHeadingDelimiter = { fg = colors.re0, },
      markdownHeadingRule = { fg = colors.me0, },
      markdownId = { fg = colors.vi0, },
      markdownIdDeclaration = { fg = colors.cy0, },
      markdownIdDelimiter = { fg = colors.vi0, },
      markdownItalic = { fg = colors.ye0, italic = true, },
      markdownLinkDelimiter = { fg = colors.vi0, },
      markdownLinkText = { fg = colors.pi0, },
      markdownListMarker = { fg = colors.cy0, },
      markdownOrderedListMarker = { fg = colors.re0, },
      markdownRule = { fg = colors.me0, },
      ['@markup.heading.1.markdown'] = { link = 'rainbowcol1' },
		['@markup.heading.2.markdown'] = { link = 'rainbowcol2' },
		['@markup.heading.3.markdown'] = { link = 'rainbowcol3' },
		['@markup.heading.4.markdown'] = { link = 'rainbowcol4' },
		['@markup.heading.5.markdown'] = { link = 'rainbowcol5' },
		['@markup.heading.6.markdown'] = { link = 'rainbowcol6' },

      --  Diff
      diffAdded = { fg = colors.gr0, },
      diffRemoved = { fg = colors.re0, },
      diffFileId = { fg = colors.ye0, bold = true, reverse = true, },
      diffFile = { fg = colors.nontext, },
      diffNewFile = { fg = colors.gr0, },
      diffOldFile = { fg = colors.re0, },

      debugPc = { bg = colors.menu, },
      debugBreakpoint = { fg = colors.re0, reverse = true, },

      -- Git Signs
      GitSignsAdd = { fg = colors.gr1, }, --FIX LATER
      GitSignsChange = { fg = colors.cy0, },
      GitSignsDelete = { fg = colors.re1, }, --FIX LATER
      GitSignsAddLn = { fg = colors.no0, bg = colors.gr1, }, --FIX LATER
      GitSignsChangeLn = { fg = colors.no0, bg = colors.cy0, },
      GitSignsDeleteLn = { fg = colors.no0, bg = colors.re1, }, --FIX LATER
      GitSignsCurrentLineBlame = { fg = colors.wh0, },

      -- Telescope
      TelescopePromptBorder = { fg = colors.me0, },
      TelescopeResultsBorder = { fg = colors.me0, },
      TelescopePreviewBorder = { fg = colors.me0, },
      TelescopeSelection = { fg = colors.wh0, bg = colors.sel, },
      TelescopeMultiSelection = { fg = colors.vi0, bg = colors.sel, },
      TelescopeNormal = { fg = colors.fg, bg = colors.bg, },
      TelescopeMatching = { fg = colors.gr0, },
      TelescopePromptPrefix = { fg = colors.vi0, },
      TelescopeResultsDiffDelete = { fg = colors.re0 },
      TelescopeResultsDiffChange = { fg = colors.cy0 },
      TelescopeResultsDiffAdd = { fg = colors.gr0 },

      -- Flash
      FlashLabel =  { fg = colors.re0, bg = colors.re2 },

      -- NvimTree
      NvimTreeNormal = { fg = colors.fg, bg = colors.menu, },
      NvimTreeVertSplit = { fg = colors.bg, bg = colors.bg, },
      NvimTreeRootFolder = { fg = colors.fg, bold = true, },
      NvimTreeGitDirty = { fg = colors.ye0, },
      NvimTreeGitNew = { fg = colors.gr1, }, --FIX LATER
      NvimTreeImageFile = { fg = colors.pi0, },
      NvimTreeFolderIcon = { fg = colors.vi0, },
      NvimTreeIndentMarker = { fg = colors.nontext, },
      NvimTreeEmptyFolderName = { fg = colors.me0, },
      NvimTreeFolderName = { fg = colors.fg, },
      NvimTreeSpecialFile = { fg = colors.pi0, underline = true, },
      NvimTreeOpenedFolderName = { fg = colors.fg, },
      NvimTreeCursorLine = { bg = colors.sel, },
      NvimTreeIn = { bg = colors.sel, },

      NvimTreeEndOfBuffer = endOfBuffer,

      -- NeoTree
      NeoTreeNormal = { fg = colors.fg, bg = colors.menu, },
      NeoTreeNormalNC = { fg = colors.fg, bg = colors.menu, },
      NeoTreeDirectoryName = { fg = colors.fg },
      NeoTreeGitUnstaged = { fg = colors.magenta },
      NeoTreeGitModified = { fg = colors.magenta },
      NeoTreeGitUntracked = { fg = colors.gr1 }, --FIX LATER
      NeoTreeDirectoryIcon = { fg = colors.vi0 },
      NeoTreeIndentMarker = { fg = colors.nontext },
      NeoTreeDotfile = { fg = colors.me0 },

      -- Bufferline
      BufferLineIndicatorSelected = { fg = colors.vi0, },
      BufferLineFill = { bg = colors.gr0, },
      BufferLineBufferSelected = { bg = colors.bg, },
      BufferLineSeparator = { fg = colors.re0 },

      -- LSP
      DiagnosticError = { fg = colors.re0, },
      DiagnosticWarn = { fg = colors.ye0, },
      DiagnosticInfo = { fg = colors.cy0, },
      DiagnosticHint = { fg = colors.cy0, },
      DiagnosticUnderlineError = { undercurl = true, sp = colors.re0, },
      DiagnosticUnderlineWarn = { undercurl = true, sp = colors.ye0, },
      DiagnosticUnderlineInfo = { undercurl = true, sp = colors.cy0, },
      DiagnosticUnderlineHint = { undercurl = true, sp = colors.cy0, },
      DiagnosticSignError = { fg = colors.re0, },
      DiagnosticSignWarn = { fg = colors.ye0, },
      DiagnosticSignInfo = { fg = colors.cy0, },
      DiagnosticSignHint = { fg = colors.cy0, },
      DiagnosticFloatingError = { fg = colors.re0, },
      DiagnosticFloatingWarn = { fg = colors.ye0, },
      DiagnosticFloatingInfo = { fg = colors.cy0, },
      DiagnosticFloatingHint = { fg = colors.cy0, },
      DiagnosticVirtualTextError = { fg = colors.re0, },
      DiagnosticVirtualTextWarn = { fg = colors.ye0, },
      DiagnosticVirtualTextInfo = { fg = colors.cy0, },
      DiagnosticVirtualTextHint = { fg = colors.cy0, },

      LspDiagnosticsDefaultError = { fg = colors.re0, },
      LspDiagnosticsDefaultWarning = { fg = colors.ye0, },
      LspDiagnosticsDefaultInformation = { fg = colors.cy0, },
      LspDiagnosticsDefaultHint = { fg = colors.cy0, },
      LspDiagnosticsUnderlineError = { fg = colors.re0, undercurl = true, },
      LspDiagnosticsUnderlineWarning = { fg = colors.ye0, undercurl = true, },
      LspDiagnosticsUnderlineInformation = { fg = colors.cy0, undercurl = true, },
      LspDiagnosticsUnderlineHint = { fg = colors.cy0, undercurl = true, },
      LspReferenceText = { fg = colors.or0, },
      LspReferenceRead = { fg = colors.or0, },
      LspReferenceWrite = { fg = colors.or0, },
      LspCodeLens = { fg = colors.cy0, },
      LspInlayHint = { fg = "#969696", bg = "#2f3146" },

      --LSP Saga
      LspFloatWinNormal = { fg = colors.fg, },
      LspFloatWinBorder = { fg = colors.me0, },
      LspSagaHoverBorder = { fg = colors.me0, },
      LspSagaSignatureHelpBorder = { fg = colors.me0, },
      LspSagaCodeActionBorder = { fg = colors.me0, },
      LspSagaDefPreviewBorder = { fg = colors.me0, },
      LspLinesDiagBorder = { fg = colors.me0, },
      LspSagaRenameBorder = { fg = colors.me0, },
      LspSagaBorderTitle = { fg = colors.menu, },
      LSPSagaDiagnosticTruncateLine = { fg = colors.me0, },
      LspSagaDiagnosticBorder = { fg = colors.me0, },
      LspSagaShTruncateLine = { fg = colors.me0, },
      LspSagaDocTruncateLine = { fg = colors.me0, },
      LspSagaLspFinderBorder = { fg = colors.me0, },
      CodeActionNumber = { fg = colors.cy0, bg = 'NONE' },

      -- IndentBlankLine
      IndentBlanklineContextChar = { fg = colors.re1, nocombine = true, }, --FIX LATER

      -- Nvim compe
      CmpItemAbbrDeprecated = { fg = colors.wh0, bg = colors.bg, },
      CmpItemAbbrMatch = { fg = colors.cy0, bg = colors.bg, },

      -- barbar
      BufferVisibleTarget = { fg = colors.re0 },
      BufferTabpages = { fg = colors.nontext, bg = colors.no0, bold = true },
      BufferTabpageFill = { fg = colors.nontext, bg = colors.no0 },
      BufferCurrentSign = { fg = colors.vi0 },
      BufferCurrentTarget = { fg = colors.re0 },
      BufferInactive = { fg = colors.me0, bg = colors.no0, italic = true },
      BufferInactiveIndex = { fg = colors.nontext, bg = colors.no0, italic = true },
      BufferInactiveMod = { fg = colors.ye0, bg = colors.no0, italic = true },
      BufferInactiveSign = { fg = colors.nontext, bg = colors.no0, italic = true },
      BufferInactiveTarget = { fg = colors.re0, bg = colors.no0, bold = true },

      -- Compe
      CompeDocumentation = { link = "Pmenu" },
      CompeDocumentationBorder = { link = "Pmenu" },

      -- Cmp
      CmpItemAbbr = { fg = colors.wh0, bg = colors.bg },
      CmpItemKind = { fg = colors.wh0, bg = colors.bg },
      CmpItemKindMethod = { link = "@function.method" },
      CmpItemKindText = { link = "@markup" },
      CmpItemKindFunction = { link = "@function" },
      CmpItemKindConstructor = { link = "@type" },
      CmpItemKindVariable = { link = "@variable" },
      CmpItemKindClass = { link = "@type" },
      CmpItemKindInterface = { link = "@type" },
      CmpItemKindModule = { link = "@module" },
      CmpItemKindProperty = { link = "@property" },
      CmpItemKindOperator = { link = "@operator" },
      CmpItemKindReference = { link = "@variable.parameter.reference" },
      CmpItemKindUnit = { link = "@variable.member" },
      CmpItemKindValue = { link = "@variable.member" },
      CmpItemKindField = { link = "@variable.member" },
      CmpItemKindEnum = { link = "@variable.member" },
      CmpItemKindKeyword = { link = "@keyword" },
      CmpItemKindSnippet = { link = "@markup" },
      CmpItemKindColor = { link = "DevIconCss" },
      CmpItemKindFile = { link = "TSURI" },
      CmpItemKindFolder = { link = "TSURI" },
      CmpItemKindEvent = { link = "@constant" },
      CmpItemKindEnumMember = { link = "@variable.member" },
      CmpItemKindConstant = { link = "@constant" },
      CmpItemKindStruct = { link = "@structure" },
      CmpItemKindTypeParameter = { link = "@variable.parameter" },

      -- Blink
      BlinkCmpLabel = { fg = colors.wh0, bg = colors.menu },
      BlinkCmpLabelDeprecated = { fg = colors.wh0, bg = colors.menu },
      BlinkCmpLabelMatch = { fg = colors.cy0, bg = colors.menu },
      BlinkCmpKind = { fg = colors.wh0, bg = colors.menu },
      BlinkCmpScrollBarThumb = { bg = colors.fg },
      BlinkCmpScrollBarGutter = { bg = colors.menu },
      BlinkCmpKindFunction = { link = "@function" },
      BlinkCmpKindConstructor = { link = "@type" },
      BlinkCmpKindVariable = { link = "@variable" },
      BlinkCmpKindClass = { link = "@type" },
      BlinkCmpKindInterface = { link = "@type" },
      BlinkCmpKindModule = { link = "@module" },
      BlinkCmpKindProperty = { link = "@property" },
      BlinkCmpKindOperator = { link = "@operator" },
      BlinkCmpKindReference = { link = "@variable.parameter.reference" },
      BlinkCmpKindUnit = { link = "@variable.member" },
      BlinkCmpKindValue = { link = "@variable.member" },
      BlinkCmpKindField = { link = "@variable.member" },
      BlinkCmpKindEnum = { link = "@variable.member" },
      BlinkCmpKindKeyword = { link = "@keyword" },
      BlinkCmpKindSnippet = { link = "@markup" },
      BlinkCmpKindColor = { link = "DevIconCss" },
      BlinkCmpKindFile = { link = "TSURI" },
      BlinkCmpKindFolder = { link = "TSURI" },
      BlinkCmpKindEvent = { link = "@constant" },
      BlinkCmpKindEnumMember = { link = "@variable.member" },
      BlinkCmpKindConstant = { link = "@constant" },
      BlinkCmpKindStruct = { link = "@structure" },
      BlinkCmpKindTypeParameter = { link = "@variable.parameter" },

      -- navic
      NavicIconsFile = { link = "CmpItemKindFile" },
      NavicIconsModule = { link = "CmpItemKindModule" },
      NavicIconsNamespace = { link = "CmpItemKindModule" },
      NavicIconsPackage = { link = "CmpItemKindModule" },
      NavicIconsClass = { link = "CmpItemKindClass" },
      NavicIconsMethod = { link = "CmpItemKindMethod" },
      NavicIconsProperty = { link = "CmpItemKindProperty" },
      NavicIconsField = { link = "CmpItemKindField" },
      NavicIconsConstructor = { link = "CmpItemKindConstructor" },
      NavicIconsEnum = { link = "CmpItemKindEnum" },
      NavicIconsInterface = { link = "CmpItemKindInterface" },
      NavicIconsFunction = { link = "CmpItemKindFunction" },
      NavicIconsVariable = { link = "CmpItemKindVariable" },
      NavicIconsConstant = { link = "CmpItemKindConstant" },
      NavicIconsString = { link = "String" },
      NavicIconsNumber = { link = "Number" },
      NavicIconsBoolean = { link = "Boolean" },
      NavicIconsArray = { link = "CmpItemKindClass" },
      NavicIconsObject = { link = "CmpItemKindClass" },
      NavicIconsKey = { link = "CmpItemKindKeyword" },
      NavicIconsKeyword = { link = "CmpItemKindKeyword" },
      NavicIconsNull = { fg = "blue" },
      NavicIconsEnumMember = { link = "CmpItemKindEnumMember" },
      NavicIconsStruct = { link = "CmpItemKindStruct" },
      NavicIconsEvent = { link = "CmpItemKindEvent" },
      NavicIconsOperator = { link = "CmpItemKindOperator" },
      NavicIconsTypeParameter = { link = "CmpItemKindTypeParameter" },
      NavicText = { fg = 'gray' },
      NavicSeparator = { fg = 'gray' },

      -- TS rainbow colors
      rainbowcol1 = { fg = colors.fg },
      rainbowcol2 = { fg = colors.pi0 },
      rainbowcol3 = { fg = colors.cy0 },
      rainbowcol4 = { fg = colors.gr0 },
      rainbowcol5 = { fg = colors.vi0 },
      rainbowcol6 = { fg = colors.or0 },
      rainbowcol7 = { fg = colors.fg },

      -- Rainbow delimiter
      RainbowDelimiterRed = { fg = colors.fg },
      RainbowDelimiterye0 = { fg = colors.pi0 },
      RainbowDelimiterBlue = { fg = colors.cy0 },
      RainbowDelimiterOrange = { fg = colors.gr0 },
      RainbowDelimiterGreen = { fg = colors.vi0 },
      RainbowDelimiterViolet = { fg = colors.or0 },
      RainbowDelimiterCyan = { fg = colors.fg },

      -- mini.indentscope
      MiniIndentscopeSymbol = { fg = colors.pi0 }, --FIX LATER
      MiniIndentscopeSymbolOff = { fg = colors.pi0 }, --FIX LATER

      -- mini.icons
      MiniIconsAzure = { fg = colors.cy1 }, --FIX LATER
      MiniIconsBlue = { fg = colors.bl1 }, --FIX LATER
      MiniIconsCyan = { fg = colors.cy0 },
      MiniIconsGrey = { fg = colors.wh0 },
      MiniIconsOrange = { fg = colors.or0 },
      MiniIconsPurple = { fg = colors.vi0 },
      MiniIconsRed = { fg = colors.re0 },
      MiniIconsye0 = { fg = colors.ye0 },

      -- mini.statusline
      MiniStatuslineModeNormal = { fg = colors.no0, bg = colors.vi0, bold = true },
      MiniStatuslineModeInsert = { fg = colors.no0, bg = colors.gr0, bold = true },
      MiniStatuslineModeVisual = { fg = colors.no0, bg = colors.pi0, bold = true },
      MiniStatuslineModeReplace = { fg = colors.no0, bg = colors.ye0, bold = true },
      MiniStatuslineModeCommand = { fg = colors.no0, bg = colors.cy0, bold = true },
      MiniStatuslineInactive = { fg = colors.fg, bg = colors.visual, bold = true },
      MiniStatuslineDevinfo = { fg = colors.vi0, bg = colors.no0 },
      MiniStatuslineFilename = { fg = colors.wh0, bg = colors.no0 },
      MiniStatuslineFileinfo = { fg = colors.vi0, bg = colors.no0 },

      -- mini.files
      MiniFilesNormal = { fg = colors.fg, bg = colors.menu },
      MiniFilesBorder = { fg = colors.vi0, bg = colors.menu },
      MiniFilesBorderModified = { },
      MiniFilesCursorLine = { bg = colors.sel, },
      MiniFilesDirectory = { fg = colors.fg },
      MiniFilesFile = { fg = colors.fg },
      MiniFilesTitle = { fg = colors.fg },
      MiniFilesTitleFocused = { fg = colors.ye0 },

      -- goolord/alpha-nvim
      AlphaHeader = { fg = colors.vi0 },
      AlphaButtons = { fg = colors.cy0 },
      AlphaShortcut = { fg = colors.or0 },
      AlphaFooter = { fg = colors.vi0, italic = true },

      -- nvimdev/dashboard-nvim
      DashboardShortCut = { fg = colors.cy0 },
      DashboardHeader = { fg = colors.vi0 },
      DashboardCenter = { fg = colors.fg },
      DashboardFooter = { fg = colors.vi0, italic = true },
      DashboardKey = { fg = colors.or0 },
      DashboardDesc = { fg = colors.cy0 },
      DashboardIcon = { fg = colors.cy0, bold = true },

      -- dap UI
      DapUIPlayPause = { fg = colors.gr1 }, --FIX LATER
      DapUIRestart = { fg = colors.gr0 },
      DapUIStop = { fg = colors.re0 },
      DapUIStepOver = { fg = colors.cy0 },
      DapUIStepInto = { fg = colors.cy0 },
      DapUIStepOut = { fg = colors.cy0 },
      DapUIStepBack = { fg = colors.cy0 },
      DapUIType = { fg = colors.bl1 }, --FIX LATER
      DapUIScope = { fg = colors.cy1 }, --FIX LATER
      DapUIModifiedValue = { fg = colors.cy1, bold = true }, --FIX LATER
      DapUIDecoration = { fg = colors.cy1 }, --FIX LATER
      DapUIThread = { fg = colors.gr1 }, --FIX LATER
      DapUIStoppedThread = { fg = colors.cy1 }, --FIX LATER
      DapUISource = { fg = colors.bl1 }, --FIX LATER
      DapUILineNumber = { fg = colors.cy1 }, --FIX LATER
      DapUIFloatBorder = { fg = colors.cy1 }, --FIX LATER
      DapUIWatchesEmpty = { fg = colors.pi0 },
      DapUIWatchesValue = { fg = colors.gr1 }, --FIX LATER
      DapUIWatchesError = { fg = colors.pi0 },
      DapUIBreakpointsPath = { fg = colors.cy1 }, --FIX LATER
      DapUIBreakpointsInfo = { fg = colors.gr1 }, --FIX LATER
      DapUIBreakpointsCurrentLine = { fg = colors.gr1, bold = true }, --FIX LATER
      DapStoppedLine = { default = true, link = 'Visual' },
      DapUIWinSelect = { fg = colors.cy1, bold = true }, --FIX LATER

      -- Notify
      NotifyInfoIcon = { fg = colors.gr1 },
      NotifyInfoTitle = { fg = colors.gr1 },
      NotifyInfoBorder = { fg = colors.gr1 },
      NotifyErrorIcon = { fg = colors.or0 },
      NotifyErrorTitle = { fg = colors.or0 },
      NotifyErrorBorder = { fg = colors.or0 },
      NotifyWarnIcon = { fg = colors.ye0 },
      NotifyWarnTitle = { fg = colors.ye0 },
      NotifyWarnBorder = { fg = colors.ye0 },

      -- SnacksDashboard
      SnacksDashboardHeader = { fg = colors.re0 },
      SnacksDashboardKey = { fg = colors.ye0 },
      SnacksDashboardDesc = { fg = colors.cy0 },
      SnacksDashboardIcon = { fg = colors.cy0 },
      SnacksDashboardFooter = { fg = colors.re0, italic = true },

      -- SnacksPicker
      SnacksBackdrop = { bg = colors.re0 },
      SnacksPickerBorder = { fg = colors.me0 },
      SnacksPickerDir = { fg = colors.fg },
      SnacksPickerDirectory = { fg = colors.fg },
      SnacksPickerFile = { fg = colors.fg },
      SnacksPickerGitStatusIgnored = { fg = colors.me0 },
      SnacksPickerGitStatusModified = { fg = colors.ye0 },
      SnacksPickerGitStatusRenamed = { fg = colors.ye0 },
      SnacksPickerGitStatusStaged = { fg = colors.gr1 }, --FIX LATER
      SnacksPickerGitStatusUnmerged = { fg = colors.or0 },
      SnacksPickerGitStatusUntracked = { fg = colors.gr0 },
      SnacksPickerInput = { link = "NormalFloat" },
      SnacksPickerInputBorder = { link = "SnacksPickerBorder" },
      SnacksPickerMatch = { fg = colors.gr0, italic = true },
      SnacksPickerPathHidden = { fg = colors.me0 },
      SnacksPickerPrompt = { fg = colors.vi0 },
      SnacksPickerTitle = { fg = colors.cy0, bold = true },

      -- Neogit
      NeogitDiffAdd = { fg = colors.gr1, bg = colors.menu }, --FIX LATER
      NeogitDiffDelete = { fg = colors.re1, bg = colors.menu }, --FIX LATER
      NeogitDiffContext = { fg = colors.me0, bg = colors.visual },
      NeogitDiffAddHighlight = { fg = colors.gr0, bg = colors.bg },
      NeogitDiffDeleteHighlight = { fg = colors.re0, bg = colors.bg },
      NeogitDiffContextHighlight = { fg = colors.me0, bg = colors.visual },
      NeogitDiffAddCursor = { fg = colors.gr0, bg = colors.sel },
      NeogitDiffDeleteCursor = { fg = colors.re0, bg = colors.sel },
      NeogitDiffContextCursor = { fg = colors.me0, bg = colors.sel },

   }
end

return {
   setup = setup,
}