Exercícios - Descrição da Sintaxe e da Semântica

1. Sintaxe e semântica

Sintaxe é a forma como os símbolos de uma linguagem podem ser combinados, ou seja, as regras que dizem se uma construção está escrita corretamente. Semântica é o significado por trás dessas construções, o que elas realmente fazem quando executadas. Por exemplo, "int x = "abc";" está sintaticamente correto (segue a estrutura de uma declaração), mas é semanticamente errado, porque uma variável do tipo int não pode receber uma string.

2. Sentenças, lexemas e tokens

Uma afirmação errada comum é dizer que lexema e token são a mesma coisa. Na verdade, lexema é a sequência de caracteres que aparece no código-fonte (por exemplo, "contador"), enquanto token é a categoria que esse lexema representa (por exemplo, IDENTIFICADOR). O erro é confundir a instância concreta com a classificação abstrata dela.
Versão corrigida: o lexema é o texto real que aparece no código, e o token é o nome/categoria atribuído a esse lexema pelo analisador léxico.

3. Reconhecedores e geradores

Para reconhecer uma sentença de uma linguagem, o procedimento é: pegar a cadeia de entrada e tentar derivá-la a partir do símbolo inicial da gramática, aplicando as regras de produção até obter exatamente aquela cadeia (ou rejeitá-la se não for possível). Exemplo: dada a gramática S -> aS | a, para a entrada "aaa" eu aplico S -> aS -> aaS -> aaa, e como consegui chegar na cadeia, ela é reconhecida como válida. A evidência é justamente conseguir (ou não) montar essa sequência de derivações.

4. BNF e gramáticas livres de contexto

BNF é só uma notação para escrever gramáticas livres de contexto, então dá pra representar a mesma gramática de duas formas: usando símbolos como | para alternativas dentro de uma regra, ou escrevendo cada alternativa como uma regra separada. Exemplo:
<digito> ::= 0 | 1 | 2
é equivalente a escrever três regras separadas, uma para cada dígito. O critério que distingue as duas formas é só a notação/organização, o conjunto de sentenças geradas continua o mesmo.

5. Derivação e árvore sintática

Em um compilador, depois que o analisador léxico gera os tokens, o parser usa a gramática para derivar a sentença de entrada e monta a árvore sintática correspondente. Passo a passo: primeiro identifica o símbolo inicial, aplica as produções na ordem que fazem a entrada bater com os tokens recebidos, e cada aplicação de regra vira um nó com filhos na árvore. No final, a árvore pronta representa a estrutura hierárquica do programa e é usada nas próximas fases (análise semântica, geração de código). Se em algum passo nenhuma produção bate com o token atual, a entrada é rejeitada por erro de sintaxe.

6. Ambiguidade gramatical

Uma gramática é ambígua quando existe mais de uma árvore sintática (ou mais de uma derivação mais à esquerda) para a mesma sentença. Exemplo clássico: a gramática de expressões
E -> E + E | E * E | id
para a entrada "id + id * id" permite duas árvores diferentes, uma que calcula a soma primeiro e outra que calcula a multiplicação primeiro, porque não existe regra de precedência definida.

7. BNF estendida

Uma afirmação errada comum é achar que EBNF (BNF estendida) consegue descrever linguagens que a BNF normal não consegue descrever. Isso não é verdade, o poder de expressão é o mesmo, a EBNF só adiciona notações mais convenientes, como colchetes para opcional e chaves para repetição.
Versão corrigida: a EBNF não aumenta o poder de expressão da gramática, ela só torna a escrita mais compacta e legível, usando símbolos como [ ], { } e | para representar coisas que na BNF exigiriam regras extras.

8. Gramáticas de atributos

Para analisar uma gramática de atributos em um trecho de código, o procedimento é: para cada nó da árvore sintática, calcular o valor dos atributos usando as regras semânticas associadas àquela produção. Exemplo: numa regra como
E -> E1 + E2 { E.val = E1.val + E2.val }
depois de montar a árvore para "2 + 3", calculo E1.val = 2 e E2.val = 3, e a regra semântica me dá E.val = 5. A evidência observada é justamente o valor calculado batendo com o esperado.

9. Atributos sintetizados e herdados

Atributo sintetizado é aquele calculado a partir dos filhos do nó na árvore (a informação "sobe"), enquanto atributo herdado é calculado a partir do pai ou dos irmãos (a informação "desce" ou vem de um irmão). O critério que separa os dois é a direção do fluxo de informação na árvore: sintetizado vai de baixo para cima, herdado vai de cima para baixo (ou entre irmãos).

10. Métodos de semântica dinâmica

Ao projetar uma nova linguagem, uma forma de definir a semântica dinâmica é usando semântica operacional: descrever o efeito de cada comando simulando sua execução em uma máquina abstrata, passo a passo. Por exemplo, para verificar o comando "x = x + 1", eu descrevo o estado da memória antes (x = 5), aplico a regra operacional que diz como o comando altera esse estado, e chego no estado depois (x = 6). Justificativa passo a passo: primeiro defino o estado inicial, depois aplico a regra correspondente ao comando, e por fim comparo o estado resultante com o que era esperado, validando se a semântica definida está coerente com o comportamento pretendido da linguagem.
