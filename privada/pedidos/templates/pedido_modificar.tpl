<!DOCTYPE html>
<html>
	<head>
		<link rel="stylesheet" href="../{$direc_css}" type="text/css">
		<script type="text/javascript" src="../js/expresiones_regulares.js"></script>
		<script type="text/javascript" src="js/validar_pedidos.js"></script>
	</head>
<body>
	<div class="formu_ingreso_datos">
		<form action="pedido_modificar1.php" method="post" name="formu">
			<h2>MODIFICAR PEDIDO</h2>
			{foreach item=r from=$pedido}
				<input type="text" name="fecha_entrega" size="15" placeholder="Fecha Entrega" value="{$r.fecha_entrega}">(*)
			<p>
				<input type="text" name="fecha_pedido" size="15" placeholder="Fecha Pedido" onkeyup="this.value=this.value.toUpperCase()" value="{$r.fecha_pedido}">(*)
			</p>
			<p>
				<input type="text" name="monto_total_pedido" size="15" placeholder="Monto Total Pedido" onkeyup="this.value=this.value.toUpperCase()" value="{$r.monto_total_pedido}">(*)
			</p>
			
			<p>
				<input type="hidden" name="accion" value="" >
				<input type="hidden" name="id_pedido" value="{$r.id_pedido}" >
				<input type="button" value="Aceptar" onclick="validar();" class="boton2">
				<input type="button" value="Cancelar" onclick="javascript:location.href='pedidos.php';" class="boton2">
			</p>
			{/foreach}
			<p><b>(*)Campos Obligatorios</b></p>
		</form>
	</div>
</body>
</html>