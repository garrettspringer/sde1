int yyerror()  /* Called by yyaparse on error */
{
  printf("\nsyntax error");
  return(-1);
}
