lexer grammar Expr;
//Ejercicio 4: if x>10

//Palabras reservadas
IF:'if';
//iDENTIFICADORES
ID: [a-zA-Z][a-zA-Z0-9]*;
//Literales numericos
NUM: [0-9]+;
//operadores
MAYOR: '>';
WS: [ \t\r\n]+ -> skip;