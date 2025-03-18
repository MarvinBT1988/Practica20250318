-- Creación de la base de datos ControlVentasDB
CREATE DATABASE Practica20250318DB;
GO

-- Usar la base de datos ControlVentasDB
USE Practica20250318DB;
GO


-- Creación de la tabla Productos
CREATE TABLE Productos (
    Id INT PRIMARY KEY IDENTITY(1,1),
    Nombre VARCHAR(255) NOT NULL,
    Descripcion TEXT,
    Precio DECIMAL(10, 2) NOT NULL,
    Stock INT
);

-- Creación de la tabla Ventas
CREATE TABLE Ventas (
    Id INT PRIMARY KEY IDENTITY(1,1),
    Correlativo VARCHAR(255) UNIQUE NOT NULL, -- Correlativo como VARCHAR
    FechaVenta DATETIME DEFAULT GETDATE(),
    Total DECIMAL(10, 2),
    NombreCliente VARCHAR(255)
);

-- Creación de la tabla DetallesVenta
CREATE TABLE DetallesVenta (
    Id INT PRIMARY KEY IDENTITY(1,1),
    VentaID INT FOREIGN KEY REFERENCES Ventas(Id),
    ProductoID INT FOREIGN KEY REFERENCES Productos(Id),
    Cantidad INT NOT NULL,
    PrecioUnitario DECIMAL(10, 2) NOT NULL,
    Subtotal DECIMAL(10, 2)
);