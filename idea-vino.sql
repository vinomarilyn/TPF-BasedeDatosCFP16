-- Creación de la tabla Clientes
CREATE TABLE Clientes (
    ClienteID INT auto_increment PRIMARY KEY,
    Nombre VARCHAR(100),
    Apellido VARCHAR(100),
    Email VARCHAR(100),
    Telefono VARCHAR(20),
    Direccion VARCHAR(255)
);

-- Creación de la tabla Paquetes de Viaje
CREATE TABLE PaquetesViaje (
    PaqueteID INT auto_increment PRIMARY KEY,
    NombrePaquete VARCHAR(100),
    Descripcion TEXT,
    Precio DECIMAL(10, 2),
    Destino VARCHAR(100),
    Duracion INT
);

-- Creación de la tabla Agencias
CREATE TABLE Agencias (
    AgenciaID INT auto_increment PRIMARY KEY,
    NombreAgencia VARCHAR(100),
    Direccion VARCHAR(255),
    Telefono VARCHAR(20)
);

-- Creación de la tabla Empleados
CREATE TABLE Empleados (
    EmpleadoID INT auto_increment PRIMARY KEY,
    Nombre VARCHAR(100),
    Apellido VARCHAR(100),
    Cargo VARCHAR(50),
    Email VARCHAR(100),
    Telefono VARCHAR(20),
    AgenciaID INT,
    FOREIGN KEY (AgenciaID) REFERENCES Agencias(AgenciaID)
);


-- Creación de la tabla Ventas
CREATE TABLE Ventas (
    VentaID INT auto_increment PRIMARY KEY,
    ClienteID INT,
    PaqueteID INT,
    EmpleadoID INT,
    FechaVenta DATE,
    MontoTotal DECIMAL(10, 2),
    MetodoPago VARCHAR(50),
    FOREIGN KEY (ClienteID) REFERENCES Clientes(ClienteID),
    FOREIGN KEY (PaqueteID) REFERENCES PaquetesViaje(PaqueteID),
    FOREIGN KEY (EmpleadoID) REFERENCES Empleados(EmpleadoID)
);


-- Creación de la tabla Reservas
CREATE TABLE Reservas (
    ReservaID INT auto_increment PRIMARY KEY,
    ClienteID INT,
    PaqueteID INT,
    FechaReserva DATE,
    EstadoReserva VARCHAR(50),
    FOREIGN KEY (ClienteID) REFERENCES Clientes(ClienteID),
    FOREIGN KEY (PaqueteID) REFERENCES PaquetesViaje(PaqueteID)
);