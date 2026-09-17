local meta_combate = {
    
}

meta_combate.__add = function(a, b)
    return a.ataque + b.ataque
end

meta_combate.__tostring = function(t)
    return string.format("[ %s ] Vida Atual: %d", t.nome, t.vida)
end

jogador = {nome = "Gabriel", vida = 100, ataque = 15}
arma = {nome = "Espada de fogo", ataque = 25}

setmetatable(jogador, meta_combate)
setmetatable(arma, meta_combate)

local function iniciar_batalha(personagem, equipamento, vida_inimigo)
    poder_total = personagem + equipamento

    while vida_inimigo > 0 do
        vida_inimigo = vida_inimigo - poder_total
        if vida_inimigo < 0 then
            vida_inimigo = 0
        end
        mensagem_ataque = string.format("Atacou com %d de poder! HP Inimigo: %d", poder_total, vida_inimigo)
        print(mensagem_ataque)
    end
end


print(jogador)
iniciar_batalha(jogador, arma, 110)
