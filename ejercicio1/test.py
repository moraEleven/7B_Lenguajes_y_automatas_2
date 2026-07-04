from antlr4 import*
from Expr import Expr
import sys
# Pobre ingeniero solo
# leer archivos
input_stream = FileStream("Prueba.txt")

# Por terminal
lexer = Expr(input_stream)

tokens = CommonTokenStream(lexer)
tokens.fill()
print(tokens)

for token in tokens.tokens:
    print("Texto :", token.text)
    print("Linea :", token.line)
    print("Columna :", token.column)
    nombre_token = lexer.symbolicNames[token.type]
    print("Tipo ", nombre_token)
    print("----------------------")