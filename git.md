# G I T  /  G I T H U B

## INICIAR REPOSITÓRIO

NO DIRETÓRIO CRIADO PARA O GIT DE O COMANDO: **git init**

* Sera criado uma pasta .git no diretório.
___

SABER ESTADO DO GIT: **git status**

GUARDAR ARQUIVO NO GIT: **git add nomearquivo.txt**

GUARDAR TODOS ARQUIVOS TRACKEADOS PELO GIT: **git add -u**

1. GUARDAR TUDO NO GIT: **git add .**
2. FAZER COMMIT (FAZER REGITRO DO ARQUIVO): **git commit -m 'Menssagem sobre o arquivo!'**

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

VER TODAS AS ALTERAÇÕES FEITAS NO GIT: **git log** -> **q** para sair
___

IR PARA COMMIT ANTERIOR, ATRAVES DO HASH (NUMERO DO COMMIT)
**git checkout numerodocommit**

DICA:
Estás em 'HEAD desanexada'. Podes olhar, fazer mudanças experimentais e
memorizá-las, e, neste estado, podes descartar qualquer memória que faças
sem impactar qualquer ramo fazendo uma troca de volta para um ramo.

Se queres criar um novo ramo para reter as memórias que criaste, podes
fazê-lo (agora ou mais tarde) usando -c com o comando switch. Exemplo:

  git switch -c <novo-nome-de-ramo>

Ou desfazer esta operação com:

  git switch -

VER TEXTO DO ARQUIVO NO PROMPT: **cat teste.txt**
(teste.txt -> nome do arquivo)

IR/VOLTAR PARA O COMMIT MASTER: **git checkout master**

MOSTRAR NO GIT O QUE MUDOU DE AGORA PARA O ULTIMO COMMIT:
**git diff**
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

## GIT BRANCH - GIT MERGE

CRIAR UMA NOVA BRANCH: **git checkout -b aulaBranch**

VOLTAR PARA O COMMIT MASTER: **git checkout master**

LISTAR TODAS AS MINHAS BRANCH: **git branch**

VER ULTIMO COMMIT DE CADA BRANCH: **git branch -v**

EMCORPORAR MODIFICAÇÃO DE UMA OUTRA BRANCH NA BRANCH MASTER: **git merge aulaBranch**
(aulaBranch -> nome da branch)
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

## BRANCH

RENOMEAR BRANCH LOCAL: **git branch -m 'novo-nome'**
(Você deve estar na branch que deseja alter o nome)

RENOMEAR UMA BRANCH ENQUANTO ESTA EM OUTRA: **git branch -m 'nome-antigo' 'novo-nome'**
(Se você quer alterar o nome de outra branch, enquanto está na master, por exemplo)

RENOMEAR BRANCH DEFAULT GLOBAL: **git config --global init.defaultBranch <novo-nome>**
___

MOSTRAR NOME DO REPOSITÓTIO REMOTO: **git remote**

MOSTRAR CAMINHO DO REPOSITÓTIO REMOTO: **git remote -v**

MOSTRAR BRANCHES EXISTENTES NO REPOSITÓTIO: **git branch**

MOSTRAR NOME E ULTIMO COMMIT DA BRANCH LOCAL: **git branch -v**

MOSTRAR NOME E ULTIMO COMMIT DA BRANCH REMOTA: **git branch -vv**
___

## TAGS DE COMMIT NO GIT

CRIAR UMA TAG: **git tag -a v1.0 -m 'Primeira Versão'**
(v1.0 -> nome da tag, Primeira Versão -> mensagem da tag)

LISTAR TODAS AS TAGS CRIADAS: **git tag**

LISTAR TODAS AS TAGS CRIADAS E SUAS RESPECTIVAS MENSAGENS: **git tag -n**

MOSTRAR O CONTEÚDO DAS TEGS: **git show --tags**

APAGAR TAGS: **git tag -d v1.0** (v1.0 -> nome da tag)
