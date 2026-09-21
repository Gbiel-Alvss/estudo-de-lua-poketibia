local tempo_atual = 100

local habilidade = {
    nome = "HydroPump",
    ultimo_uso = 50
}

local function lancar_magia(magia, relogio)
    local tempo_passado = relogio - magia.ultimo_uso
    if tempo_passado >= 50 then
        print ("Magia recarregada")
        magia.ultimo_uso = relogio
    else
        print("Habilidade em recarga")
    end
end

lancar_magia(habilidade, tempo_atual)
lancar_magia(habilidade, tempo_atual)