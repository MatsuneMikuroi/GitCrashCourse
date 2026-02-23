-- Lua filter for pandoc: remove external HTTP(S) images (shields.io badges etc.)
-- and their wrapping links so they don't appear in the PDF output.

-- Remove bare external images:  ![alt](https://...)
function Image(el)
  if el.src:match("^https?://") then
    return {}
  end
end

-- Remove linked badge images:  [![alt](https://...)](target)
function Link(el)
  if #el.content == 1 and el.content[1].t == "Image" then
    local img = el.content[1]
    if img.src:match("^https?://") then
      return {}
    end
  end
end
