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
