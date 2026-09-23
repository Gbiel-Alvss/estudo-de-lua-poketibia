local jogador = {
    capacidade_maxima = 20,
    mochila = {
        {nome = "master_ball", peso = 9}, 
        {nome = "revive", peso = 1}
        }
}

local item_chao = {nome = "poke_ball", peso = 1} 


local function calcular_capacidade(alvo, item)
    local peso_total = 0
    for indice, itens in ipairs(alvo.mochila) do
        peso_total = peso_total + itens.peso
    end

    local espaco_livre = alvo.capacidade_maxima - peso_total

    if espaco_livre < item.peso then
        print("O item nao pode ser coletado, capacidade maxima atingida")
    elseif espaco_livre >= item.peso then
        table.insert(alvo.mochila, item)
        local espaco_sobrando = espaco_livre - item.peso
        print("O item " .. item.nome .. " foi inserido na mochila lhe sobrou: " .. espaco_sobrando.. " de espaco" )
    end
end

calcular_capacidade(jogador, item_chao)

           
