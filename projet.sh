#!/bin/bash
source fonction.sh
 
case $1 in
	-search )
		utilisateur=$( getent passwd "$2" | cut -d: -f6 )
		cd $utilisateur
		search ;;
	-search-rm )
		utilisateur=$( getent passwd "$2" | cut -d: -f6 )
		cd $utilisateur
		searchrm ;;
	-search-ls )
		utilisateur=$( getent passwd "$2" | cut -d: -f6 )
		cd $utilisateur
		searchls ;;
	-per )
		utilisateur=$( getent passwd "$2" | cut -d: -f6 )
		cd $utilisateur
		per ;;
	-s )
		utilisateur=$( getent passwd "$2" | cut -d: -f6 )
		cd $utilisateur
		ss ;;				
esac
