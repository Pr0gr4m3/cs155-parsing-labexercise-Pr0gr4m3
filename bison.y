%{

#include <stdio.h>
#include <math.h>
#include <ctype.h>

int yylex(void);
void yyerror (char const *);

%}

%define parse.error detailed
%token VAR NUM INVALID EOL
%left '+' 
%left '-'
%left '*' 

%%
input:    /* empty string */
        | input exp EOL { printf("Parse successful \n");}
;


exp: NUM
    | VAR
    | exp '+' exp 
    | exp '-' exp
    | exp '*' exp
    | '(' exp ')'
;

%% 

void yyerror (char const *s)  /* Called by yyparse on error */
{
  printf("Parse error \n");
}


int main (void)
{
  yyparse();
}
