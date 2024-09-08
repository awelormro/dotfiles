function Figure(el)
  -- Actualiza el identificador de la figura
  el.identifier = "fig:encuesta.png"
  local vals = el.attributes
  
  -- Elimina los atributos del elemento Figure
  el.attributes = {}
  
  -- Modifica el caption de la figura
  -- el.caption.long = {pandoc.Plain({pandoc.Str("Cosas")})}
  
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
