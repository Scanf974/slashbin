#!/bin/bash

esp="\033["
end="${esp}0m"
red="31"
green="32"
bold="1"
c_fine="${esp}${bold};${green}m"
c_error="${esp}${bold};${red}m"


echo ""
echo -e "\t⇪ ${esp}0;30;47mCompilation de ${PWD##*/}${end}⇪ \n"
echo ""

make
if [ $? == 0 ]
then
	echo -e "${c_fine}Makefiles OK${end}"

	make -C libft/ clean
	if [ $? == 0 ]
	then
		echo -e "${c_fine}Clean Libft OK${end}"
	else
		echo -e -n "\033[1A"
		echo -e -n "\033[2K\r"
		make -C libft/ft_lib/ clean
		make -C libft/ft_printf/ clean
		if [ $? == 0 ]
		then
			echo -e "${c_fine}Clean Libft Printf OK${end}"
		else
			echo -e "${c_error}Clean Libft FAIL${end}"
		fi
	fi

	make clean
	if [ $? == 0 ]
	then
		echo -e "${c_fine}Clean OK${end}"
	else
		echo -e "${c_error}Clean FAIL${end}"
	fi

	if [ $? == 0 ]
	then
		echo -e "${esp}33m./${esp}4;33m${PWD##*/}${esp}0;33m $*${end}"
		echo ""
		./${PWD##*/} $*
		if [ $? != 0 ]
		then
			echo -e "${c_error}Error${end}"
		fi
	fi
else
	echo -e "${c_error}MakeFAIL${end}"
fi


