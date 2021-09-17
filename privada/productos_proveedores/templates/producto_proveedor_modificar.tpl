<!DOCTYPE html>
<html>
	<head>
		<link rel="stylesheet" href="../{$direc_css}" type="text/css">
		<script type="text/javascript" src="../js/expresiones_regulares.js"></script>
		<script type="text/javascript" src="js/validar_productos_proveedores.js"></script>
	</head>
<body>
	<div class="formu_ingreso_datos">
		<form action="producto_proveedor_modificar1.php" method="post" name="formu">
			<h2>MODIFICAR PRODUCTO PROVEEDOR</h2>
			{foreach item=r from=$producto_proveedor}
				<input type="text" name="precio_producto" size="15" placeholder="precio Producto" onkeyup="this.value=this.value.toUpperCase()" value="{$r.precio_producto}">(*)
			<p>
				<input type="text" name="detalle" size="15" placeholder="Detalle" onkeyup="this.value=this.value.toUpperCase()" value="{$r.detalle">(*)
			</p>
			
			<p>
				<input type="hidden" name="accion" value="" >
				<input type="hidden" name="id_producto_proveedor" value="{$r.id_producto_proveedor}" >
				<input type="button" value="Aceptar" onclick="validar();" class="boton2">
				<input type="button" value="Cancelar" onclick="javascript:location.href='productos_proveedores.php';" class="boton2">
			</p>
			{/foreach}
			<p><b>(*)Campos Obligatorios</b></p>
		</form>
	</div>
</body>
</html>