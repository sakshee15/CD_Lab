%{
    #include<stdio.h>
    int nchar,nword,nline;
%}
%%
\n {nline++; nchar++;}
[^\t\n]+ {nword++; nchar+=yyleng;}
. {nchar++;}
%%
int yywrap(void){return 1;}
int main(){
    yylex();
    printf("CHAR = %d\nWORD = %d\nLINE = %d\n",nchar,nword,nline);
    return 0;
}