CREATE DATABASE scrap;
USE scrap;

-- crear la tabla de marcas
CREATE TABLE marcas (
    id_marca INT IDENTITY(1,1) PRIMARY KEY,
    nombre_marca VARCHAR(255)
);

-- crear la tabla de tipo de producto
CREATE TABLE tipo_producto (
    id_tipo INT IDENTITY(1,1) PRIMARY KEY,
    tipo_producto VARCHAR(255)
);


-- select* from epn;
-- select * from tms;
-- select * from offsuple;
--  select * from marcas;
-- select * from tipo_producto;

INSERT INTO marcas (nombre_marca) VALUES
('Agebiologique'),
('Athom X'),
('Growth Supplements'),
('HTN'),
('HochSport'),
('Ena'),
('Star Nutrition'),
('Gentech'),
('Nutremax'),
('Body Advance'),
('Nutrilab'),
('Hardcore Nutrition'),
('Universal Nutrition'),
('Gold Nutrition'),
('Mervicklab'),
('Ultra tech'),
('Vitatech'),
('Protein Factory'),
('Protein Project'),
('Xtrenght'),
('Xing Yu'),
('Erox'),
('HARDY'),
('Xxl'),
('SPX'),
('Desconocido');

INSERT INTO tipo_producto(tipo_producto) VALUES
('Creatina'),
('Proteina'),
('Vitaminas'),
('Colageno'),
('Glutamina'),
('Quemador De Grasa'),
('Aminoacidos'),
('Cafeina'),
('Zma'),
('Pre entreno'),
('Ganador De Peso'),
('Bebida Isotonica'),
('Gel'),
('Hmb'),
('Ayudines'),
('Desconocido');

-- crear la tabla de marcas
CREATE TABLE marcas (
    id_marca INT IDENTITY(1,1) PRIMARY KEY,
    nombre_marca VARCHAR(255)
);

-- crear la tabla de tipo de producto
CREATE TABLE tipo_producto (
    id_tipo INT IDENTITY(1,1) PRIMARY KEY,
    tipo_producto VARCHAR(255)
);

-- crear la tabla tms con relaciones a marcas y tipo_producto
CREATE TABLE tms (
    id_producto INT IDENTITY(1,1) PRIMARY KEY,
    producto VARCHAR(255),
    id_marca INT,
    id_tipo INT,
    precio VARCHAR(20),
    fecha_scraping DATETIME,
    link_producto NVARCHAR(MAX),
    FOREIGN KEY (id_marca) REFERENCES marcas(id_marca),
    FOREIGN KEY (id_tipo) REFERENCES tipo_producto(id_tipo)
);

-- crear la tabla epn con relaciones a marcas y tipo_producto
CREATE TABLE epn (
    id_producto INT IDENTITY(1,1) PRIMARY KEY,
    producto VARCHAR(255),
    id_marca INT,
    id_tipo INT,
    precio VARCHAR(20),
    fecha_scraping DATETIME,
    link_producto NVARCHAR(MAX),
    FOREIGN KEY (id_marca) REFERENCES marcas(id_marca),
    FOREIGN KEY (id_tipo) REFERENCES tipo_producto(id_tipo)
);

-- crear la tabla offsuple con relaciones a marcas y tipo_producto
CREATE TABLE offsuple (
    id_producto INT IDENTITY(1,1) PRIMARY KEY,
    producto VARCHAR(255),
    id_marca INT,
    id_tipo INT,
    precio VARCHAR(20),
    fecha_scraping DATETIME,
    link_producto NVARCHAR(MAX),
    FOREIGN KEY (id_marca) REFERENCES marcas(id_marca),
    FOREIGN KEY (id_tipo) REFERENCES tipo_producto(id_tipo)
);

select* from tms;