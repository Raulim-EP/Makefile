#include <stdio.h>

int main() {
    int n = 0;
    printf("Informe um número: ");
    scanf("%d", &n);

    int P[1000000];
    int cP = 0;

    for (int i = 2; i <= n; i++) {
        int TP = 1;

        for (int j = 0; j < cP; j++) {
            if (i % P[j] == 0) {TP = 0; break;}
        }

        if (TP) {P[cP++] = i;
        printf("%d, ", i);
        }
    }
    printf("\n\n%d numeros primos\n\n", cP);
    return 0;
}
