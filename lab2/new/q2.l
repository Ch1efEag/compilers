%option noyywrap
%{
    #include <stdio.h>
    FILE *a;
%}

%%

"/*"[a-zA-Z0-9 \t\n]+"*/"  {;}
"//"[a-zA-Z0-9 \t=,+]+  {;}
"/**"[*a-zA-Z0-9 \t\n]+"*/" {{fputs(yytext,a);}};
. ECHO;

%%

int main()
{
    yyin = fopen("1.java","r");
    a=fopen("comment.txt", "w");
    yyout = fopen("q2.java", "w");
    yylex();
    return 0;
}
