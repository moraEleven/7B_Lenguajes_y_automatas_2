lexer grammar Expr;
//Ejercicio 7: int total = 100

//Palabras reservadas
INT: 'int';
//Identificadores
ID: [a-zA-Z][a-zA-Z0-9]*;
//literal numerico
NUM:[0-9]+;
//operadores
IGUAL:'=';
//Comentarios y espacios en blanco
WS: [ \t\r\n]+ -> skip;