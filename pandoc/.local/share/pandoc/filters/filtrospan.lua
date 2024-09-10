--[[
precitetools – Add span into cite elements to being used previous 
to citetools extension in orgmode files

Copyright © 2017-2024 Benct Philip Jonsson, Albert Krewinkel

Permission to use, copy, modify, and/or distribute this software for any
purpose with or without fee is hereby granted, provided that the above
copyright notice and this permission notice appear in all copies.

THE SOFTWARE IS PROVIDED "AS IS" AND THE AUTHOR DISCLAIMS ALL WARRANTIES
WITH REGARD TO THIS SOFTWARE INCLUDING ALL IMPLIED WARRANTIES OF
MERCHANTABILITY AND FITNESS. IN NO EVENT SHALL THE AUTHOR BE LIABLE FOR
ANY SPECIAL, DIRECT, INDIRECT, OR CONSEQUENTIAL DAMAGES OR ANY DAMAGES
WHATSOEVER RESULTING FROM LOSS OF USE, DATA OR PROFITS, WHETHER IN AN
ACTION OF CONTRACT, NEGLIGENCE OR OTHER TORTIOUS ACTION, ARISING OUT OF
OR IN CONNECTION WITH THE USE OR PERFORMANCE OF THIS SOFTWARE.
]]
-- Filtro para envolver elementos Cite en un Span dentro de un Para
function Para(el)
  local i = 1
  while i <= #el.content do
      local item = el.content[i]
      -- Check if current is string and previous content is a cite to verify
      if item.t == "Str" and i > 2 and el.content[i-1].t == "Cite"  then
          -- check the position and appearance of a regular expression.
          if string.match(item.text, "%{%.%a+}") then
              local stringheader = item.text:gsub("{.", "")
              stringheader = stringheader:gsub("}","")
              -- print(stringheader)
              local span = pandoc.Span(el.content[i-1], {class=stringheader})
              el.content[i-1]=span
              el.content[i].text=""
          end  
      end
      i = i + 1
  end
  return el
end
