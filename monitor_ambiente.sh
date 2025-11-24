#!/bin/bash

# MISSÃO 1 — VERIFICAR DIRETÓRIO E PERMISSÕES

echo "Digite o nome do diretório:"
read DIR

if [ -d "$DIR" ]; then
    echo "O diretório existe."
else
    echo "O diretório NÃO existe."
    exit 1
fi

echo "Permissões do diretório:"
ls -ld "$DIR"


# MISSÃO 2 — USO DO DISCO

echo "Uso de disco da partição /:"
df -h /

# Pega apenas o número (isso é meio "burro" mas funciona)
USO=$(df / | tail -1 | awk '{print $5}' | sed 's/%//')

if [ "$USO" -gt 90 ]; then
    echo "CRÍTICO: uso acima de 90%."
elif [ "$USO" -gt 70 ]; then
    echo "ALERTA: uso acima de 70%."
else
    echo "OK: uso normal."
fi


# MISSÃO 3 — PROCESSOS DO USUÁRIO

USER=$(whoami)

echo "Usuário atual: $USER"

echo "Número de processos desse usuário:"
ps -u "$USER" | wc -l

echo "Top 5 processos que mais usam memória:"
ps -u "$USER" aux --sort=-%mem | head -n 5

