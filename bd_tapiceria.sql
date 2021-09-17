/*Utilizando la ultima versión del proyecto que están desarrollando 
crear la base de datos con las tablas necesarias en sql.*/
 
CREATE DATABASE bd_tapiceria;

/*Creación de las tablas necesarias*/
CREATE TABLE tapiceria (
	id_tapiceria INT NOT NULL AUTO_INCREMENT ,
	nombre VARCHAR (20) NOT NULL,
	telefono VARCHAR (20) ,
	direccion VARCHAR (50) NOT NULL ,
	logo_tapiceria VARCHAR (100) NOT NULL ,
	fec_insercion TIMESTAMP NOT NULL,
	fec_modificacion TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
	usuario INT NOT NULL,
	estado CHAR(1) NOT NULL,

	PRIMARY KEY (id_tapiceria)
)ENGINE=INNODB;


CREATE TABLE empleados (
	id_empleado INT NOT NULL AUTO_INCREMENT ,
	id_tapiceria INT NOT NULL ,	
	ci VARCHAR (30) ,
	nombres VARCHAR (20) NOT NULL,
	apellidos VARCHAR (30) NOT NULL,
	fecha_inicio  DATE NOT NULL,
	fecha_fin  DATE ,
	fec_insercion TIMESTAMP NOT NULL,
	fec_modificacion TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
	usuario INT NOT NULL,
	estado CHAR(1) NOT NULL,
	PRIMARY KEY (id_empleado)
)ENGINE=INNODB;


CREATE TABLE tapizados (
	id_tapizado INT NOT NULL AUTO_INCREMENT ,
	id_tapiceria INT NOT NULL ,
	monto_estimado FLOAT (11),
	objeto VARCHAR (80) NOT NULL ,
	tipo_tapizado VARCHAR (50) NOT NULL,
	color VARCHAR (30) NOT NULL,
	disenio VARCHAR (50) NOT NULL,
	descripcion VARCHAR (150) NOT NULL,
	fec_insercion TIMESTAMP NOT NULL,
	fec_modificacion TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
	usuario INT NOT NULL,
	estado CHAR(1) NOT NULL,
	PRIMARY KEY (id_tapizado)
)ENGINE=INNODB;


CREATE TABLE clientes (
	id_cliente INT NOT NULL AUTO_INCREMENT ,
	id_tapiceria INT NOT NULL ,
	ci VARCHAR (30) ,
	nombre VARCHAR (20) NOT NULL,
	apellido VARCHAR (30) NOT NULL,
	telefono VARCHAR (20) ,
	direccion VARCHAR (50) NOT NULL ,
	fec_insercion TIMESTAMP NOT NULL,
	fec_modificacion TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
	usuario INT NOT NULL,
	estado CHAR(1) NOT NULL,
	PRIMARY KEY (id_cliente)
)ENGINE=INNODB;


CREATE TABLE pedidos (
	id_pedido INT NOT NULL AUTO_INCREMENT ,
	id_cliente INT NOT NULL,
	fecha_entrega  DATE NOT NULL,
	fecha_pedido  DATE NOT NULL,
	monto_total_pedido FLOAT (11) NOT NULL,
	fec_insercion TIMESTAMP NOT NULL,
	fec_modificacion TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
	usuario INT NOT NULL,
	estado CHAR(1) NOT NULL,
	PRIMARY KEY (id_pedido)
)ENGINE=INNODB;


CREATE TABLE detalle_pedidos (
	id_detalle_pedido INT NOT NULL AUTO_INCREMENT ,
	id_pedido INT NOT NULL,
	cantidad INT NOT NULL,
	descripcion VARCHAR (100) NOT NULL,
	monto_parcial FLOAT (11) NOT NULL ,
	fec_insercion TIMESTAMP NOT NULL,
	fec_modificacion TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
	usuario INT NOT NULL,
	estado CHAR(1) NOT NULL,
	PRIMARY KEY (id_detalle_pedido)
)ENGINE=INNODB;



CREATE TABLE cotizaciones (
	id_cotizacion INT NOT NULL AUTO_INCREMENT ,
	id_cliente INT NOT NULL,
	monto_total_cotizacion FLOAT (11) NOT NULL ,
	fecha_cotizacion  DATE NOT NULL ,
	fec_insercion TIMESTAMP NOT NULL,
	fec_modificacion TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
	usuario INT NOT NULL,
	estado CHAR(1) NOT NULL,
	PRIMARY KEY (id_cotizacion)
)ENGINE=INNODB;



CREATE TABLE detalles_cotizaciones (
	id_detalle_cotizacion INT NOT NULL AUTO_INCREMENT ,
	id_cotizacion INT NOT NULL,
	cantidad INT NOT NULL,
	monto_parcial FLOAT (11) NOT NULL ,
	descripcion VARCHAR (100) NOT NULL,
	fec_insercion TIMESTAMP NOT NULL,
	fec_modificacion TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
	usuario INT NOT NULL,
	estado CHAR(1) NOT NULL,
	PRIMARY KEY (id_detalle_cotizacion)
)ENGINE=INNODB;


CREATE TABLE proveedores (
	id_proveedor INT NOT NULL AUTO_INCREMENT ,
	nombre VARCHAR (20) NOT NULL,
	direccion VARCHAR (30) NOT NULL ,
	fec_insercion TIMESTAMP NOT NULL,
	fec_modificacion TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
	usuario INT NOT NULL,
	estado CHAR(1) NOT NULL,
	PRIMARY KEY (id_proveedor)
)ENGINE=INNODB;


CREATE TABLE productos_proveedores (
	id_producto_proveedor INT NOT NULL AUTO_INCREMENT ,
    id_producto INT NOT NULL ,
	id_proveedor INT NOT NULL ,
	precio_producto FLOAT (11) NOT NULL ,
	detalle VARCHAR (30) NOT NULL,
	fec_insercion TIMESTAMP NOT NULL,
	fec_modificacion TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
	usuario INT NOT NULL,
	estado CHAR(1) NOT NULL,
	PRIMARY KEY (id_producto_proveedor)
)ENGINE=INNODB;


CREATE TABLE productos (
	id_producto INT NOT NULL AUTO_INCREMENT ,
	nombre VARCHAR (20) NOT NULL,
	marca VARCHAR (20) NOT NULL ,
	fec_insercion TIMESTAMP NOT NULL,
	fec_modificacion TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
	usuario INT NOT NULL,
	estado CHAR(1) NOT NULL,
	PRIMARY KEY (id_producto)
)ENGINE=INNODB;



/*Utilizando la base de datos de sus proyectos insertar 10 registros por tabla excepto en la tabla principal*/

INSERT INTO tapiceria VALUES(1,'Tapiceria Mary','73453221','B/Morros Blancos','logo.jpg',now(),now(),1,1);

INSERT INTO empleados VALUES(1,1,'1871134','Mery','Moreira','2010-05-14','2020-02-27',now(),now(),1,1);
INSERT INTO empleados VALUES(2,1,'7180233','Isaac','Illanes','2010-05-14','2015-11-22',now(),now(),1,1);
INSERT INTO empleados VALUES(3,1,'1609631','Antonio','Quispe','2015-07-21','2019-07-20',now(),now(),1,1);
INSERT INTO empleados VALUES(4,1,'7180233','A','B','2010-05-14','2015-11-22',now(),now(),1,1);
INSERT INTO empleados VALUES(5,1,'1871134','C','D','2010-05-14','2020-02-27',now(),now(),1,1);
INSERT INTO empleados VALUES(6,1,'1609631','E','F','2015-07-21','2019-07-20',now(),now(),1,1);
INSERT INTO empleados VALUES(7,1,'7180233','A','B','2010-05-14','2015-11-22',now(),now(),1,1);
INSERT INTO empleados VALUES(8,1,'1871134','C','D','2010-05-14','2020-02-27',now(),now(),1,1);
INSERT INTO empleados VALUES(9,1,'1609631','E','F','2015-07-21','2019-07-20',now(),now(),1,1);
INSERT INTO empleados VALUES(10,1,'7180233','A','B','2010-05-14','2015-11-22',now(),now(),1,1);
INSERT INTO empleados VALUES(11,1,'1871134','C','D','2010-05-14','2020-02-27',now(),now(),1,1);
INSERT INTO empleados VALUES(12,1,'1609631','E','F','2015-07-21','2019-07-20',now(),now(),1,1);


INSERT INTO tapizados VALUES(1,1,'2800','juego de living','tela tapiz','marfil','abanico','3 piezas;individual,doble y triple',now(),now(),1,1);	
INSERT INTO tapizados VALUES(2,1,'180','silla','cuerina comun','cafe','cuadrado','silla torneada',now(),now(),1,1);	
INSERT INTO tapizados VALUES(3,1,'1000','respaldo de cama','cuero volteado','blanco','capitoneado','2x1,40mts.',now(),now(),1,1);		
INSERT INTO tapizados VALUES(4,1,'400','asiento de movilidad','tapiz y cuerina','negro y rojo','butaca','deportivo',now(),now(),1,1);	
INSERT INTO tapizados VALUES(5,1,'600','colocado de piso','piso engomado','negro','de toyota','1,80x1,40mts',now(),now(),1,1);
INSERT INTO tapizados VALUES(6,1,'80','taburete','tapiz','cafe estampado','redondo','cilindro 0,50cm',now(),now(),1,1);
INSERT INTO tapizados VALUES(7,1,'120','laterales de puerta','cuerina de primera','plomo oscuro','de ipsum','0,60x0,50cm',now(),now(),1,1);
INSERT INTO tapizados VALUES(8,1,'600','techo de movilidad','cuerina punteada','marfil','recta Toyota ','2,50x1,50mts',now(),now(),1,1);
INSERT INTO tapizados VALUES(9,1,'15','piezas para maquinaria de gimnacio','cuerina comun','negro y amarillo','rectangular y en "U"','0,25x0,30cm',now(),now(),1,1);
INSERT INTO tapizados VALUES(10,1,'200','tablero de movilidad','cuerina de primera','cafe oscuro','recta para micro ','1,80x0,30mts',now(),now(),1,1);
INSERT INTO tapizados VALUES(11,1,'2132','ghs','cuerina de primera','cafe oscuro','recta para micro ','1,80x0,30mts',now(),now(),1,1);
INSERT INTO tapizados VALUES(12,1,'21','dryhgh','cuerina de primera','cafe oscuro','recta para micro ','1,80x0,30mts',now(),now(),1,1);
INSERT INTO tapizados VALUES(13,1,'4321','trergh','cuerina de primera','cafe oscuro','recta para micro ','1,80x0,30mts',now(),now(),1,1);
INSERT INTO tapizados VALUES(14,1,'3454','bghfd','cuerina de primera','hjg','recta para micro ','1,80x0,30mts',now(),now(),1,1);
INSERT INTO tapizados VALUES(15,1,'154','rt7ert','cuerina de primera','ghj','recta para micro ','1,80x0,30mts',now(),now(),1,1);
INSERT INTO tapizados VALUES(16,1,'454','uwrthf','cuerina de primera','fgjhg','recta para micro ','1,80x0,30mts',now(),now(),1,1);
INSERT INTO tapizados VALUES(17,1,'451','ertwey','cuerina de primera','tyu','recta para micro ','1,80x0,30mts',now(),now(),1,1);
INSERT INTO tapizados VALUES(18,1,'75','ryerghdh','cuerina de primera','tyuyu','recta para micro ','1,80x0,30mts',now(),now(),1,1);
INSERT INTO tapizados VALUES(19,1,'321','dhsdfh','cuerina comun','tyufg','rectangular y en "U"','0,25x0,30cm',now(),now(),1,1);
INSERT INTO tapizados VALUES(20,1,'445','hbxcvfgh','cuerina comun','negro y amarillo','rectangular y en "U"','0,25x0,30cm',now(),now(),1,1);
INSERT INTO tapizados VALUES(21,1,'645','rtyhfgh','cuerina comun','negro y amarillo','rectangular y en "U"','0,25x0,30cm',now(),now(),1,1);
INSERT INTO tapizados VALUES(22,1,'678','fghdfuytu','cuerina comun','ytujtgyuj','rectangular y en "U"','0,25x0,30cm',now(),now(),1,1);
INSERT INTO tapizados VALUES(23,1,'1220','drtufghj','cuerina comun','djfgj','rectangular y en "U"','0,25x0,30cm',now(),now(),1,1);
INSERT INTO tapizados VALUES(24,1,'74','jfgjd','cuerina comun','yrtyh','rectangular y en "U"','0,25x0,30cm',now(),now(),1,1);
INSERT INTO tapizados VALUES(25,1,'175','yjtyjghj','cuerina comun','hjghj','rectangular y en "U"','0,25x0,30cm',now(),now(),1,1);
INSERT INTO tapizados VALUES(26,1,'1213','jdfgjdjuty','cuerina comun',' amarillo','rectangular y en "U"','0,25x0,30cm',now(),now(),1,1);

INSERT INTO clientes VALUES(1,1,'7182450','Bernardo ','Orosco','46638624','B. Morros Blancos',now(),now(),2,1);
INSERT INTO clientes VALUES(2,2,'1894531','Antonio','Rios','46656712','B.Villa Fatima',now(),now(),2,1);
INSERT INTO clientes VALUES(3,3,'7125462 ','Carlos','Rodriguez','46620818','B. Jesus de Nazareth',now(),now(),2,1);
INSERT INTO clientes VALUES(4,4,'1874563','Marina','Martinez','46641718','B.Luis Espinal',now(),now(),2,1);
INSERT INTO clientes VALUES(5,5,'1823541','Jhonny','Chavez','46638452','B.Aeropuerto',now(),now(),2,1);
INSERT INTO clientes VALUES(6,6,'1086732','Julian','Giron','46672425','B.Artesanal',now(),now(),2,1);
INSERT INTO clientes VALUES(7,7,'1874520','Daniel ','Jurado','46635641','B.San Jorge',now(),now(),2,1);
INSERT INTO clientes VALUES(8,8,'1863245','Nadia','Flores','46632289','B.Simon Bolivar',now(),now(),2,1);
INSERT INTO clientes VALUES(9,9,'1821693','Micaela','Robles','71845713','B.Simon Bolivar',now(),now(),2,1);
INSERT INTO clientes VALUES(10,10,'7120356','Ricardo','Farfan','60277841','B.San Salvador',now(),now(),2,1);
INSERT INTO clientes VALUES(11,11,'10000','AAA','BB','60277841','B.San Salvador',now(),now(),1,1);

INSERT INTO pedidos VALUES(1,1,'2019-06-15','2019-06-20','2800',now(),now(),2,1);			
INSERT INTO pedidos VALUES(2,2,'2019-06-26','2019-07-01','180',now(),now(),2,1);		 
INSERT INTO pedidos VALUES(3,3,'2019-07-30','2019-07-21','1000',now(),now(),1,1);		
INSERT INTO pedidos VALUES(4,4,'2019-08-28','2019-08-03','400',now(),now(),1,1);		
INSERT INTO pedidos VALUES(5,5,'2019-08-14','2019-09-02','600',now(),now(),1,1);		
INSERT INTO pedidos VALUES(6,6,'2019-09-30','2019-08-15','80',now(),now(),1,1);		
INSERT INTO pedidos VALUES(7,7,'2019-11-17','2019-10-03','360',now(),now(),2,1);	
INSERT INTO pedidos VALUES(8,8,'2019-07-12','2019-11-23','600',now(),now(),2,1);	
INSERT INTO pedidos VALUES(9,9,'2019-11-25','2019-11-29','105',now(),now(),2,1);		
INSERT INTO pedidos VALUES(10,10,'2019-11-29','2019-11-29','200',now(),now(),2,1);	

INSERT INTO detalle_pedidos VALUES(1,1,'1','3 piezas;individual,doble y triple','2800',now(),now(),1,1);	
INSERT INTO detalle_pedidos VALUES(2,2,'1','silla torneada','180',now(),now(),1,1);
INSERT INTO detalle_pedidos VALUES(3,3,'1','2x1,40mts.','1000',now(),now(),1,1);		
INSERT INTO detalle_pedidos VALUES(4,4,'1','deportivo','400',now(),now(),1,1);		
INSERT INTO detalle_pedidos VALUES(5,5,'1','1,80x1,40mts','600',now(),now(),1,1);		
INSERT INTO detalle_pedidos VALUES(6,6,'1','cilindro 0,50cm','80',now(),now(),1,1);		
INSERT INTO detalle_pedidos VALUES(7,7,'3','0,60x0,50cm','120',now(),now(),1,1);
INSERT INTO detalle_pedidos VALUES(8,8,'1','2,50x1,50mts','600',now(),now(),1,1);		
INSERT INTO detalle_pedidos VALUES(9,9,'7','0,25x0,30cm','105',now(),now(),1,1);		
INSERT INTO detalle_pedidos VALUES(10,10,'1','1,80x0,30mts','200',now(),now(),1,1);	

INSERT INTO cotizaciones VALUES(1,1,'2800','2019-06-13',now(),now(),2,1);
INSERT INTO cotizaciones VALUES(2,2,'180','2019-06-22',now(),now(),2,1);
INSERT INTO cotizaciones VALUES(3,3,'1000','2019-07-10',now(),now(),2,1);	
INSERT INTO cotizaciones VALUES(4,4,'400','2019-07-27',now(),now(),2,1);	
INSERT INTO cotizaciones VALUES(5,5,'600','2019-08-24',now(),now(),2,1);	
INSERT INTO cotizaciones VALUES(6,6,'80','2019-08-14',now(),now(),2,1);	
INSERT INTO cotizaciones VALUES(7,7,'120','2019-09-30',now(),now(),2,1);	
INSERT INTO cotizaciones VALUES(8,8,'600','2019-11-16',now(),now(),2,1);	
INSERT INTO cotizaciones VALUES(9,9,'15','2019-11-24',now(),now(),2,1);	
INSERT INTO cotizaciones VALUES(10,10,'200','2019-11-29',now(),now(),2,1);	

INSERT INTO detalles_cotizaciones VALUES(1,1,'1','2800','3 piezas;individual,doble y triple',now(),now(),2,1);	
INSERT INTO detalles_cotizaciones VALUES(2,2,'1','180','silla torneada',now(),now(),2,1);
INSERT INTO detalles_cotizaciones VALUES(3,3,'1','1000','2x1,40mts.',now(),now(),2,1);		
INSERT INTO detalles_cotizaciones VALUES(4,4,'1','400','deportivo',now(),now(),2,1);		
INSERT INTO detalles_cotizaciones VALUES(5,5,'1','600','1,80x1,40mts',now(),now(),2,1);		
INSERT INTO detalles_cotizaciones VALUES(6,6,'1','80','cilindro 0,50cm',now(),now(),2,1);		
INSERT INTO detalles_cotizaciones VALUES(7,7,'3','120','0,60x0,50cm',now(),now(),2,1);
INSERT INTO detalles_cotizaciones VALUES(8,8,'1','600','2,50x1,50mts',now(),now(),2,1);		
INSERT INTO detalles_cotizaciones VALUES(9,9,'7','105','0,25x0,30cm',now(),now(),2,1);		
INSERT INTO detalles_cotizaciones VALUES(10,10,'1','200','1,80x0,30mts',now(),now(),2,1);

INSERT INTO proveedores VALUES(1,'Corigoma','B/El Molino',now(),now(),1,1);			
INSERT INTO proveedores VALUES(2,'Jerez','B/Simon Bolivar',now(),now(),1,1);	
INSERT INTO proveedores VALUES(3,'Sonia','B/Cuarto Centenario',now(),now(),1,1);			
INSERT INTO proveedores VALUES(4,'Martha','B/La Loma',now(),now(),2,1);		
INSERT INTO proveedores VALUES(5,'San Juan','B/La Torre',now(),now(),2,1);		
INSERT INTO proveedores VALUES(6,'Carolina','San Geronimo',now(),now(),2,1);		
INSERT INTO proveedores VALUES(7,'M&M','B/Villa Avaroa',now(),now(),2,1);		
INSERT INTO proveedores VALUES(8,'Bernardo','15 de Abril y Campero',now(),now(),2,1);		
INSERT INTO proveedores VALUES(9,'Lopez','Panamericano',now(),now(),2,1);	
INSERT INTO proveedores VALUES(10,'Orlando','Zona Campesino',now(),now(),1,1);
INSERT INTO proveedores VALUES(11,'AAA','BBB',now(),now(),1,1);
INSERT INTO proveedores VALUES(12,'CC','DD',now(),now(),1,1);

INSERT INTO productos_proveedores VALUES(1,1,1,'55','x mts',now(),now(),2,1);		
INSERT INTO productos_proveedores VALUES(2,2,2,'45','x mts',now(),now(),1,1);	
INSERT INTO productos_proveedores VALUES(3,3,3,'60','x caja',now(),now(),2,1);		
INSERT INTO productos_proveedores VALUES(4,4,4,'35','unidad',now(),now(),1,1);		
INSERT INTO productos_proveedores VALUES(5,5,5,'65','x mts',now(),now(),1,1);		
INSERT INTO productos_proveedores VALUES(6,6,6,'80','lata',now(),now(),2,1);		
INSERT INTO productos_proveedores VALUES(7,7,7,'55','x mts',now(),now(),1,1);		
INSERT INTO productos_proveedores VALUES(8,8,8,'65','x mts',now(),now(),1,1);		
INSERT INTO productos_proveedores VALUES(9,9,9,'20','x mts',now(),now(),1,1);		
INSERT INTO productos_proveedores VALUES(10,10,10,'40','x mts',now(),now(),1,1);


INSERT INTO productos VALUES(1,'cuerina volteada','Brasilero',now(),now(),2,1);		
INSERT INTO productos VALUES(2,'tapiz','Americano',now(),now(),1,1);	
INSERT INTO productos VALUES(3,'grampas','Americano',now(),now(),2,1);		
INSERT INTO productos VALUES(4,'hilo tapiz','Americano',now(),now(),1,1);		
INSERT INTO productos VALUES(5,'tela tapiz','Brasilero',now(),now(),1,1);		
INSERT INTO productos VALUES(6,'clefa','Brasilero',now(),now(),2,1);		
INSERT INTO productos VALUES(7,'pisos','Americano',now(),now(),1,1);		
INSERT INTO productos VALUES(8,'pisos engomados','Brasilero',now(),now(),1,1);		
INSERT INTO productos VALUES(9,'tela forro galleta','Brasilero',now(),now(),1,1);		
INSERT INTO productos VALUES(10,'cuerinas ','Americano',now(),now(),2,1);
INSERT INTO productos VALUES(11,'cuerina volteada','Brasilero',now(),now(),2,1);		
INSERT INTO productos VALUES(12,'tapiz','Americano',now(),now(),1,1);	
INSERT INTO productos VALUES(13,'grampas','Americano',now(),now(),2,1);		
INSERT INTO productos VALUES(14,'hilo tapiz','Americano',now(),now(),1,1);		
INSERT INTO productos VALUES(15,'tela tapiz','Brasilero',now(),now(),1,1);		
INSERT INTO productos VALUES(16,'clefa','Brasilero',now(),now(),2,1);		
INSERT INTO productos VALUES(17,'pisos','Americano',now(),now(),1,1);		
INSERT INTO productos VALUES(18,'pisos engomados','Brasilero',now(),now(),1,1);		
INSERT INTO productos VALUES(19,'tela forro galleta','Brasilero',now(),now(),1,1);		
INSERT INTO productos VALUES(20,'cuerinas ','Americano',now(),now(),2,1);




/****************TABLAS DE SEGURIDAD********************/


CREATE TABLE _personas(
id_persona INT NOT NULL AUTO_INCREMENT,
id_tapiceria INT NOT NULL,
ci VARCHAR(15) NOT NULL,
nombres VARCHAR(20) NOT NULL,
ap VARCHAR(30),
am VARCHAR(30),
telefono VARCHAR(30),
direccion VARCHAR(30),
genero CHAR(1) NOT NULL,
fec_insercion TIMESTAMP NOT NULL,
fec_modificacion TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
usuario INT NOT NULL,
estado CHAR(1) NOT NULL,
PRIMARY KEY(id_persona),
FOREIGN KEY(id_tapiceria)REFERENCES tapiceria (id_tapiceria)
)ENGINE=INNODB;


CREATE TABLE _usuarios(
id_usuario INT NOT NULL AUTO_INCREMENT,
id_persona INT NOT NULL,
usuario_1 VARCHAR(30) NOT NULL,
clave VARCHAR(80) NOT NULL,
fec_insercion TIMESTAMP NOT NULL,
fec_modificacion TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
usuario INT NOT NULL,
estado CHAR(1) NOT NULL,
PRIMARY KEY(id_usuario),
FOREIGN KEY(id_persona)REFERENCES _personas (id_persona)
)ENGINE=INNODB;


CREATE TABLE _roles(
id_rol INT NOT NULL AUTO_INCREMENT,
rol VARCHAR(30) NOT NULL,
fec_insercion TIMESTAMP NOT NULL,
fec_modificacion TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
usuario INT NOT NULL,
estado CHAR(1) NOT NULL,
PRIMARY KEY(id_rol)
)ENGINE=INNODB;



CREATE TABLE _usuarios_roles(
id_usuario_rol INT NOT NULL AUTO_INCREMENT,
id_usuario INT NOT NULL,
id_rol INT NOT NULL,
fec_insercion TIMESTAMP NOT NULL,
fec_modificacion TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
usuario INT NOT NULL,
estado CHAR(1) NOT NULL,
PRIMARY KEY(id_usuario_rol),
FOREIGN KEY(id_usuario)REFERENCES _usuarios(id_usuario),
FOREIGN KEY(id_rol)REFERENCES _roles(id_rol)
)ENGINE=INNODB;



CREATE TABLE _grupos(
id_grupo INT NOT NULL AUTO_INCREMENT,
grupo VARCHAR(30) NOT NULL,
fec_insercion TIMESTAMP NOT NULL,
fec_modificacion TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
usuario INT NOT NULL,
estado CHAR(1) NOT NULL,
PRIMARY KEY(id_grupo)
)ENGINE=INNODB;


CREATE TABLE _opciones(
id_opcion INT NOT NULL AUTO_INCREMENT,
id_grupo INT NOT NULL,
opcion VARCHAR(30) NOT NULL,
contenido VARCHAR(100) NOT NULL,
orden INT NOT NULL,
fec_insercion TIMESTAMP NOT NULL,
fec_modificacion TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
usuario INT NOT NULL,
estado CHAR(1) NOT NULL,
PRIMARY KEY(id_opcion),
FOREIGN KEY(id_grupo)REFERENCES _grupos (id_grupo)
)ENGINE=INNODB;




/*Tabla para controlar que rol tiene acceso a que opcion*/
CREATE TABLE _accesos(
	id_acceso INT NOT NULL AUTO_INCREMENT,
	id_opcion INT NOT NULL,
	id_rol INT NOT NULL,
	fec_insercion TIMESTAMP NOT NULL,
	fec_modificacion TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
	usuario INT NOT NULL,
	estado CHAR(1) NOT NULL,
	PRIMARY KEY(id_acceso),
	FOREIGN KEY(id_opcion)REFERENCES _opciones(id_opcion),
	FOREIGN KEY(id_rol)REFERENCES _roles(id_rol)
)ENGINE=INNODB;


INSERT INTO _personas VALUES(1, 1, '7180230', 'MERY ANGELA', 'MOREIRA', 'ILLANES', '77172892', 'B. MORROS BLANCOS','F', now(), now(), 1, 1);
INSERT INTO _personas VALUES(2, 1, '5281023', 'MIGUEL ANGEL', 'CHAVEZ', 'MURILLO', '718542103', 'B. SAN SALVADOR','M', now(), now(), 1, 1);
INSERT INTO _personas VALUES(3, 1, '9651230', 'ROSIO', 'LLANOS', 'IRAHOLA', '63201547', 'B. ARANJUEZ','F', now(), now(), 1, 1);
INSERT INTO _personas VALUES(4, 1, '4571256', 'MARIA ELENA', 'PEREZ', 'FRANCO', '75412308', 'B. CATEDRAL','F', now(), now(), 1, 1);
INSERT INTO _personas VALUES(5, 1, '1896452', 'TANIA', 'ARGANDOÑA', 'TORREZ', '77412562', 'B. SAN BERNARDO','F', now(), now(), 1, 1);
INSERT INTO _personas VALUES(6, 1, '9641230', 'JORGE', 'TERRAZAS', 'OROSCO', '71854210', 'B. SAN MARTIN','M', now(), now(), 1, 1);
INSERT INTO _personas VALUES(7, 1, '4125879', 'FRANCISCO JESUS', 'LOMA', 'FIGUEROA', '72598412', 'B. VILLA FATIMA','M', now(), now(), 1, 1);
INSERT INTO _personas VALUES(8, 1, '2351203', 'LUCIO', 'MENDOZA', 'MONTERO', '79235468', 'B. SIMON BOLIVAR','M', now(), now(), 1, 1);
INSERT INTO _personas VALUES(9, 1, '1023541', 'JULIANA', 'BARRIOS', 'CAMACHO', '71254796', 'B. TORRECILLAS','F', now(), now(), 1, 1);
INSERT INTO _personas VALUES(10, 1, '7841256', 'ESMERALDA', 'MONTOYA', 'VEGA', '602314578', 'B. 3 DE MAYO','F', now(), now(), 1, 1);
INSERT INTO _personas VALUES(11, 1, '1024782', 'MARIA JESUS', 'RAMIRES', 'BALDIVIZO', '71254698', 'B. SAN PEDRO','F', now(), now(), 1, 1);
INSERT INTO _personas VALUES(12, 1, '1871134', 'MARISOL', 'ILLANES', 'ANTEZANA', '73453221', 'BSDF','F', now(), now(), 1, 1);
INSERT INTO _personas VALUES(13, 1, '1852134', 'ANA', 'MOREIRA', 'ILLANES', '76926579', 'RGE','F', now(), now(), 1, 1);
INSERT INTO _personas VALUES(14, 1, '1532147', 'ANGELA', 'MOREIRA', 'ILLANES', '77172892', 'MORROS BLANCOS','F', now(), now(), 1, 1);

INSERT INTO _usuarios VALUES(1, 1, 'admin', '$2y$10$HxB1sZ3p/ok/Aa3cyATcsuGZoUrZzW5.TtmaiYh61S38axFgKVmXK', now(), now(),1, 1);
INSERT INTO _usuarios VALUES(2, 2, 'mary', '$2y$10$c2FX4TE1u7.kCwoFu06l5O6m.0pbpEgLc2O0Cbkowm0C/1KO7YE0C', now(), now(),1, 1);
INSERT INTO _usuarios VALUES(3, 3, 'anita', '$2y$10$JC31I3CZLZqmvZ1ioKuMS.DbJHFDzcXxwfgJPMr7U828EN6jKz5rK', now(), now(),1, 1);
INSERT INTO _usuarios VALUES(4, 4, 'angy', '$2y$10$NS2S56Xidl0S0d7Y0dTfvOJtAtdHMB3idBAWGIyHJEvfLVQTmWyvO', now(), now(),1, 1);


INSERT INTO _roles VALUES(1, 'ADMINISTRADOR', now(), now(), 1, 1);
INSERT INTO _roles VALUES(2, 'USUARIO PRUEBA 1', now(), now(), 1, 1);
INSERT INTO _roles VALUES(3, 'USUARIO PRUEBA 2', now(), now(), 1, 1);
INSERT INTO _roles VALUES(4, 'USUARIO PRUEBA 3', now(), now(), 1, 1);

INSERT INTO _usuarios_roles VALUES(1, 1, 1, now(), now(), 1, 1);
INSERT INTO _usuarios_roles VALUES(2, 2, 2, now(), now(), 1, 1);
INSERT INTO _usuarios_roles VALUES(3, 3, 3, now(), now(), 1, 1);
INSERT INTO _usuarios_roles VALUES(4, 4, 4, now(), now(), 1, 1);

INSERT INTO _grupos VALUES(1, 'HERRAMIENTAS', now(), now(), 1, 1);
INSERT INTO _grupos VALUES(2, 'TAPICERIA', now(), now(), 1, 1);
INSERT INTO _grupos VALUES(3, 'REPORTES', now(), now(), 1, 1);

INSERT INTO _opciones VALUES(1, 1, 'Personas', '../privada/personas/personas.php', 10, now(), now(), 1, 1);
INSERT INTO _opciones VALUES(2, 1, 'Usuarios', '../privada/usuarios/usuarios.php', 20, now(), now(), 1, 1);
INSERT INTO _opciones VALUES(3, 1, 'Grupos', '../privada/grupos/grupos.php', 30, now(), now(), 1, 1);
INSERT INTO _opciones VALUES(4, 1, 'Roles', '../privada/roles/roles.php', 40, now(), now(), 1, 1);
INSERT INTO _opciones VALUES(5, 1, 'Usuarios Roles', '../privada/usuarios_roles/usuarios_roles.php', 50, now(), now(), 1, 1);
INSERT INTO _opciones VALUES(6, 1, 'Opciones', '../privada/opciones/opciones.php', 60, now(), now(), 1, 1);
INSERT INTO _opciones VALUES(7, 1, 'Accesos', '../privada/accesos/accesos.php', 70, now(), now(), 1, 1);

INSERT INTO _opciones VALUES(8, 2, 'Tapiceria', '../privada/tapiceria/tapiceria.php', 10, now(), now(), 1, 1);
INSERT INTO _opciones VALUES(9, 2, 'Empleados', '../privada/empleados/empleados.php', 20, now(), now(), 1, 1);
INSERT INTO _opciones VALUES(10, 2, 'Tapizados', '../privada/tapizados/tapizados.php', 30, now(), now(), 1, 1);
INSERT INTO _opciones VALUES(11, 2, 'Clientes', '../privada/clientes/clientes.php', 40, now(), now(), 1, 1);
INSERT INTO _opciones VALUES(12, 2, 'Cotizaciones', '../privada/cotizaciones/cotizaciones.php', 50, now(), now(), 1, 1);
INSERT INTO _opciones VALUES(13, 2, 'Detalles_Cotizaciones', '../privada/detalles_cotizaciones/detalles_cotizaciones.php', 60, now(), now(), 1, 1);
INSERT INTO _opciones VALUES(14, 2, 'Pedidos', '../privada/pedidos/pedidos.php', 70, now(), now(), 1, 1);
INSERT INTO _opciones VALUES(15, 2, 'Detalle_pedidos', '../privada/detalle_pedidos/detalle_pedidos.php', 80, now(), now(), 1, 1);
INSERT INTO _opciones VALUES(16, 2, 'Proveedores', '../privada/proveedores/proveedores.php', 90, now(), now(), 1, 1);
INSERT INTO _opciones VALUES(17, 2, 'Productos_Proveedores', '../privada/productos_proveedores/productos_proveedores.php', 100, now(), now(), 1, 1);
INSERT INTO _opciones VALUES(18, 2, 'Productos', '../privada/productos/productos.php', 110, now(), now(), 1, 1);

/***********************************/
INSERT INTO _opciones VALUES(19, 3, 'Rpt Empleados por Fecha', '../privada/reportes/empleados_fechas.php', 10, now(), now(), 1, 1);
INSERT INTO _opciones VALUES(20, 3, 'Rpt Productos', '../privada/reportes/productos.php', 20, now(), now(), 1, 1);
INSERT INTO _opciones VALUES(21, 3, 'Rpt de Personas Usuarios','../privada/reportes/personas_usuarios.php', 30, now(), now(), 1,1);
INSERT INTO _opciones VALUES(22, 3, 'Rpt de Personas por Fecha','../privada/reportes/personas_fechas.php', 40, now(), now(), 1,1);
INSERT INTO _opciones VALUES(23, 3, 'Rpt de Clientes','../privada/reportes/clientes.php', 50, now(), now(), 1,1);
INSERT INTO _opciones VALUES(24, 3, 'Rpt de Cotizaciones por Fecha','../privada/reportes/cotizaciones_fechas.php', 60, now(), now(), 1,1);
INSERT INTO _opciones VALUES(25, 3, 'Rpt de Proveedores','../privada/reportes/proveedores.php', 70, now(), now(), 1,1);
INSERT INTO _opciones VALUES(26, 3, 'Rpt de Productos_Proveedores','../privada/reportes/productos_proveedores.php', 80, now(), now(), 1,1);
INSERT INTO _opciones VALUES(27, 3, 'Rpt de Pedidos por Fecha','../privada/reportes/pedidos_fechas.php', 90, now(), now(), 1,1);
INSERT INTO _opciones VALUES(28, 3, 'Rpt de Tapizados','../privada/reportes/tapizados.php', 100, now(), now(), 1,1);
INSERT INTO _opciones VALUES(29, 3, 'Rpt Personas x Genero','../privada/reportes/rpt_personas_genero.php', 110, now(), now(), 1,1);
INSERT INTO _opciones VALUES(30, 3, 'Rpt Tapizados x Tipo','../privada/reportes/rpt_tapizados.php', 120, now(), now(), 1,1);
INSERT INTO _opciones VALUES(31, 3, 'Ficha Tecnica De Personas','../privada/reportes/fichas_tecnicas_personas.php', 130, now(), now(), 1,1);
INSERT INTO _opciones VALUES(32, 3, 'Ficha Tecnica De Cotizaciones','../privada/reportes/fichas_tecnicas_cotizaciones.php', 140, now(), now(), 1,1);
INSERT INTO _opciones VALUES(33, 3, 'Rpt Productos x Marca','../privada/reportes/rpt_productos_marca.php', 150, now(), now(), 1,1);
INSERT INTO _opciones VALUES(34, 3, 'Ficha Tecnica De Tapizados','../privada/reportes/fichas_tecnicas_tapizados.php', 160, now(), now(), 1,1);
INSERT INTO _opciones VALUES(35, 3, 'Rpt Tapizados x Diseño','../privada/reportes/rpt_tapizados_diseño.php', 170, now(), now(), 1,1);
INSERT INTO _opciones VALUES(36, 3, 'Ficha Tecnica De Productos','../privada/reportes/fichas_tecnicas_productos.php', 180, now(), now(), 1,1);

/*INSERT INTO _opciones VALUES(20, 3, 'Rpt de Existencias','../privada/reportes/rept_existencias.php', 50, now(), now(), 1,1);*/



INSERT INTO _accesos VALUES(1, 1, 1, now(), now(), 1, 1);
INSERT INTO _accesos VALUES(2, 2, 1, now(), now(), 1, 1);
INSERT INTO _accesos VALUES(3, 3, 1, now(), now(), 1, 1);
INSERT INTO _accesos VALUES(4, 4, 1, now(), now(), 1, 1);
INSERT INTO _accesos VALUES(5, 5, 1, now(), now(), 1, 1);
INSERT INTO _accesos VALUES(6, 6, 1, now(), now(), 1, 1);
INSERT INTO _accesos VALUES(7, 7, 1, now(), now(), 1, 1);
INSERT INTO _accesos VALUES(8, 8, 1, now(), now(), 1, 1);
INSERT INTO _accesos VALUES(9, 9, 1, now(), now(), 1, 1);
INSERT INTO _accesos VALUES(10, 10, 1, now(), now(), 1, 1);
INSERT INTO _accesos VALUES(11, 11, 1, now(), now(), 1, 1);
INSERT INTO _accesos VALUES(12, 12, 1, now(), now(), 1, 1);
INSERT INTO _accesos VALUES(13, 13, 1, now(), now(), 1, 1);
INSERT INTO _accesos VALUES(14, 14, 1, now(), now(), 1, 1);
INSERT INTO _accesos VALUES(15, 15, 1, now(), now(), 1, 1);
INSERT INTO _accesos VALUES(16, 16, 1, now(), now(), 1, 1);
INSERT INTO _accesos VALUES(17, 17, 1, now(), now(), 1, 1);
INSERT INTO _accesos VALUES(18, 18, 1, now(), now(), 1, 1);
INSERT INTO _accesos VALUES(19, 19, 1, now(), now(), 1, 1);
INSERT INTO _accesos VALUES(20, 20, 1, now(), now(), 1, 1);


INSERT INTO _accesos VALUES(21, 1, 2, now(), now(), 1,1);
INSERT INTO _accesos VALUES(22, 2, 2, now(), now(), 1,1);
INSERT INTO _accesos VALUES(23, 3, 2, now(), now(), 1,1);
INSERT INTO _accesos VALUES(24, 4, 2, now(), now(), 1,1);
INSERT INTO _accesos VALUES(25, 5, 2, now(), now(), 1,1);
INSERT INTO _accesos VALUES(26, 11, 2, now(), now(), 1,1);

INSERT INTO _accesos VALUES(27, 21, 3, now(), now(), 1,1);
INSERT INTO _accesos VALUES(28, 22, 3, now(), now(), 1,1);
INSERT INTO _accesos VALUES(29, 23, 3, now(), now(), 1,1);
INSERT INTO _accesos VALUES(30, 24, 3, now(), now(), 1,1);
INSERT INTO _accesos VALUES(31, 18, 3, now(), now(), 1,1);

INSERT INTO _accesos VALUES(32, 21, 1, now(), now(), 1,1);
INSERT INTO _accesos VALUES(33, 22, 1, now(), now(), 1,1);

INSERT INTO _accesos VALUES(34, 23, 1, now(), now(), 1,1);
INSERT INTO _accesos VALUES(35, 24, 1, now(), now(), 1,1);

INSERT INTO _accesos VALUES(36, 25, 1, now(), now(), 1,1);
INSERT INTO _accesos VALUES(37, 26, 1, now(), now(), 1,1);
INSERT INTO _accesos VALUES(38, 27, 1, now(), now(), 1,1);
INSERT INTO _accesos VALUES(39, 28, 1, now(), now(), 1,1);

INSERT INTO _accesos VALUES(40, 22, 4, now(), now(), 1,1);
INSERT INTO _accesos VALUES(41, 27, 4, now(), now(), 1,1);
INSERT INTO _accesos VALUES(42, 28, 4, now(), now(), 1,1);
INSERT INTO _accesos VALUES(43, 29, 1, now(), now(), 1,1);
INSERT INTO _accesos VALUES(44, 30, 1, now(), now(), 1,1);

INSERT INTO _accesos VALUES(45, 31, 1, now(), now(), 1,1);
INSERT INTO _accesos VALUES(46, 32, 1, now(), now(), 1,1);
INSERT INTO _accesos VALUES(47, 33, 1, now(), now(), 1,1);
INSERT INTO _accesos VALUES(48, 34, 1, now(), now(), 1,1);
INSERT INTO _accesos VALUES(49, 35, 1, now(), now(), 1,1);
INSERT INTO _accesos VALUES(50, 36, 1, now(), now(), 1,1);



