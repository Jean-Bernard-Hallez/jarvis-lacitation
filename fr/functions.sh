# /bin/bash

citation () {
chemin=${PWD}"/plugins/jarvis-lacitation"
for num in $(cat $chemin/citationlunum.txt); do echo""; done
# echo "Dernier Proverbe lu $num"
b=1
num=$(($num+$b))

	
lignemax=`grep -c '# ##'   $chemin/config.sh`


if [ "$num" -gt "$lignemax" ]
then
num=2
echo $num> $chemin/citationlunum.txt
fi

ligne=`grep '# ##'  $chemin/config.sh  | sed -n $num\p | sed -e "s/# ##//g"`
say "Voici une citation: $ligne"

#  ECRIRE:
echo $num> $chemin/citationlunum.txt
}

jv_pg_rajoute-proverbe () {
chemin=${PWD}"/plugins/jarvis-lacitation"
echo -en "# ## $memoproverbe" >> $chemin/config.sh 

}
