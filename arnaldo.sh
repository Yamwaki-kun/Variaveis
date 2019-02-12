#!/bin/bash
#criação das variaves locais
USUARIO="senac"
TESTE01=$(test A == A ; echo $?)
TESTE02=$(test -f /etc/passwd ; echo       $?)
USUARIOS=$(who | awk '{print $1}' )

#utilizando o comando eco para imprimir na tela os valores das variaveis locais
#e variaveis especiais do shell
echo "impressão na tela...............: olá mundo"
echo "nome do usuário.................: $USUARIO"
echo "nome do arquivo de shell........: $0"
echo "Quantidade de parametros........: $#"
echo "todos os parametros.............: $*"
echo "parametro 01....................: $1"
echo "parametro 02....................: $2"
echo "status do comando anterior......: $?"
echo "pid do processo.................: $$"
echo "Comando : teste A == A .........: $TESTE01"
echo "Comando : teste -f /etc/passwd..: $TESTE02"
echo "Usuários Logados................: $USUARIOS"

#utilizando o comando if para fazer os testes logicos e
#validar o ambiente
if [ $USUARIO == root ];
then
	echo "teste de usuário:.............: usuário é toot"
else
	echo "teste de usuário:.............: usuário não é root"
fi

#utilizando o comando if encadeado para aumentar a quandade dos
#testes lógicos
if [ $TESTE01 -eq 0 ];
then
	echo "Resultado do comando teste é....: VERDADEIRO"
elif [ $TESTE01 -eq 1 ];
then
echo "Resultado do comando teste é....: FALSO"
fi

#utilizando o camando case para fazer os teste logicos e validar
#o ambiente
case $TESTE01 in
	0) echo "resultado do comando case é...: 0- verdadeiro";;
	1) echo "resultado do comando case é...: 1- falso";;
	*) echo "resultado do comando case é...: não indentificado"
esac

#utilizando o comando read para receber os
#valores e fzer o teste logico com o case
read -p "digite as letras: A,B ou C.........................." LETRAS;
case $LETRAS in
	A|a) echo "A letra digitada foi........................... $LETRAS";;
	B|b) echo "A letra digitada foi........................... $LETRAS";;
	C|c) echo "A letra digitada foi........................... $LETRAS";;
	*) echo "Letra digita errada.............................. $LETRAS"
esac
#Utilizando o laço de loop for para verificar os numeros digitados
#junto com o comando read
read -p "uma sequencia de numeros......................... " NUMEROS;
for VALORES in $NUMEROS;
do
	echo "Numeros passados para o looooooooooooooooooooooop: $VALORES"
done

#Utilizando o laço de loop for para gerar uma rabuada junto com o
#comando read
read -p "digite um numero da tabuada... " NUMERO;
for RABUADA in $(seq 0 10);
do	
	echo "$NUMERO x $RABUADA..........: $(($RABUADA * $NUMERO))"
done

#Utilizando o laço de loop while para alcançar os valores
#desejados com o comando read
read -p "DIgite um numero de inicio...." INICIO;
read -p "Digite um numero de Fim......." FIM;
while [ $INICIO -le $FIM ];
do
	echo "valor de sequencia numerica..: $INICIO"
	let INICIO=INICIO+1
done
	