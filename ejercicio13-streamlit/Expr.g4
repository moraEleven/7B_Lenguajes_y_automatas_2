lexer grammar Expr;
// Ejercicio 13:

// Palabras reservadas SQL
CREATE: 'CREATE';
TABLE: 'TABLE';
SERIAL: 'SERIAL';
PRIMARY: 'PRIMARY';
KEY: 'KEY';
VARCHAR: 'VARCHAR';
NOT: 'NOT';
NULL_KW: 'NULL';
INTEGER: 'INTEGER';
DATE: 'DATE';
INSERT: 'INSERT';
INTO: 'INTO';
VALUES: 'VALUES';
SELECT: 'SELECT';
FROM: 'FROM';
INNER: 'INNER';
JOIN: 'JOIN';
ON: 'ON';
WHERE: 'WHERE';

// Identificadores (nombres de tabla, columnas, alias)
ID: [a-zA-Z_][a-zA-Z0-9_]*;

// Literales numericos
NUM: [0-9]+;

// Literal de cadena (SQL usa comillas simples)
CADENA: '\'' ~['\r\n]* '\'';

// Operadores
IGUAL: '=';
PUNTO: '.';

// Puntuacion
PAR_IZQ: '(';
PAR_DER: ')';
COMA: ',';
PUNTOCOMA: ';';

// Comentarios y espacios en blanco
WS: [ \t\r\n]+ -> skip;