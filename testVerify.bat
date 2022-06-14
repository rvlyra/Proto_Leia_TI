if exist "C:\Users\rlyra\Documents\Dev\teste.txt" (
    rem "Arquivo existe!"
) else (
    rem "Arquivo não existe. Criando arquivo."
    touch text.txt 
    echo "teste realizado em %date%, %time%" >> C:\Users\rlyra\Documents\Dev\teste.txt
)