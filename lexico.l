%{
  #include <stdio.h>
  #include <string.h>
  #include "sintactico.tab.h"
  void showError();

}%
numbers ([0-9])+
alpha ([a-zA-Z])+

%%

"Carlos"    {yylval.reservada = yytext;       return ();}
{numbers}   {yylval.number = atoi(yytext);    return(ENTERO);}
";"         {return(PUNTOCOMA);}
alpha       {sscanf(yytext, "%s",yylval.cad); return(CADENA);}




%%

