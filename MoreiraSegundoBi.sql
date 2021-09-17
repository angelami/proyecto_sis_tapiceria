/*****EV.2BIMESTRE ****/
/*Utilizando la base de datos del 
proyecto que están desarrollando, realizar lo siguiente:*/

/*Desarrollar 1 funcion (20ptos)*/

DELIMITER //
	CREATE FUNCTION contar_clientes()
	RETURNS INT
	
	BEGIN 
		DECLARE resultado INT;
		 SELECT COUNT(id_cliente) INTO resultado
		 FROM clientes
		 WHERE estado = '1';

		 RETURN resultado;

	END//
DELIMITER ;

--LLAMADA A LA FUNCION---
SELECT contar_clientes();

/*****************************************************/
/*Desarrollar 1 procedimiento almacenado (20ptos)*/
DELIMITER //
	CREATE PROCEDURE listado_pedidos_fechas(IN f_inicio DATE, IN f_fin DATE)
		BEGIN 
		 SELECT *
		 FROM pedidos
		 WHERE fec_insercion BETWEEN f_inicio AND f_fin
		 AND estado = '1';
	END//
DELIMITER ;

--LLAMADA AL PROCEDIMIENTO---
CALL listado_pedidos_fechas('2019-06-15','2021-07-02');


/*Desarrollar 1 trigger (20ptos)*/
CREATE TABLE _registro_huellas(
	id_registro_huellas INT NOT NULL AUTO_INCREMENT,
	consulta VARCHAR(50) NOT NULL,
	_fecha_inser TIMESTAMP NOT NULL,
	_usuario INT NOT NULL,
	PRIMARY KEY(id_registro_huellas)
)ENGINE=INNODB;

DELIMITER //
	CREATE TRIGGER inserta_registro_huellas_proveedores
	BEFORE INSERT ON proveedores
	FOR EACH ROW
	BEGIN 
		INSERT _registro_huellas(consulta,fec_insercion, usuario) 
		VALUES("INSERT-PROVEEDORES", NEW.fec_insercion, NEW.usuario);
		END//
DELIMITER ;


/*Desarrollar 1 vista (20ptos)*/
CREATE VIEW vista_empleados AS
SELECT ci,nombres,apellidos, fecha_inicio,fecha_fin
FROM empleados
WHERE estado = '1';

SELECT *
FROM vista_empleados;