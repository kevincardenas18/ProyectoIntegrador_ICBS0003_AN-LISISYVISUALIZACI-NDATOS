import functools
import traceback
from typing import List, NamedTuple
from sqlalchemy.engine import Engine
import pandas as pd
from util.db_connection import DbConnection
from config import DbConnectionConfig, SourceDbConfig


class SchemaConnection:
    SOURCE: Engine


    def __init__(self):
        self.SOURCE = self.__configure_connection(SourceDbConfig.Connection, SourceDbConfig.DATABASE_SCHEMA)

    def begin(self):
        self.SOURCE.begin()



    def dispose(self):
        self.SOURCE.dispose()


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

def get_current_identity(
    table_name: str,
    con: Engine,
    id_column: str = 'ID',
) -> int:
    """Gets the next identity value for the specified table."""
    # Use pandas
    df = pd.read_sql_query(
        sql=f'SELECT MAX({id_column}) AS NEXT_ID FROM {table_name}',
        con=con
    )
    id_value = df['NEXT_ID'].values[0]
    if id_value is None:
        return 0
    return int(id_value)





Relationship = NamedTuple('Relationship', [
    ('destination_column', str),
    ('source_table', str),
    ('source_column', str)
])

