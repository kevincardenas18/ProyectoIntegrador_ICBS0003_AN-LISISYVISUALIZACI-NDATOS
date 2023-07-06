import traceback
from util.db_connection import DbConnection
import psycopg2
import pandas as pd
from sqlalchemy import text

def cargar_cliente(categories):
    try:
        type = 'mysql'
        host = '10.10.10.2'
        port = '3306'
        user = 'mysql'
        password = 'MySQL_Password1'
        db_stg = 'dbstg'
        db_sor = 'dbsor'

        con_db_stg = DbConnection(type, host, port, user, password, db_stg)
        ses_db_stg = con_db_stg.start()
        if ses_db_stg == -1:
            raise Exception("El tipo de base de datos " + type + " no es válido")
        elif ses_db_stg == -2:
            raise Exception("Error al establecer la conexión de pruebas")        

        con_db_sor = DbConnection(type, host, port, user, password, db_sor)
        ses_db_sor = con_db_sor.start()
        if ses_db_sor == -1:
            raise Exception("El tipo de base de datos " + type + " no es válido")
        elif ses_db_sor == -2:
            raise Exception("Error al establecer la conexión de pruebas")  

    # Leer los datos de la tabla ext_category en un dataframe
        data = pd.read_sql("SELECT * FROM Cliente_ext", ses_db_stg)

        categories.to_sql('Cliente', ses_db_sor, if_exists='replace', index=False)

    except:
        traceback.print_exc()
    finally:
        con_db_stg.stop()
        con_db_sor.stop()