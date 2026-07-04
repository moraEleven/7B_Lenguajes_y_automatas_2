lexer grammar Expr;
//Ejercicio 5: print"hola"

//Palabras reservadas
PRINT:'print';
//CADENA
CADENA: '"' ~[\r\n]* '"';
//Comentarios y espacios en blanco
WS: [ \t\r\n]+ -> skip;