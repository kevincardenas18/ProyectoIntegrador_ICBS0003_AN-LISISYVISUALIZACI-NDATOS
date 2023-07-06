-- Creación de la Base de datos
DROP DATABASE IF EXISTS dbsor;
CREATE DATABASE dbsor;
USE dbsor;

-- Creación de la tabla "Producto"
CREATE TABLE Producto (
  id_producto INT PRIMARY KEY,
  nombre_producto VARCHAR(255),
  codigo_barras CHAR(5),
  descripcion_producto TEXT,
  precio_venta DECIMAL(10, 2),
  costo_producto DECIMAL(10, 2),
  stock_disponible INT,
  fecha_creacion DATE,
  fecha_modificacion DATE
);

-- Creación de la tabla "Vendedor"
CREATE TABLE Vendedor (
  id_vendedor INT PRIMARY KEY,
  cedula_vendedor CHAR(10),
  usuario_vendedor VARCHAR(100),
  nombre_vendedor VARCHAR(255),
  direccion_vendedor TEXT,
  telefono_vendedor VARCHAR(20)
);

-- Creación de la tabla "Cliente"
CREATE TABLE Cliente (
  id_cliente INT AUTO_INCREMENT PRIMARY KEY,
  cedula_cliente CHAR(10),
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
  fecha DATE,
  tienda BOOLEAN,
  metodo_pago VARCHAR(100)
);

-- Creación de la tabla "Detalle_Factura"
CREATE TABLE Detalle_Factura (
  id_detalle_factura INT,
  id_factura INT
);

-- Creación de la tabla "Marca"
CREATE TABLE Marca (
  id_marca INT,
  nombre_marca VARCHAR(255),
  descripcion_marca TEXT,
  pais_marca VARCHAR(100)
);

-- Creación de la tabla "Proveedor"
CREATE TABLE Proveedor (
  id_proveedor INT,
  nombre_proveedor VARCHAR(255),
  pais_proveedor VARCHAR(100),
  telefono_proveedor VARCHAR(20),
  email_contacto VARCHAR(255)
);

-- Creación de la tabla "Detalle_Factura"
CREATE TABLE Fac_Detalle_Factura (
  id_detalle_factura_producto INT,
  id_detalle_factura INT,
  id_factura INT,
  id_cliente INT,
  id_vendedor INT,
  fecha DATE,
  tienda BOOLEAN,
  id_producto INT,
  id_marca INT,
  id_proveedor INT,
  id_categoria INT,
  cantidad INT,
  precio_venta DECIMAL(10, 2),
  subtotal DECIMAL(10, 2),
  iva DECIMAL(10, 2),
  total DECIMAL(10, 2),
  metodo_pago VARCHAR(100)
);