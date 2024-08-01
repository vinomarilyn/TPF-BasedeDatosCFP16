
-- Inserción de datos en la tabla de clientes
INSERT INTO clientes (Nombre,Apellido , Email,Telefono,Direccion) VALUES
("Juan ","Pérez", "juan.perez@gmail.com", "555-123", "Calle 123"), 
("María" ,"López", "maria.lopez@gmail.com", "555-5678", "Avenida Siempre Viva 742"),
("Carlos"," Sánchez", "carlos.sanchez@gmail.com","555-8765", "Calle Luna 45"),
("Ana" ,"Martínez", "ana.martinez@gmail.com", "555-4321", "Calle Sol 99"),
("Luis","Gómez","luis.gomez@gmail.com", "555-9876", "Calle Estrella 78");

-- Inserción de datos en la tabla de paquetes de viaje
INSERT INTO paquetesviaje (NombrePaquete , Descripcion ,Precio , Destino ,Duracion) VALUES
("Tour Europa", "Un recorrido por las principales ciudades de Europa", 1500.00,"Europa", 15),
("Aventura en la Amazonía", "Explora la selva amazónica y sus maravillas naturales", 1200.00,"Brasil", 10),
("Safari en África","Vive una experiencia única en un safari por África", 2000.00, "África",12),
("Descubre Japón", "Sumérgete en la cultura y modernidad de Japón", 1800.00, "Japón",14),
("Playas del Caribe", "Disfruta de las mejores playas del Caribe", 1300.00,"Caribe", 7);

-- Inserción de datos en la tabla de agencias
INSERT INTO agencias (NombreAgencia, Direccion, Telefono) VALUES
("Agencia Central", "Plaza Principal 1", "2222-0001"),
("Agencia Norte", "Avenida Norte 22", "2222-0002"),
("Agencia Sur", "Calle Sur 33", "2222-0003");
-- Correccion, en el tablero de empleados agrego la columna "Sueldo"
/*ALTER TABLE empleados
ADD Sueldo DECIMAL(10, 2);*/
-- Inserción de datos en la tabla de empleados
INSERT INTO empleados (Nombre, Apellido ,Cargo,Email,Telefono, Sueldo, AgenciaID ) VALUES
("Pedro","González","Vendedor","pedro@gmail.com","22222-2222", 1500.00, 1),
("Laura","Fernández","Gerente","laura@gmail.com","22222-3333" ,2500.00, 3),
("Miguel","Rodríguez","Vendedor","miguel@gmail.com","2222-2332" ,1500.00, 2),
("Lucía","Hernández", "Vendedor","lucia@gmail.com","222-2321", 1500.00, 3),
("Javier","Morales", "Gerente","javier@gmail.com","2222-332",2500.00, 2);

-- Correccion, en el tablero de ventas agrego la columna "Cantidad"
/*ALTER TABLE ventas 
ADD Cantidad INT ;*/
-- Inserción de datos en la tabla de ventas
INSERT INTO ventas (ClienteID ,PaqueteID,EmpleadoID, FechaVenta, Cantidad, MontoTotal,MetodoPago) VALUES
(1, 1,1, "2024-01-15", 2, 3000.00,"mercado pago"),
(2, 2,2,"2024-02-10", 1, 1200.00,"paypal"),
(3, 3,3, "2024-03-05", 4, 8000.00,"visa"),
(4, 4,4, "2024-04-20", 1, 1800.00,"visa"),
(5, 5,5, "2024-05-25", 3, 3900.00,"mastercard");

-- Inserción de datos en la tabla de reservas
INSERT INTO reservas (ClienteID , PaqueteID, FechaReserva, EstadoReserva) VALUES
(1, 1, '2024-01-10', 'Confirmada'),
(2, 2, '2024-02-05', 'Pendiente'),
(3, 3, '2024-03-01', 'Cancelada'),
(4, 4, '2024-04-15', 'Confirmada'),
(5, 5, '2024-05-20', 'Pendiente');

select * from empleados e 