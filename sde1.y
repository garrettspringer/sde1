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

%% /* Grammar Rules */

string: as bs cs ds es {if(($1 == $5) && ($3 == $4))
                           return(0);
                           else return(-1);}
;
string: es ds cs bs as {if(($1 == (2 * $5)) && ($3 == (3 * $4)) && ($2 == 2))
                           return(0);
                           else return(-1);}
;
as: A as {$$=$2+1;}
;
as: A {$$=1;}
;

bs: B bs {$$=$2+1;}
;
bs: B {$$=1;}
; 

cs: C cs {$$=$2+1;}
;
cs: C {$$=1;}
;

ds: D ds {$$=$2+1;}
;
ds: D {$$=1;}
;

es: E es {$$=$2+1;}
;
es: E {$$=1;}
;
