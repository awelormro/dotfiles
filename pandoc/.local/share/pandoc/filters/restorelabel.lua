
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
