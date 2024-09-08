function Div(el)
  -- Verifica si el div tiene la clase "CENTER"
  if el.classes:includes("CENTER") or el.classes:includes("center") then
    -- Remueve la clase "CENTER"
    el.classes = {}
    -- Añade un atributo personalizado
    el.attributes["custom-style"] = "center"
  elseif el.classes:includes("LEFT") or el.classes:includes("left") then
    el.classes = {}
    -- Añade un atributo personalizado
    el.attributes["custom-style"] = "left"
  elseif el.classes:includes("RIGHT") or el.classes:includes("right") then
    el.classes = {}
    -- Añade un atributo personalizado
    el.attributes["custom-style"] = "right"
  elseif el.classes:includes("justify") or el.classes:includes("JUSTIFY") then
    el.classes = {}
    -- Añade un atributo personalizado
    el.attributes["custom-style"] = "justify"
  end
  return el
end

