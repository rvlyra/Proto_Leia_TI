cd C:\Users\rlyra\Documents\Dev

# start C:\Windows\System32\WindowsPowerShell\v1.0\powershell.exe

if exist "C:\Users\rlyra\Documents\Dev\livraria_aspnet\" (
	rem "O diretório existe! Abrindo o VSCode."
	cd C:\Users\rlyra\Documents\Dev\livraria_aspnet\
	code .
	
) else (
	rem "O diretório não existe. Clonando projeto."
	cd C:\Users\rlyra\Documents\Dev\
	git clone https://github.com/rvlyra/livraria_aspnet.git
	cd livraria_aspnet\
	echo "---------------------"
	echo "Criando projeto MVC dotnet"
	echo " "
	echo "---------------------"
	dotnet --version
	echo "---------------------"
	echo " "
	
	dotnet new mvc -o livraria -au none

	cd livraria/

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


# start https://www.youtube.com/watch?v=VbEhMVcWOFs