#!/bin/bash
source 1.sh
chx=`zenity --list --title="Menu" --column="Choix a faire" --column="Description" 1 "chercher les fichiers executable" 2 "Supprimer les fichier executable" 3 "Afficher les fichiers executable " 4 "calculer le pourcentage des fichier executable par rapport au nombre totales des fichiers" 5 "sauvgarder le pourcentage trouvé dans un fichier texte" 6 "chercher les fichiers ayant une extension .sh " 7 "chercher les fichiers ayant une taille >200ko " 8 "chercher les fichiers ayant une extension .png" 9 "chercher les fichiers ayant une extension .c" 10 "chercher les fichiers ayant une extension .txt" `
case $chx in
	1 )
`zenity --forms --title="entrer le nom d'utilisateur " --text="add user name" \
   --add-entry="$utilisateur" \
   --add-calendar="Expires" `
                utilisateur=$( getent passwd "$2" | cut -d: -f6 )
		cd $utilisateur
		search ;;
	2 ) `zenity --forms --title="entrer le nom d'utilisateur " --text="add user name" \
   --add-entry="$utilisateur" \
   --add-calendar="Expires" `

		utilisateur=$( getent passwd "$2" | cut -d: -f6 )
		cd $utilisateur
		searchrm ;;
	3 )`zenity --forms --title="entrer le nom d'utilisateur " --text="add user name" \
   --add-entry="$utilisateur" \
   --add-calendar="Expires" `
		utilisateur=$( getent passwd "$2" | cut -d: -f6 )
		cd $utilisateur
		searchls ;;
	4 )`zenity --forms --title="entrer le nom d'utilisateur " --text="add user name" \
   --add-entry="$utilisateur" \
   --add-calendar="Expires" `
		utilisateur=$( getent passwd "$2" | cut -d: -f6 )
		cd $utilisateur
		per ;;
	5 )`zenity --forms --title="entrer le nom d'utilisateur " --text="add user name" \
   --add-entry="$utilisateur" \
   --add-calendar="Expires" `
		utilisateur=$( getent passwd "$2" | cut -d: -f6 )
		cd $utilisateur
		ss ;;	
        6 ) `zenity --forms --title="entrer le nom d'utilisateur " --text="add user name" \
   --add-entry="$utilisateur" \
   --add-calendar="Expires" `
    utilisateur=$( getent passwd "$2" | cut -d: -f6 )
		cd $utilisateur
		sn ;;	
        7)`zenity --forms --title="entrer le nom d'utilisateur " --text="add user name" \
   --add-entry="$utilisateur" \
   --add-calendar="Expires" `
      utilisateur=$( getent passwd "$2" | cut -d: -f6 )
		cd $utilisateur
                sz;;
 8)`zenity --forms --title="entrer le nom d'utilisateur " --text="add user name" \
   --add-entry="$utilisateur" \
   --add-calendar="Expires" `
      utilisateur=$( getent passwd "$2" | cut -d: -f6 )
		cd $utilisateur
                sv;;
 9)`zenity --forms --title="entrer le nom d'utilisateur " --text="add user name" \
   --add-entry="$utilisateur" \
   --add-calendar="Expires" `
      utilisateur=$( getent passwd "$2" | cut -d: -f6 )
		cd $utilisateur
                suv;;
 10)`zenity --forms --title="entrer le nom d'utilisateur " --text="add user name" \
   --add-entry="$utilisateur" \
   --add-calendar="Expires" `
      utilisateur=$( getent passwd "$2" | cut -d: -f6 )
		cd $utilisateur
                sk;;
			
esac

