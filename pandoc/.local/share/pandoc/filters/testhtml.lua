--[[
html figure fixer – put in the correct place the attributes for images with 

Copyright © 2017-2024 Marco Antonio Romero Sánchez

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

function Figure(el)
  -- Actualiza el identificador de la figura
  local vals = el.attributes
  
  -- Elimina los atributos del elemento Figure
  el.attributes = {}
  
  -- Accede a la imagen dentro de la figura
  local image = el.content[1].content[1]
  
  -- Modifica los atributos de la imagen
  -- image.attributes = {["width"] = "30px"}
  image.attributes = vals
  
  -- Actualiza el caption de la imagen
  -- image.caption = {pandoc.Str("Cosas")}
  
  -- Retorna la figura modificada
  return el
end
