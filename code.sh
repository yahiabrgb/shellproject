#!/bin/bash
source 1.sh
chx=`zenity --list --title="Menu" --column="Choix a faire" --column="Description" 1 "chercher les fichiers executable" 2 "Supprimer les fichier executable" 3 "Afficher les fichiers executable " 4 "calculer le pourcentage des fichier executable par rapport au nombre totales des fichiers" 5 "sauvgarder le pourcentage trouvé dans un fichier texte" 6 "chercher par le nom " `
case $chx in
	1 )
`zenity --forms --title="entrer le nom d'utilisateur " --text="add user name" \
   --add-entry="$utilisateur" \
   --add-calendar="Expires" `
                utilisateur=$( getent passwd "$2" | cut -d: -f6 )
		cd $utilisateur
		search ;;
	2 )
		utilisateur=$( getent passwd "$2" | cut -d: -f6 )
		cd $utilisateur
		searchrm ;;
	3 )
		utilisateur=$( getent passwd "$2" | cut -d: -f6 )
		cd $utilisateur
		searchls ;;
	4 )
		utilisateur=$( getent passwd "$2" | cut -d: -f6 )
		cd $utilisateur
		per ;;
	5 )
		utilisateur=$( getent passwd "$2" | cut -d: -f6 )
		cd $utilisateur
		ss ;;	
        6 )     
		sn ;;	
			
esac

