lexer grammar Expr;
//ejercicio 15:
//Comandos
NMAP: 'nmap';
SS: 'ss';
SUDO: 'sudo';
TCPDUMP: 'tcpdump';
CURL: 'curl';
DIG: 'dig';
JOURNALCTL: 'journalctl';
GREP: 'grep';
UFW: 'ufw';
DENY: 'deny';
FROM: 'from';
SINCE: '--since';
TODAY: 'today';
MX: 'MX';

// Direccion IP
IP: [0-9]+ '.' [0-9]+ '.' [0-9]+ '.' [0-9]+ ('/' [0-9]+)?;

//Bandera de comando (ej. -sV, -i, -c, -I)
BANDERA: '-' [a-zA-Z]+;

// Ruta de archivo
RUTA: [a-zA-Z0-9_./]+;

// Literales numericos
NUM: [0-9]+;

// Cadena de texto
CADENA: '"' ~["\r\n]* '"';

// Comentarios y espacios en blanco
WS: [ \t\r\n]+ -> skip;