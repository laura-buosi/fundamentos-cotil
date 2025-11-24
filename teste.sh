#!/bin/bash

echo "Olá mundo"

NOME="Laura"
IDADE=16

echo "Meu nome é $NOME e tenho $IDADE anos"

echo "Digite seu nome:"
read NOME_USUARIO
echo "Seu nome é $NOME_USUARIO"

read -p "Qual sua comida favorita? " COMIDA
echo "Então seu nome é $NOME_USUARIO e você gosta de $COMIDA."

if [ $COMIDA == "Pizza" ]; then
	echo"Pessima comida favorita"
#elif
#	echo"Alguma coisa"
else
	echo"Boa escolha"
fi

for ARQUIVO in *.txt; do
	echo"O $ARQUIVO terá a extensão mudada para ${ARQUIVO.txt}.md"
	mv "$ARQUIVO" "${ARQUIVO.txt}.md"
done
echo"Feito"
