int yyerror()  /* Called by yyaparse on error */
{
  printf("syntax error\n");
  return(-1);
}
