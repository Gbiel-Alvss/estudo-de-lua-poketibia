local table = {
    pokemon = {nome = "Pikachu", vida_atual = 40, vida_maxima = 100}
}

local function usar_pocao(alvo, quantidade_cura)
    alvo.vida_atual = quantidade_cura + alvo.vida_atual
    if alvo.vida_atual > alvo.vida_maxima then
        alvo.vida_atual = alvo.vida_maxima
    else
        print("Cura aplicada!")
    end
end

usar_pocao(table.pokemon, 80)

print(table.pokemon.vida_atual)
