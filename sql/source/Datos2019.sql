USE importadora_andina;
INSERT INTO Categoria (nombre_categoria, descripcion_categoria)
VALUES ('Celulares', 'Articulos de telefonia movil'),
('Televisiones', 'Televisiones y monitores'),
('Tablets', 'Tablets de toda marca'),
('Asistentes', 'Asistentes virtuales'),
('Deportes', 'Artículos deportivos'),
('Audio', 'Equipos de sonido y audio'),
('Salud', 'Productos para la salud'),
('Electrónica', 'Dispositivos electrónicos'),
('Herramientas', 'Herramientas y equipos'),
('Sofás', 'Sofás y muebles de sala'),
('Cocina', 'Artículos para la cocina'),
('Belleza', 'Productos de belleza'),
('Bicicletas', 'Bicicletas y accesorios'),
('Adornos', 'Decoraciones y adornos');

INSERT INTO Proveedor (nombre_proveedor, pais_proveedor, telefono_proveedor, email_contacto)
VALUES 
('Tecnomega', 'Ecuador', '(+593) 986748985', 'tecnomega@example.com'),
('Technologies', 'China', '(+86) 1234567890', 'technologies@example.com'),
('GlobalTech', 'Estados Unidos', '(+1) 2345678901', 'globaltech@example.com'),
('MegaElectronics', 'México', '(+52) 5555555555', 'megaelectronics@example.com'),
('EuroTech', 'Alemania', '(+49) 9876543210', 'eurotech@example.com'),
('TechPro', 'China', '(+86) 987654321', 'techpro@example.com'),
('TechNexus', 'China', '(+86) 1234567890', 'technexus@example.com'),
('AsiaTech', 'Japón', '(+81) 987654321', 'asiatech@example.com'),
('SuperiorTech', 'Estados Unidos', '(+1) 912345678', 'superiortech@example.com'),
('TechInnovate', 'China', '(+86) 987654321', 'techinnovate@example.com'),
('Samsung', 'Corea del Sur', '(+82) 987654321', 'innotech@example.com'),
('TechSolutions', 'India', '(+91) 9876543210', 'techsolutions@example.com'),
('SmartTech', 'Reino Unido', '(+44) 7894561230', 'smarttech@example.com'),
('TechGenius', 'Brasil', '(+55) 987654321', 'techgenius@example.com'),
('TechMaster', 'China', '(+86) 987654321', 'techmaster@example.com');


-- Inserción de marcas para la categoría "Celulares"
INSERT INTO Marca (nombre_marca, descripcion_marca, pais_marca)
VALUES 
('Samsung', 'Marca de celulares, televisores y tablets', 'Corea del Sur'),
('Apple', 'Marca de celulares, dispositivos electrónicos y computadoras', 'Estados Unidos'),
('Nike', 'Marca de artículos deportivos', 'Estados Unidos'),
('Adidas', 'Marca de artículos deportivos', 'Alemania'),
('Puma', 'Marca de artículos deportivos', 'Alemania'),
('Under Armour', 'Marca de artículos deportivos', 'Estados Unidos'),
('Reebok', 'Marca de artículos deportivos', 'Estados Unidos'),
('Google', 'Marca de asistentes virtuales y servicios en línea', 'Estados Unidos'),
('Amazon', 'Marca de asistentes virtuales y servicios en línea', 'Estados Unidos'),
('Sony', 'Marca de equipos de sonido, televisores y dispositivos electrónicos', 'Japón'),
('TCL', 'Marca de televisores', 'China'),
('LG', 'Marca de televisores y dispositivos electrónicos', 'Corea del Sur'),
('Philips', 'Marca de televisores y dispositivos electrónicos', 'Países Bajos'),
('Bose', 'Marca de equipos de sonido y audio', 'Estados Unidos'),
('JBL', 'Marca de equipos de sonido y audio', 'Estados Unidos'),
('Ikea', 'Marca de muebles y sofás', 'Suecia'),
('Panasonic', 'Marca de dispositivos electrónicos', 'Japón'),
('Bosch', 'Marca de herramientas y equipos', 'Alemania'),
('Makita', 'Marca de herramientas y equipos', 'Japón'),
('DeWalt', 'Marca de herramientas y equipos', 'Estados Unidos'),
('Johnson & Johnson', 'Marca de productos para la salud y cuidado personal', 'Estados Unidos'),
('Bayer', 'Marca de productos para la salud', 'Alemania'),
('KitchenAid', 'Marca de artículos para la cocina', 'Estados Unidos'),
('Tupperware', 'Marca de artículos para la cocina', 'Estados Unidos'),
('OXO', 'Marca de artículos para la cocina', 'Estados Unidos'),
('L\'Oréal', 'Marca de productos de belleza y cuidado personal', 'Francia'),
('Specialized', 'Marca de bicicletas y accesorios', 'Estados Unidos'),
('Trek', 'Marca de bicicletas y accesorios', 'Estados Unidos'),
('Giant', 'Marca de bicicletas y accesorios', 'Taiwán'),
('Cannondale', 'Marca de bicicletas y accesorios', 'Estados Unidos'),
('Pandora', 'Marca de decoraciones y adornos', 'Dinamarca'),
('Swarovski', 'Marca de decoraciones y adornos', 'Austria');

-- Inserción en la tabla Proveedor_Marca
INSERT INTO Proveedor_Marca (id_proveedor, id_marca)
VALUES
-- Proveedor Tecnomega (2 marcas)
(1, 1),  -- Samsung
(1, 2),  -- Apple

-- Proveedor Technologies (4 marcas)
(2, 1),  -- Samsung
(2, 2),  -- Apple
(2, 3),  -- Nike
(2, 4),  -- Adidas

-- Proveedor GlobalTech (4 marcas)
(3, 1),  -- Samsung
(3, 2),  -- Apple
(3, 5),  -- Puma
(3, 6),  -- Under Armour

-- Proveedor MegaElectronics (4 marcas)
(4, 1),  -- Samsung
(4, 2),  -- Apple
(4, 7),  -- Reebok
(4, 8),  -- Google

-- Proveedor EuroTech (4 marcas)
(5, 1),  -- Samsung
(5, 2),  -- Apple
(5, 9),  -- Amazon
(5, 10), -- Sony

-- Proveedor TechPro (2 marcas)
(6, 11), -- TCL
(6, 12), -- LG

-- Proveedor TechNexus (2 marcas)
(7, 13), -- Philips
(7, 14), -- Bose

-- Proveedor AsiaTech (4 marcas)
(8, 15), -- Ikea
(8, 16), -- Panasonic
(8, 17), -- Bosch
(8, 18), -- Makita

-- Proveedor SuperiorTech (4 marcas)
(9, 19), -- DeWalt
(9, 20), -- Johnson & Johnson
(9, 21), -- Bayer
(9, 22), -- KitchenAid

-- Proveedor TechInnovate (4 marcas)
(10, 23), -- Tupperware
(10, 24), -- OXO
(10, 25), -- L'Oréal
(10, 26), -- Specialized

-- Proveedor Samsung (4 marcas)
(11, 27), -- Trek
(11, 28), -- Giant
(11, 29), -- Cannondale
(11, 30), -- Pandora

-- Proveedor TechSolutions (2 marcas)
(12, 27), -- Trek
(12, 28), -- Giant

-- Proveedor SmartTech (2 marcas)
(13, 29), -- Cannondale
(13, 30), -- Pandora

-- Proveedor TechGenius (2 marcas)
(14, 25), -- L'Oréal
(14, 26); -- Specialized

INSERT INTO Producto (codigo_barras, nombre_producto, descripcion_producto, precio_venta, costo_producto, stock_disponible, id_marca, id_categoria, id_proveedor)
VALUES
-- Productos de la marca Samsung
('S1001', 'Galaxy S21', 'Smartphone de alta gama', 899.99, 600.00, 100, 1, 1, 1),
('S1002', 'Galaxy A52', 'Smartphone de gama media', 399.99, 250.00, 50, 1, 1, 1),
('S1003', 'Galaxy Watch 4', 'Reloj inteligente con seguimiento de actividad', 299.99, 200.00, 30, 1, 2, 1),
('S1004', 'Galaxy Tab S7', 'Tablet con pantalla AMOLED y S Pen', 649.99, 500.00, 20, 1, 3, 1),
('S1005', 'Samsung QLED TV', 'Televisor con tecnología QLED y resolución 4K', 1499.99, 1000.00, 10, 1, 4, 1),
('S1006', 'Samsung SSD 1TB', 'Disco de estado sólido de alta velocidad', 149.99, 100.00, 50, 1, 5, 1),
('S1007', 'Samsung Galaxy Buds Pro', 'Auriculares inalámbricos con cancelación de ruido', 199.99, 150.00, 40, 1, 6, 1),
('S1008', 'Samsung Gear Fit2 Pro', 'Banda de actividad física con seguimiento de natación', 129.99, 80.00, 30, 1, 7, 1),
('S1009', 'Samsung Refrigerator', 'Refrigerador con tecnología de enfriamiento avanzada', 1299.99, 900.00, 15, 1, 8, 1),
('S1010', 'Samsung Washing Machine', 'Lavadora con múltiples programas de lavado', 799.99, 500.00, 20, 1, 9, 1),
-- Productos de la marca Apple
('A1000', 'iPhone 12', 'Smartphone de última generación', 999.99, 700.00, 100, 2, 1, 2),
('A1009', 'iPad Pro', 'Tablet potente y versátil', 799.99, 600.00, 50, 2, 3, 2),
('A1008', 'MacBook Pro', 'Portátil de alto rendimiento para profesionales', 1999.99, 1500.00, 30, 2, 4, 2),
('A1007', 'Apple Watch Series 6', 'Reloj inteligente con monitorización avanzada', 399.99, 250.00, 20, 2, 2, 2),
('11111', 'Zapatillas Air Max', 'Zapatillas deportivas con tecnología de amortiguación', 129.99, 80.00, 50, 3, 5, 3),
('22222', 'Zapatillas Air Max', 'Zapatillas deportivas con tecnología de amortiguación', 129.99, 90.00, 30, 3, 5, 4),
('33333', 'Camiseta Dry-Fit', 'Camiseta deportiva transpirable de secado rápido', 39.99, 20.00, 100, 3, 5, 5),
('44444', 'Shorts Performance', 'Shorts deportivos ligeros y cómodos', 29.99, 15.00, 80, 3, 5, 6),
('55555', 'Mochila Sportswear', 'Mochila resistente y espaciosa para llevar tus pertenencias', 49.99, 30.00, 50, 3, 5, 7),
('66666', 'Gorra Featherlight', 'Gorra deportiva ajustable y ligera', 19.99, 12.00, 100, 3, 5, 8),
('77777', 'Calcetines Elite', 'Calcetines deportivos de alto rendimiento', 14.99, 8.00, 120, 3, 5, 9),
('88888', 'Bolsa de Deporte', 'Bolsa de deporte versátil y resistente', 59.99, 40.00, 40, 3, 5, 10),
('99999', 'Balón de Fútbol', 'Balón de fútbol oficial para partidos y entrenamientos', 29.99, 20.00, 60, 3, 5, 11),
('00000', 'Medias de Compresión', 'Medias de compresión para mejorar la circulación sanguínea', 24.99, 15.00, 80, 3, 5, 12),
('12345', 'Zapatillas Air Max', 'Zapatillas deportivas con tecnología de amortiguación', 129.99, 85.00, 40, 3, 5, 13),
('23456', 'Camiseta Dry-Fit', 'Camiseta deportiva de secado rápido', 39.99, 25.00, 90, 3, 5, 14),
('11112', 'Zapatillas Ultraboost', 'Zapatillas deportivas con tecnología de amortiguación', 149.99, 90.00, 50, 4, 5, 3),
('22223', 'Zapatillas Ultraboost', 'Zapatillas deportivas con tecnología de amortiguación', 149.99, 95.00, 30, 4, 5, 4),
('33334', 'Camiseta Performance', 'Camiseta deportiva transpirable y de secado rápido', 34.99, 18.00, 100, 4, 5, 5),
('44445', 'Pantalones Tiro 19', 'Pantalones deportivos cómodos y versátiles', 39.99, 25.00, 80, 4, 5, 6),
('55556', 'Mochila Classic', 'Mochila espaciosa y duradera para tus pertenencias', 44.99, 30.00, 50, 4, 5, 7),
('66667', 'Gorra Snapback', 'Gorra deportiva ajustable y con estilo', 24.99, 15.00, 100, 4, 5, 8),
('77778', 'Calcetines Cushioned', 'Calcetines deportivos con acolchado adicional', 12.99, 7.00, 120, 4, 5, 9),
('88889', 'Bolsa Deportiva Convertible', 'Bolsa de deporte versátil y convertible en mochila', 54.99, 40.00, 40, 4, 5, 10),
('99990', 'Balón de Baloncesto', 'Balón de baloncesto oficial para partidos y entrenamientos', 34.99, 25.00, 60, 4, 5, 11),
('00001', 'Medias Alphaskin', 'Medias de compresión para un ajuste óptimo', 19.99, 12.00, 80, 4, 5, 12),
('12346', 'Zapatillas Ultraboost', 'Zapatillas deportivas con tecnología de amortiguación', 149.99, 88.00, 40, 4, 5, 13),
('23457', 'Camiseta Performance', 'Camiseta deportiva transpirable y de secado rápido', 34.99, 22.00, 90, 4, 5, 14),
('1GT13', 'Zapatillas RS-X', 'Zapatillas deportivas con diseño retro', 129.99, 80.00, 50, 5, 5, 3),
('2YT24', 'Zapatillas RS-X', 'Zapatillas deportivas con diseño retro', 129.99, 85.00, 30, 5, 5, 4),
('3ZX35', 'Camiseta Essential', 'Camiseta deportiva cómoda y ligera', 29.99, 15.00, 100, 5, 5, 5),
('4YU46', 'Pantalones Essential', 'Pantalones deportivos con ajuste perfecto', 39.99, 25.00, 80, 5, 5, 6),
('5GH57', 'Mochila Phase', 'Mochila funcional y resistente para llevar tus pertenencias', 49.99, 35.00, 50, 5, 5, 7),
('DS668', 'Gorra Trucker', 'Gorra deportiva estilo trucker con malla trasera', 24.99, 18.00, 100, 5, 5, 8),
('77CG9', 'Calcetines Cushioned', 'Calcetines deportivos con acolchado adicional', 12.99, 7.00, 120, 5, 5, 9),
('88DF0', 'Bolsa Deportiva Pro', 'Bolsa de deporte espaciosa y duradera', 59.99, 45.00, 40, 5, 5, 10),
('99SD1', 'Balón de Fútbol', 'Balón de fútbol de alta calidad para entrenamientos', 29.99, 20.00, 60, 5, 5, 11),
('SD002', 'Medias Crew', 'Medias deportivas clásicas para un ajuste cómodo', 17.99, 10.00, 80, 5, 5, 12),
('SD347', 'Zapatillas RS-X', 'Zapatillas deportivas con diseño retro', 129.99, 78.00, 40, 5, 5, 13),
('2GG58', 'Camiseta Essential', 'Camiseta deportiva cómoda y ligera', 29.99, 20.00, 90, 5, 5, 14),
('UA1Y3', 'Playera Tech', 'Playera deportiva de tela tecnológica transpirable', 34.99, 20.00, 50, 6, 5, 3),
('UA456', 'Shorts Rival', 'Shorts deportivos resistentes y cómodos', 39.99, 25.00, 30, 6, 5, 4),
('UA789', 'Leggings HeatGear', 'Leggings de compresión para entrenamientos intensos', 49.99, 30.00, 40, 6, 5, 5),
('UAABC', 'Chamarra Storm', 'Chamarra impermeable para protección contra la lluvia', 89.99, 60.00, 20, 6, 5, 6),
('UADEF', 'Mochila Hustle', 'Mochila resistente y espaciosa para llevar tus pertenencias', 54.99, 40.00, 50, 6, 5, 7),
('UA123', 'Playera Tech', 'Playera deportiva de tela tecnológica transpirable', 34.99, 22.00, 60, 6, 5, 8),
('UA4Q6', 'Shorts Rival', 'Shorts deportivos resistentes y cómodos', 39.99, 27.00, 35, 6, 5, 9),
('UA789', 'Leggings HeatGear', 'Leggings de compresión para entrenamientos intensos', 49.99, 35.00, 25, 6, 5, 10),
('UAXYZ', 'Chamarra Storm', 'Chamarra impermeable para protección contra la lluvia', 89.99, 65.00, 15, 6, 5, 11),
('UAWXY', 'Mochila Hustle', 'Mochila resistente y espaciosa para llevar tus pertenencias', 54.99, 42.00, 40, 6, 5, 12),
('RBK23', 'Tenis Classic', 'Tenis deportivos estilo clásico', 79.99, 50.00, 30, 7, 5, 4),
('RB456', 'Playera CrossFit', 'Playera de alta resistencia para entrenamientos de CrossFit', 49.99, 30.00, 25, 7, 5, 5),
('RBK89', 'Pantalones Legging', 'Pantalones deportivos ajustados y cómodos', 59.99, 40.00, 35, 7, 5, 6),
('RBXYZ', 'Mochila Fitness', 'Mochila espaciosa con compartimentos para artículos de gimnasio', 39.99, 25.00, 40, 7, 5, 7),
('GOO23', 'Google Home Mini', 'Asistente virtual para el hogar', 49.99, 35.00, 50, 8, 4, 8),
('GOO56', 'Chromecast', 'Dispositivo para transmitir contenido multimedia en tu televisión', 39.99, 30.00, 40, 8, 4, 8),
('GOO89', 'Pixel 4a', 'Teléfono inteligente con sistema operativo Android', 399.99, 300.00, 30, 8, 1, 8),
('GOOBC', 'Nest Thermostat', 'Termostato inteligente para controlar la temperatura de tu hogar', 199.99, 150.00, 20, 8, 8, 8),
('GOOEF', 'Google Wifi', 'Sistema de Wi-Fi en malla para mejorar la cobertura de red en tu hogar', 149.99, 100.00, 15, 8, 8, 8),
('AMZ13', 'Echo Dot', 'Altavoz inteligente con asistente virtual Alexa', 39.99, 25.00, 50, 9, 4, 9),
('AMZ46', 'Fire TV Stick', 'Dispositivo para transmitir contenido en streaming', 49.99, 35.00, 40, 9, 2, 9),
('AMZ79', 'Kindle Paperwhite', 'Lector de libros electrónicos con pantalla iluminada', 129.99, 90.00, 30, 9, 7, 9),
('AMZYZ', 'AmazonBasics Microondas', 'Microondas de tamaño compacto con asistente Alexa', 99.99, 70.00, 20, 9, 11, 9),
('AMZXY', 'AmazonBasics Baterías AA', 'Paquete de 48 baterías alcalinas AA', 14.99, 8.00, 100, 9, 12, 9),
('AMZ23', 'Echo Dot', 'Altavoz inteligente con asistente virtual Alexa', 39.99, 27.00, 60, 9, 4, 10),
('AMZ56', 'Fire TV Stick', 'Dispositivo para transmitir contenido en streaming', 49.99, 37.00, 35, 9, 2, 10),
('AM789', 'Kindle Paperwhite', 'Lector de libros electrónicos con pantalla iluminada', 129.99, 95.00, 25, 9, 7, 10),
('AMZYZ', 'AmazonBasics Microondas', 'Microondas de tamaño compacto con asistente Alexa', 99.99, 75.00, 15, 9, 11, 10),
('AMZWY', 'AmazonBasics Baterías AA', 'Paquete de 48 baterías alcalinas AA', 14.99, 9.00, 40, 9, 12, 10),
('SON13', 'Televisor LED', 'Televisor LED de alta definición', 499.99, 350.00, 10, 10, 2, 10),
('SON46', 'Barra de Sonido', 'Barra de sonido con subwoofer inalámbrico', 249.99, 180.00, 15, 10, 6, 10),
('SON79', 'Cámara Digital', 'Cámara digital compacta de 20 megapíxeles', 349.99, 250.00, 5, 10, 8, 10),
('SONXZ', 'Reproductor Blu-ray', 'Reproductor Blu-ray de alta definición', 99.99, 70.00, 20, 10, 2, 10),
('SONWY', 'Auriculares Bluetooth', 'Auriculares inalámbricos con cancelación de ruido', 129.99, 90.00, 30, 10, 5, 10),
('SON13', 'Televisor LED', 'Televisor LED de alta definición', 499.99, 370.00, 8, 10, 2, 11),
('SON46', 'Barra de Sonido', 'Barra de sonido con subwoofer inalámbrico', 249.99, 190.00, 12, 10, 6, 11),
('SON79', 'Cámara Digital', 'Cámara digital compacta de 20 megapíxeles', 349.99, 260.00, 4, 10, 8, 11),
('SONXZ', 'Reproductor Blu-ray', 'Reproductor Blu-ray de alta definición', 99.99, 75.00, 15, 10, 2, 11),
('SONXY', 'Auriculares Bluetooth', 'Auriculares inalámbricos con cancelación de ruido', 129.99, 95.00, 20, 10, 5, 11),
('TC123', 'Televisor LED', 'Televisor LED de alta definición', 399.99, 300.00, 10, 11, 2, 6),
('TL456', 'Smart TV', 'Smart TV con sistema operativo integrado', 549.99, 400.00, 8, 11, 2, 6),
('TL789', 'Monitor Curvo', 'Monitor curvo de 27 pulgadas', 299.99, 220.00, 15, 11, 2, 6),
('TLXYZ', 'Proyector HD', 'Proyector HD portátil', 199.99, 150.00, 12, 11, 2, 6),
('TLWXY', 'Barra de Sonido', 'Barra de sonido con subwoofer inalámbrico', 149.99, 110.00, 20, 11, 6, 6),
('TCL77', 'Televisor LED', 'Televisor LED de alta definición', 399.99, 320.00, 6, 11, 2, 8),
('TCL88', 'Smart TV', 'Smart TV con sistema operativo integrado', 549.99, 420.00, 10, 11, 2, 8),
('TCL99', 'Monitor Curvo', 'Monitor curvo de 27 pulgadas', 299.99, 240.00, 8, 11, 2, 8),
('TCLBC', 'Proyector HD', 'Proyector HD portátil', 199.99, 160.00, 15, 11, 2, 8),
('TCDEF', 'Barra de Sonido', 'Barra de sonido con subwoofer inalámbrico', 149.99, 120.00, 12, 11, 6, 8),
('LG123', 'Televisor OLED', 'Televisor OLED con tecnología de alta calidad de imagen', 999.99, 800.00, 5, 12, 2, 6),
('LG456', 'Smart TV', 'Smart TV con sistema operativo webOS', 699.99, 500.00, 8, 12, 2, 6),
('LG789', 'Monitor UltraWide', 'Monitor UltraWide de 34 pulgadas', 449.99, 350.00, 12, 12, 2, 6),
('LGXYZ', 'Barra de Sonido', 'Barra de sonido con tecnología Dolby Atmos', 199.99, 150.00, 15, 12, 6, 6),
('LGWXY', 'Reproductor Blu-ray', 'Reproductor Blu-ray de alta definición', 79.99, 60.00, 20, 12, 7, 6),
('LG777', 'Televisor OLED', 'Televisor OLED con tecnología de alta calidad de imagen', 999.99, 820.00, 4, 12, 2, 8),
('LG888', 'Smart TV', 'Smart TV con sistema operativo webOS', 699.99, 520.00, 10, 12, 2, 8),
('LG999', 'Monitor UltraWide', 'Monitor UltraWide de 34 pulgadas', 449.99, 360.00, 10, 12, 2, 8),
('LGABC', 'Barra de Sonido', 'Barra de sonido con tecnología Dolby Atmos', 199.99, 160.00, 12, 12, 6, 8),
('LGDEF', 'Reproductor Blu-ray', 'Reproductor Blu-ray de alta definición', 79.99, 65.00, 18, 12, 7, 8),
('PHI23', 'Televisor LED', 'Televisor LED con resolución Full HD', 499.99, 400.00, 7, 13, 2, 7),
('PI456', 'Barra de Sonido', 'Barra de sonido con subwoofer inalámbrico', 199.99, 150.00, 10, 13, 6, 7),
('PHI79', 'Afeitadora Eléctrica', 'Afeitadora eléctrica con tecnología de corte preciso', 79.99, 60.00, 15, 13, 12, 7),
('PHXYZ', 'Plancha de Vapor', 'Plancha de vapor con sistema antiadherente', 49.99, 35.00, 20, 13, 12, 7),
('PHIXY', 'Altavoz Bluetooth', 'Altavoz Bluetooth portátil con batería de larga duración', 69.99, 50.00, 8, 13, 6, 7),
('PHI77', 'Televisor LED', 'Televisor LED con resolución Full HD', 499.99, 420.00, 5, 13, 2, 9),
('PHI88', 'Barra de Sonido', 'Barra de sonido con subwoofer inalámbrico', 199.99, 160.00, 8, 13, 6, 9),
('PHI99', 'Afeitadora Eléctrica', 'Afeitadora eléctrica con tecnología de corte preciso', 79.99, 65.00, 12, 13, 12, 9),
('PHIAC', 'Plancha de Vapor', 'Plancha de vapor con sistema antiadherente', 49.99, 40.00, 18, 13, 12, 9),
('PHIDF', 'Altavoz Bluetooth', 'Altavoz Bluetooth portátil con batería de larga duración', 69.99, 55.00, 10, 13, 6, 9),
('BO123', 'Auriculares Inalámbricos', 'Auriculares inalámbricos con cancelación de ruido', 249.99, 200.00, 10, 14, 6, 15),
('BO456', 'Altavoz Bluetooth', 'Altavoz Bluetooth portátil con sonido de alta calidad', 179.99, 150.00, 12, 14, 6, 15),
('BO789', 'Barra de Sonido', 'Barra de sonido con subwoofer inalámbrico', 349.99, 300.00, 5, 14, 2, 15),
('BOXYZ', 'Sistema de Sonido para Hogar', 'Sistema de sonido para hogar con múltiples altavoces', 899.99, 800.00, 3, 14, 2, 15),
('BSEBC', 'Auriculares Inalámbricos', 'Auriculares inalámbricos con cancelación de ruido', 249.99, 210.00, 8, 14, 6, 16),
('BSEDF', 'Altavoz Bluetooth', 'Altavoz Bluetooth portátil con sonido de alta calidad', 179.99, 160.00, 10, 14, 6, 16),
('BOEGI', 'Barra de Sonido', 'Barra de sonido con subwoofer inalámbrico', 349.99, 320.00, 6, 14, 2, 16),
('BOEJL', 'Sistema de Sonido para Hogar', 'Sistema de sonido para hogar con múltiples altavoces', 899.99, 850.00, 2, 14, 2, 16),
('BOEMO', 'Auriculares Inalámbricos', 'Auriculares inalámbricos con cancelación de ruido', 249.99, 220.00, 6, 14, 6, 17),
('BSEPR', 'Altavoz Bluetooth', 'Altavoz Bluetooth portátil con sonido de alta calidad', 179.99, 170.00, 8, 14, 6, 17),
('JB123', 'Altavoz Portátil', 'Altavoz portátil resistente al agua con sonido de alta calidad', 99.99, 80.00, 15, 15, 6, 19),
('JB456', 'Auriculares Bluetooth', 'Auriculares Bluetooth inalámbricos con cancelación de ruido', 149.99, 120.00, 10, 15, 6, 19),
('JB789', 'Barra de Sonido', 'Barra de sonido con subwoofer inalámbrico', 249.99, 200.00, 8, 15, 2, 19),
('JBLYZ', 'Altavoz Bluetooth para Automóvil', 'Altavoz Bluetooth para automóvil con manos libres', 79.99, 70.00, 20, 15, 2, 19),
('JBLBC', 'Altavoz Portátil', 'Altavoz portátil resistente al agua con sonido de alta calidad', 99.99, 85.00, 12, 15, 6, 20),
('JBLEF', 'Auriculares Bluetooth', 'Auriculares Bluetooth inalámbricos con cancelación de ruido', 149.99, 130.00, 8, 15, 6, 20),
('JBGHI', 'Barra de Sonido', 'Barra de sonido con subwoofer inalámbrico', 249.99, 220.00, 5, 15, 2, 20),
('JBJKL', 'Altavoz Bluetooth para Automóvil', 'Altavoz Bluetooth para automóvil con manos libres', 79.99, 65.00, 18, 15, 2, 20),
('JBMNO', 'Altavoz Portátil', 'Altavoz portátil resistente al agua con sonido de alta calidad', 99.99, 90.00, 10, 15, 6, 21),
('JBLQR', 'Auriculares Bluetooth', 'Auriculares Bluetooth inalámbricos con cancelación de ruido', 149.99, 140.00, 6, 15, 6, 21),
('IKE23', 'Mesa de Centro', 'Mesa de centro de estilo moderno con superficie de vidrio', 199.99, 150.00, 10, 16, 10, 15),
('IK456', 'Silla de Comedor', 'Silla de comedor ergonómica con respaldo alto', 79.99, 60.00, 15, 16, 10, 15),
('IK789', 'Estantería', 'Estantería de madera con múltiples estantes ajustables', 149.99, 120.00, 8, 16, 9, 15),
('IKAYZ', 'Lámpara de Pie', 'Lámpara de pie de diseño moderno con pantalla ajustable', 129.99, 100.00, 12, 16, 9, 15),
('IKABC', 'Mesa de Centro', 'Mesa de centro de estilo moderno con superficie de vidrio', 199.99, 160.00, 7, 16, 10, 16),
('IKAEF', 'Silla de Comedor', 'Silla de comedor ergonómica con respaldo alto', 79.99, 70.00, 12, 16, 10, 16),
('IEGHI', 'Estantería', 'Estantería de madera con múltiples estantes ajustables', 149.99, 130.00, 10, 16, 9, 17),
('IEJKL', 'Lámpara de Pie', 'Lámpara de pie de diseño moderno con pantalla ajustable', 129.99, 110.00, 9, 16, 9, 17),
('IKMNO', 'Mesa de Centro', 'Mesa de centro de estilo moderno con superficie de vidrio', 199.99, 170.00, 6, 16, 10, 18),
('IKPQR', 'Silla de Comedor', 'Silla de comedor ergonómica con respaldo alto', 79.99, 75.00, 10, 16, 10, 18),
('PAA23', 'Televisor LED', 'Televisor LED de 55 pulgadas con resolución 4K', 899.99, 700.00, 10, 17, 2, 16),
('PAA56', 'Equipo de Sonido', 'Equipo de sonido de alta fidelidad con tecnología inalámbrica', 499.99, 400.00, 8, 17, 6, 16),
('PAA89', 'Cámara Digital', 'Cámara digital de alta resolución con zoom óptico', 299.99, 250.00, 12, 17, 7, 17),
('PAAYZ', 'Horno Microondas', 'Horno microondas con múltiples funciones de cocción', 199.99, 150.00, 15, 17, 12, 17),
('PAAAC', 'Televisor LED', 'Televisor LED de 55 pulgadas con resolución 4K', 899.99, 720.00, 9, 17, 2, 18),
('PADEF', 'Equipo de Sonido', 'Equipo de sonido de alta fidelidad con tecnología inalámbrica', 499.99, 420.00, 7, 17, 6, 18),
('PAAHI', 'Cámara Digital', 'Cámara digital de alta resolución con zoom óptico', 299.99, 270.00, 10, 17, 7, 19),
('PAJKL', 'Horno Microondas', 'Horno microondas con múltiples funciones de cocción', 199.99, 160.00, 12, 17, 12, 19),
('PAMNO', 'Televisor LED', 'Televisor LED de 55 pulgadas con resolución 4K', 899.99, 740.00, 8, 17, 2, 20),
('PAPQR', 'Equipo de Sonido', 'Equipo de sonido de alta fidelidad con tecnología inalámbrica', 499.99, 440.00, 6, 17, 6, 20),
('BS123', 'Taladro Inalámbrico', 'Taladro inalámbrico de alto rendimiento con batería recargable', 149.99, 120.00, 10, 18, 9, 21),
('BOS56', 'Amoladora Angular', 'Amoladora angular potente y duradera para trabajos de corte y lijado', 99.99, 80.00, 8, 18, 9, 22),
('BOS89', 'Sierra Circular', 'Sierra circular con motor potente y ajustes de corte precisos', 179.99, 150.00, 12, 18, 9, 21),
('BOS01', 'Taladro Inalámbrico', 'Taladro inalámbrico de alto rendimiento con batería recargable', 149.99, 130.00, 9, 18, 9, 22),
('BOS02', 'Amoladora Angular', 'Amoladora angular potente y duradera para trabajos de corte y lijado', 99.99, 85.00, 7, 18, 9, 21),
('BOS03', 'Sierra Circular', 'Sierra circular con motor potente y ajustes de corte precisos', 179.99, 160.00, 10, 18, 9, 22),
('BOC04', 'Taladro Inalámbrico', 'Taladro inalámbrico de alto rendimiento con batería recargable', 149.99, 140.00, 8, 18, 9, 21),
('BSC05', 'Amoladora Angular', 'Amoladora angular potente y duradera para trabajos de corte y lijado', 99.99, 90.00, 6, 18, 9, 22),
('BCX06', 'Sierra Circular', 'Sierra circular con motor potente y ajustes de corte precisos', 179.99, 170.00, 9, 18, 9, 21),
('BCX07', 'Taladro Inalámbrico', 'Taladro inalámbrico de alto rendimiento con batería recargable', 149.99, 150.00, 7, 18, 9, 22),
('MI123', 'Taladro Percutor', 'Taladro percutor de alta potencia y durabilidad', 169.99, 140.00, 10, 19, 9, 22),
('MKI45', 'Sierra de Calar', 'Sierra de calar con sistema de corte preciso y fácil manejo', 99.99, 80.00, 8, 19, 9, 21),
('MAI79', 'Atornillador de Impacto', 'Atornillador de impacto con gran potencia y capacidad de trabajo', 129.99, 100.00, 12, 19, 9, 22),
('MAX01', 'Taladro Percutor', 'Taladro percutor de alta potencia y durabilidad', 169.99, 150.00, 9, 19, 9, 21),
('MIX02', 'Sierra de Calar', 'Sierra de calar con sistema de corte preciso y fácil manejo', 99.99, 85.00, 7, 19, 9, 22),
('MKX03', 'Atornillador de Impacto', 'Atornillador de impacto con gran potencia y capacidad de trabajo', 129.99, 110.00, 10, 19, 9, 21),
('MKX04', 'Taladro Percutor', 'Taladro percutor de alta potencia y durabilidad', 169.99, 160.00, 8, 19, 9, 22),
('MIX05', 'Sierra de Calar', 'Sierra de calar con sistema de corte preciso y fácil manejo', 99.99, 90.00, 6, 19, 9, 21),
('MIX06', 'Atornillador de Impacto', 'Atornillador de impacto con gran potencia y capacidad de trabajo', 129.99, 120.00, 9, 19, 9, 22),
('MKX07', 'Taladro Percutor', 'Taladro percutor de alta potencia y durabilidad', 169.99, 170.00, 7, 19, 9, 21),
('MAI08', 'Sierra de Calar', 'Sierra de calar con sistema de corte preciso y fácil manejo', 99.99, 95.00, 5, 19, 9, 22),
('DEA23', 'Taladro Percutor', 'Potente taladro percutor con diseño compacto y duradero', 199.99, 180.00, 10, 20, 9, 22),
('DE456', 'Sierra Circular', 'Sierra circular con capacidad de corte preciso y alta potencia', 149.99, 130.00, 8, 20, 9, 21),
('DE749', 'Atornillador de Impacto', 'Atornillador de impacto con excelente rendimiento y durabilidad', 179.99, 160.00, 12, 20, 9, 22),
('DEW01', 'Taladro Percutor', 'Potente taladro percutor con diseño compacto y duradero', 199.99, 190.00, 9, 20, 9, 21),
('DEX02', 'Sierra Circular', 'Sierra circular con capacidad de corte preciso y alta potencia', 149.99, 140.00, 7, 20, 9, 22),
('DEW03', 'Atornillador de Impacto', 'Atornillador de impacto con excelente rendimiento y durabilidad', 179.99, 170.00, 10, 20, 9, 21),
('DEW04', 'Taladro Percutor', 'Potente taladro percutor con diseño compacto y duradero', 199.99, 200.00, 8, 20, 9, 22),
('DEW05', 'Sierra Circular', 'Sierra circular con capacidad de corte preciso y alta potencia', 149.99, 150.00, 6, 20, 9, 21),
('DEWX6', 'Atornillador de Impacto', 'Atornillador de impacto con excelente rendimiento y durabilidad', 179.99, 180.00, 9, 20, 9, 22),
('DEWX7', 'Taladro Percutor', 'Potente taladro percutor con diseño compacto y duradero', 199.99, 210.00, 7, 20, 9, 21),
('DEWA8', 'Sierra Circular', 'Sierra circular con capacidad de corte preciso y alta potencia', 149.99, 160.00, 5, 20, 9, 22),
('JJ123', 'Parches Adhesivos', 'Parches adhesivos para el cuidado de heridas y cortes', 4.99, 3.50, 50, 20, 20, 20),
('JJ456', 'Gasas Estériles', 'Gasas estériles para curación y limpieza de heridas', 3.99, 2.80, 75, 20, 20, 21),
('JJ789', 'Vendas Elásticas', 'Vendas elásticas para soporte y compresión en lesiones', 6.99, 5.20, 30, 20, 20, 22),
('JJ101', 'Alcohol Antiséptico', 'Alcohol antiséptico para desinfección de la piel', 2.99, 2.00, 100, 20, 20, 20),
('JJ102', 'Esparadrapo Microporoso', 'Esparadrapo microporoso para fijación de vendajes', 3.49, 2.50, 60, 20, 20, 21),
('JJ103', 'Guantes de Vinilo', 'Guantes de vinilo para protección en procedimientos médicos', 5.99, 4.80, 40, 20, 20, 22),
('JJ104', 'Apósitos Estériles', 'Apósitos estériles para protección de heridas y ampollas', 4.49, 3.20, 55, 20, 20, 20),
('JJ105', 'Gasas No Estériles', 'Gasas no estériles para limpieza y curación de heridas', 2.99, 2.00, 80, 20, 20, 21),
('JJ106', 'Apósitos Transparentes', 'Apósitos transparentes para protección y curación de heridas', 3.99, 3.00, 45, 20, 20, 22),
('JJ107', 'Alcohol en Gel', 'Alcohol en gel para desinfección de manos', 4.99, 3.50, 65, 20, 20, 20),
('JJ108', 'Vendas Cohesivas', 'Vendas cohesivas para sujeción de vendajes y compresión', 5.99, 4.80, 35, 20, 20, 21),
('BY123', 'Aspirina', 'Analgésico y antipirético para aliviar dolores y reducir fiebre', 6.99, 4.50, 100, 21, 20, 20),
('BY456', 'Canesten', 'Crema antimicótica para tratar infecciones por hongos', 8.99, 6.80, 50, 21, 20, 21),
('BY789', 'Supradyn', 'Suplemento vitamínico para mejorar la energía y vitalidad', 12.99, 10.20, 30, 21, 20, 22),
('BY101', 'Baycuten', 'Crema corticosteroide para aliviar irritaciones y picazón en la piel', 9.99, 7.50, 60, 21, 20, 20),
('BY102', 'Redoxon', 'Suplemento de vitamina C para reforzar el sistema inmunológico', 7.99, 6.00, 80, 21, 20, 21),
('BY103', 'Bepanthen', 'Crema para el cuidado de la piel y regeneración de tejidos', 10.99, 8.80, 40, 21, 20, 22),
('BY104', 'Canesoral', 'Cápsulas para el tratamiento de infecciones por hongos vaginales', 14.99, 12.20, 25, 21, 20, 20),
('BY105', 'Iberogast', 'Solución para aliviar síntomas de trastornos gastrointestinales', 15.99, 13.00, 35, 21, 20, 21),
('BY106', 'Aspirina Cardio', 'Medicamento para la prevención de enfermedades cardiovasculares', 11.99, 9.50, 55, 21, 20, 22),
('BY107', 'Rennie', 'Tabletas para aliviar síntomas de acidez y ardor estomacal', 8.99, 7.50, 70, 21, 20, 20),
('BY108', 'Bepanthol', 'Loción para hidratar y proteger la piel seca y sensible', 9.99, 8.00, 45, 21, 20, 21),
('KA123', 'Batidora de pie', 'Batidora de pie de alta potencia para mezclar y amasar', 199.99, 150.00, 20, 22, 23, 22),
('KA456', 'Procesador de alimentos', 'Procesador de alimentos versátil para cortar, rallar y triturar', 149.99, 120.00, 15, 22, 23, 21),
('KA789', 'Licuadora', 'Licuadora potente para hacer batidos y bebidas saludables', 99.99, 80.00, 30, 22, 23, 20),
('KA101', 'Cafetera', 'Cafetera programable para preparar café con diferentes intensidades', 79.99, 60.00, 25, 22, 23, 22),
('KA102', 'Tostadora', 'Tostadora con múltiples ajustes para obtener tostadas perfectas', 49.99, 40.00, 40, 22, 23, 21),
('KA103', 'Máquina de hacer pasta', 'Máquina para hacer pasta casera de forma rápida y sencilla', 179.99, 140.00, 10, 22, 23, 20),
('KA104', 'Exprimidor de cítricos', 'Exprimidor de cítricos para obtener jugo fresco de naranjas y limones', 59.99, 50.00, 35, 22, 23, 22),
('KA105', 'Molinillo de café', 'Molinillo de café con múltiples ajustes de molienda', 89.99, 70.00, 18, 22, 23, 21),
('KA106', 'Olla de cocción lenta', 'Olla de cocción lenta para preparar comidas de forma fácil y conveniente', 129.99, 100.00, 12, 22, 23, 20),
('KA107', 'Batidora de mano', 'Batidora de mano con accesorios intercambiables para mayor versatilidad', 69.99, 50.00, 22, 22, 23, 22),
('KA108', 'Máquina de helados', 'Máquina para hacer helados caseros con diferentes sabores', 199.99, 160.00, 8, 22, 23, 21),
('TP123', 'Recipiente de almacenamiento', 'Recipiente hermético para almacenar alimentos de forma segura', 14.99, 10.00, 50, 24, 21, 23),
('TP456', 'Set de recipientes modulares', 'Set de recipientes apilables y modulares para organizar la cocina', 29.99, 20.00, 30, 24, 21, 23),
('TP789', 'Botella de agua reutilizable', 'Botella de agua duradera y reutilizable para mantenerse hidratado', 9.99, 5.00, 60, 24, 21, 22),
('TP101', 'Ensaladera', 'Ensaladera con tapa para mezclar, servir y almacenar ensaladas', 19.99, 15.00, 40, 24, 21, 22),
('TP102', 'Recipiente para salsas', 'Recipiente con compartimentos para transportar y servir salsas', 7.99, 4.00, 70, 24, 21, 22),
('TP103', 'Recipiente para snacks', 'Recipiente con divisores para almacenar y transportar snacks', 12.99, 9.00, 55, 24, 21, 23),
('TP104', 'Molde para cupcakes', 'Molde de silicona para hacer cupcakes de forma fácil y sin pegarse', 16.99, 12.00, 35, 24, 21, 23),
('TP105', 'Colador plegable', 'Colador plegable y resistente para escurrir alimentos', 11.99, 8.00, 45, 24, 21, 22),
('TP106', 'Recipiente para alimentos para bebés', 'Recipiente hermético para almacenar alimentos caseros para bebés', 8.99, 6.00, 65, 24, 21, 23),
('TP107', 'Tazón medidor', 'Tazón medidor con marcas de medición para facilitar la preparación de recetas', 14.99, 10.00, 50, 24, 21, 22),
('TP108', 'Set de utensilios de cocina', 'Set de utensilios de cocina duraderos y funcionales', 24.99, 18.00, 25, 24, 21, 23);

