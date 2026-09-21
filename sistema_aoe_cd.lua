local relogio_servidor = 100

local magia = {
    nome = "earthquake",
    dano = 40, 
    cooldown = 10, 
    ultimo_uso = 80
}

local monstros_area = {
    {nome = "raichu", hp = 100},
    {nome = "onix", hp = 200},
    {nome = "pikachu", hp = 50}
}

local function aoe(spell, tempo_atual, lista_alvos)
    if tempo_atual - spell.ultimo_uso >= spell.cooldown then
        spell.ultimo_uso = tempo_atual
        for indice, alvos in ipairs(lista_alvos) do
            alvos.hp = alvos.hp - spell.dano
            local mensagem_turno = string.format("%s atingiu %s! HP restante: %d ",spell.nome, alvos.nome, alvos.hp )
            print(mensagem_turno)
        end
    else
        print("Habilidade em CD")
    end
end

aoe(magia, relogio_servidor, monstros_area)
aoe(magia, relogio_servidor, monstros_area)
aoe(magia, relogio_servidor, monstros_area)
aoe(magia, relogio_servidor, monstros_area)
