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
Mostrar difença entre uma branch e outra| **git diff main origin/main**
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

### Merge e Rebase

- Estas duas ferramentas permitem atualizar seu branch local a partir de\
outro branch
- Produzem quase o mesmo resultado final
- O git merge cria uma nova ramificação que contém as alterações de todas\
as ramificações combinadas
- O git rebase pega todas as alterações de uma ramificação e aplica as mudanças\
diretamente na outra ramificação, como se o trabalho tivesse sido feito em\
sequência, em uma única ramificação.

#### Rebase

- Serve para quando você quer colocar outro branch sob seu branch, sobrepor todos os commits\
e resolver tudo o que acontecer.
- Rebase acha o ponto comum e pega todos os commits a partir dele, separa eles e\
volta ao branch principal e aplica todos os commits por cima.

Ação | Comando |
-----|---------|
Faça o rebase do main no meu branch| **git rebase \<main>**
Emcorporar modificação de uma outra branch na branch master| **git merge \<nomeBranch>**
Continuar o rebase (Após alterar/corrigir arquivo/conflito)| **git rebase --continue**
Alterar o commit (mensagem do commit)| **git commit --amend**
Caso não funcione git commit --amend| **git commit --amend -m "mensagem"**
Alterar arquivo do ultimo commit sem alterar mensagem no git| **git commit --amend --no-edit**

#### Mais comandos

Ação | Comando |
-----|---------|
Editar em sequência vários commits| **git rebase -i HEAD~4**

Observações / Etapas |
------------|
*HEAD~4 = edita os 4 ultimos comites*
*Para editar os commits substitua a palavra 'pick' por 'edit'*
*Repita os dois ultimos passos até concluir o rebase.*

Ação | Comando |
-----|---------|
Comprimir vários commits em um unico commit|**git rebase -i HEAD~4**

Observações / Etapas|
------------|
**-i HEAD~4** faz o squash nos 4 ultimos commits
Para juntar os commits ao commit anterior substitua a palavra 'pick' por 'squash'
Alterar o commit: **git commit --amend**
Continuar o rebase para fazer o squash: **git rebase --continue**
___

#### Merge
- Quando quero pegar um branch, todos os seus commits e suas diferenças e fazer\
um commit de merge (uma fundição), que vai colocar todos esses commits no meu\
branch. Em vez de colocar abaixo, coloca acima.

Ação | Comando |
-----|---------|
Fazer merge da branch principal com a sua branch| **git merge \<suaBranch>**

Observações | Etapas |
------------|--------|
Ir para a branch principal| **git checkout \<main>**
Fazer o merge | **git merge \<suaBranch>**
Voltar para a sua branch| **git checkout \<suaBranch>**
Traser a branch origin/main para a branch main| **git merge origin/main**
___

### Stash

- É uma ferramenta que permite guardar rapidamente as modificações e trazê-las\
de volta.
- Permite deixar de lado modificações feitas, quando você precisa urgentemente\
fazer outra coisa.
- É como se você criasse pequenas branches.
- Permite limpar rapidamente o git para poder fazer uma operação nele\
e voltar.
- Git stash pega tudo que foi modificado na pasta, cria um pequeno commit\
e guarda
- Não é um commit verdadeiro, tem como vantagem ir rapidamente de um lado\
para o outro.

Ação | Comando |
-----|---------|
Criar um stash| **git stash**
Ver o que há no stash| **git stash list**
Reaplicar commit stash| **git stash pop**
___

### Uso remoto do git

- Enviar projeto para repositório no github via SSH

Ação | Comando |
-----|---------|
Conectar diretório ao repositório| **git remote add origin \<endereçoSshGit>**
Nomear branch do repositótio| **git branch -M main**
Envia tudo ao github e faz a branch local seguir a branch remoto| **git push -u origin main**
Clonar repositório remoto| **git clone \<endereçoSshGit>**
Trazer/recuperar informações remotas de vários branches| **git fetch**
Trazer/recuperar informações remotas de todos as branches| **git fetch --all**
Atualizar informações na branch main trazidas pelo **fetch**| **git rebase origin/main**
Fazer **fetch** e **rebase** ao mesmo tempo| **git pull --rebase**
Fazer **fetch** e **merge** ao mesmo tempo| **git pull**
Fazer **fetch** e **merge** em branch especifica| **git pull origin \<nome-branch>**
Fazer **fetch** em branch especifica| **git fetch origin \<nome-branch>**


___

Observações |
------------|
Endereço ssh é parecido com: *git@github.com:faleite/tutors.git*

#### Mais comandos

Ação | Comando |
-----|---------|
Mostrar nome do repositótio remoto| **git remote**
Mostrar caminho do repositótio remoto| **git remote -v**
Fazer **fetch** e **rebase** ao mesmo tempo| **git pull --rebase --origin main**
Mostrar commits remoto| **git log origin/main**
Criar arquivo no repositório| **touch \<nomeArquivo>**
Criar uma linha de texto no arquivo| **echo "linha de text" >> \<nomeArquivo>**
Mostrar conteúdo do arquivo| **cat \<nomeArquivo>**
Enviar commit para o github| **git push**
___

## Mais comandos do Git

### Git Log

Ação | Comando |
-----|---------|
Ver cada uma das alterações que ja foram feitas| **git log -p**
Ver duas ultimas alterações| **git log -p -2** (-2 ou -1 ...etc)
Ver quais arquivos foram alterados| **git log --stat**
Ver ultima inclusão e o que foi alterado| **git log -1 --stat**
Ver a alteração do ultimo commit| **git log -p -1**
Monitorar arquivo específico| **git log -- \<nomeArquvio>**
Mostrar gráfico das alterações| **git log --graph**
Mostrar gráfico das alterações em apenas uma linha| **git log --graph --oneline**
Mostrar cada commit em apenas uma linha| **git log --oneline**
Mostrar cada commit em apenas uma linha de forma resumida| **git log --pretty=oneline**
Mostrar os commits por autor| **git log --author="Fabricio Araujo"**
Buscar commits por palavras| **git log --grep="Olá"**

### Git log detalhado

flag | Ação |
-----|---------|
%h| Abreviação do hash
%an| Nome do autor
%ar| Data
%s| Comentário

- Exemplo de histórico com formatação específica
```bash
# hash abreviada, autor, data e comentário
git log --pretty=format:"%h - %an, %ar : %s"
```

- Exemplo de histórico com formatação específica, com hash não abreviada
```bash
# Exibe id (hash) compelto dos commits
git log --pretty=format:"%H"

# outra forma (a flag -1 indica o numero de commits a serem mostrados)
git log -1 --format="%H"  # Exibe id (hash) completo do primeiro commit
```
___

### Git Config

Ação | Comando |
-----|---------|
Listar as variáveis de configuração do git| **git config -l** / **git config --list**
Listar as variáveis local do git| **git config -l --local**
Listar as variáveis global do git| **git config -l --global**
Configurar user name| **git config user.name \<nomeUsuario>**
Configurar user email| **git config user.email teste@gmail.com**
Criar atalhos com alias do git|
alias.conf -> conf = nome do atalho|**git config --local alias.conf 'config --local -l'**
Deletar atalho feito no git| **git config --unset alias.conf** (alias.conf -> nome atalho)

- Adicionar co-autor no commit
```bash
git commit -m 'Menssagem sobre o arquivo!
>
> Co-authored-by: nome <email.@email.com>'
```
___

### Os três estágios do git

Estágio | Estado |
--------|--------|
WORKING TREE (DIRECTORY)| O arquivo esta apenas no diretório
STAGING AREA| O arquivo está numa area intermediária do git (quando passamos o **git add**)
.GIT DIRECTORY (REPOSITORY)| O arquivo esta no git (quando fazemos o **commit**)
___

### Tags de commit no git

Ação | Comando |
-----|---------|
Criar uma tag| **git tag -a v1.0 -m \<nomeVersao>**
v1.0| é o nome da Tag
\<nomeVersao>| é mensagem da tag
Listar todas as tags criadas| **git tag**
Listar todas as tags criadas e suas mensagens| **git tag -n**
Mostrar o conteúdo das tegs| **git show --tags**
Apagar tags| **git tag -d v1.0** (v1.0 = nome da tag)
___

### Menssagem padronizada do comiit no git:

ção | Comando |
-----|---------|
Cria arquivo com o nome| **.git message**
Edite uma menssagem padrão neste arquivo| **.git message**
Configurar o template da menssagem no git| **git config commit.tamplate .gitmessage**
Listar a variáveis que foram configuradas no git| **git config --list**
Fazer commit com menssagem padronisada| **git commit**
