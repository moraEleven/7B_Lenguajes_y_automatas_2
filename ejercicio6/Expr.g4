lexer grammar Expr;
//Ejercicio 6: 15 + 3 * 2

//literal numerico
NUM:[0-9]+;
//operadores
MULT:'*';
SUM:'+';
//Comentarios y espacios en blanco
WS: [ \t\r\n]+ -> skip;