import mysql.connector
from faker import Faker
import random
import decimal
from datetime import timedelta
from util.sql_helpers import SchemaConnection, connection_handler


fake = Faker(['es_CO', 'es_MX'])

# Conexión a la base de datos
mydb = mysql.connector.connect(
    host="10.10.10.2",
    user="mysql",
    password="MySQL_Password1",
    database="importadora_andina"
)
mycursor = mydb.cursor()

# Generación de datos falsos y llenado de tablas

categorias = ["Televisores", "Celulares", "Computadoras", "Electrodomésticos", "Accesorios", "Salud", "Deporte", "Tablets", "Muebles", "Camaras"]

# Tabla "Categoria"
for _ in range(10):
    nombre_categoria = random.sample(categorias, 1)[0]
    categorias.remove(nombre_categoria)  # Eliminar la categoría seleccionada de la lista
    descripcion_categoria = fake.text()

    sql = "INSERT INTO Categoria (nombre_categoria, descripcion_categoria) VALUES (%s, %s)"
    val = (nombre_categoria, descripcion_categoria)
    mycursor.execute(sql, val)

mydb.commit()

# Tabla "Proveedor"
for _ in range(10):
    nombre_proveedor = fake.company()
    pais_proveedor = fake.country()
    telefono_proveedor = fake.phone_number()
    email_contacto = fake.email()

    sql = "INSERT INTO Proveedor (nombre_proveedor, pais_proveedor, telefono_proveedor, email_contacto) VALUES (%s, %s, %s, %s)"
    val = (nombre_proveedor, pais_proveedor, telefono_proveedor, email_contacto)
    mycursor.execute(sql, val)

mydb.commit()

# Tabla "Marca"
marcas = ["Samsung", "Apple", "Sony", "TCL", "Panasonic", "DeWalt", "Tupperware", "Specialized", "Pandora", "Swarovski"]
for _ in range(10):
    nombre_marca = random.sample(marcas, 1)[0]
    marcas.remove(nombre_marca)
    descripcion_marca = fake.text()
    pais_marca = fake.country()

    sql = "INSERT INTO Marca (nombre_marca, descripcion_marca, pais_marca) VALUES (%s, %s, %s)"
    val = (nombre_marca, descripcion_marca, pais_marca)
    mycursor.execute(sql, val)

mydb.commit()

# Tabla intermedia "Proveedor_Marca"
for _ in range(20):
    id_proveedor = fake.random_int(min=1, max=10)
    id_marca = fake.random_int(min=1, max=10)

    sql = "INSERT INTO Proveedor_Marca (id_proveedor, id_marca) VALUES (%s, %s)"
    val = (id_proveedor, id_marca)
    mycursor.execute(sql, val)

mydb.commit()

# Tabla "Producto"
productos = [
    'Galaxy S21',
    'Galaxy A52',
    'Galaxy Watch 4',
    'Galaxy Tab S7',
    'Samsung QLED TV',
    'Samsung SSD 1TB',
    'Samsung Galaxy Buds Pro',
    'Samsung Gear Fit2 Pro',
    'Samsung Refrigerator',
    'Samsung Washing Machine',
    'iPhone 12',
    'iPad Pro',
    'MacBook Pro',
    'Apple Watch Series 6',
    'Zapatillas Air Max',
    'Zapatillas Air Max',
    'Camiseta Dry-Fit',
    'Shorts Performance',
    'Mochila Sportswear',
    'Gorra Featherlight',
    'Calcetines Elite',
    'Bolsa de Deporte',
    'Balón de Fútbol',
    'Medias de Compresión',
    'Zapatillas Air Max',
    'Camiseta Dry-Fit',
    'Zapatillas Ultraboost',
    'Zapatillas Ultraboost',
    'Camiseta Performance',
    'Pantalones Tiro 19',
    'Mochila Classic',
    'Gorra Snapback',
    'Apósitos Estériles',
    'Gasas No Estériles',
    'Apósitos Transparentes',
    'Alcohol en Gel',
    'Vendas Cohesivas',
    'Aspirina',
    'Canesten',
    'Supradyn',
    'Baycuten',
    'Redoxon',
    'Bepanthen',
    'Canesoral',
    'Iberogast',
    'Aspirina Cardio',
    'Rennie',
    'Bepanthol',
    'Batidora de pie',
    'Procesador de alimentos',
    'Licuadora',
    'Cafetera',
    'Tostadora',
    'Máquina de hacer pasta',
    'Exprimidor de cítricos',
    'Molinillo de café',
    'Olla de cocción lenta',
    'Batidora de mano',
    'Máquina de helados',
    'Recipiente de almacenamiento',
    'Set de recipientes modulares',
    'Botella de agua reutilizable',
    'Ensaladera',
]
for _ in range(300):
    nombre_producto = random.choice(productos)
    codigo_barras = fake.unique.random_number(digits=5)
    descripcion_producto = fake.text()
    precio_venta = fake.pydecimal(left_digits=4, right_digits=2, positive=True)
    costo_producto = decimal.Decimal(precio_venta) * decimal.Decimal('0.8') 
    stock_disponible = fake.random_int(min=0, max=100)
    fecha_creacion = fake.date_between(start_date='-4y', end_date='today')
    fecha_modificacion = fake.date_between(start_date=fecha_creacion, end_date='today')
    id_marca = fake.random_int(min=1, max=10)
    id_proveedor = fake.random_int(min=1, max=10)
    id_categoria = fake.random_int(min=1, max=10)

    sql = "INSERT INTO Producto (nombre_producto, codigo_barras, descripcion_producto, precio_venta, costo_producto, stock_disponible, fecha_creacion, fecha_modificacion, id_marca, id_proveedor, id_categoria) VALUES (%s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s)"
    val = (nombre_producto, codigo_barras, descripcion_producto, precio_venta, costo_producto, stock_disponible, fecha_creacion, fecha_modificacion, id_marca, id_proveedor, id_categoria)
    mycursor.execute(sql, val)

mydb.commit()

# Tabla "Compra_Producto"
for _ in range(200):
    id_producto = fake.random_int(min=1, max=300)
    id_proveedor = fake.random_int(min=1, max=10)
    cantidad = fake.random_int(min=1, max=100)
    costo_envio = fake.pydecimal(left_digits=3, right_digits=2, positive=True)
    impuestos = decimal.Decimal(costo_envio) * decimal.Decimal('0.2') 
    subtotal = fake.pydecimal(left_digits=4, right_digits=2, positive=True) + costo_envio + impuestos
    total = costo_envio+impuestos+subtotal
    fecha_compra = fake.date_between(start_date='-4y', end_date='today')
    fecha_maxima = fecha_compra + timedelta(days=60)
    fecha_llegada = fake.date_between(start_date=fecha_compra, end_date=fecha_maxima)

    sql = "INSERT INTO Compra_Producto (id_producto, id_proveedor, cantidad, costo_envio, impuestos, subtotal, total, fecha_compra, fecha_llegada) VALUES (%s, %s, %s, %s, %s, %s, %s, %s, %s)"
    val = (id_producto, id_proveedor, cantidad, costo_envio, impuestos, subtotal, total, fecha_compra, fecha_llegada)
    mycursor.execute(sql, val)

mydb.commit()

# Tabla "Vendedor"
for _ in range(10):
    cedula_vendedor = fake.unique.random_number(digits=10)
    usuario_vendedor = fake.user_name()
    nombre_vendedor = fake.name()
    direccion_vendedor = fake.address()
    telefono_vendedor = fake.phone_number()

    sql = "INSERT INTO Vendedor (cedula_vendedor, usuario_vendedor, nombre_vendedor, direccion_vendedor, telefono_vendedor) VALUES (%s, %s, %s, %s, %s)"
    val = (cedula_vendedor, usuario_vendedor, nombre_vendedor, direccion_vendedor, telefono_vendedor)
    mycursor.execute(sql, val)

mydb.commit()

# Tabla "Cliente"
for _ in range(50):
    cedula_cliente = fake.unique.random_number(digits=10)
    nombre_completo_cliente = fake.name()
    pais_cliente = fake.country()
    provincia_cliente = fake.state()
    ciudad_cliente = fake.city()
    direccion_cliente = fake.address()
    telefono_cliente = fake.phone_number()
    email_cliente = fake.email()

    sql = "INSERT INTO Cliente (cedula_cliente, nombre_completo_cliente, pais_cliente, provincia_cliente, ciudad_cliente, direccion_cliente, telefono_cliente, email_cliente) VALUES (%s, %s, %s, %s, %s, %s, %s, %s)"
    val = (cedula_cliente, nombre_completo_cliente, pais_cliente, provincia_cliente, ciudad_cliente, direccion_cliente, telefono_cliente, email_cliente)
    mycursor.execute(sql, val)

mydb.commit()

# Tabla "Factura"
pagos = ["Efectivo", "Tarjeta"]
for _ in range(1000):
    id_cliente = fake.random_int(min=1, max=50)
    id_vendedor = fake.random_int(min=1, max=10)
    fecha = fake.date_between(start_date='-4y', end_date='today')
    tienda = fake.boolean()
    subtotal = fake.pydecimal(left_digits=3, right_digits=2, positive=True)
    iva = decimal.Decimal(subtotal) * decimal.Decimal('0.12') 
    total = subtotal + iva
    metodo_pago = random.choice(pagos)

    sql = "INSERT INTO Factura (id_cliente, id_vendedor, fecha, tienda, subtotal, iva, total, metodo_pago) VALUES (%s, %s, %s, %s, %s, %s, %s, %s)"
    val = (id_cliente, id_vendedor, fecha, tienda, subtotal, iva, total, metodo_pago)
    mycursor.execute(sql, val)

mydb.commit()
i=0
# Tabla "Detalle_Factura"
for _ in range(1000):
    i = i+1
    id_factura = i

    sql = "INSERT INTO Detalle_Factura (id_factura) VALUES (%s)"
    val = (id_factura,)
    mycursor.execute(sql, val)

mydb.commit()

# Tabla intermedia "Detalle_Factura_Producto"
for _ in range(80000):
    id_detalle_factura = fake.random_int(min=1, max=1000)
    id_producto = fake.random_int(min=1, max=300)
    cantidad = fake.random_int(min=1, max=10)
    sql = "INSERT INTO Detalle_Factura_Producto (id_detalle_factura, id_producto, cantidad) VALUES (%s, %s, %s)"
    val = (id_detalle_factura, id_producto, cantidad)
    mycursor.execute(sql, val)

mydb.commit()

# Cierre de la conexión
mycursor.close()
mydb.close()