#include "sde1.tab.c"
#include "lex.yy.c"
#include "yyerror.c"

int main() {
  printf("\n>>>> CONTEXTUAL parsing of string  <<<<<<\n");

  int rv;
  rv = yyparse();

  if (rv != 0) printf("\nSorry, Charlie, input string not in L(G)\n\n");
  else printf("\n***** congratulations; parse successful *****\n\n");
  
  return(1);
}
