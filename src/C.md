```
			 ██████╗
			██╔════╝
			██║
			██║
			╚██████╗
			 ╚═════╝ notes.
```
---

## Artigos
- [**Code-vault**](https://github.com/faleite/code-vault)
- [**CS50**](https://github.com/faleite/cs50/blob/main/C.md)
- [**42 Piscine**](https://github.com/faleite/42_Piscine/tree/main/dcs/projects_notes)
---
## Asuntos
- [**Expansão de variáveis**](#expansão-de-variáveis)
- [**Desreferenciar**](#desreferenciar)
- [**Structs**](#structs)
- [**Boolean**](#boolean)
---

## **Expansão de variáveis**
*A expansão de variáveis é um recurso comum em muitos shells e linguagens de script que permite que você use variáveis em strings e as expanda para seus valores reais.*

*Por exemplo, em um shell como bash, você pode usar variáveis de ambiente como `$HOME` ou `$USER` em suas strings e elas serão expandidas para seus valores reais quando a string for avaliada.*

*Em C, você pode implementar sua própria expansão de variáveis usando funções de manipulação de strings para encontrar e substituir variáveis em suas strings.*

### Podemos implementar da seguinte forma:
1. Crie uma função que verifica se uma string é uma expansão válida de variável: `check_valid_str(char *str)`.
  - Ela retorna o comprimento do nome da variável se for uma expansão válida, ou -1 se não for. A função verifica se a string começa com um `$` e se o próximo caractere é um dígito ou uma letra ou sublinhado. Se o próximo caractere for um dígito, a função retorna 1. Se o próximo caractere for uma letra, um digito ou um sublinhado, a função continua a verificar os caracteres subsequentes até encontrar um caractere que não seja uma letra, um dígito ou um sublinhado. Se o próximo caractere for um `?`, a função retorna 1. Se o próximo caractere não for uma aspa dupla ou simples, a função retorna -1.

### Impelmentação de check_valid_str em pseudo-código:
```c
function check_valid_str(string: str)

    len = 0

    if str is not null and str[0] is '$' and str[1] is not null:
        str = str + 1  // Move to the next character

        if is_digit(str[0]):
            return 1  // Valid case for a numeric value

        while str[len] is not null and (is_alphanumeric(str[len]) or str[len] is '_'):
            len = len + 1

        if len is 0 and str[0] is '?':
            len = 1  // Special case for '?'

        if len is 0 and str[0] is not '\"' and str[0] is not '\'':
            return -1  // Invalid case

        return len  // Return the length of the valid substring

    return -1  // Default case, invalid
```
2. Crie uma função responsável pela expansão da variável `var_expander(char *str, int start, int len):`.
  - Ela extrai o nome da variável da string, obtém o valor da variável, divide a string original em duas partes (antes e depois da variável), concatena a primeira parte, o valor da variável e a segunda parte, e retorna a string resultante. Se a string resultante estiver vazia, a função retorna NULL.

### Impelmentação de variable_expander em pseudo-código:
```c
function variable_expander(str, start, len):
    key = substring(str, start + 1, len)  // Extract substring starting from (start + 1) with length 'len'
    value = get_value(key)  // Retrieve the value associated with the key
    part2 = &str[start + 1 + len]  // Extract the substring following the expanded variable
    str[start] = '\0'  // Nullify the character at 'start' to truncate the original string
    part1 = str  // The first part of the original string before the expanded variable
    Free the memory allocated for the key
    par1 + value // Concatenate the first part and the value of the variable
    result = part1 + part2 // Concatenate the result with the second part
    Free the memory allocated after concatenation
    Free the memory allocated for the original string

    if result is not null and *result is iqual to '\0':
      Free the memory allocated for the result
      Return null if the result is an empty string
    
    recursively call result to Expand any other variables in the result and return
      return string_expander(result)
```

3. Crie uma função que percorre a string e procura por expansões de variáveis `expander_string(char *str):`.
  - Se encontrar uma expansão de variável, ela chama a função variable_expander para expandir a variável. A função ignora os caracteres entre aspas simples. Se encontrar uma aspa dupla, ela faz a expansão e ignora aspas simples dentro de aspas duplas.

### Impelmentação de string_expander em pseudo-código:
```c
function expander_string(string: str):
    index = 0
    flag_check = 0
    length = 0
    
    if str is null:
        return null

    while str[index] is not null:
        if flag_check is 0 and (str[index] is '\'' or str[index] is '\"'):
            flag_check = str[index]
        else if flag_check is str[index]:
            flag_check = 0
        else if flag_check is not '\'':
            length = check_valid_str(str[index]) // take the length of the valid substring
            if length is not -1:
                return expander_variable(str, index, length) // Expand the variable
        increment index by 1 (index = index + 1)
    return string
```

4. Esta função percorre um array de strings e chama a função `expander_string` para cada string  `expander_arguments(char **args)`:. 
  - Se expander_string retornar NULL, a função remove a string do array e move todas as strings subsequentes uma posição para cima.

### Impelmentação de expander_arguments em pseudo-código:
```c
function expander_arguments(arguments: array of strings):
    index1 = 0  // Initialize the index1 for iterating through the arguments

    // Loop through each argument in the array
    while arguments[index1] is not null:
      arguments[index1] = expander_string(arguments[index1])  // Expand variables in the current argument
      if arguments[index1] is null: // If the expanded argument is null, remove it from the array
          index2 = index1
          while arguments[index2] is not null:
              arguments[index2 - 1] = arguments[index2] // Move the subsequent arguments up one position
              arguments[index2] = null // Set the last element to null
              index2 = index2 + 1 // Move to the next argument
      else:
          index1 = index1 + 1  // Move to the next argument

    return arguments  // Return the modified array of expanded arguments
```

> *Creditos a [**Ezequiel**](https://github.com/zico15) pela explicação e elaboração do código original, **Obrigado Gabriel 48 Lisboa!**.*

## **Desreferenciar**
- **Desreferenciar** é um termo que significa acessar o valor armazenado em um endereço de memória apontado por um ponteiro.\
Quando você tem um ponteiro, ele armazena um endereço de memória, e desreferenciar esse ponteiro significa acessar o valor\
armazenado nesse endereço de memória.
- Em **C** e em muitas outras linguagens de programação, você usa o operador de desreferência `*` para acessar o valor\
apontado por um ponteiro. Por exemplo, se você tem um ponteiro `ptr` que aponta para um inteiro, `*ptr` permite que você\
acesse o valor inteiro armazenado naquele endereço de memória.

***Aqui está um exemplo simples em C:***
```c
int valor = 42;
int *ptr = &valor; // ptr aponta para o endereço de memória de 'valor'

int x = *ptr; // 'x' recebe o valor desreferenciado apontado por 'ptr'
```
- Neste exemplo, `*ptr` desreferencia o ponteiro `ptr`, o que significa que ele acessa o valor 42 armazenado na memória para\
o qual `ptr` aponta.
- Então, quando você ouve o termo "desreferenciar um ponteiro", pense nele como acessar o valor que o ponteiro está apontando,\
em vez de acessar o próprio ponteiro ou seu endereço de memória.

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
