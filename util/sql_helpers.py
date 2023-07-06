import os
import mysql.connector
from config import get_sql_path
import functools
import traceback
from typing import List, NamedTuple
from sqlalchemy.engine import Engine
import pandas as pd
from util.db_connection import DbConnection
from config import DbConnectionConfig, EtlDbConfig, SourceDbConfig

class SchemaConnection:
    SOURCE: Engine
    STG: Engine
    SOR: Engine

    def __init__(self):
        self.SOURCE = self.__configure_connection(SourceDbConfig.Connection, SourceDbConfig.DATABASE_SCHEMA)
        self.STG = self.__configure_connection(EtlDbConfig.Connection, EtlDbConfig.Schema.STG)
        self.SOR = self.__configure_connection(EtlDbConfig.Connection, EtlDbConfig.Schema.SOR)

    def begin(self):
        self.SOURCE.begin()
        self.STG.begin()
        self.SOR.begin()

    def dispose(self):
        self.SOURCE.dispose()
        self.STG.dispose()
        self.SOR.dispose()

    def __configure_connection(self, con: DbConnectionConfig, schema: str) -> Engine:
        con_db = DbConnection(
            type=con.NAME,
            host=con.HOST,
            port=con.PORT,
            user=con.USER,
            password=con.PASSWORD,
            database=schema
        )
        ses_db = con_db.start()
        if ses_db == -1:
            raise Exception(f"The give database type '{con.NAME}' is not valid")
        elif ses_db == -2:
            raise Exception(f"Error trying connect to the database '{schema}'")
        return ses_db


def connection_handler(func):
    @functools.wraps(func)
    def wrapper(*args, **kwargs):
        try:
            schema_con = SchemaConnection()
            schema_con.begin()
            func(schema_con, *args, **kwargs)
            schema_con.dispose()
        except:
            traceback.print_exc()
    return wrapper

def mysql_Connection():
    connection = mysql.connector.connect(
    host='10.10.10.2',
    user='mysql',
    password='MySQL_Password1')
    return connection

def install_database(file_name):
    connection = mysql_Connection()

    with open(get_sql_path(file_name), 'r') as file:
        sql_script = file.read()

    # Dividir el script SQL en consultas individuales
    queries = sql_script.split(';')

    cursor = connection.cursor()
    for query in queries:
        if query.strip():
            cursor.execute(query)

    connection.commit()


# file_name = 'ImpordadoraAndina.sql'
# file_path = get_sql_path(file_name)
