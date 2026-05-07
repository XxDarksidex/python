# importar biblioteca para conectar ao MySQL
import mysql.connector



# FUNÇÃO DE CONEXÃO
def conectar_banco():
    conexao = mysql.connector.connect(
        host="localhost",
        user="root",
        password="",
        database="oficina"
    )

    print("Conectado ao banco de dados")
    return conexao



# FUNÇÃO PARA INSERIR DADOS
def inserir_funcionario(cursor, conexao, nome, data_nascimento):
    sql = """
    INSERT INTO funcionarios (nome, data_nascimento)
    VALUES (%s, %s)
    """

    valores = (nome, data_nascimento)

    cursor.execute(sql, valores)
    conexao.commit()

    print("Funcionário cadastrado com sucesso!")



# FUNÇÃO PARA LISTAR DADOS
def listar_funcionarios(cursor):
    sql = "SELECT * FROM funcionarios"

    cursor.execute(sql)

    resultados = cursor.fetchall()

    print("\nLista de Funcionários:")
    for funcionario in resultados:
        print(funcionario)



# FUNÇÃO PRINCIPAL
def main():

    # conectar ao banco
    conexao = conectar_banco()

    # criar cursor
    cursor = conexao.cursor()

    # inserir funcionário
    inserir_funcionario(
        cursor,
        conexao,
        "Maria",
        "2008-02-01"
    )

    # listar funcionários
    listar_funcionarios(cursor)

    # fechar conexão
    cursor.close()
    conexao.close()

    print("\nConexão encerrada")


# executar programa
main()