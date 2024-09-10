function process_blocks(blocks)
    local result = {}
    local i = 1

    while i <= #blocks do
        local block = blocks[i]

        -- Verificar si es el bloque RawBlock que contiene atributos HTML
        if block.t == "RawBlock" and block.format == "org" and block.text:match("#%+ATTR_HTML:") then
            -- Extraer todos los atributos que siguen a #+ATTR_HTML:
            local attributes = {}
            for key, value in block.text:gmatch(":(%w+)%s+([%w%p]+)") do
                attributes[key] = value
            end

            -- Verificar que el siguiente bloque sea un Para con una Imagen
            if i + 1 <= #blocks and blocks[i + 1].t == "Para" then
                local para = blocks[i + 1]

                -- Buscar la Imagen dentro del Para
                for j, inline in ipairs(para.content) do
                    if inline.t == "Image" then
                        -- Añadir los atributos extraídos a la imagen
                        for key, value in pairs(attributes) do
                            inline.attributes[key] = value
                        end
                    end
                end

                -- Añadir el Para modificado al resultado
                table.insert(result, para)
                i = i + 2 -- Saltar el RawBlock y el Para
            else
                -- Si no hay una Imagen después del RawBlock, solo añadir el bloque RawBlock
                table.insert(result, block)
                i = i + 1
            end
        else
            -- Añadir cualquier otro bloque sin modificación
            table.insert(result, block)
            i = i + 1
        end
    end

    return result
end

-- El filtro se aplica a los bloques del documento
return {
    {
        Blocks = process_blocks
    }
}
