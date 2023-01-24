%option noyywrap
%{
#include <stdio.h>
%}

%%
[a-z]+[ \t\n] {printf("%s\n",yytext);}
. ;
%%

int main()
{
	printf("Enter something: \n");
	yylex();
}
 