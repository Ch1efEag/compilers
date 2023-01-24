%option noyywrap
%{
#include <stdio.h>
%}

%%
did | 
would | 
will | 
Will | 
has  |
was |
have | {printf("%s\n", yytext);}
%%

int main()
{
	printf("Enter something: \n");
	yylex();
}
 