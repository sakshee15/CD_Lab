%{
    #include<stdio.h>
    #include<string.h>
    int i=0;
%}
%%
([a-zA-Z0-9])* {i++;}
"\n" {printf("word = %d \n",i); i=0;}
%%
int yywrap(void){return 0;}
int main(){
    yylex();
    return 0;
}