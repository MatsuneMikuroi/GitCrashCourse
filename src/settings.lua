-- Lua filter for pandoc:
--   1. Remove external HTTP(S) images (shields.io badges) from PDF output.
--   2. Insert \newpage before every level-1 heading (new page per section).

-- Inject logo above the title via the LaTeX 'titling' package (preamble),
-- and manually place \tableofcontents between two \newpage blocks so that
-- the page order is: title page → \newpage → TOC → \newpage → content.
function Pandoc(doc)
  -- Add logo + titling customisation to the LaTeX preamble
  doc.meta["header-includes"] = pandoc.MetaBlocks({
    pandoc.RawBlock("latex", table.concat({
      "\\usepackage{graphicx}",
      "\\usepackage{titling}",
      "\\pretitle{\\begin{center}" ..
        "\\includegraphics[width=0.3\\textwidth]{src/GitLogo.png}\\\\[0.8cm]" ..
        "{\\Huge\\bfseries}}",
      "\\posttitle{\\end{center}}"
    }, "\n"))
  })

  -- Build \newpage → \tableofcontents → \newpage as the first 3 body blocks.
  -- They land right after \maketitle (which the template emits before $body$).
  table.insert(doc.blocks, 1, pandoc.RawBlock("latex", "\\newpage"))           -- (3) after TOC
  table.insert(doc.blocks, 1, pandoc.RawBlock("latex", "\\tableofcontents"))   -- (2) TOC
  table.insert(doc.blocks, 1, pandoc.RawBlock("latex", "\\newpage"))           -- (1) after title
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

