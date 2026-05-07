#importar a biblioteca que serve para conectar o python ao banco de dados
import mysql.connector

from conexao import conexao
from cadastro_cliente import inserir_dados

conexao()
inserir_dados()
