import traceback
from util.db_connection import DbConnection
from util.sql_helpers import SchemaConnection, connection_handler
import pandas as pd


def extraer_datos():
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
        
        datos = pd.read_sql("""SELECT
    dfp.id_detalle_factura_producto,
    df.id_detalle_factura,
    f.id_factura,
    f.id_cliente,
    f.id_vendedor,
    f.fecha,
    f.tienda,
    dfp.id_producto,
    p.id_marca,
    p.id_proveedor,
    p.id_categoria,
    dfp.cantidad,
    p.precio_venta,
    (dfp.cantidad * p.precio_venta) AS subtotal,
    ((dfp.cantidad * p.precio_venta) * 0.12) AS iva,
    ((dfp.cantidad * p.precio_venta) * 1.12) AS total,
    f.metodo_pago
FROM
    Detalle_Factura_Producto dfp
    INNER JOIN Detalle_Factura df ON dfp.id_detalle_factura = df.id_detalle_factura
    INNER JOIN Factura f ON df.id_factura = f.id_factura
    INNER JOIN Producto p ON dfp.id_producto = p.id_producto;""", ses_db_trx)
        
        return datos
        


    except:
        traceback.print_exc()
    finally:
        pass