import streamlit as st
import pandas as pd
from archivo import Archivo
from analizador_lexico import AnalizadorLexico

st.title("Analizador Lexico - Ejercicio 15 (Comandos nmap)")

archivo_subido = st.file_uploader("Sube tu archivo .txt", type=["txt"])
ruta_manual = st.text_input("O escribe la ruta del archivo (ej: entrada.txt)")

codigo = None

if archivo_subido is not None:
    codigo = archivo_subido.read().decode("utf-8")
    st.success("Archivo cargado correctamente")
elif ruta_manual:
    archivo = Archivo(ruta_manual, extension_esperada=".txt")
    if not archivo.existe():
        st.error("El archivo no existe")
    elif not archivo.es_el_tipo_correcto():
        st.error("El archivo debe ser .txt")
    else:
        codigo = archivo.leer()

if codigo:
    st.subheader("Codigo original")
    st.code(codigo, language="bash")

    analizador = AnalizadorLexico()
    analizador.analizar(codigo)

    st.subheader("Tokens encontrados")
    filas = []
    for token in analizador.tokens.tokens:
        if token.type == -1:
            continue
        nombre = analizador.lexer.symbolicNames[token.type]
        filas.append({
            "Lexema": token.text,
            "Token": nombre,
            "Tipo": token.type,
            "Linea": token.line,
            "Columna": token.column
        })
    df = pd.DataFrame(filas)
    st.table(df)

    st.subheader("Errores lexicos")
    if len(analizador.errores.lista) == 0:
        st.success("No hay errores lexicos")
    else:
        for error in analizador.errores.lista:
            st.error(f"Linea {error[0]}, columna {error[1]}: {error[2]}")