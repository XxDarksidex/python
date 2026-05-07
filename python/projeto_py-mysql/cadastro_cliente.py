import mysql.connector
from conexao import conexao

def inserir_dados ():
    nome = input ("digite seu nome:")
    especialidade = input ("qual a sua especialidade?:")
    telefone = int(input("digite seu numero de celular:"))
    sql = "insert into clientes (nome,especialidade,telefone) values (%s,%s,%s)"
    values = (nome,especialidade,telefone)

    cursor.execute(sql,values)
    conexao.commit()

    print (f"cliente {nome} adicionado com sucesso!!")

inserir_dados()
conexao()