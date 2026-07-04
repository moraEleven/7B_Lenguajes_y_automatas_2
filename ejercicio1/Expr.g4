lexer grammar Expr;
//Ejercicio 1: 10+5
//Literales numericos
NUM: [0-9]+;
//operadores
SUM: '+';
WS: [ \t\r\n]+ -> skip;