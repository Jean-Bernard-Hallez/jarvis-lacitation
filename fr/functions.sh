# /bin/bash

citation () {
chemin=${PWD}"/plugins/jarvis-lacitation"

for num in $(cat $chemin/citationlunum.txt); do echo""; done
# echo "Dernier Proverbe lu $num"
b=1
num=$(($num+$b))

	
	lignemax=$(awk 'END {print NR}' $chemin/config.sh )

lignemax=$(($lignemax-1))


	if [ "$num" -gt "$lignemax" ]
	then
	num=2
echo "je sature..."
	fi

	i=0
	while IFS= read -r ligne; do
	if [ "$i" -eq $num ]; then
	echo $ligne
	fi
	i=$(($i+1))
	done < $chemin/config.sh

#  ECRIRE:
echo $num> $chemin/citationlunum.txt
}