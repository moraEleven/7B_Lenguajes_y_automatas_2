lexer grammar Expr;
// Ejercicio 14:

// Palabras reservadas SQL
UPDATE: 'UPDATE';
SET: 'SET';
WHERE: 'WHERE';

// Identificadores
ID: [a-zA-Z_][a-zA-Z0-9_]*;

// Literales numericos
NUM: [0-9]+;

// Literal de cadena
CADENA: '\'' ~['\r\n]* '\'';

// Operadores
IGUAL: '=';

// Puntuacion
COMA: ',';
PUNTOCOMA: ';';

// Comentarios y espacios en blanco
WS: [ \t\r\n]+ -> skip;