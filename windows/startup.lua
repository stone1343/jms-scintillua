-- startup.lua 2018-10-01

function findTab()
  local nextPos = (editor:findtext("[\t]", SCFIND_REGEXP, editor.CurrentPos+1))
  if nextPos then
    editor:GotoPos(nextPos)
  end
end

function changeTabsToSpaces()
  -- Replace tabs with spaces, but obey tabstops (preserving alignment)
  -- From http://lua-users.org/wiki/SciteScripts 2012-08-13
  for m in editor:match("[\t]+", SCFIND_REGEXP) do
    local posColumn = (scite.SendEditor(SCI_GETCOLUMN, (m.pos)))
    local poslenColumn = (scite.SendEditor(SCI_GETCOLUMN, (m.pos + m.len)))
    m:replace(string.rep(' ', poslenColumn - posColumn))
  end
end

function findTrailingSpace()
  local nextPos = (editor:findtext("[ ]+$", SCFIND_REGEXP, editor.CurrentPos+1))
  if nextPos then
    editor:GotoPos(nextPos)
  end
end

function stripTrailingSpaces()
  -- Like tabsToSpacesObeyTabstop, but for trailing spaces
  for m in editor:match("[ ]+$", SCFIND_REGEXP) do
    local posColumn = (scite.SendEditor(SCI_GETCOLUMN, (m.pos)))
    local poslenColumn = (scite.SendEditor(SCI_GETCOLUMN, (m.pos + m.len)))
    m:replace(string.rep('', poslenColumn - posColumn))
  end
end

--[[
 References
  http://www.scintilla.org/SciTELua.html
  http://lua-users.org/wiki/SciteStripTrailings
  http://lua-users.org/wiki/SciteMergeOnChange
]]
