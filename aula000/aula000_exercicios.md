Aula 000 - Lista de Exercícios
Introdução aos Paradigmas de Programação

Parte A - Conceitos fundamentais

1. Por que estudar paradigmas?

Explique três benefícios práticos de estudar conceitos de linguagens de programação, mesmo quando o desenvolvedor trabalha diariamente com apenas uma linguagem.

Resposta: primeiro, ajuda a entender melhor a linguagem que já uso, porque vejo o porquê das escolhas dela. Segundo, facilita aprender uma linguagem nova, já que os conceitos se repetem entre elas. Terceiro, ajuda a escolher a ferramenta certa pra cada problema, em vez de tentar resolver tudo do mesmo jeito.

2. Linguagem, paradigma e domínio

Defina com suas palavras: linguagem de programação, paradigma e domínio de aplicação. Depois, dê um exemplo que relacione os três conceitos.

Resposta: linguagem de programação é a ferramenta usada pra escrever o código (Python, Java, etc). Paradigma é o estilo ou forma de pensar usada pra organizar a solução (imperativo, funcional, orientado a objetos...). Domínio de aplicação é a área ou tipo de problema que o sistema resolve (ex: sistema bancário, jogo, análise de dados).
Exemplo: pra um domínio de análise de dados, eu poderia usar a linguagem Python com um paradigma funcional, aplicando funções como filter e map nos dados.

3. Sintaxe ou semântica?

Classifique cada situação como problema principalmente de sintaxe ou de semântica:

a) Um parêntese foi aberto e não foi fechado.
Sintaxe.

b) O programa compila, mas deposita um valor negativo na conta errada.
Semântica.

c) Uma palavra reservada foi escrita incorretamente.
Sintaxe.

d) A condição do laço nunca se torna falsa.
Semântica.

e) Uma função recebe dois argumentos, mas a chamada fornece apenas um.
Semântica.

f) A fórmula da média usa a soma correta, mas divide pela quantidade errada.
Semântica.

4. Etapas de tradução

Organize as etapas abaixo em uma sequência coerente para um processo de compilação: geração de código, análise léxica, execução, análise sintática, análise semântica. Depois explique, em uma frase, a função de cada etapa.

Resposta:
1. Análise léxica: separa o código fonte em tokens.
2. Análise sintática: verifica se os tokens seguem a estrutura da gramática da linguagem.
3. Análise semântica: verifica se o código faz sentido (tipos, escopo, etc).
4. Geração de código: transforma o código analisado em código de máquina ou intermediário.
5. Execução: roda o programa gerado.

Parte B - Paradigmas em ação

5. Identificação de paradigmas

Associe cada descrição ao paradigma predominante:

a) O programa é uma sequência de comandos que altera o estado.
Imperativo.

b) A solução é modelada com objetos que combinam dados e comportamentos.
Orientado a objetos.

c) O resultado é obtido por composição e aplicação de funções.
Funcional.

d) O conhecimento é descrito por fatos e regras, e o sistema realiza inferência.
Lógico.

e) Várias tarefas progridem de forma sobreposta ou simultânea.
Concorrente.

6. Curto-circuito

Considere a condição:
x != 0 && 10 / x > 2

a) O que acontece quando x vale zero em uma linguagem com avaliação em curto-circuito?
A primeira parte (x != 0) já é falsa, então a linguagem nem chega a avaliar a segunda parte (10 / x > 2), evitando a divisão por zero.

b) O que poderia acontecer se a linguagem avaliasse obrigatoriamente as duas partes?
O programa tentaria calcular 10 / 0, o que causaria um erro de divisão por zero e travaria a execução.

c) Reescreva a lógica usando uma estrutura condicional explícita.
se x != 0:
    se 10 / x > 2:
        resultado = verdadeiro
    senão:
        resultado = falso
senão:
    resultado = falso

7. Mesmo problema, estilos diferentes

Observe duas soluções em Python para somar os números pares de uma lista:

# Versão A
total = 0
for numero in numeros:
    if numero % 2 == 0:
        total = total + numero

# Versão B
total = sum(filter(lambda n: n % 2 == 0, numeros))

a) Qual versão apresenta estilo mais imperativo? Por quê?
A versão A, porque usa um laço explícito e vai alterando o valor da variável total passo a passo.

b) Qual versão usa mais recursos funcionais?
A versão B, porque usa filter e lambda, que são funções aplicadas sobre a lista sem alterar variáveis por fora.

c) Qual delas você considera mais legível para uma equipe iniciante? Justifique.
A versão A, porque usa só laço e if, conceitos básicos que iniciantes aprendem primeiro. A versão B exige saber o que é filter, lambda e sum.

Parte C - Escolhas e análise crítica

8. Escopo e tempo de vida

Analise o pseudocódigo:

x = 10

funcao calcular():
    y = 5
    se x > y:
        z = x + y
        mostrar(z)
    mostrar(y)
    mostrar(z)

Assumindo escopo léxico convencional, indique onde x, y e z podem ser acessados. A última instrução é válida? Explique.

Resposta: x é global, acessível em qualquer parte do programa, inclusive dentro da função. y é local à função calcular, acessível em toda a função. z é declarada dentro do bloco do se, então só existe dentro desse bloco. A última linha, mostrar(z) fora do bloco do se, não é válida, porque z não existe mais fora daquele bloco.

9. Escolha de linguagem

Uma equipe precisa desenvolver um pequeno sistema de análise de dados. O prazo é curto, a equipe já conhece Python e o desempenho exigido é moderado. Outra pessoa defende usar uma linguagem de baixo nível porque 'é mais rápida'. Avalie a decisão considerando pelo menos cinco critérios.

Resposta: avaliando por prazo, familiaridade da equipe, desempenho exigido, facilidade de manutenção e bibliotecas disponíveis, Python é a escolha melhor nesse caso. O prazo é curto e a equipe já sabe Python, então trocar de linguagem geraria uma curva de aprendizado desnecessária. O desempenho exigido é moderado, então Python (com bibliotecas como pandas) já atende. Uma linguagem de baixo nível seria mais rápida, mas exigiria mais tempo de desenvolvimento e mais cuidado com erros, o que não compensa pra esse caso.

10. Trade-offs

Explique por que não existe uma linguagem objetivamente melhor em todos os aspectos. Apresente dois exemplos de trade-off, como produtividade versus controle, segurança versus desempenho, simplicidade versus expressividade ou concisão versus legibilidade.

Resposta: não existe linguagem perfeita porque cada uma faz escolhas de design que ganham em um aspecto e perdem em outro, dependendo do que o projeto precisa.
Exemplo 1: produtividade versus controle - Python é rápido de escrever mas dá menos controle sobre memória, enquanto C dá mais controle mas exige mais código e cuidado.
Exemplo 2: segurança versus desempenho - linguagens com verificação de tipos e gerenciamento automático de memória (como Java) são mais seguras contra certos erros, mas podem ser mais lentas que uma linguagem que gerencia memória manualmente, como C.

Parte D - Aplicação e síntese

11. Linguagem multiparadigma

Escolha uma linguagem multiparadigma que você conhece. Mostre, com exemplos pequenos ou descrições, como ela permite utilizar pelo menos dois paradigmas diferentes.

Resposta: Python é multiparadigma. Dá pra escrever de forma imperativa, com um for e um if alterando uma variável passo a passo, como na versão A do exercício 7. E também dá pra escrever de forma funcional, usando map, filter e lambda, como na versão B do mesmo exercício. A mesma linguagem permite os dois estilos sem precisar trocar de ferramenta.

12. Inteligência artificial e responsabilidade

Uma ferramenta de IA gerou um programa que compila e produz uma saída aparentemente correta. Liste pelo menos seis verificações que um desenvolvedor responsável ainda deve realizar antes de usar esse código em produção.

Resposta:
1. Testar com casos de borda (entradas vazias, valores extremos, dados inválidos).
2. Verificar se existe alguma falha de segurança (dados sensíveis expostos, falta de validação de entrada).
3. Checar se o tratamento de erros está adequado.
4. Conferir se o código segue os padrões e o estilo usado no projeto.
5. Rodar testes automatizados cobrindo a lógica principal.
6. Verificar o desempenho do código em um volume de dados realista, não só no exemplo simples.

13. Desafio prático

Implemente, em qualquer linguagem, um programa que receba uma lista de números e produza: (1) a soma dos pares; (2) a quantidade de valores positivos; e (3) o maior valor. Depois identifique o paradigma predominante da sua solução e explique como ela poderia ser reescrita em outro estilo.

Resposta (em Python):

numeros = [4, -2, 7, 10, -5, 3]

soma_pares = 0
qtd_positivos = 0
maior_valor = numeros[0]

for n in numeros:
    if n % 2 == 0:
        soma_pares = soma_pares + n
    if n > 0:
        qtd_positivos = qtd_positivos + 1
    if n > maior_valor:
        maior_valor = n

print(soma_pares, qtd_positivos, maior_valor)

O paradigma predominante dessa solução é o imperativo, porque uso um laço e vou alterando variáveis de estado a cada passo. Ela poderia ser reescrita em estilo funcional assim:

soma_pares = sum(filter(lambda n: n % 2 == 0, numeros))
qtd_positivos = len(list(filter(lambda n: n > 0, numeros)))
maior_valor = max(numeros)

Síntese final

Escreva uma frase que resuma a ideia central da Aula 000. A resposta deve relacionar formas de pensar, escolha de ferramentas e qualidade da solução.

Resposta: a forma de pensar que a gente escolhe pra resolver um problema influencia direto na ferramenta (linguagem/paradigma) que vamos usar, e essa escolha impacta na qualidade final da solução.
