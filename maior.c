#include <stdio.h>

int main() {
    int vetor[10];
    int i, maior;

    // Leitura dos 10 valores
    printf("Digite 10 valores inteiros:\n");
    for(i = 0; i < 10; i++) {
        printf("Valor %d: ", i + 1);
        scanf("%d", &vetor[i]);
    }

    // Inicializa o maior com o primeiro elemento do vetor
    maior = vetor[0];

    // Encontra o maior valor
    for(i = 1; i < 10; i++) {
        if(vetor[i] > maior) {
            maior = vetor[i];
        }
    }

    // Exibe o maior valor
    printf("\nO maior valor digitado foi: %d\n", maior);

    return 0;
}
