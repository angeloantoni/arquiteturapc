.text

main:
    addi $2, $0, 5   # Ler inteiro
    syscall
    add $8, $0, $2    # Salvar em $t0

    mult $8, $8     # Multiplicar $t0 por ele mesmo (elevar ao quadrado)
                    # O resultado estar� em HI e LO

    mflo $4          # Move a parte baixa do resultado (o quadrado) para $a0 ($4)
                    # para impress�o

    addi $2, $0, 1   # Carregar syscall para imprimir inteiro
    syscall

    addi $2, $0, 10  # Carregar syscall para sair
    syscall