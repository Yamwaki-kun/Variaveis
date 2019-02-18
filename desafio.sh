#!/bin/bash 
HORA=$(date +%H)
HORAM=$(date +%M)
HORAS=$(date +%S)
DIASEM=$(date +%a)
DIA=$(date +%d)
MES=$(date +%b)
ANO=$(date +%Y)
TESTE01=$(test -w /root ; echo $?)
#1
echo "Bem vindo Hoje é $DIA de $MES de $ANO"
#2
echo "São $HORA:$HORAM:$HORAS"
#3

if [ -e "/tmp" ]
	then
		echo " O diretorio /tmp existe"
	else
		echo " O diretorio /tmp não existe"
fi
#4

if [ -e "/tmp/arnaldo_victor" ]
	then
		echo " O diretorio /tmp/arnaldo_victor existe"
	else
		echo " O diretorio /tmp/arnaldo_victor não exite agora o criaremos"
	mkdir /tmp/arnaldo_victor
		echo "Pronto"
fi
#5

if [ -e /tmp/arnaldo_victor/arnaldo.txt ]
   then 
      echo "Arquivo /tmp/arnaldo_victor/arnaldo.txt existe."
   
   else 
      echo "Arquivo /tmp/arnaldo_victor/arnaldo.txt não existe. Agóra será criado."
	touch /tmp/arnaldo_victor/arnaldo.txt
		echo "Pronto"
fi

#6
case $TESTE01 in
	0) echo "resultado do comando case é...: 0- verdadeiro";;
	1) echo "resultado do comando case é...: 1- falso";;
	*) echo "resultado do comando case é...: não indentificado"
esac