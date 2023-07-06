import traceback
from util.db_connection import DbConnection
import pandas as pd

def persistir_cliente (categories):

    try:
        type = 'mysql'
        host = '10.10.10.2'
        port = '3306'
        user = 'mysql'
        password = 'MySQL_Password1'
        database = 'dbstg'


        con_db_stg = DbConnection(type, host, port, user, password, database)
        ses_db_stg= con_db_stg.start()
        if ses_db_stg == -1:
            raise Exception("El tipo de base de datos " + type + " no es válido")
        elif ses_db_stg == -2:
            raise Exception("Error al establecer la conexión de pruebas")        
        
        categories.to_sql('Cliente_ext', ses_db_stg, if_exists='replace', index=False)

    except:
        traceback.print_exc()
    finally:
        pass