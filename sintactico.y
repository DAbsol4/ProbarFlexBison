%{
  #include <stdio.h>
  int yylex();
  int yyerror(char*s);
%}

%token CADENA ENTERO ALGO PUNTOCOMA /*CARLOS*/

%type <cad> CADENA
%type <number> ENTERO
//%type <reservada> CARLOS

%union{
  char cad[20]
  int number;
  //char *reservada;
}





%%

