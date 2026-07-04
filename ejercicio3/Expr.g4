lexer grammar Expr;
//Ejercicio 2: x=10

//iDENTIFICADORES
ID: [a-zA-Z][a-zA-Z0-9 ]*;
//Literales numericos
NUM: [0-9]+;
//operadores
IGUAL: '=';
WS: [ \t\r\n]+ -> skip;