```
			 ██████╗
			██╔════╝
			██║
			██║
			╚██████╗
			 ╚═════╝ notes.
```
---
## [Code-vault](https://github.com/faleite/code-vault)
## [CS50](https://github.com/faleite/cs50/blob/main/C.md)
## [Piscine](https://github.com/faleite/42Piscine/tree/main/Notes/Notes)
---

## **Structs**
```c
t_data	*data(void)
{
	static t_data	d;

	return (&d);
}
```
- **static t_data**
 - E uma struct que retorna um ponteiro para uma variável t_data estática.
 - A variável **d** será compartilhada entre todas as chamadas da função **data()**,\
   e ela manterá seu valor entre chamadas.
 - **d** será inicializada apenas uma vez, na primeira vez que a função é chamada.
 - Por ser uma struct estatica **d** é inicializada com todos os seus valores definidos:
  - como **0**, **NULL**, **'\0'** ou **false** de acordo com cada tipo.
 - **return (&d);** Retorna o endereço de memória da variável **d**. Isso significa que\
   a função data retorna um ponteiro para a variável **d**.

*Quando você declara uma variável do tipo static em C sem atribuir um valor inicial\
a ela, a variável é inicializada automaticamente pelo compilador com zero (ou NULL,\
dependendo do tipo de dado).*

*Portanto, sempre que você chamar a função data(), ela retornará o endereço de\
memória da variável d, que é uma variável estática. Isso é comum quando você\
deseja compartilhar uma única instância de dados entre várias partes do seu programa,\
como uma espécie de "variável global". Dessa forma, você pode acessar e modificar\
os dados da variável d de diferentes partes do seu código.*

*Exemplos*
```c
#include <stdio.h>

void func() {
    static int x;
    printf("x = %d\n", x);
}

int main() {
    func();  // Isso imprimirá "x = 0"
    return 0;
}
```

## **Boolean**
```c
/*
* Avalia se o último caractere é uma quebra de linha e retorna 1 se for verdadeira
* (ou seja, se for uma quebra de linha) e 0 se for falsa.
*/
len = ft_strlen(line);
len -= (line[len - 1] == '\n');
```
*Quando você faz uma comparação usando o operador ==, o resultado é um valor booleano que é representado como 0 para "falso" e 1 para "verdadeiro". Essa é uma característica importante das expressões condicionais em C.*

*Por exemplo:*

    **x == y** avaliará como 1 (verdadeiro) se x for igual a y e 0 (falso) caso contrário.
    **a > b** avaliará como 1 (verdadeiro) se a for maior que b e 0 (falso) caso contrário.
    **c <= d** avaliará como 1 (verdadeiro) se c for menor ou igual a d e 0 (falso) caso contrário.

*Essa é uma maneira eficiente e conveniente de representar resultados booleanos em C, onde 0 é usado para representar falso e 1 para representar verdadeiro. Esses valores booleanos podem então ser usados em estruturas condicionais, como if, para tomar decisões com base em condições.*
