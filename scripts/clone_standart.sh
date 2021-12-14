#!/bin/bash

standart_path="ostis-standart/translated_scs"

clone_project()
{
	if [ ! -d "../$2" ]; then
		echo -en $green"Clone $2$rst\n"
		git clone $1 ../$2
		cd ../$2
		git checkout $3
		cd -
	else
		echo -en "You can update "$green"$2"$rst" manualy$rst\n"
	fi
}

clone_project git@github.com:semsystems/monography2020.git ostis-standart tex2sc
	if ! grep -q $standart_path ../repo.path ; then
                echo "#standart" >> ../repo.path 
                echo $standart_path >> ../repo.path
        fi

