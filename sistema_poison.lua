local vida_monstro = 45
local turnos_veneno = 5

while turnos_veneno > 0 and vida_monstro > 0 do
    vida_monstro = vida_monstro - 10
    turnos_veneno = turnos_veneno - 1
    print("Sofreu dano de poison! Vida restante: " .. vida_monstro)
end
if vida_monstro <= 0 then
print("O Pokemon desmaiou devido ao poison!")
end

