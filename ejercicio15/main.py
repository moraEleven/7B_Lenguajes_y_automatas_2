from archivo import Archivo
from analizador_lexico import AnalizadorLexico

class Main:
    def __init__(self):
        self.analizador = AnalizadorLexico()

    def ejecutar(self):
        ruta = input("Escribe la ruta del archivo: ")
        archivo = Archivo(ruta, extension_esperada=".txt")
        if not archivo.existe():
            print("El archivo no existe")
            return
        if not archivo.es_el_tipo_correcto():
            print("El archivo debe ser .txt")
            return
        codigo = archivo.leer()
        archivo.imprimir_info()
        print("\nCODIGO ORIGINAL")
        print("-" * 40)
        print(codigo)
        self.analizador.analizar(codigo)
        self.analizador.imprimir_tokens()
        self.analizador.imprimir_errores()

if __name__ == "__main__":
    app = Main()
    app.ejecutar()