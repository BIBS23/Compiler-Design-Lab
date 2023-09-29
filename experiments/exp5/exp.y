%{
#include<stdio.h>
#define YYSTYPE double
%}
%token DIGIT ID NL
%left '-''+'
%left '*''/'
%%
stmt : exp NL {printf("valid expression"); exit(0);};
exp : exp '+' exp
| exp '-' exp
| exp '*' exp
| exp '/' exp
| '('exp')'
| ID
| DIGIT;
%%
int yyerror(char*msg)
{
printf("invalid string");
}
main ()
{ printf("enter the exp");
yyparse();
}
