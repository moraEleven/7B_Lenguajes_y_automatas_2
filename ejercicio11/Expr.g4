lexer grammar Expr;
// Ejercicio 11:

// Palabras reservadas
PUBLIC: 'public';
CLASS: 'class';
STATIC: 'static';
VOID: 'void';
INT: 'int';
STRING_TYPE: 'String';

// Identificadores
ID: [a-zA-Z_][a-zA-Z0-9_]*;

// Literales numericos
NUM: [0-9]+;

// Literal de cadena
CADENA: '"' ~["\r\n]* '"';

// Operadores
ASIGNA: '=';
SUMA: '+';

// Puntuacion
LLAVE_IZQ: '{';
LLAVE_DER: '}';
PAR_IZQ: '(';
PAR_DER: ')';
CORCHETE_IZQ: '[';
CORCHETE_DER: ']';
PUNTOCOMA: ';';
COMA: ',';
PUNTO: '.';

// Comentarios y espacios en blanco
WS: [ \t\r\n]+ -> skip;