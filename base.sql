

CREATE DATABASE logistica;

USE logistica;

CREATE TABLE paises (
	id INT AUTO_INCREMENT,
	nombre VARCHAR(60),
	CONSTRAINT Pk_id_pais PRIMARY KEY (id)
);


CREATE TABLE tipodocumento (
	id INT AUTO_INCREMENT,
	nombre VARCHAR(30) UNIQUE,
	CONSTRAINT Pk_id_tipodocumento PRIMARY KEY (id)

)
CREATE TABLE tipotelefono (
	id INT AUTO_INCREMENT,
	nombre VARCHAR(30) UNIQUE,
	CONSTRAINT Pk_id_tipotelefono PRIMARY KEY (id)
)



CREATE TABLE estados (
	id INT AUTO_INCREMENT,
	nombre VARCHAR(20),
	CONSTRAINT Pk_id_estados PRIMARY KEY (id)
);


CREATE TABLE paquetes (
	id INT AUTO_INCREMENT,
	numeroSeguimiento VARCHAR(50),
	peso DECIMAL(10,2),
	dimensiones VARCHAR(50),
	contenido TEXT,
	valorDeclarado DECIMAL(10,2),
	tipoServicio VARCHAR(50),
	estadoid INT,
	CONSTRAINT Pk_id_paquetes PRIMARY KEY (id),
	CONSTRAINT Fk_id_estado FOREIGN KEY (id) REFERENCES estados (id)
	
);

CREATE TABLE seguimientos (
	id INT AUTO_INCREMENT,
	nombre VARCHAR(20),
	paqueteid INT,
	estadoid INT,
	CONSTRAINT Pk_id_seguimientos PRIMARY KEY (id),
	CONSTRAINT Fk_id_paquete FOREIGN KEY (paqueteid) REFERENCES paquetes (id),
	CONSTRAINT Fk_id_estadoseg FOREIGN KEY (estadoid) REFERENCES estados (id)
);




CREATE TABLE conductores (
	id VARCHAR(20),
	nombre VARCHAR(30),
	conductordoc INT,
	CONSTRAINT Pk_id_conductores PRIMARY KEY (id),
	CONSTRAINT Fk_id_conductordoc FOREIGN KEY (conductordoc) REFERENCES tipodocumento (id)
);


CREATE TABLE auxiliares (
	id VARCHAR(20),
	nombre VARCHAR(30),
	auxiliardoc INT,
	CONSTRAINT Pk_id_auxiliares PRIMARY KEY (id),
	CONSTRAINT Fk_id_auxiliarid FOREIGN KEY (auxiliardoc) REFERENCES tipodocumento (id)
);

CREATE TABLE clientes (
	id VARCHAR(20),
	nombre VARCHAR(30),
	email VARCHAR(60),
	direccion VARCHAR(100),
	Tipodoc INT,
	CONSTRAINT Pk_id_clientes PRIMARY KEY (id),
	CONSTRAINT Fk_id_Tipodoc FOREIGN KEY (Tipodoc) REFERENCES tipodocumento (id)
);
CREATE TABLE telefonosConductores (
	id VARCHAR(10),
	numero VARCHAR(20),
	conductorid INT(20),
	tipotel INT,
	CONSTRAINT Pk_id_telefonosCon PRIMARY KEY (id),
	CONSTRAINT Fk_id_conductores FOREIGN KEY (conductorid) REFERENCES conductores(id),
	CONSTRAINT Fk_id_tipotelcon FOREIGN KEY (tipotel) REFERENCES tipotelefono(id)
);
CREATE TABLE telefonosClientes (
	id VARCHAR(10),
	numero VARCHAR(20),
	clienteid INT(20),
	tipotel INT,
	CONSTRAINT Pk_id_telefonosCon PRIMARY KEY (id),
	CONSTRAINT Fk_id_clientestel FOREIGN KEY (clienteid) REFERENCES clientes(id),
	CONSTRAINT Fk_id_tipotelcli FOREIGN KEY (tipotel) REFERENCES tipotelefono(id)
);
CREATE TABLE ciudades (
	id INT AUTO_INCREMENT,
	nombre VARCHAR(20),
	paisid INT,
	CONSTRAINT Pk_id_ciudades PRIMARY KEY (id),
	CONSTRAINT Fk_id_pais FOREIGN KEY (paisid) REFERENCES paises(id)
	
);
CREATE TABLE sucursal (
	id INT AUTO_INCREMENT,
	nombre VARCHAR(100),
	direccion VARCHAR(100),
	ciudadid INT,
	CONSTRAINT Pk_id_sucursal PRIMARY KEY (id),
	CONSTRAINT Fk_id_ciudad FOREIGN KEY (ciudadid) REFERENCES ciudades (id)
);


CREATE TABLE marcas (
	id INT AUTO_INCREMENT,
	nombre VARCHAR(20),
	CONSTRAINT Pk_id_marcas PRIMARY KEY(id)
)
CREATE TABLE modelos (
	id INT AUTO_INCREMENT,
	nombre VARCHAR(30),
	marcaid INT,
	CONSTRAINT Pk_id_modelos PRIMARY KEY(id),
	CONSTRAINT Fk_id_marca FOREIGN KEY (marcaid) REFERENCES marcas (id)
)


CREATE TABLE vehiculos (
	id INT AUTO_INCREMENT,
	placa VARCHAR(7),
	modeloid INT,
	capacidad DECIMAL(10,2),
	sucursalid INT,
	CONSTRAINT Pk_id_vehiculos PRIMARY KEY(id),
	CONSTRAINT Fk_id_modelo FOREIGN KEY (modeloid) REFERENCES modelos(id),
	CONSTRAINT Fk_id_sucursalveh FOREIGN KEY (sucursalid) REFERENCES sucursal(id)
	
	
	 
);

CREATE TABLE rutas (
	id INT AUTO_INCREMENT,
	descripcion VARCHAR(200),
	sucursalid INT,
	CONSTRAINT Pk_id_rutas PRIMARY KEY (id),
	CONSTRAINT Fk_id_sucursalrut FOREIGN KEY (sucursalid) REFERENCES sucursal (id)
);

CREATE TABLE rutaauxiliares (
	rutaid INT,
	auxiliarid INT,
	CONSTRAINT Fk_id_rutaaux FOREIGN KEY (rutaid) REFERENCES rutas (id),
	CONSTRAINT Fk_id_rutaaux FOREIGN KEY (auxiliarid) REFERENCES auxiliares (id)
);

CREATE TABLE envios (
	id INT AUTO_INCREMENT,
	clienteid INT,
	paqueteid INT,
	fechaenvio TIMESTAMP,
	destino VARCHAR(200),
	rutaid INT,
	CONSTRAINT Fk_id_rutaenv FOREIGN KEY (rutaid) REFERENCES rutas (id),
	CONSTRAINT Fk_id_clienteenv FOREIGN KEY (clienteid) REFERENCES clientes (id),
	CONSTRAINT Fk_id_paqueteenv FOREIGN KEY (paqueteid) REFERENCES paquetes (id)

);

CREATE TABLE conductoresruta (
	conductorid INT,
	rutaid INT,
	vehiculoid INT,
	sucursalid INT,
	CONSTRAINT Pk_id_conrut PRIMARY KEY (conductorid),
	CONSTRAINT Pk_id_rutcon PRIMARY KEY (rutaid),
	CONSTRAINT Fk_id_consuctorrut FOREIGN KEY (conductorid) REFERENCES conductores (id),
	CONSTRAINT Fk_id_rutacons FOREIGN KEY (rutaid) REFERENCES rutas (id),
	CONSTRAINT Fk_id_vehiculosrut FOREIGN KEY (vehiculoid) REFERENCES vehiculos (id),
	CONSTRAINT Fk_id_sucursalrut FOREIGN KEY (sucursalid) REFERENCES sucursal (id)
);





