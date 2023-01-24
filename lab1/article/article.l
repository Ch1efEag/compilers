%option noyywrap
%{
#include <stdio.h>
%}

%%
a   |
an  |
the  |
An  |
The {printf(" article : %s\n",yytext);}

[a-zA-Z0-9]+ {printf("");}
%%

int main()
{
	printf("Enter something: \n");
	yylex();
}
 