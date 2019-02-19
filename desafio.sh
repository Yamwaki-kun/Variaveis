#!/bin/bash 
HORA=$(date +%H)
HORAM=$(date +%M)
HORAS=$(date +%S)
DIASEM=$(date +%a)
DIA=$(date +%d)
MES=$(date +%b)
ANO=$(date +%Y)
TESTE01=$(test -w /root ; echo $?)
TMP=/tmp
DIR=/tmp/arnaldo_victor/
ARQ=arnaldo.txt
#1
echo "Bem vindo Hoje é $DIA de $MES de $ANO"
#2
echo "São $HORA:$HORAM:$HORAS"
#3

if [ -e "$TMP" ]
	then
		echo " O diretorio /tmp existe"
	else
		echo " O diretorio /tmp não existe"
fi
#4

if [ -e "$DIR" ];
	then
		echo " O diretorio /tmp/arnaldo_victor existe"
	else
		echo " O diretorio /tmp/arnaldo_victor não exite agora o criaremos"
	mkdir $DIR
		echo "Pronto"
fi
#5

if [ -e "$DIR$ARQ" ];
   then 
      echo "Arquivo /tmp/arnaldo_victor/arnaldo.txt existe."
   
   else 
      echo "Arquivo /tmp/arnaldo_victor/arnaldo.txt não existe. Agóra será criado."
	touch $DIR$ARQ
		echo "Pronto"
fi

#6
case $TESTE01 in
	0) echo "resultado do comando case é...: 0- verdadeiro";;
	1) echo "resultado do comando case é...: 1- falso";;
	*) echo "resultado do comando case é...: não indentificado"
esac
cat << "EOF"
           ,--"""",--.__,---[],-------._         
       ,"   __,'            \         \--""""""==;-
     ," _,-"  "/---.___     \       ___\   ,-'',"
    /,-'      / ;. ,.--'-.__\  _,-"" ,| `,'   /
   /``""""-._/,-|:\       []\,' ```-/:;-. `. /
             `  ;:::      ||       /:,;  `-.\
                =.,'__,---||-.____',.=
                =(:\_     ||__    ):)=
               ,"::::`----||::`--':::"._
             ,':::::::::::||::::::::::::'.
    .__     ;:::.-.:::::__||___:::::.-.:::\     __,
       """-;:::( O )::::>_|| _<::::( O )::::-"""
   =======;:::::`-`:::::::||':::::::`-`:::::\=======
    ,--"";:::_____________||______________::::""----.          , ,
         ; ::`._(    |    |||     |   )_,'::::\_,,,,,,,,,,____/,'_,
       ,;    :::`--._|____[]|_____|_.-'::::::::::::::::::::::::);_
      ;/ /      :::::::::,||,:::::::::::::::::::::::::::::::::::/
     /; ``''''----------/,'/,__,,,,,____:::::::::::::::::::::,"
     ;/                :);/|_;| ,--.. . ```-.:::::::::::::_,"
    /;                :::):__,'//""\\. ,--.. \:::,:::::_,"
   ;/              :::::/ . . . . . . //""\\. \::":__,"
   ;/          :::::::,' . . . . . . . . . . .:`::\
   ';      :::::::__,'. ,--.. . .,--. . . . . .:`::`
   ';   __,..--'''-. . //""\\. .//""\\ . ,--.. :`:::`
   ;    /  \\ .//""\\ . . . . . . . . . //""\\. :`::`
   ;   /       . . . . . . . . . . . . . . . . .:`::`
   ;   (          . . . . . . . . . . . . . . . ;:::`
   ,:  ;,            . . . . . . . . . . . . . ;':::`
   ,:  ;,             . . . . . . . . . . . . .;`:::
   ,:   ;,             . . . . . . . . . . . . ;`::;`
    ,:  ;             . . . . . . . . . . . . ;':::;`
     :   ;             . . . . . . . . . . . ,':::;
      :   '.          . . . . . . . .. . . .,':::;`
       :    `.       . . . . . . . . . . . ;::::;`
        '.    `-.   . . . . . . . . . . ,-'::::;
          `:_    ``--..___________..--'':::::;'`
             `._::,.:,.:,:_ctr_:,:,.::,.:_;'`
________________`"\/"\/\/'""""`\/"\/""\/"____________________________
EOF