--[[
restorelabel – Check and restores image id when html attributes are used 
to modify them in orgmode

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
  -- Busca la imagen dentro del elemento Figure
  local image = el.content[1].content[1]
  
  -- Actualiza el identificador de la figura al valor del atributo "id" de la imagen
  if image.attributes["id"] then
    el.identifier = image.attributes["id"]
    image.attributes["id"] = nil  -- Elimina el atributo "id" de la imagen
  end
  
  -- Retorna la figura modificada
  return el
end