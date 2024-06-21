INSERT INTO paises (nombre) VALUES
('Estados Unidos'),
('México'),
('Canadá'),
('Brasil'),
('Argentina');

INSERT INTO paises (nombre) VALUES
('Estados Unidos'),
('México'),
('Canadá'),
('Brasil'),
('Argentina');

INSERT INTO tipotelefono (nombre) VALUES
('Celular'),
('Casa'),
('Oficina'),
('Público'),
('Otro');

INSERT INTO estados (nombre) VALUES
('En tránsito'),
('Entregado'),
('Pendiente'),
('Retenido'),
('Perdido');

INSERT INTO paquetes (numeroSeguimiento, peso, dimensiones, contenido, valorDeclarado, tipoServicio, estadoid) VALUES
('PKG123456', 2.5, '20x20x30 cm', 'Libros', 50.00, 'Express', 1),
('PKG987654', 1.8, '15x15x25 cm', 'Ropa', 30.00, 'Estándar', 3),
('PKG456789', 5.0, '30x30x40 cm', 'Electrónicos', 200.00, 'Express', 2),
('PKG654321', 3.2, '25x25x35 cm', 'Juguetes', 80.00, 'Estándar', 1),
('PKG234567', 4.7, '35x35x45 cm', 'Artículos de cocina', 150.00, 'Express', 3);

INSERT INTO seguimientos (nombre, paqueteid, estadoid) VALUES
('En bodega', 1, 3),
('En ruta', 2, 1),
('Entregado', 3, 2),
('En revisión', 4, 4),
('En tránsito', 5, 1);

INSERT INTO conductores (id, nombre, conductordoc) VALUES
('C001', 'Juan Pérez', 2),
('C002', 'María González', 1),
('C003', 'Pedro Ramirez', 3),
('C004', 'Luisa Martínez', 1),
('C005', 'Carlos López', 2);

INSERT INTO auxiliares (id, nombre, auxiliardoc) VALUES
('A001', 'Ana Silva', 2),
('A002', 'Roberto Díaz', 1),
('A003', 'Elena Vargas', 3),
('A004', 'Jorge Hernández', 1),
('A005', 'Laura Jiménez', 2);

INSERT INTO clientes (id, nombre, email, direccion, Tipodoc) VALUES
('CLI001', 'José Pérez', 'jose@example.com', 'Av. Principal 123', 1),
('CLI002', 'María Torres', 'maria@example.com', 'Calle Secundaria 456', 2),
('CLI003', 'Juan García', 'juan@example.com', 'Plaza Mayor 789', 3),
('CLI004', 'Ana López', 'ana@example.com', 'Paseo Colón 321', 1),
('CLI005', 'Pedro Sánchez', 'pedro@example.com', 'Avenida Central 654', 2);

INSERT INTO telefonosConductores (id, numero, conductorid, tipotel) VALUES
('TC001', '1234567890', 1, 1),
('TC002', '9876543210', 2, 2),
('TC003', '2345678901', 3, 3),
('TC004', '8765432109', 4, 1),
('TC005', '3456789012', 5, 2);

INSERT INTO telefonosClientes (id, numero, clienteid, tipotel) VALUES
('TCLI001', '5551234567', 1, 1),
('TCLI002', '5559876543', 2, 2),
('TCLI003', '5552345678', 3, 3),
('TCLI004', '5558765432', 4, 1),
('TCLI005', '5553456789', 5, 2);

INSERT INTO ciudades (nombre, paisid) VALUES
('Nueva York', 1),
('Ciudad de México', 2),
('Toronto', 3),
('Río de Janeiro', 4),
('Buenos Aires', 5);

INSERT INTO sucursal (nombre, direccion, ciudadid) VALUES
('Sucursal Principal', 'Av. Central 789', 1),
('Sucursal Norte', 'Calle Principal 456', 2),
('Sucursal Sur', 'Paseo Principal 123', 3),
('Sucursal Este', 'Avenida Principal 987', 4),
('Sucursal Oeste', 'Boulevard Principal 654', 5);

INSERT INTO marcas (nombre) VALUES
('Toyota'),
('Ford'),
('Chevrolet'),
('Honda'),
('Hyundai');

INSERT INTO modelos (nombre, marcaid) VALUES
('Corolla', 1),
('Fiesta', 2),
('Spark', 3),
('Civic', 4),
('Elantra', 5);

INSERT INTO vehiculos (placa, modeloid, capacidad, sucursalid) VALUES
('ABC123', 1, 5000.00, 1),
('DEF456', 2, 4000.00, 2),
('GHI789', 3, 6000.00, 3),
('JKL012', 4, 4500.00, 4),
('MNO345', 5, 5500.00, 5);

INSERT INTO rutas (descripcion, sucursalid) VALUES
('Ruta 1', 1),
('Ruta 2', 2),
('Ruta 3', 3),
('Ruta 4', 4),
('Ruta 5', 5);

INSERT INTO rutaauxiliares (rutaid, auxiliarid) VALUES
(1, 1),
(2, 2),
(3, 3),
(4, 4),
(5, 5);

INSERT INTO envios (clienteid, paqueteid, fechaenvio, destino, rutaid) VALUES
(1, 1, '2024-06-21 10:00:00', 'Ciudad Destino 1', 1),
(2, 2, '2024-06-21 11:00:00', 'Ciudad Destino 2', 2),
(3, 3, '2024-06-21 12:00:00', 'Ciudad Destino 3', 3),
(4, 4, '2024-06-21 13:00:00', 'Ciudad Destino 4', 4),
(5, 5, '2024-06-21 14:00:00', 'Ciudad Destino 5', 5);

INSERT INTO conductoresruta (conductorid, rutaid, vehiculoid, sucursalid) VALUES
(1, 1, 1, 1),
(2, 2, 2, 2),
(3, 3, 3, 3),
(4, 4, 4, 4),
(5, 5, 5, 5);





