import os
from jproperties import Properties

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
source_db_config = read_config('./config/source_db.properties')

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
        