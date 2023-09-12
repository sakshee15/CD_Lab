%{
    #include<stdio.h>
    void yyerror(const char* s);
%} 
%token PRONOUN VERB NOUN ARTICLE 
%start sentence
%%
sentence : sub VERB ARTICLE obj  {printf("\nNO ERROR. Correct sentence.\n");}
;
sub: PRONOUN|NOUN
;
obj:NOUN;
%%
int main(){
    yyparse();
    return 0;
}
void yyerror(const char* s) {
    printf("\n%s\n", s);
}

