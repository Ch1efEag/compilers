%option noyywrap
%{
#include <stdio.h>
%}

%%
" "+[a-z] + " " {printf("%s\n",yytext);}
. ;
%%

int main()
{
	printf("Enter something: \n");
	yylex();
}
 