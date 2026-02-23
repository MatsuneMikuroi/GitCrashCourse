-- Lua filter for pandoc:
--   1. Remove external HTTP(S) images (shields.io badges) from PDF output.
--   2. Insert \newpage before every level-1 heading (new page per section).

-- Add Git Logo to the title page
function Pandoc(doc)
  local title = doc.meta.title
  if title then
    local git_logo = pandoc.Image({pandoc.Str("Git Logo")}, "./GitLogo.png")
    local title_with_logo = pandoc.Para({git_logo, pandoc.Space(), title})
    doc.meta.title = title_with_logo
  end
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

-- Insert \newpage before every top-level (H1) heading
function Header(el)
  if el.level == 1 then
    local newpage = pandoc.RawBlock("latex", "\\newpage")
    return { newpage, el }
  end
end
