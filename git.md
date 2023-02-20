# Git

*"É um consenso que a verdade está em um lugar, e geralmente está longe."*

### Principais Ações

Ação | Comando |
-----|---------|
Transformar uma pasta em pasta git| **git init** (cria pasta **.git** na pasta atual)
Saber onde você esta no git| **git status**
Preparar arquivo a ser enviado a um commit| **git add \<arquivo>**
Desfazer preparação de arquivo a ser commitado| **git rm --cached \<arquivo>**
Fazer registro do arquivo (commit)| **git commit -m 'Menssagem sobre o arquivo!'**
Ver todas as alterações feitas no git| **git log** (digite **q** para sair do git log)
Ver diferenças entre as versões dos arquivos| **git diff**
Preparar todos os arquivos para um commit| **git add .**
Guardar todos arquivos trackeados pelo git| **git add -u**
___

### Branch e Checkout

Ação | Comando |
-----|---------|
Mostrar branches existentes locais| **git branch**
Mostrar branches existentes locais e remotas| **git branch -a**
Criar uma nova branch| **git branch \<nome>**
Cria uma nova branch e muda para a branch criada| **git checkout -b \<nomeBranch>**
Mudar de branch| **git checkout \<nomeBranch>**
Ir para um commit específico| **git checkout \<numeroCommit>**
Apagar uma branch| **git branch -d \<nomeBranch>**
Reverte o arquivo para o ultimo commit| **git checkout -\- \<nomeArquivo>**
Desfazer preparação de arquivos modificados para o próximo commit| **git reset HEAD \<nomeArquivo>**

### Mais sobre Branch

Ação | Comando |
-----|---------|
Renomear branch local| **git branch -m \<novoNome>**
Renomear uma branch enquanto esta em outra| **git branch -m \<nomeAntigo> \<novoNome>**
Renomear branch default global| **git config --global init.defaultBranch \<novo-nome>**
Mostrar nome e ultimo commit da branch local| **git branch -v**
Mostrar nome e ultimo commit da branch remota| **git branch -vv**
___

*
*
*
___
# Em construção...
___

### Remoto
Ação | Comando |
-----|---------|
Mostrar nome do repositótio remoto| **git remote**
Mostrar caminho do repositótio remoto| **git remote -v**
___

### Git Merge

Ação | Comando |
-----|---------|
Emcorporar modificação de uma outra branch na branch master| **git merge \<nomeBranch>**
___


Dica - [master (memória-raiz) eff6929] arquivo Olá mundo!
 Committer: Fabricio  Araujo Leite <fabricio@faleite.home>
Teu nome e endereço de email foram configurados automaticamente com base
no teu nome de utilizador e nome de máquina. Por favor, verifica se estão
corretos.
Podes suprimir esta mensagem configurando-os explicitamente. Executa
o comando seguinte e segue as instruções no editor para editar
o ficheiro de configuração:

    git config --global --edit

Após fazer isto, podes corrigir a identidade usada nesta memória com:

    git commit --amend --reset-author

 1 file changed, 2 insertions(+)
 create mode 100644 teste.txt

___

## GIT LOG

VER CADA UMA DAS ALTERAÇÕES QUE JA FORAM FEITAS: **git log -p**

VER DUAS ULTIMAS ALTERAÇÕES: **git log -p -2**
(Pode mudar o numero de alterações a ver -> -1 ou -2...)

VER QUAIS ARQUIVOS FORAM ALTERADOS: **git log --stat**

VER ULTIMA INCLUSÃO E O QUE FOI ALTERADO: **git log -1 --stat**

VER A ALTERAÇÃO DO ULTIMO COMMIT: **git log -p -1**

MONITORAR ARQUIVO ESPECÍFICO: **git log -- teste.txt**

MOSTRAR GRÁFICO DAS ALTERAÇÕES: **git log --graph**

MOSTRAR GRÁFICO DAS ALTERAÇÕES EM APENAS UMA LINHA: **git log --graph --oneline**

MOSTRAR CADA COMMIT EM APENAS UMA LINHA: **git log --oneline**

MOSTRAR OS COMMITS POR AUTOR: **git log --author="Fabricio Araujo"**

BUSCAR COMMITS POR PALAVRAS: **git log --grep="Olá"**
___

## GIT CONFIG

LISTAR AS VARIÁVEIS DE CONFIGURAÇÃO DO GIT: **git config -l** ou  **git config --list**

LISTAR AS VARIÁVEIS LOCAL DO GIT: **git config -l --local**

LISTAR AS VARIÁVEIS GLOBAL DO GIT: **git config -l --global**

CONFIGURAR USER NAME: **git config user.name "Nome Usuario"**

CONFIGURAR USER EMAIL: **git config user.email teste@gmail.com**

CRIAR ATALHOS COM ALIAS DO GIT: (alias.conf -> conf = nome do atalho)
**git config --local alias.conf 'config --local -l'**

DELETAR ATALHO FEITO NO GIT: **git config --unset alias.conf** (alias.conf -> nome atalho)
___

## GIT COMMIT --AMEND

ALTERAR A MENSSAGEM DO ULTIMO COMMIT: **git commit --amend**
(o ammend altera o commit para um novo, fazendo a mudança do hash)

ALTERAR ARQUIVO DO ULTIMO COMMIT: **git commit --amend**
(depois que alterar o arquivo, voce pode passar este commando para alterar o commi
(depois que alterar o arquivo, voce pode passar este commando para alterar o commit)

ALTERAR ARQUIVO DO ULTIMO COMMIT SEM ALTERAR MENSAGEM NO GIT: **git commit --amend --no-edit**

ADICIONAR CO-AUTOR NO COMMIT: **git commit -m 'Menssagem sobre o arquivo!
>
> Co-authored-by: nome <email.@email.com>'**
___

## GIT REBASE

EDITAR EM SEQUÊNCIA VÁRIOS COMMITS: **git rebase -i HEAD~4** (HEAD~4 = edita os 4 ultimos comites)
-> para editar os commits substitua a palavra 'pick' por 'edit'
-> Alterar o commit: **git commit --amend**
-> Continuar o rebase: **git rebase --continue**
-> Repita os dois ultimos passos até concluir o rebase.

COMPRIMIR VÁRIOS COMMITS EM UM UNICO COMMIT COM SQUASH:
-> **git rebase -i HEAD~4** (para faser squash nos 4 ultimos commits)
-> para juntar os commits ao commit anterior substitua a palavra 'pick' por 'squash'
-> Alterar o commit: **git commit --amend**
-> Continuar o rebase para fazer o squash: **git rebase --continue**
___

## GIT CLONE

CLONAR REPOSITÓRIO VIA HTTPS:
-> Dentro do diretório passe o respectivo comando junto com o link https do repesitório:
**git clone https://github.com/faleite/EstruturaDecisao**

CRIAR ARQUIVO NO REPOSITÓRIO: **touch 'nome-arquivo.txt'**

CRIAR UM ALINHA DE TEXTO E ENVIAR PARA O ARQUIVO:
**echo "Criando uma linha de exemplo" >> 'nome-arquivo.txt'**

MOSTRAR CONTEÚDO DO ARQUIVO: **cat 'nome-arquivo.txt'**

ENVIAR COMMIT PARA O GITHUB: **git push**
___

## OS TRÊS ESTÁGIOS DO GIT

WORKING TREE (DIRECTORY) -> O arquivo esta apenas no diretório

STAGING AREA -> O arquivo esta numa area intermediaria do git quando passamos o -> **git add**

.GIT DIRECTORY (REPOSITORY) -> O arquivo esta no git quando fazemos o -> commit
___

## ENVIAR PROJETO PARA REPOSITÓRIO NO GITHUB VIA SSH

1. CONECTAR DIRETÓRIO AO REPOSITÓRIO:
**git remote add origin git@github.com:faleite/tutors.git**

2. NOMEAR BRANCH DO REPOSITÓTIO:
**git branch -M main**

3. ENVIAR ARQUIVOS PARA O GITHUB: **git push -u origin main**
___

## BAIXAR ARQUIVOS DO GITHUB:

TRASER BRANCH DO GITHUB E INCORPORAR NA BRANCH LOCAL: **git pull**
    - git pull -> é a combinação de: git fetch + git merge)
    - Para usar trazer branch especifica utiliza -> **git pull origin <nome-branch>**

BAIXAR ALTERAÇÕES DO REPOSITÓRIO REMOTO, SEM INCORPORAR NO REPOSITÓRIO LOCAL: **git fetch**
    - Para usar trazer branch especifica utiliza -> **git fetch origin <nome-branch>**

MOSTRAR DIFENÇA ENTRE UMA BRANCH E OUTRA: **git diff main origin/main**

TRASER A BRANCH REMOTA PARA A BRANCH LOCAL: **git merge**

TRASER A BRANCH ORIGIN/MAIN PARA A BRANCH MAIN: **git merge origin/main**
___


## TAGS DE COMMIT NO GIT

CRIAR UMA TAG: **git tag -a v1.0 -m 'Primeira Versão'**
(v1.0 -> nome da tag, Primeira Versão -> mensagem da tag)

LISTAR TODAS AS TAGS CRIADAS: **git tag**

LISTAR TODAS AS TAGS CRIADAS E SUAS RESPECTIVAS MENSAGENS: **git tag -n**

MOSTRAR O CONTEÚDO DAS TEGS: **git show --tags**

APAGAR TAGS: **git tag -d v1.0** (v1.0 -> nome da tag)

## MENSSAGEM PADRONIZADA DO COMIIT NO GIT:

1. CRIA ARQUIVO COM O NOME: **.git message**

2. EDITE UMA MENSSAGEM PADRÃO NESTE ARQUIVO: **.git message**

3. CONFIGURAR O TEMPLATE DA MENSSAGEM NO GIT: **git config commit.tamplate .gitmessage**

4. LISTAR A VARIÁVERIS QUE FORAM CONFIGURADAS NO GIT: **git config --list**

5. FAZER COMMIT COM MENSSAGEM PADRONISADA: **git commit**
___

##### Exibir informações resumidas em uma linha (hash completa e comentário)

	git log --pretty=oneline

##### Exibir histórico com formatação específica (hash abreviada, autor, data e comentário)

	git log --pretty=format:"%h - %an, %ar : %s"

* %h: Abreviação do hash;
* %an: Nome do autor;
* %ar: Data;
* %s: Comentário.

##### Exibir histórico com formatação específica, com hash não abreviada. Ex:
```c
git log --pretty=format:"%H"  // Exibe id (hash) compelto dos commits

// outra forma (a flag -1 indica o numero de commits a serem mostrados)
git log -1 --format="%H"  // Exibe id (hash) completo do primeiro commit
```
