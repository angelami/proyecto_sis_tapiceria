<!DOCTYPE html>
<html>
	<head>
		<link rel="stylesheet" href="../{$direc_css}" type="text/css">
		<script type="text/javascript" src="../js/expresiones_regulares.js"></script>
		<script type="text/javascript" src="js/validar_productos.js"></script>
	</head>
<body>
	<div class="formu_ingreso_datos">
		<form action="producto_modificar1.php" method="post" name="formu">
			<h2>MODIFICAR PRODUCTO</h2>
			{foreach item=r from=$producto}
				<input type="text" name="nombre" size="20" placeholder="Nombre" value="{$r.nombre}" onkeyup="this.value=this.value.toUpperCase()" value="{$r.nombre}">(*)
			<p>
				<input type="text" name="marca" size="30" placeholder="Marca" onkeyup="this.value=this.value.toUpperCase()" value="{$r.marca}">(*)
			</p>
			
			<p>
				<input type="hidden" name="accion" value="" >
				<input type="hidden" name="id_producto" value="{$r.id_producto}" >
				<input type="button" value="Aceptar" onclick="validar();" class="boton2">
				<input type="button" value="Cancelar" onclick="javascript:location.href='productos.php';" class="boton2">
			</p>
			{/foreach}
			<p><b>(*)Campos Obligatorios</b></p>
		</form>
	</div>
</body>
</html>