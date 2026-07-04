lexer grammar Expr;
//Ejercicio 2: 20-8
//Literales numericos
NUM: [0-9]+;
//operadores
MEN: '-';
WS: [ \t\r\n]+ -> skip;