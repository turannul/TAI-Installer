#! /bin/zsh
# TO-DO
# 1.Repo check add for Cydia
# NOTE: Zebra & Installer sources even repos added, apt(-get) install does not find package i have no idea why?

SCRIPTPATH=$(cd $(dirname "$0") >/dev/null 2>&1 pwd -P )

cd $SCRIPTPATH 
func.420

checkRoot

clear
#Info collection

jailbreak=$(checkJailbreak "$taurine" "$taurineMsg" "$odyssey" "$odysseyMsg" "$checkRa1n" "$checkRa1nMsg" "$u0" "$u0Msg")

#Showing info there
echo "$(tput setaf 190)Detected Jailbreak:$(tput sgr0;) $jailbreak$(tput sgr0;)"

if [[ cydiaInstalled -eq 0 ]]; then
	echo $(tput setaf 2;)"Cydia installed"$(tput sgr0;)
else
	echo $(tput setaf 1;)"Cydia is not installed"$(tput sgr0;)
fi

if [[ zebraInstalled -eq 0 ]]; then
	echo $(tput setaf 2;)"Zebra installed" $(tput sgr0;)
else
	echo $(tput setaf 1;)"Zebra is not installed" $(tput sgr0;)
fi

if [[ installerInstalled -eq 0 ]]; then
	echo $(tput setaf 2;)"Installer installed" $(tput sgr0;) #"Installer installed" looks weird tho.
else
	echo $(tput setaf 1;)"Installer is not installed" $(tput sgr0;)
fi

if [[ sileoInstalled -eq 0 ]]; then
	echo $(tput setaf 2;)"Sileo installed"$(tput sgr0;)
else
	echo $(tput setaf 1;)"Sileo is not installed"$(tput sgr0;)
fi

Installdepends

Installtai


exit 0