import os
from jproperties import Properties

def get_sql_path(file_name: str) -> str:
    """
    Gets the full path of a CSV file.
    """
    return os.path.join(SQL_PATH, file_name)

# Lee un archivo de propiedades y devuelve un diccionario con los valores.
def read_config(file_path: str) -> dict:
    """
    Reads a properties file and returns a dictionary with the values.
    """
    data_configs = Properties()
    with open(file_path, 'rb') as config_file:
        data_configs.load(config_file)
    data_dict = {key: str(data_configs.get(key).data) for key in data_configs}
    return data_dict

# Lee la configuración de la base de datos de origen desde el archivo "source_db.properties"
SQL_PATH = os.path.abspath('./sql/source')  # Path to source folder
source_db_config = read_config('./config/source_db.properties')
etl_db_config = read_config('./config/etl_db.properties')  # Read ETL DB properties file

# Configuración de la conexión a la base de datos
class DbConnectionConfig:
    NAME = ""        # Nombre de la base de datos
    HOST = ""        # Host de la base de datos
    PORT = ""        # Puerto de la base de datos
    USER = ""        # Usuario de la base de datos
    PASSWORD = ""    # Contraseña de la base de datos

# Configuración de la base de datos de origen
class SourceDbConfig:
    class Connection(DbConnectionConfig):
        NAME = source_db_config['DB_NAME']        # Nombre de la base de datos de origen
        HOST = source_db_config['DB_HOST']        # Host de la base de datos de origen
        PORT = source_db_config['DB_PORT']        # Puerto de la base de datos de origen
        USER = source_db_config['DB_USER']        # Usuario de la base de datos de origen
        PASSWORD = source_db_config['DB_PASSWORD']    # Contraseña de la base de datos de origen

    DATABASE_SCHEMA = source_db_config['DB_SCHEMA']    # Esquema de la base de datos de origen

    class Table:
        Categoria = 'categoria'
        Proveedor = 'proveedor'
        Marca = 'marca'
        Proveedor_Marca = 'proveedor_Marca'
        Producto = 'producto'
        Compra_Producto = 'compra_Producto'
        Vendedor = 'vendedor'
        Cliente = 'cliente'
        Factura = 'factura'
        Detalle_Factura = 'detalle_Factura'
        Detalle_Factura_Producto = 'detalle_Factura_Producto'

# Database to load data into
class EtlDbConfig:
    class Connection(DbConnectionConfig):
        NAME = etl_db_config['DB_NAME']
        HOST = etl_db_config['DB_HOST']
        PORT = etl_db_config['DB_PORT']
        USER = etl_db_config['DB_USER']
        PASSWORD = etl_db_config['DB_PASSWORD']

    # Database schemas
    class Schema:
        SOR = etl_db_config['DB_SOR_SCHEMA']
        STG = etl_db_config['DB_STG_SCHEMA']

    # Extraction tables (staging)
    class ExtractTable:
        Cliente = 'cliente_ext'
        

    # Transformation tables (staging)
    class TransformTable:
        Cliente = 'cliente_tra'

    # Final tables (SOR)
    class SorTable:
        Cliente = 'cliente'

    ETL_PROCESS_TABLE = 'procesos_etl'
    ETL_PROCESS_COL = 'ETL_PROC_ID'
        