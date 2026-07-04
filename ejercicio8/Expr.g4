lexer grammar Expr;
//Ejercicio 8: edad >= 18

//Identificadores
ID: [a-zA-Z][a-zA-Z0-9]*;
//literal numerico
NUM:[0-9]+;
//operadores
IGUAL:'=';
MAYOR:'>';
//Comentarios y espacios en blanco
WS: [ \t\r\n]+ -> skip;