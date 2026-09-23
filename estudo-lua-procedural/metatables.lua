-- local padrao = {
--     idioma = "PT-BR"
-- }

-- local metatabela = {
--     __index = padrao
-- }

-- local config_usuario = {

-- }

-- setmetatable(config_usuario, metatabela)

-- print(config_usuario.idioma)

-- local item = {
--     nome = "Espada"
-- }

-- local meta_item = {
     
-- }

-- meta_item.__tostring = function(tabela_recebida)
--     return "Voce equipou: " .. tabela_recebida.nome
-- end

-- setmetatable(item, meta_item)
-- print(item)

-- local espada_fogo = {
--     ataque = 50
-- }

-- local espada_gelo = {
--     ataque = 30
-- }

-- local meta_soma = {

-- }

-- meta_soma.__add = function(tabela_a, tabela_b)
--     return tabela_a.ataque + tabela_b.ataque
-- end

-- setmetatable(espada_fogo, meta_soma)
-- setmetatable(espada_gelo, meta_soma)

-- print(espada_fogo + espada_gelo)

