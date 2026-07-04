from antlr4 import *
from Expr import Expr

entrada = input("? ")
lexer = Expr(InputStream(entrada))
tokens = CommonTokenStream(lexer)
tokens.fill()

for token in tokens.tokens:
    if token.type == -1:
        continue
    print("Texto :", token.text)
    print("Linea :", token.line)
    print("Columna :", token.column)
    nombre_token = lexer.symbolicNames[token.type]
    print("Tipo ", nombre_token)
    print("----------------------")