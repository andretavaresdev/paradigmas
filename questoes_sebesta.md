# Questão 1

R: A ideia de que as linguagens seguem uma “escada de progresso” não é muito correta. Uma linguagem nova não necessariamente substitui a antiga, pois cada uma atende a necessidades diferentes. Um exemplo é o COBOL, que ainda é usado em sistemas bancários e governamentais porque reescrever sistemas antigos seria muito caro e arriscado. Outro exemplo é o C, que influenciou linguagens como C++, Java e C#, mas continua sendo usado em sistemas operacionais e embarcados.

# Questão 2

R: O Plankalkül, criado por Konrad Zuse na década de 1940, não foi implementado na época porque ainda não existia tecnologia suficiente para isso. Mesmo assim, foi importante por antecipar várias ideias de linguagens modernas. Entre elas estão estruturas de dados, como vetores e registros, atribuições e estruturas de repetição. Isso mostra que algumas ideias de programação surgiram antes mesmo de existir tecnologia para colocá-las em prática.

# Questão 3

R: O Short Code, o Speedcoding e os sistemas A-0/A-1/A-2 surgiram para facilitar a programação, que naquela época era feita praticamente direto em código de máquina. Ambos usavam interpretação, facilitando a escrita, mas deixando a execução mais lenta. Já o A-0/A-1/A-2, criado por Grace Hopper, trabalhava mais como um sistema que juntava sub-rotinas e gerava código de máquina. Por isso, não é correto chamar os três de compiladores modernos, pois eles não tinham todas as etapas de um compilador atual, como análise sintática e geração completa de código.

# Questão 8

R: O BASIC e o PL/I tinham objetivos diferentes. O BASIC foi criado para facilitar o aprendizado de programação, principalmente para estudantes, por isso tinha uma sintaxe simples e um ambiente interativo. O PL/I, por outro lado, tentou juntar recursos do FORTRAN e do COBOL, atendendo tanto aplicações científicas quanto comerciais. Com isso, ficou uma linguagem bem mais completa, mas também mais complexa.

# Questão 9

R: O APL foi focado em operações com vetores e matrizes, usando uma sintaxe matemática bastante compacta. O SNOBOL era voltado para processamento de textos e reconhecimento de padrões, contribuindo para ideias usadas posteriormente em expressões regulares. Já o SIMULA 67 foi importante para a programação orientada a objetos, principalmente por introduzir os conceitos de classes e objetos, que são muito usados atualmente.

# Questão 12

R: Um exemplo simples em Prolog seria:

    pai(joao, maria).
    pai(joao, pedro).
    irmao(X, Y) :- pai(Z, X), pai(Z, Y), X \= Y.
    ?- irmao(maria, pedro).

Os dois primeiros são fatos e a terceira linha é uma regra. A consulta pergunta se Maria e Pedro são irmãos. Isso é programação lógica porque o Prolog não precisa ter o fato irmao(maria, pedro) armazenado. Ele consegue chegar à resposta usando os fatos e a regra através de inferência.

# Questão 14

R: O Smalltalk foi criado com foco total em orientação a objetos, tratando praticamente tudo como objeto e fazendo os objetos se comunicarem por mensagens. O C++ surgiu a partir do C e adicionou recursos de orientação a objetos. Por isso, permite tanto programação procedural quanto orientada a objetos. O Java também é orientado a objetos, mas buscou ser mais simples e seguro que o C++. Além disso, usa a JVM, permitindo que o mesmo programa rode em diferentes sistemas.

# Questão 15

R: O Java não foi criado originalmente para a Web. Ele surgiu no projeto Green, da Sun Microsystems, pensando em dispositivos eletrônicos. Com o crescimento da internet, perceberam que suas características, principalmente portabilidade e segurança, eram úteis para a Web. Assim, o Java acabou sendo usado em navegadores através dos applets.

# Questão 17

R: O C# e o Java possuem algumas ideias parecidas. As duas linguagens usam máquinas virtuais: o C# usa o CLR, enquanto o Java usa a JVM. Isso ajuda no gerenciamento de memória e na portabilidade. Outra característica do C# é a integração entre tipos simples e objetos através de boxing e unboxing, tentando combinar o desempenho dos tipos básicos com a flexibilidade da orientação a objetos.

# Questão 18

R: No XSLT, a entrada é um documento XML e uma folha de estilo. O programa aplica regras para transformar esse XML em outro XML, HTML ou texto. No JSP, a entrada normalmente é uma requisição HTTP. O servidor executa o código e gera uma página HTML para o usuário. As duas podem ser consideradas híbridas porque misturam marcação e programação, mas fazem isso de formas diferentes: o XSLT de maneira mais declarativa e o JSP usando código Java no servidor.