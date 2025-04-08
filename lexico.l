%{
  #include <stdio.h>
  #include <string.h>
  #include "sintactico.tab.h"
  void showError();

}%
numbers ([0-9])+
alpha ([a-zA-Z])+

%%

"Carlos"    {yylval.reservada = yytext;       return(CARLOS);}
{numbers}   {yylval.number = atoi(yytext);    return(ENTERO);}
";"         {                                 return(PUNTOCOMA);}
alpha       {sscanf(yytext, "%s",yylval.cad); return(CADENA);}

.           {showError();                     return(ALGO);}
%%
void showError(char* other){
  printf("    <<ErrorLexico: \"$S\" >>,other);
}
