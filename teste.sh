#!/usr/bin/env bash

# Description: Este script fará um teste com base no tempo de execução
#	       de um mesmo programa escrito em limguagens diferentens.
#              O programa de cada linguagem que será executado é um 
#	       loop while e todos tem o mesmo numero de iteração.

# author: SketchCode
# version: 0.1


function teste(){
	time $1 > /dev/null;
}

clear;

echo -e "\e[34;1mTeste de performance com C\e[m";
teste "./CProgram/contando";

echo -e "\e[34;1mTeste de performance com Java\e[m";
teste "java -cp ./JavaProgram/ contando";

echo -e "\e[34;1mTeste de performance com Node\e[m";
teste "node ./JavaScriptProgram/contando.js";

echo -e "\e[34;1mTeste de performance com Python\e[m";
teste "python ./PythonProgram/contando.py";

echo -e "\e[34;1mTeste de performance com ShellScript\e[m";
teste "bash ./ShellProgram/contando.sh";

echo -e "\e[34;1mTeste de performance com PHP\e[m";
teste "php ./PHPProgram/contando.php";

