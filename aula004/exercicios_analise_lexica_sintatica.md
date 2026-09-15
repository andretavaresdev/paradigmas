Exercícios - Análise Léxica e Sintática

1. Análise do código fonte

Pegando um trecho de entrada tipo "soma = a + 5;", a análise do código fonte passa primeiro pelo analisador léxico, que separa em tokens (ID soma, OP =, ID a, OP +, NUM 5, ;), e depois o analisador sintático confere se essa sequência de tokens obedece a gramática da linguagem (uma atribuição válida). Pra verificar se está correto, eu checaria se cada token foi reconhecido sem erro léxico e se a sequência forma uma árvore sintática válida sem sobrar nem faltar símbolo.

2. FNB na descrição da sintaxe

O erro é achar que a FNB (Notação de Backus-Naur) é só uma etapa separada do processo, tipo algo que se usa uma vez e pronto. Na real, a FNB é a base que descreve a gramática usada o tempo todo pelo parser, tanto na análise léxica quanto na sintática, pra saber quais construções são válidas.
Conclusão reescrita: a FNB não é uma etapa isolada, ela é a especificação formal da linguagem que orienta todas as decisões do analisador durante o reconhecimento da entrada.

3. Analisador léxico e analisador sintático

Entrada: "x = 10;"
O analisador léxico lê caractere por caractere e decide que "x" é um IDENTIFICADOR, "=" é um OPERADOR, "10" é um NÚMERO e ";" é um DELIMITADOR, gerando a sequência de tokens. O analisador sintático pega essa sequência e decide se ela forma uma atribuição válida segundo a gramática. Saída esperada: confirmação de que "x = 10;" é uma instrução de atribuição sintaticamente correta.

4. Separação da análise léxica e da análise sintática

Sem separar as duas análises, o parser teria que lidar com caracteres crus (espaços, letra por letra) ao mesmo tempo que aplica as regras gramaticais, o que deixa tudo mais lento e confuso de programar. Com a separação, o léxico já entrega tokens prontos e o sintático só se preocupa com a estrutura. O impacto principal é no diagnóstico de erros: fica mais fácil saber se o erro é léxico (caractere inválido) ou sintático (ordem errada de tokens).

5. Análise Léxica

Análise léxica é a etapa que lê o código fonte caractere por caractere e agrupa esses caracteres em tokens, que são as menores unidades com significado pra linguagem (identificadores, números, operadores, etc). Exemplo: no trecho "total += 1;", o analisador léxico reconhece "total" como identificador, "+=" como operador e "1" como número. Essa etapa se relaciona direto com a análise sintática, porque é ela que fornece a matéria prima (os tokens) que o parser vai usar pra montar a árvore sintática.

6. Lexema e token

Pegando o trecho "idade = 20;", o lexema "idade" vira o token IDENTIFICADOR, o lexema "=" vira o token OPERADOR_ATRIBUICAO, e o lexema "20" vira o token NUMERO. Passo a passo: o analisador varre o texto, separa cada pedaço (lexema) e classifica ele numa categoria (token). Pra verificar se está certo, eu confirmo se cada lexema foi mapeado pra categoria certa e se nenhum caractere ficou sem classificação.

7. Abordagens para construir o analisador léxico

O erro é tratar a escolha da abordagem (escrever na mão, usar expressões regulares ou gerar com uma ferramenta tipo Lex) como uma decisão isolada, sem pensar em como isso afeta a integração com o resto do compilador. Na prática, a abordagem escolhida impacta direto a velocidade de desenvolvimento e a facilidade de manter a gramática léxica atualizada junto com o parser.
Conclusão reescrita: a escolha de como construir o analisador léxico deve considerar a integração com o analisador sintático, não é uma decisão que existe sozinha.

8. Classes de caracteres

Entrada: o caractere "7" dentro do trecho "valor7".
O analisador léxico usa classes de caracteres (letras, dígitos, espaços, símbolos) pra decidir o que fazer com cada caractere lido. Nesse caso, ele reconhece que "v", "a", "l", "o", "r" são letras e "7" é dígito, então classifica tudo junto como parte do mesmo identificador "valor7", já que dígito é permitido depois de letra num nome de variável. Saída esperada: token IDENTIFICADOR com lexema "valor7".

9. Reconhecimento de palavras reservadas

Sem reconhecer palavras reservadas, o analisador trataria "if", "while", "int" como identificadores comuns, o que quebraria totalmente a análise sintática depois (porque o parser espera que "if" seja uma palavra-chave de estrutura de controle, não uma variável). Com o reconhecimento correto, o léxico compara cada identificador encontrado com uma tabela de palavras reservadas antes de classificar como IDENTIFICADOR. O impacto é direto no diagnóstico: sem isso, erros de sintaxe apareceriam onde na verdade não deveria ter erro nenhum.

10. Funções getChar, addChar e lookup

getChar lê o próximo caractere da entrada, addChar vai concatenando os caracteres lidos num buffer pra formar o lexema atual, e lookup verifica se esse lexema formado é uma palavra reservada ou um identificador comum, consultando a tabela de símbolos. Exemplo: lendo "for", o getChar pega "f", "o", "r" um por um, o addChar vai montando a string "for", e no final o lookup identifica que "for" é uma palavra reservada. Essas três funções se relacionam direto com o conceito de tabela de símbolos, que é onde o lookup faz a consulta.

11. Objetivos da análise sintática

Pegando a gramática simples E -> E + T | T e T -> id, e a entrada "id + id", o objetivo da análise sintática é confirmar se essa sequência de tokens pode ser derivada a partir do símbolo inicial E, construindo a árvore sintática correspondente. Passo a passo: aplico E -> E + T -> T + T -> id + id, batendo com a entrada. Pra verificar se está correto, confiro se a derivação chegou exatamente na sequência de tokens de entrada, sem sobrar nem faltar nada.

12. Análise Sintática Descendente

O erro é achar que a análise descendente é só "ler de cima pra baixo" sem se preocupar com a entrada real, mas na verdade ela precisa constantemente olhar o próximo token (lookahead) pra decidir qual produção aplicar, senão não consegue expandir a árvore corretamente a partir do símbolo inicial.
Conclusão reescrita: a análise sintática descendente constrói a árvore do topo pra base, mas depende inteiramente do token atual da entrada pra escolher qual regra usar em cada passo, não é algo feito no escuro.

13. Análise Sintática Ascendente

Entrada: "id + id" com gramática E -> E + T | T, T -> id.
Na análise ascendente, o parser começa pelos tokens da entrada e vai reduzindo até chegar no símbolo inicial. Decisão realizada: reconhece "id" e reduz para T, depois reduz T para E, lê "+", reconhece o próximo "id" e reduz pra T, e por fim reduz "E + T" pra E. Saída esperada: confirmação de que a entrada reduz corretamente até o símbolo inicial E.

14. Deslocamento e redução

Sem considerar deslocamento e redução como operações distintas, o parser ascendente não saberia quando empilhar mais um token (deslocar) ou quando aplicar uma regra da gramática pra substituir o topo da pilha (reduzir). Com essa distinção clara, o analisador consegue decidir em cada passo a ação certa. O impacto é que, sem essa separação, o reconhecimento fica ambíguo e pode gerar conflitos tipo "deslocar ou reduzir", que são justamente um dos problemas clássicos de parsers ascendentes.

15. Complexidade da análise sintática

Complexidade da análise sintática tem a ver com o quão difícil é, em termos de tempo e de poder da gramática, reconhecer se uma entrada pertence à linguagem. Exemplo: uma gramática livre de ambiguidade e sem recursão à esquerda é analisada de forma mais simples e rápida do que uma cheia de ambiguidades, que pode exigir backtracking. Isso se relaciona direto com a escolha entre análise descendente e ascendente, porque certas gramáticas só funcionam bem com um dos dois métodos.

16. Análise Sintática Descendente Recursiva

Gramática: E -> T E', E' -> + T E' | ε, T -> id.
Pra entrada "id + id", cada não-terminal vira uma função (funcE, funcE_linha, funcT). Passo a passo: funcE chama funcT, que consome o primeiro "id"; depois funcE chama funcE_linha, que vê o "+", consome ele, chama funcT de novo pro segundo "id", e por fim vê que acabou a entrada, retornando pela regra vazia (ε). Pra verificar se está correto, confiro se todas as funções retornaram sem erro e se a entrada foi consumida por completo.

17. FNBE para expressões simples

O erro é tratar a FNBE (BNF Estendida) usada pra descrever expressões como algo separado da gramática original, como se fosse outra linguagem. Na verdade ela só reorganiza a mesma gramática de forma mais compacta (usando * ou {} pra repetição), continua descrevendo exatamente as mesmas expressões.
Conclusão reescrita: a FNBE para expressões simples não cria uma gramática nova, ela reescreve a gramática original de forma mais enxuta pra facilitar a implementação do parser.

18. Processamento do lado direito de uma regra

Regra: T -> id { + id }
Entrada: "id + id + id"
Ao processar o lado direito dessa regra, o parser primeiro consome o "id" obrigatório, e depois entra num laço que repete "+ id" enquanto encontrar o operador "+". Decisão realizada: a cada iteração, verifica se o próximo token é "+", e se for, consome ele junto com o "id" seguinte. Saída esperada: os três "id" e os dois "+" são consumidos corretamente, terminando a entrada sem sobra.

19. Convenção de nextToken

Sem usar a convenção de nextToken (manter sempre o token atual disponível numa variável global, avançado por uma função dedicada), cada parte do parser teria que gerenciar por conta própria quando ler o próximo token, o que gera bagunça e erros de sincronização. Com a convenção, todo mundo sabe que o token corrente está sempre disponível e só chama nextToken quando quer avançar. O impacto é na consistência do reconhecimento: sem isso, é fácil "perder" um token ou processar ele duas vezes.

20. Lookahead

Lookahead é a quantidade de tokens à frente que o parser precisa olhar antes de decidir qual regra aplicar. Exemplo: numa gramática onde "if" pode ser seguido de um bloco simples ou de um "if-else", o parser às vezes precisa olhar um token à frente (o "else") pra saber qual produção usar. Isso se relaciona direto com análise descendente, porque é justamente lá que a decisão de qual regra expandir depende do lookahead.

21. Recursão à esquerda

Gramática com recursão à esquerda: E -> E + T | T.
Pra entrada "id + id", um parser descendente recursivo entraria em loop infinito, porque pra reconhecer E ele chamaria E de novo antes de consumir qualquer token. Reescrevendo sem recursão à esquerda: E -> T E', E' -> + T E' | ε. Pra verificar se está correto, eu testo se a nova gramática gera exatamente as mesmas sentenças que a original, só que sem chamar a função da esquerda pra si mesma antes de consumir entrada.

22. FIRST

O erro é tratar o conjunto FIRST como algo calculado uma vez e desconectado do resto, mas na real ele é usado o tempo todo pelo parser descendente pra decidir, olhando o token atual, qual produção aplicar entre várias alternativas.
Conclusão reescrita: FIRST não é um cálculo isolado, é a ferramenta que o parser consulta a cada decisão pra saber se o token atual permite entrar em determinada produção.

23. Teste de Disjunção par a par

Gramática: A -> B | C, com FIRST(B) = {a} e FIRST(C) = {b}.
O teste de disjunção par a par verifica se os conjuntos FIRST das alternativas de uma mesma regra são disjuntos entre si, ou seja, sem elementos em comum. Decisão realizada: comparo FIRST(B) = {a} com FIRST(C) = {b} e vejo que não têm interseção. Saída esperada: já que os conjuntos são disjuntos, a gramática passa no teste e pode ser usada num parser preditivo sem ambiguidade nessa decisão.

As formulações são autorais e não reproduzem exercícios da bibliografia.
