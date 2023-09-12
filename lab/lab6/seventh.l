%{
#include"y.tab.h"
%}

%%
"he"|"she"|"it"|"we"|"they" {printf("\n%s - pronoun",yytext); return PRONOUN;}
"is"|"are"|"was"|"were" {printf("\n%s - verb",yytext); return VERB;}
"a"|"an"|"the" {printf("\n%s - article",yytext); return ARTICLE;}
"boy"|"girl"|"woman"|"man" {printf("\n%s - noun",yytext); return NOUN;}
"and"|"or"|"but"|"yet" {printf("\n%s - conjunction", yytext); return CONJ;}
"." {return FULLSTOP;}
. {}
%%
int yywrap(){ return 1;}