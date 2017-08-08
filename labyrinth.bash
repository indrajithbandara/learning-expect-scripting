#!/bin/bash
declare cells_operatum
declare cells_visible
let x=100;
let y=20;
function main(){
	tput init
	tput clear
	tput hc 0
	tput sc
	tput civis
	tput setf 2
	tput setb 7
	echo "Функция инициации"
	for ((i=1; i<=2000;i++))
		do
			cells_operatum[$i]="#";
		done
}
function end(){
	echo "Функция завершения"
	tput rc
	reset
}
function copy(){
	echo "Функция копирования массивов"
	for ((i=1; i<=2000; i++))
		do
			cells_visible[$i]=${cells_operatum[$i]};
		done
}
function print_cells_visible(){
	echo "Функция отображения игрового поля"
	((a = 1))
	((l=1900))
	while (( a <= l ))
		do
			let bamp=1;
			for ((j=1;j<=100;j++))
				do
					let bamp1=1;
					printf "${cells_visible[$a+$j]}";
				done
			echo -e "\n";
		((a += 100));
	done
}
function generate_labyrint(){
	echo "Функция генерации игрового поля"
	let i=1;
	let limit=10;
	function generate_step(){
		let l=1;
		let limit=10
		let d=$1
		if ((d<10))
			then
				cells_operatum[110]="_";
				let direct=$(shuf -i 1-4 -n 1);
					if ((direct=1))
						then
							((d+=1));
							cells_operatum[$d]="_";
							generate_step $d
						fi
					if ((direct=2))
						then
							((d-=1));
							cells_operatum[$d]="_";
						fi
					if ((direct=3))
						then
							((d-=1));
							cells_operatum[$d]="_";
						fi
					if ((direct=3))
						then
							((d-=1));
							cells_operatum[$d]="_";
						fi
					fi
}
	generate_step $d
}
function check_case(){
	echo "Функция приёма комманд"
}
function check_winner(){
	echo "Функция проверки на состояние выигрыша"
}
main
generate_labyrint
while true
	do
		#echo "Test"
		copy;
#		clear
		print_cells_visible;
		read $b
#		check_case;
#		check_winner;
	done
