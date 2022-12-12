%{
#include<stdio.h>
int vowels = 0, consonants = 0;
%}

%%
[aeiouAEIOU] { vowels++; }
[bcdfghjklmnpqrstvwxyzBCDFGHJKLMNPQRSTVWXYZ] { consonants++; }

%%

int main()
{
    FILE *fp = fopen("input.txt", "r");
    yyin = fp;
    yylex();
    printf("Total number of vowels: %d\n", vowels);
    printf("Total number of consonants: %d\n", consonants);
    return 0;
}

