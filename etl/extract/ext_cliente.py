import traceback
from util.db_connection import DbConnection
from util.sql_helpers import SchemaConnection, connection_handler
import pandas as pd

def extraer_cliente():
    try:
        type = 'mysql'
        host = '10.10.10.2'
        port = '3306'
        user = 'mysql'
        password = 'MySQL_Password1'
        database = 'importadora_andina'

        con_db_trx = DbConnection(type, host, port, user, password, database)
        ses_db_trx = con_db_trx.start()
        if ses_db_trx == -1:
            raise Exception("El tipo de base de datos " + type + " no es válido")
        elif ses_db_trx == -2:
            raise Exception("Error al establecer la conexión de pruebas")        
        
        clientes = pd.read_sql('SELECT * FROM Cliente', ses_db_trx)
        return clientes

    except:
        traceback.print_exc()
    finally:
        pass