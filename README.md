# Estudo de Lua: Lógicas de Servidor (Pokétibia/TFS)

Este repositório contém a jornada prática de desenvolvimento e domínio da sintaxe e das estruturas de dados da linguagem Lua. O foco dos scripts é a construção de lógicas e motores procedurais voltados para servidores de Pokétibia e ecossistemas baseados em The Forgotten Server (TFS).

## 🚀 O Que Foi Desenvolvido

Os códigos evoluem desde os conceitos fundamentais da linguagem até a arquitetura de sistemas orientados a objetos e lógicas de jogo reais.

### Fase 1: Sintaxe e Fundamentos

* **Manipulação de Estruturas:** O Array de Cores, O Perfil e Estruturas Aninhadas.


* **Iteração de Dados:** Leitura em massa utilizando `ipairs` para arrays, `pairs` para dicionários e `while` para laços condicionais.


* **Controle de Fluxo e Lógica:** O Verificador de Senha e aplicações de condicionais estruturadas (`if/elseif/else`).


* **Operadores Lógicos Avançados:** Criação de regras complexas utilizando `and`, `or` e `not` para validação de múltiplos requisitos.


* **Passagem de Dados:** Modificação permanente de tabelas na memória através da passagem por referência em funções.



### Fase 2: Estruturas Avançadas

* **Metatables (Base da POO em Lua):** Implementação de O Plano B (herança com `__index`), formatação visual de saída de tabelas (`__tostring`) e soma de atributos matemáticos (`__add`).


* **Manipulação de Strings:** O Grito Padronizado, extração de dados específicos com `string.sub`, formatação de anúncios do servidor com `string.format` e O Filtro do Chat com `string.gsub`.


* **Modularização de Sistemas:** Separação de lógicas em múltiplos arquivos independentes, utilizando `require` para conectar o módulo `inventario.lua` ao executável principal `main.lua`.



### Fase 3: Motores de Jogo (Miniprojetos)

* **Simulador de Combate:** Integração direta de metatabelas, laços de repetição e funções independentes para processar turnos de ataque até o HP zerar.


* **Sistema de Captura (Catch System):** Cálculo de taxa de sucesso rolando dados com a biblioteca `math.random` e validando o veredito através de multiplicadores de chance base.


* **Experiência e Level Up:** Lógica de acúmulo de XP, cálculo de metas variáveis e processamento de passagem de níveis.
* **Sistema de Evolução:** Validação de nível mínimo exigido e atualização dinâmica da chave de nome do dicionário na memória.
* **O Centro Pokémon:** Motor procedural varrendo arrays de equipes e restaurando o HP atual de todos os monstros vivos para o teto máximo permitido.
* **Weight/Cap System (Capacidade):** Cálculo dinâmico do peso total de itens dentro de uma mochila e bloqueio inteligente de coleta caso a capacidade máxima do jogador seja excedida.
* **Loot System:** Sorteio iterativo varrendo dicionários de itens baseados na probabilidade individual (rates) e injeção do drop resultante no mapa.
* **Magia em Área (AoE) Procedural:** Varredura de múltiplos alvos simultâneos recebendo subtração de HP, atrelada a uma trava temporal (cooldown) calculada com base no relógio do servidor.
* **Fábrica de Monstros (POO):** Refatoração de sistemas base utilizando uma `BaseMonstro` e o metamétodo `__index` para instanciar criaturas inteligentes e independentes através da sintaxe `:`.

## 🛠️ Tecnologias e Paradigmas

* **Linguagem:** Lua 5.3+
* **Paradigmas:** Programação Procedural e Programação Orientada a Objetos (Metatabelas).


* **Foco de Aplicação:** PokeXGames, TFS, OTServ.
