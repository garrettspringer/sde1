#include "sde1.tab.c"
#include "lex.yy.c"
#include "yyerror.c"

int main() {
  printf("\n>>>> CONTEXTUAL parsing of string  <<<<<<");

  int rv;
  rv = yyparse();

  if (rv != 0) printf("\n\nSorry, Charlie, input string not in L(G)\n\n");
  else printf("\n\n***** congratulations; parse successful *****\n\n");
  
  return(1);
}
