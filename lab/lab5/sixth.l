%{
#include"y.tab.h"
%}

%%
"he"|"she"|"it"|"we"|"they" {printf("\n%s is a pronoun",yytext); return PRONOUN;}
"is"|"are"|"was"|"were" {printf("\n%s is a verb",yytext); return VERB;}
"a"|"an"|"the" {printf("\n%s is a article",yytext); return ARTICLE;}
"boy"|"girl"|"woman"|"man" {printf("\n%s is a noun",yytext); return NOUN;}
. {}
%%
int yywrap(){ return 1;}
