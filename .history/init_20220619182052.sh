#!/bin/bash


if exist "~/DEV/GitProjects/ghub/Leia_TI/App/*"(
	rem "O diretório existe! Abrindo o VSCode."
	cd ~/DEV/GitProjects/ghub/Leia_TI/App/
	
	touch logTarefa.txt 
	echo "Tarefa realizada em %date%, %time%" >> logTarefa.txt	
	
	code .
	
	start logTarefa.txt 
	close
	
) else (
	rem "O diretório não existe. Clonando projeto."
	cd ~/DEV/GitProjects/ghub/

	git clone https://github.com/rvlyra/Leia_TI.git
	cd Leia_TI\
	echo "---------------------"
	echo "Criando projeto MVC dotnet"
	echo " "
	echo "---------------------"
	dotnet --version
	echo "---------------------"
	echo " "
	
	dotnet new mvc -o App -au none

	cd ./Leia_TI/App

	echo "Incluindo pacotes EF Core"
	dotnet add package Microsoft.EntityFrameworkCore.SqlServer
	dotnet add package Microsoft.EntityFrameworkCore.Design
	dotnet add package Microsoft.EntityFrameworkCore 
	dotnet add package Microsoft.EntityFrameworkCore.Relational 
	dotnet add package Microsoft.EntityFrameworkCore.Tools 
	
	code .
	
	cd ..	
	
	touch logTarefa.txt 
	echo "Tarefa realizada em %date%, %time%" >> logTarefa.txt
	
	start logTarefa.txt 
	close
)
