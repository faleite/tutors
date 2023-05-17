# Introdução ao GDB

## O que é o GDB

-   O GDB (_GNU Project Debugger_) é uma ferramenta para:
    -   observar um programa enquanto este executa
    -   ver o estado no momento que a execução falha
-   Permite:
    -   iniciar a execução de um programa
    -   executar linha-a-linha
    -   especificar pontos de paragem
    -   imprimir valores de variáveis
-   Suporta C, C++, Objective-C, Ada e Pascal (entre outras linguagens)
>Fonte: [Pedro Vasconcelos](https://www.dcc.fc.up.pt/~pbv/aulas/progimp/teoricas/teorica12.html) (Outubro 2019) 

## Exemplo para teste

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

### Programa errado

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

## Debugger 
*Uso basico, passo a passo:*
Step | Descricao <-> Comando
:----:|--------------------
**01** | *Compilar o programa com a opção debugging*
*Cmd:* | `$ gcc -g -o factorial factorial.c`
**02** | *Executar o GDB com o executável compilado*
*Cmd:* | `$ gdb factorial`
**03** | *correr o nosso programa dentro do GDB*
*Cmd:* | `run` ou `r`
**04** | *Definir início de parada (neste caso no início da função)*
*Cmd:* | `break main` ou `b main`
**05** | *Mostra a linha de codigo que esta prestes a ser executada*
*Cmd:* | `run` ou `r`
**06** | *Ir para a proxima linha (Executa a linha anterior)*
*Cmd:* | `next` ou `n`
**07** | *Podemos obter o codigo centralizado em torno da linha que estamos*
*Cmd:* | `list` ou `l`
**08** | *Ver o proximo conjunto de linhas (Podemos fazer ate chegar ao final do codigo)*
*Cmd:* | `list` ou `l`
**09** | *Para voltar a um perimetro anterior podemos usar o numero da linha*
**Cmd:** |`list 12` ou `l 12`
**10** | *Verificar valor da variavel (Neste caso "n" e a variavel)*
*Cmd:* | `print n` ou `p n`
**10** | *Definir o breakpoint em uma linha especifica*
*Cmd:* | `break main.c:8` ou `b main.c:8`
**11** | *Avacar no breakpoint*
*Cmd:* |`continue` ou `c`

### Conclusão

-   Valor inicial de `fact` é incorreto
    -   deveria ser 1 (porque 0!=10!=1)
    -   mas poderá ser 0 ou um valor arbitrário (dependendo da implementação)
-   Isto ocorre porque **não inicializamos** a variável
-   A correção é simples:

```c
int n, i, fact = 1;  // corrigido
```

## Usar o GDB

-   O GDB opera sobre _ficheiros executáveis_ (não diretamente sobre o código-fonte)
-   Para usar o GDB com um programa em C devemos compilar com opção `-g`:
-   A opção `-g` indica ao compilador para incluir no executável informação extra para o GDB

```sh
$ gcc -g -o programa programa.c
```

-   Em seguida executamos `gdb` sobre o ficheiro executável compilado:

```sh
$ gdb programa
```

-   Após algumas mensagens obtemos a indicação de que o GDB está à espera de um comando:

```sh
...
(gdb) 
```

-   Tal como a _shell_ de Linux, o GDB é um _programa interativo_:
    -   lê um comando do teclado (até _Enter_)
    -   processa o comando e mostra resultados
    -   volta a esperar um novo comando
-   O comando `quit` termina a sessão
    -   alternativa: `Ctrl-D` (end-of-file)
    -   podemos abreviar comandos  
        (e.q., escrever `q` em vez de `quit`)
-   Vídeo no YouTube:  
    [Introduction to GDB: a tutorial](https://youtu.be/sCtY--xRUyI) (Harvard CS50)

### Executar o programa
- Usamos o comando `run` para correr o nosso programa dentro do GDB:

```sh
(gdb) run
Starting program...
Introduza um inteiro positivo:4
Factorial 4 = 0
[Inferior 1 (process 9885) exited...
```

-   O programa terminou e deu resultado errado
-   Neste momento já não podemos observar o estado de variáveis
-   Vamos correr novamente, mas desta vez pedir para parar a execução a meio
-   Fazemos isso definindo um _breakpoint_ no programa

### Mais Comandos
Descricao | Comando
----------|:------:
*Mostrar onde estou* | `where` ou `backtrace`
*Repetir comando anterior* | `Enter`
*Atribuir valores a variaveis* | `print fact = 1`
*Imprimir todas as variaveis locais* | `info locals`
*Desabilitar todos os breakpoints* | `disable`
*Mostrar o valor de uma variável/expressão em cada breakpoint* | `display var` / `display expr`
*Ddefinir breakpoint no ínicio da linha n* | `break` _n_
*Remover o breakpoint número n* | `delete` _n_
*Executar a próxima linha (mas entra dentro de funções)* | `step`
*Continuar a execução até ao próximo breakpont (ou até ao final)* | `continue`
*Mostrar o valor da expressão sempre que parar* | `display` _expr_
*Modificar o valor de uma variável* | `set var` _nome_ = _expr_

### Observar valores de variáveis

*Vamos usar:*
1.  `break` para colocar um _breakpoint_ no ciclo `for`;
2.  `display` para mostrar os valores de `n`, `i`, e `fact`.

### Outros comandos para testes

#### Sanitize
Descricao | Comando
----------|:------:
*Verificar se ha "buffer overflow"* | `cc file.c -fsanitize=adress -g`
*Verificar se ha vazamentos de memoria"* | `cc file.c -fsanitize=leak -g`
*Opção de compilação inclui infos de depuração no binário gerado* | `-g`

#### Valgrind
- *O **Valgrind** é uma ferramenta de análise de código, detecta várias classes de erros, incluindo vazamentos de memória, referências inválidas, uso incorreto de APIs de alocação de memória, entre outros.*
Descricao | Comando
----------|:------:
*Compilacao de codigo para melhor uso do Valgrind* | `gcc -g file.c -o file`
*Uso geral* | `valgrind` 
*Monitora a alocação/uso de memória e fornece infos sobre vazamentos de memória* | `valgrind --leak-check=full ./file`
