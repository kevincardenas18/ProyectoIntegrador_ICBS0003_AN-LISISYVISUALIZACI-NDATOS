-- Creacion de la Base de datos
DROP DATABASE IF EXISTS importadora_andina;
CREATE DATABASE importadora_andina;
USE importadora_andina;
-- Creacion de la tabla "Categoria"
CREATE TABLE Categoria (
  id_categoria INT AUTO_INCREMENT PRIMARY KEY,
  nombre_categoria VARCHAR(255),
  descripcion_categoria TEXT
);

-- Creación de la tabla "Proveedor"
CREATE TABLE Proveedor (
  id_proveedor INT AUTO_INCREMENT PRIMARY KEY,
  nombre_proveedor VARCHAR(255),
  pais_proveedor VARCHAR(100),
  telefono_proveedor VARCHAR(20),
  email_contacto VARCHAR(255)
);

-- Creación de la tabla "Marca"
CREATE TABLE Marca (
  id_marca INT AUTO_INCREMENT PRIMARY KEY,
  nombre_marca VARCHAR(255),
  descripcion_marca TEXT,
  pais_marca VARCHAR(100)
);

-- Creación de la tabla intermedia "Proveedor_Marca"
CREATE TABLE Proveedor_Marca (
  id_proveedor_marca INT AUTO_INCREMENT PRIMARY KEY,
  id_proveedor INT,
  id_marca INT,
  FOREIGN KEY (id_proveedor) REFERENCES Proveedor(id_proveedor),
  FOREIGN KEY (id_marca) REFERENCES Marca(id_marca)
);

-- Creación de la tabla "Producto"
CREATE TABLE Producto (
  id_producto INT AUTO_INCREMENT PRIMARY KEY,
  nombre_producto VARCHAR(255),
  codigo_barras CHAR(5) UNIQUE,
  descripcion_producto TEXT,
  precio_venta DECIMAL(10, 2),
  costo_producto DECIMAL(10, 2),
  stock_disponible INT,
  fecha_creacion DATE,
  fecha_modificacion DATE,
  id_marca INT,
  id_proveedor INT,
  id_categoria INT,
  FOREIGN KEY (id_proveedor) REFERENCES Proveedor(id_proveedor),
  FOREIGN KEY (id_marca) REFERENCES Marca(id_marca),
  FOREIGN KEY (id_categoria) REFERENCES Categoria(id_categoria)
);

-- Creación de la tabla "Compra_Producto"
CREATE TABLE Compra_Producto (
  id_compra_producto INT AUTO_INCREMENT PRIMARY KEY,
  id_producto INT,
  id_proveedor INT,
  cantidad INT,
  costo_envio DECIMAL(10, 2),
  impuestos DECIMAL(10, 2),
  subtotal DECIMAL(10, 2),
  total DECIMAL(10, 2),
  fecha_compra DATE,
  fecha_llegada DATE,
  FOREIGN KEY (id_proveedor) REFERENCES Proveedor(id_proveedor),
  FOREIGN KEY (id_producto) REFERENCES Producto(id_producto)
);

-- Creación de la tabla "Vendedor"
CREATE TABLE Vendedor (
  id_vendedor INT AUTO_INCREMENT PRIMARY KEY,
  cedula_vendedor CHAR(10) UNIQUE,
  usuario_vendedor VARCHAR(100),
  nombre_vendedor VARCHAR(255),
  direccion_vendedor TEXT,
  telefono_vendedor VARCHAR(20)
);

-- Creación de la tabla "Cliente"
CREATE TABLE Cliente (
  id_cliente INT AUTO_INCREMENT PRIMARY KEY,
  cedula_cliente CHAR(10) UNIQUE,
  nombre_completo_cliente VARCHAR(255),
  pais_cliente VARCHAR(100),
  provincia_cliente VARCHAR(100),
  ciudad_cliente VARCHAR(100),
  direccion_cliente TEXT,
  telefono_cliente VARCHAR(20),
  email_cliente VARCHAR(255)
);

-- Creación de la tabla "Factura"
CREATE TABLE Factura (
  id_factura INT AUTO_INCREMENT PRIMARY KEY,
  id_cliente INT,
  id_vendedor INT,
  fecha DATE,
  tienda BOOLEAN,
  subtotal DECIMAL(10, 2),
  iva DECIMAL(10, 2),
  total DECIMAL(10, 2),
  metodo_pago VARCHAR(100),
  FOREIGN KEY (id_cliente) REFERENCES Cliente(id_cliente),
  FOREIGN KEY (id_vendedor) REFERENCES Vendedor(id_vendedor)
);

-- Creación de la tabla "Detalle_Factura"
CREATE TABLE Detalle_Factura (
  id_detalle_factura INT AUTO_INCREMENT PRIMARY KEY,
  id_factura INT,
  -- cantidad INT,
  -- precio DECIMAL(10, 2),
  -- codigo_barras_producto CHAR(5),
  FOREIGN KEY (id_factura) REFERENCES Factura(id_factura)
);

-- Creación de la tabla intermedia "Detalle_Factura_Producto"
CREATE TABLE Detalle_Factura_Producto (
  id_detalle_factura_producto INT AUTO_INCREMENT PRIMARY KEY,
  id_detalle_factura INT,
  id_producto INT,
  cantidad INT,
  FOREIGN KEY (id_detalle_factura) REFERENCES Detalle_Factura(id_detalle_factura),
  FOREIGN KEY (id_producto) REFERENCES Producto(id_producto)
);