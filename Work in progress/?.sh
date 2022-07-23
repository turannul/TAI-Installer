#! /bin/bash

run="$(export | grep TERM_PROGRAM)"

if [[ $run == "1" ]]; #Run only returns a value on NewTerm
then 
	echo "In Preferences /w no color"
else 
	echo "In NewTerm or other Terminal /w colors"
fi




########################################
#Colors i used                         #
#Green,Black,Red,Purple,Gray,No color  #
########################################