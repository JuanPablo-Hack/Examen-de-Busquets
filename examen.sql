
CREATE DATABASE examen;

USE examen;

CREATE TABLE Ordenes(
    id_orden INT NOT NULL PRIMARY KEY, 
    fecha DATE,
    id_cliente INT NOT NULL,
    CONSTRAINT fk_cliente FOREIGN KEY (id_cliente) REFERENCES Clientes(id_cliente)
    
) ENGINE=InnoDB;

CREATE TABLE Clientes
(
    id_cliente INT NOT NULL PRIMARY KEY, 
    nom_cliente VARCHAR(20) NOT NULL,
    estado VARCHAR(50) NOT NULL
) ENGINE=InnoDB;

CREATE TABLE Articulos
(
    num_art INT NOT NULL PRIMARY KEY,
    nom_art VARCHAR(50) NOT NULL,
    precio FLOAT
    CONSTRAINT fk_articulo FOREIGN KEY (num_art) REFERENCES Articulos_ordenes(num_art)
   
) ENGINE=InnoDB;


CREATE TABLE Articulos_ordenes
(
    id_orden INT NOT NULL PRIMARY KEY,
    num_art INT NOT NULL ,
    cant INT,
    CONSTRAINT fk_orden FOREIGN KEY (id_orden) REFERENCES Ordenes(id_orden)
    
)ENGINE=InnoDB;