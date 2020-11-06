#!/bin/bash
	echo "commande qui permet de faire une archive avec chaque repertoire du repertoire donné en argument"
	echo " exemple : archi /home/user1/doc"
	echo " archive en tgz tous les dossiers contenu dans /home/user1/doc" 
	echo "______________________________________"
for rep in *
do
	test ! -d "$rep" && continue
 
	echo "Repertoire $rep en cours de traitement"
	tar cfzv "$rep.tgz" "$rep"
        echo "Repertoire $rep traité ....."
	echo "______________________________________"

done
