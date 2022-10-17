#!/bin/zsh
#
# Exemplifica as comparações númericas com blocos if:

NUM="10"

# Verificar se NUM é < 11
if [ "$NUM" -lt "11" ]
then
    echo "$NUM < 11"
fi

# Verificar se NUM é > 9
if [ "$NUM" -gt  "9" ]
then
    echo "$NUM > 9"
fi

# Verificar se NUM é <= 10
if [ "$NUM" -le "10" ]
then
    echo "$NUM <= 10"
fi

# Verificar se NUM é >= 10
if [ "$NUM" -ge "10" ]
then
    echo "$NUM >= 10"
fi

# Verificar se NUM é = 10
if [ "$NUM" -eq "10" ]
then
    echo "$NUM = 10"
fi

# Verificar se NUM é != 9
if [ "$NUM" -ne "9" ]
then
    echo "$NUM != 9"
fi
