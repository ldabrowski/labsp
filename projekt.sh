#!/bin/bash

###  ROZPAKOWYWACZ v.0.1.0  ###
### Lukasz Dabrowski ###

if [ $# -eq 0 ]
then
echo "Podaj nazwe pliku wraz z rozszerzeniem jezeli archiwum znajduje sie w biezacym katalogu"
echo "lub podaj najpierw sciezke dostepu do pliku a potem jego nazwe"
fi

if [ $# -eq 1 ]
then 

	if [ -f "$1" ] ; then
     	case "$1" in
        	*.tar.bz2) tar xjf $1 ;;
        	*.tar.gz) tar xzf $1 ;;
        	*.bz2) bunzip2 $1 ;;
        	*.rar) unrar x $1 ;;
        	*.gz) gunzip $1 ;;
        	*.tar) tar xf $1 ;;
        	*.tbz2) tar xjf $1 ;;
        	*.tgz) tar xzf $1 ;;
        	*.zip) unzip $1 ;;
        	*.Z) uncompress $1 ;;
        	*.7z) 7z x $1 ;;
        	*) echo "'$1' niepoprawne rozszerzenie" ;;
      	esac
	else
      			echo "'$1' nie istnieje!"
	fi
fi




if [ $# -eq 2 ]
then
 
  cd "$1"

	if [ -f "$2" ] ; then
     	case "$2" in
        	*.tar.bz2) tar xjf $2 ;;
        	*.tar.gz) tar xzf $2 ;;
        	*.bz2) bunzip2 $2 ;;
       		*.rar) unrar x $2 ;;
        	*.gz) gunzip $2 ;;
        	*.tar) tar xf $2 ;;
        	*.tbz2) tar xjf $2 ;;
        	*.tgz) tar xzf $2 ;;
        	*.zip) unzip $2 ;;
        	*.Z) uncompress $2 ;;
        	*.7z) 7z x $2 ;;
        	*) echo "'$2' niepoprawne rozszerzenie" ;;
      	esac
	else
      			echo "'$2' nie istnieje!"

	fi
fi 
