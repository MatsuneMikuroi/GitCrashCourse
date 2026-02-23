-- Lua filter for pandoc:
--   1. Remove external HTTP(S) images (shields.io badges) from PDF output.
--   2. Insert \newpage before every level-1 heading (new page per section).

-- Add Git Logo to the title page
function Pandoc(doc)
  local title = doc.meta.title
  if title then
    local git_logo = pandoc.Image({pandoc.Str("Git Logo")}, "src/GitLogo.png")
    doc.meta.title = pandoc.MetaInlines({
      git_logo,
      pandoc.LineBreak(),
      pandoc.Str("Git Introduction Course")
})
  end
  -- Insert \newpage after the TOC (first block of the body)
  table.insert(doc.blocks, 1, pandoc.RawBlock("latex", "\\newpage"))
  return doc
end

-- Remove bare external images:  ![alt](https://...)
function Image(el)
  if el.src:match("^https?://") then
    return {}
  end
end

-- Remove linked badge images:  [![alt](https://...)](url)
function Link(el)
  if #el.content == 1 and el.content[1].t == "Image" then
    local img = el.content[1]
    if img.src:match("^https?://") then
      return {}
    end
  end
end

-- Insert \newpage before every top-level (H1) heading and before the TOC
function Header(el)
  if el.level == 1 then
    local newpage = pandoc.RawBlock("latex", "\\newpage")
    return { newpage, el }
  end
end

