lexer grammar Expr;
//Ejercicio 9: if (edad > 17)

//palabras reservadas
IF: 'if';
//Identificadores
ID: [a-zA-Z][a-zA-Z0-9]*;
//literal numerico
NUM:[0-9]+;
//operadores
MAYOR:'>';
//puntuacion
PAR_DE:'(';
PAR_IZ:')';
//Comentarios y espacios en blanco
WS: [ \t\r\n]+ -> skip;