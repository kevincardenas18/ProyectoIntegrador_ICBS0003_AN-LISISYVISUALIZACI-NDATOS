import traceback

from etl.extract.ext_cliente import extraer_cliente
from etl.extract.per_cliente import persistir_cliente
from etl.extract.ext_datos import extraer_datos
from etl.extract.per_datos import persistir_datos
from etl.transform.tra_cliente import transformar_cliente
from etl.transform.tra_datos import transformar_datos
from etl.load.car_cliente import cargar_cliente


try:

    print('Extracting data...')
    print ("Ejemplo de extracción de Países desde una BD")
    clientes=extraer_cliente()
    print(clientes)
    print('Transforming data...')
    print ("Ejemplo de transformación de Categorias")
    new_clientes=transformar_cliente(clientes)
    print ("Ejemplo de la persistencia de Categorias en una BD")
    persistir_cliente(new_clientes)
    cargar_cliente(new_clientes)

    datos=extraer_datos()
    print(datos)
    new_datos=transformar_datos(datos)
    persistir_datos(datos)

except:
    traceback.print_exc()
finally:
    pass