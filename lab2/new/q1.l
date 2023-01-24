%option noyywrap
%{
#include <stdio.h>
%}

%%

"/*"[a-zA-Z0-9 \t\n]+"*/"  {;}
"//"[a-zA-Z0-9 \t=,+]+  {;}
. ECHO;

%%

int main()
{
    yyin = fopen("1.java","r");
    yyout = fopen("2.java","w");
    yylex();
    fclose(yyin);
    fclose(yyout);
    return 0;
}
