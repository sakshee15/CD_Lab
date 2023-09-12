%{
    #include<stdio.h>
    #include<string.h>
    #include<ctype.h>
%}
%%
[a-z] {putchar(yytext[0]-32);}
[A-Z] {putchar(yytext[0]+32);}
. {putchar(yytext[0]);}
%%
int yywrap(void){return 0;}
int main(){
    yylex();
    return 0;
}