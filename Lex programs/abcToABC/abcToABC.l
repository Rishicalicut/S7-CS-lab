%{
#include<stdio.h>
%}

%%
"abc"  { printf("ABC"); }
[^abc] { printf("%c", yytext[0]); }

%%

int main()
{
    FILE *fp = fopen("input.txt", "r");
    yyin = fp;
    yylex();
    return 0;
}

