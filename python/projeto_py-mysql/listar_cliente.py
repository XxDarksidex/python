import mysql.connector
from conexao import conexao

def listar_clientes(conexao):
    cursor.execute("select * from clientes")
    resultados = cursor.fetchall()
    print("\ndados na tabela")
    for i in resultados:
        print(i)

