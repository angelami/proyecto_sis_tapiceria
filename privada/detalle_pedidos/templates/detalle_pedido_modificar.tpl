<!DOCTYPE html>
<html>
	<head>
		<link rel="stylesheet" href="../{$direc_css}" type="text/css">
		<script type="text/javascript" src="../js/expresiones_regulares.js"></script>
		<script type="text/javascript" src="js/validar_detalle_pedidos.js"></script>
	</head>
<body>
	<div class="formu_ingreso_datos">
		<form action="detalle_pedido_modificar1.php" method="post" name="formu">
			<h2>MODIFICAR DETALLE DEL PEDIDO</h2>
			{foreach item=r from=$detalle_pedido}
			
				<input type="text" name="cantidad" placeholder="Cantidad" onkeyup="this.value=this.value.toUpperCase()" value="{$r.cantidad}">(*)
			
			<p>
				<input type="text" name="descripcion" size="100" placeholder="Descripcion" onkeyup="this.value=this.value.toUpperCase()" value="{$r.descripcion}">(*)
			</p>
			<p>
				<input type="text" name="monto_parcial" size="11" placeholder="Monto Parcial" onkeyup="this.value=this.value.toUpperCase()" value="{$r.monto_parcial}">(*)
			</p>
			
			<p>
				<input type="hidden" name="accion" value="" >
				<input type="hidden" name="id_detalle_pedido" value="{$r.id_detalle_pedido}" >
				<input type="button" value="Aceptar" onclick="validar();" class="boton2">
				<input type="button" value="Cancelar" onclick="javascript:location.href='detalle_pedidos.php';" class="boton2">
			</p>
			{/foreach}
			<p><b>(*)Campos Obligatorios</b></p>
		</form>
	</div>
</body>
</html>