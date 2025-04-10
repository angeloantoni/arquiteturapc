.text          # Indica o in�cio da se��o de c�digo do programa
main:          # R�tulo que marca o in�cio da fun��o principal

    addi $2, $0, 5   # Carrega o valor 5 (c�digo da syscall para ler inteiro) no registrador $2
    syscall         # Executa a chamada de sistema (ler um inteiro da entrada do usu�rio)
                    # O valor inteiro digitado pelo usu�rio ser� armazenado no registrador $2
    add $8, $0, $2    # Copia o valor lido (em $2) para o registrador $8

    addi $2, $0, 5   # Carrega novamente o valor 5 (syscall para ler inteiro) no registrador $2
    syscall         # Executa a chamada de sistema (ler outro inteiro da entrada)
                    # O segundo valor inteiro digitado ser� armazenado em $2
    add $9, $0, $2    # Copia o segundo valor lido (em $2) para o registrador $9

    add $4, $0, $8    # Copia o primeiro valor lido (em $8) para o registrador $4
                    # O registrador $4 � usado para passar argumentos para syscalls de sa�da
    addi $2, $0, 1   # Carrega o valor 1 (c�digo da syscall para imprimir inteiro) no registrador $2
    syscall         # Executa a chamada de sistema (imprimir o inteiro em $4)

    addi $4, $0, '+'  # Carrega o valor ASCII de '+' (43) no registrador $4
                    # Prepara para imprimir o caractere '+'
    addi $2, $0, 11  # Carrega o valor 11 (c�digo da syscall para imprimir caractere) no registrador $2
    syscall         # Executa a chamada de sistema (imprimir o caractere em $4)

    add $4, $0, $9    # Copia o segundo valor lido (em $9) para o registrador $4
                    # Prepara para imprimir o segundo inteiro
    addi $2, $0, 1   # Carrega o valor 1 (syscall para imprimir inteiro) no registrador $2
    syscall         # Executa a chamada de sistema (imprimir o inteiro em $4)

    addi $4, $0, '='  # Carrega o valor ASCII de '=' (61) no registrador $4
                    # Prepara para imprimir o caractere '='
    addi $2, $0, 11  # Carrega o valor 11 (syscall para imprimir caractere) no registrador $2
    syscall         # Executa a chamada de sistema (imprimir o caractere em $4)

    add $4, $8, $9    # Adiciona o conte�do de $8 (primeiro n�mero) e $9 (segundo n�mero)
                    # e armazena o resultado no registrador $4
    addi $2, $0, 1   # Carrega o valor 1 (syscall para imprimir inteiro) no registrador $2
    syscall         # Executa a chamada de sistema (imprimir o inteiro em $4 - a soma)