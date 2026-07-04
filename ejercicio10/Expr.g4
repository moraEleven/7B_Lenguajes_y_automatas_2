lexer grammar Expr;
/*Ejercicio 10: print("Wenn ich das als Erste verstehe,
übersetze und dem Lehrer vorlese, verdiene
ich 10 Extrapunkte, zusätzlich zur Abgabe
meiner Regeln und meiner Token-Tabelle.");
*/
//palabras reservadas
PRINT: 'print';
//literal de texto
CADENA: '"' .*? '"';
//puntuacion
PAR_DE:'(';
PAR_IZ:')';
PUNTCM:';';
//Comentarios y espacios en blanco
WS: [ \t\r\n]+ -> skip;