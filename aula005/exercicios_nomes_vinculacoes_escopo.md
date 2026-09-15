Exercícios - Nomes, Vinculações e Escopo

2. Nomes

O erro é tratar "nomes" como se fosse só um rótulo qualquer dado a uma variável, desconectado do resto. Na verdade o nome de uma entidade está diretamente ligado a como ela vai ser referenciada, escopada e vinculada durante a execução do programa.
Conclusão reescrita: nomes não são etiquetas soltas, eles são a forma como o programador referencia entidades (variáveis, funções, tipos), e essa referência se conecta direto com escopo e vinculação.

4. Palavras especiais

Considerando palavras especiais (reservadas): "if" sempre é interpretado como estrutura de controle e nunca pode virar nome de variável, então "int if = 5;" dá erro de compilação. Ignorando isso: o compilador trataria "if" como um identificador comum, permitindo essa declaração, o que geraria ambiguidade entre o que é estrutura da linguagem e o que é nome escolhido pelo programador. A diferença observável é que reservar certas palavras evita essa ambiguidade.

11. Declaração Explícita/Implícita

Contexto: em C eu preciso escrever "int x;" antes de usar x, isso é declaração explícita. Em Python eu só faço "x = 5" e o interpretador já cria a variável, isso é declaração implícita. Decisão tomada: usar declaração implícita deixa o código mais enxuto de escrever. Consequência esperada: fica mais fácil cometer erro de digitação no nome de uma variável sem o interpretador acusar, já que qualquer atribuição nova cria uma variável automaticamente.

15. Variáveis estáticas

Variável estática é aquela que recebe um espaço de memória fixo, alocado uma única vez, e mantém seu valor durante toda a execução do programa (ou daquele escopo), sem ser desalocada antes do fim. Exemplo: numa função em C com "static int contador = 0;", esse contador mantém o valor entre uma chamada e outra da função, diferente de uma variável comum que reinicia toda vez. Isso se relaciona direto com tempo de vida, porque a variável estática tem o maior tempo de vida possível dentro do seu escopo.

19. Escopo

Considerando escopo: uma variável "x" declarada dentro de uma função só pode ser usada dentro dela, então tentar usar "x" fora da função dá erro de variável não declarada. Ignorando escopo (hipoteticamente): qualquer "x" declarado em qualquer lugar do programa poderia ser acessado de qualquer parte, o que geraria confusão quando existissem nomes repetidos. A diferença observável é que o escopo delimita onde um nome é válido e evita colisão entre variáveis de mesmo nome.

23. Escopo global

Situação: uma variável "contadorTotal" declarada fora de qualquer função, no nível mais alto do arquivo. Aplicação do conceito: qualquer função do programa consegue ler e alterar "contadorTotal" sem precisar recebê-la como parâmetro, porque o escopo global torna ela visível no programa inteiro. Conclusão esperada: isso é prático, mas se várias funções mexem na mesma variável global fica difícil rastrear quem alterou o valor, e é justamente por isso que se recomenda evitar abusar de variáveis globais.

27. Constantes nomeadas

O erro é tratar constante nomeada só como "uma variável que não muda", como se fosse uma etapa isolada de otimização. Na verdade o uso de constantes nomeadas está ligado direto à legibilidade e manutenção do código, porque dá nome a um valor fixo (tipo um limite ou uma taxa) que sem isso seria só um número solto no meio do código.
Conclusão reescrita: constante nomeada não é apenas "variável travada", é uma forma de documentar a intenção de um valor fixo no programa e evitar espalhar números mágicos sem contexto pelo código.
