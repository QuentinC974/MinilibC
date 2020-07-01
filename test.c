#include <stdio.h>

char *my_rindex(char *str, char c);
char *my_memset(void *str, int c, size_t len);

int main()
{
    char *str = strdup("bonjour la france et le vendredi");
    printf("rindex : %s\n", rindex("le soileil rouges est bleu", 'i'));
    printf("my-rindex : %s\n", my_rindex("le soileil rouges est bleu", 'i'));
    printf("memeset : %s\n", memse(str, 'i', 5));
    printf("my-memeset : %s\n", my_memcpy(str, 'i', 5));
    return (0);
}