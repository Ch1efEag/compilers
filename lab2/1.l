%option noyywrap
 
%{
    #include<stdio.h>
%}
start \/\*
end  \*\/
  
%%
\/\/(.*) ;
{start}.*{end} ;
%%
  
int main(int k,char **argcv)
{
extern FILE *yyin, *yyout;
yyin = fopen("java_comments.java", "r");
yyout = fopen("java_out.java", "w");

/*yyin=fopen(argcv[1],"r");
yyout=fopen("out.c","w");
/*call the yylex function.*/
yylex();
return 0;
}