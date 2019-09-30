%{
#include <stdio.h>
#include <ctype.h>
#include <string.h>
int yylex (void);
int yyerror ();
%}

%token A
%token B
%token C
%token D
%token E
%token END_FILE
%token UNEXPECTED_TOKEN

%% /* Grammar Rules */

string: as bs cs ds es END_FILE {if(($1 == $5) && ($3 == $4))
                           			return(0);
                           			else return(-1);}
;
string: es ds cs bs as END_FILE {if(($1 == (2 * $5)) && ($3 == (3 * $4)) && ($2 == 2))
                           			return(0);
                           			else return(-1);}
;


as: A as {$$=$2+1;} | A {$$=1;}
;

bs: B bs {$$=$2+1;} | B {$$=1;}
;

cs: C cs {$$=$2+1;} | C {$$=1;}
;

ds: D ds {$$=$2+1;} | D {$$=1;}
;

es: E es {$$=$2+1;} | E {$$=1;}
;
