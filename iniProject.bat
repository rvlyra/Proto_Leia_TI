cd C:\Users\rlyra\Documents\Dev\VS_Github\

# start C:\Windows\System32\WindowsPowerShell\v1.0\powershell.exe

if exist "C:\Users\rlyra\Documents\Dev\VS_Github\Leia_TI" (
	rem "O diretório existe! Abrindo o VSCode."
	cd C:\Users\rlyra\Documents\Dev\VS_Github\Leia_TI\
	code .
	
) else (
	rem "O diretório não existe. Clonando projeto."
	cd C:\Users\rlyra\Documents\Dev\VS_Github\
	git clone https://github.com/rvlyra/Leia_TI.git
	cd Leia_TI\
	echo "---------------------"
	echo "Criando projeto MVC dotnet"
	echo " "
	echo "---------------------"
	dotnet --version
	echo "---------------------"
	echo " "
	
	dotnet new mvc -o Leia_TI -au none

	cd Leia_TI/

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
