%{
    #include<stdio.h>
    void yyerror(const char* s);
%}
%token PRONOUN VERB NOUN ARTICLE CONJ FULLSTOP
%start sentence
%%
sentence : simple FULLSTOP  {printf("\n It is a simple sentence\n");}
          |compound FULLSTOP {printf("\n It is a compound sentence\n");}
          |sentence sentence
; 
simple: sub verb art obj|sub verb obj    
;
compound: simple conj simple    
;
sub: PRONOUN|NOUN
;
obj:NOUN   
;
verb: VERB;
art: ARTICLE;
conj: CONJ;
%%
int main(){
  extern FILE * yyin;
    yyin=fopen("input.txt","r");
    while(!feof(yyin)){
        yyparse();
    }
   
    return 0;
}
void yyerror(const char* s) {
    printf("\n%s\n", s);
}
