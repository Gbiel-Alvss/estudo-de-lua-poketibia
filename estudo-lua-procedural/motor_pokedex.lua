local banco_pokedex = {

}

banco_pokedex["Rattata"] = "Um rato roxo muito comum em cidades"
banco_pokedex["Pidgey"] = "Um pombo"

local function usar_pokedex(nome_alvo)
    local descricao_encontrada = banco_pokedex[nome_alvo]
    if descricao_encontrada ~= nil then
        local registro = string.format("Pokedex: %s. Registro: %s", nome_alvo, descricao_encontrada)
        print(registro)
    else
        print("Alvo nao reconhecido")
    end
end

usar_pokedex("Pidgey")