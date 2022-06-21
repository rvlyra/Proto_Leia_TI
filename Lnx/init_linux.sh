#!/bin/bash


cd /home/rvlyra/DEV/GitProjects/ghub/Leia_TI/Lnx
echo "---------------------"
echo "Criando projeto MVC dotnet"
echo " "
echo "---------------------"
dotnet --version
echo "---------------------"
echo " "

dotnet new mvc -o App -au none

cd ~/DEV/GitProjects/ghub/Leia_TI/Lnx/App

echo "Incluindo pacotes EF Core"
dotnet add package Microsoft.EntityFrameworkCore.SqlServer
dotnet add package Microsoft.EntityFrameworkCore.Design
dotnet add package Microsoft.EntityFrameworkCore 
dotnet add package Microsoft.EntityFrameworkCore.Relational 
dotnet add package Microsoft.EntityFrameworkCore.Tools 

code .

cd ..	

touch logTarefa.txt 

echo "Tarefa realizada por $USER em $(date +%a), dia $(date +%d) de $(date +%b) de $(date +%Y)."  >> logTarefa.txt

open logTarefa.txt
close

