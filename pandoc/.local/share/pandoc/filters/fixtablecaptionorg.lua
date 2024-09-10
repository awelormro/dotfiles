function Pandoc(el)
  -- Detectar el bloque de formato 'org' que contiene el título
  local newcaption = nil
  local newid = nil
  local flagcosas = nil
  local i = 1
  while i <= #el.blocks do
      local item = el.blocks[i]
      if item.t == 'Table' and i > 3 and el.blocks[i-1].t == 'RawBlock' and el.blocks[i-2].t == 'RawBlock' then 
          if string.match(el.blocks[i-2].text, "#%+CAPTION:") then
              newcaption = string.gsub(el.blocks[i-2].text, "#%+CAPTION: ", "")
              newid = string.gsub(el.blocks[i-1].text, "#%+LABEL: ", "")
              -- print('Tiene caption antes')
              flagcosas = 1
          elseif string.match(el.blocks[i-1].text, "#%+CAPTION:") then
              newcaption = string.gsub(el.blocks[i-1].text, "#%+CAPTION: ", "")
              newid = string.gsub(el.blocks[i-2].text, "#%+LABEL: ", "")
              flagcosas = 1
          end
      end
      if flagcosas then
          local auxlist = {}
          local newlist = {}
          -- print("Flag cosas activado")
          if newid and newcaption then
              -- print("Se tratará la caption: " .. newcaption .. ", ID: " .. newid)
              if string.match(newcaption, "%[cite") then
                  for i in string.gmatch(newcaption, "%S+") do
                      table.insert(auxlist, i.." ")
                      -- print(auxlist)
                  end
                  local citing = {}
                  for j=1, #auxlist do
                      print(auxlist[j])
                      if string.match(auxlist[j], "%[cite") then
                          print("elemento cite")
                          local citestuff = string.gsub(string.gsub(
                              auxlist[j], "%[cite.-:", ""), "].-", "")
                          print(citestuff)
                          local citestuff = string.gsub(
                              citestuff, "%]", "")
                          local citestuff = string.gsub(
                              citestuff, "%@", "")
                          local citestuff = string.gsub(
                              citestuff, " ", ""  
                          )    
                          local citestuff = string.match(auxlist[j], "@(%w+)")
                          citing = pandoc.Cite(
                              auxlist[j], 
                              {pandoc.Citation(citestuff, "AuthorInText")})
                          auxlist[j]=citing
                          print(auxlist[j])
                          local spacing = ' '
                          table.insert(newlist, auxlist[j])
                          table.insert( newlist, spacing )
                      else
                          local spacing = pandoc.Space()
                          table.insert(newlist, pandoc.Str(auxlist[j] .. " "))
                          table.insert( newlist, spacing )
                      end
                      table.insert(newlist, pandoc.Space())
                  end
                  -- el.blocks[i-1]=nil
                  -- el.blocks[i-2]=nil
                  el.blocks[i].caption = {pandoc.Plain(auxlist)}
                  el.blocks[i].identifier = newid
                  newcaption = nil
                  newid = nil
              else
                  -- el.blocks[i-1]=nil
                  -- el.blocks[i-2]=nil
                  el.blocks[i].caption = {pandoc.Plain(pandoc.Str(newcaption))}
                  el.blocks[i].identifier = newid
                  newcaption = nil
                  newid = nil
              end
          else
              -- print("No se tratará la caption")
          end
      end
      i = i + 1
  end
  -- print("Número de bloques analizados: " .. (i-1))
  return el
end


-- else
--     local newcaption = nil
--     local newid = nil
--     print("no tiene caption")
-- local item = el.blocks[i].content
-- if item.t == 'RawBlock' then
--     print('Hay rawblock')
-- end
-- else 
--
-- el.blocks[i].caption = {pandoc.Plain(pandoc.Str(newcaption))}
-- el.blocks[i].identifier = newid
--     print("no tiene caption")
-- print('Tabla con caption no reconocida')
-- if 
