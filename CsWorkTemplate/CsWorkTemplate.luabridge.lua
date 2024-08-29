local ran_ok,err=pcall(function()local ran_ok,kpse=pcall(require, "kpse")if ran_ok then kpse.set_program_name("luatex")end assert(load("local lfs = require(\"lfs\") local cacheDir = \"./_markdown_CsWorkTemplate\" if not lfs.isdir(cacheDir) then assert(lfs.mkdir(cacheDir)) end local md = require(\"markdown\") local convert = md.new({eagerCache = false, singletonCache = true, cacheDir = \"./_markdown_CsWorkTemplate\", contentBlocksLanguageMap = \"markdown-languages.json\", debugExtensionsFileName = \"./CsWorkTemplate.debug-extensions.json\", frozenCacheFileName = \"./_markdown_CsWorkTemplate/frozenCache.tex\", autoIdentifiers = false, blankBeforeBlockquote = false, blankBeforeCodeFence = false, blankBeforeDivFence = false, blankBeforeHeading = false, blankBeforeList = false, bracketedSpans = false, breakableBlockquotes = true, citationNbsps = true, citations = false, codeSpans = true, contentBlocks = false, contentLevel = \"block\", debugExtensions = false, definitionLists = false, expectJekyllData = false, extensions = {}, fancyLists = false, fencedCode = true, fencedCodeAttributes = false, fencedDivs = false, finalizeCache = false, frozenCacheCounter = 0, gfmAutoIdentifiers = false, hashEnumerators = false, headerAttributes = false, html = true, hybrid = false, inlineCodeAttributes = false, inlineNotes = false, jekyllData = false, linkAttributes = false, lineBlocks = false, mark = false, notes = false, pipeTables = false, preserveTabs = true, rawAttribute = false, relativeReferences = false, shiftHeadings = 0, slice = \"^ $\", smartEllipses = false, startNumber = true, strikeThrough = false, stripIndent = false, subscripts = false, superscripts = false, tableAttributes = false, tableCaptions = false, taskLists = false, texComments = false, texMathDollars = false, texMathDoubleBackslash = false, texMathSingleBackslash = false, tightLists = true, underscores = true, }) local file = assert(io.open(\"./CsWorkTemplate.markdown.in\", \"r\"), [[Could not open file \"./CsWorkTemplate.markdown.in\" for reading]]) local input = assert(file:read(\"*a\")) assert(file:close()) print(convert(input)) lfs.rmdir(cacheDir) "))()end)if not ran_ok then local file=io.open("./CsWorkTemplate.luabridge.err","w")if file then file:write(err.."\n")file:close()end print('\\begingroup\\ExplSyntaxOn\\csname msg_error:nnvv\\endcsname{luabridge}{failed-to-execute}{g_luabridge_output_dirname_str}{g_luabridge_error_output_filename_str}\\endgroup')end
