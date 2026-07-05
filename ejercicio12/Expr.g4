lexer grammar Expr;
// Ejercicio 12: Validar si una persona es mayor de edad (Java)
// Numero de control: TU_NUMERO_DE_CONTROL

// Palabras reservadas
PUBLIC: 'public';
CLASS: 'class';
STATIC: 'static';
VOID: 'void';
INT: 'int';
STRING_TYPE: 'String';
IF: 'if';

// Identificadores
ID: [a-zA-Z_][a-zA-Z0-9_]*;

// Literales numericos
NUM: [0-9]+;

// Literal de cadena
CADENA: '"' ~["\r\n]* '"';

// Operadores
ASIGNA: '=';
MAYOR_IGUAL: '>=';
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