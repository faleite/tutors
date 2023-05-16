# Introdução ao GDB
>Fonte: [Pedro Vasconcelos](https://www.dcc.fc.up.pt/~pbv/aulas/progimp/teoricas/teorica12.html) (Outubro 2019) 

# O que é o GDB

-   O GDB (_GNU Project Debugger_) é uma ferramenta para:
    -   observar um programa enquanto este executa
    -   ver o estado no momento que a execução falha
-   Permite:
    -   iniciar a execução de um programa
    -   executar linha-a-linha
    -   especificar pontos de paragem
    -   imprimir valores de variáveis
-   Suporta C, C++, Objective-C, Ada e Pascal (entre outras linguagens)

# Usar o GDB

-   O GDB opera sobre _ficheiros executáveis_ (não diretamente sobre o código-fonte)
-   Para usar o GDB com um programa em C devemos compilar com opção `-g`:

```sh
$ gcc -g -o programa programa.c
```

-   A opção `-g` indica ao compilador para incluir no executável informação extra para o GDB

# Usar o GDB

-   Em seguida executamos `gdb` sobre o ficheiro executável compilado:

```sh
$ gdb programa
```

-   Após algumas mensagens obtemos a indicação de que o GDB está à espera de um comando:

```sh
...
(gdb) 
```

# Usar o GDB

-   Tal como a _shell_ de Linux, o GDB é um _programa interativo_:
    -   lê um comando do teclado (até _Enter_)
    -   processa o comando e mostra resultados
    -   volta a esperar um novo comando
-   O comando `quit` termina a sessão
    -   alternativa: `Ctrl-D` (end-of-file)
    -   podemos abreviar comandos  
        (e.q., escrever `q` em vez de `quit`)

# Exemplo

-   Vamos usar o GDB sobre um programa de exemplo
-   O programa deveria calcular o _factorial_ de um inteiro positivo
    
    n! = 1 × 2 × 3 × ⋯ x n
    
-   Exemplo: 4! = 1 × 2 × 3 × 4 = 24
-   No entanto, o programa dá resultados errados

```sh
$ gcc  -o factorial factorial.c
$ ./factorial
Introduza um inteiro positivo:4
Factorial 4 = 0
```

# Programa errado

```c
#include <stdio.h>

int main(void) {
  int n, i, fact;

  printf("Introduza um inteiro positivo:");
  scanf("%d", &n);
  
  for(i = 1; i<=n; i++) 
    fact = fact*i;

  printf("Factorial %d = %d\n", n, fact);
}
```

# Usar o GDB

-   Vamos usar o GDB para perceber o erro
-   Vídeo no YouTube:  
    [Introduction to GDB: a tutorial](https://youtu.be/sCtY--xRUyI) (Harvard CS50)

# Usando o GDB

Recompilar o programa com opção _debugging_:

```sh
$ gcc -g -o factorial factorial.c
```

Executar o GDB com o executável compilado:

```sh
$ gdb factorial
```

# Executar o programa

Usamos o comando `run` para correr o nosso programa dentro do GDB:

```sh
(gdb) run
Starting program...
Introduza um inteiro positivo:4
Factorial 4 = 0
[Inferior 1 (process 9885) exited...
```

# Executar o programa (cont.)

-   O programa terminou e deu resultado errado
-   Neste momento já não podemos observar o estado de variáveis
-   Vamos correr novamente, mas desta vez pedir para parar a execução a meio
-   Fazemos isso definindo um _breakpoint_ no programa

# Definir _breakpoints_

`break` _fun_

parar a execução no início da função _fun_

`break` _n_

parar a execução no início linha número _n_

  
Podemos usar `list` para listar o programa juntamente com números de linhas.

# Observar valores de variáveis

`print` _var_

`print` _expr_

mostrar o valor de uma variável ou expressão

`display` _var_

`display` _expr_

mostrar o valor de uma variável ou expressão em cada _breakpoint_

# Observar valores de variáveis

Vamos usar:

1.  `break` para colocar um _breakpoint_ no ciclo `for`;
2.  `display` para mostrar os valores de `n`, `i`, e `fact`.

# Conclusão

-   Valor inicial de `fact` é incorreto
    -   deveria ser 1 (porque 0!=10!=1)
    -   mas poderá ser 0 ou um valor arbitrário (dependendo da implementação)
-   Isto ocorre porque **não inicializamos** a variável
-   A correção é simples:

```c
int n, i, fact = 1;  // corrigido
```

# Sumário de comandos

`break` _fun_

definir _breakpoint_ no ínicio da função _fun_

`break` _n_

definir _breakpoint_ no ínicio da linha _n_

`delete` _n_

remover o _breakpoint_ número _n_

`run`

executar o programa desde o início

# Sumário de comandos (cont.)

`next`

executar a próxima linha

`step`

executar a próxima linha (mas entra dentro de funções)

`continue`

continuar a execução até ao próximo _breakpont_ (ou até ao final)

# Sumário de comandos (cont.)

`print` _expr_

calcular e mostrar o valor duma expressão

`display` _expr_

mostrar o valor da expressão sempre que parar

`set var` _nome_ = _expr_

modificar o valor de uma variável

`quit`

terminar a sessão