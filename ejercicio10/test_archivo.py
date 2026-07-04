from antlr4 import *
from Expr import Expr
import sys

# leer archivo
input_stream = FileStream(sys.argv[1], encoding="utf-8")

lexer = Expr(input_stream)
tokens = CommonTokenStream(lexer)
tokens.fill()

for token in tokens.tokens:
    if token.type == -1:  # EOF, se ignora
        continue
    print("Texto :", token.text)
    print("Linea :", token.line)
    print("Columna :", token.column)
    nombre_token = lexer.symbolicNames[token.type]
    print("Tipo ", nombre_token)
    print("----------------------")