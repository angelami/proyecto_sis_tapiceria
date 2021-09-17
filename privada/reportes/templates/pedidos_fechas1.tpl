<!DOCTYPE html>
<html>
	<head>
		<script type="text/javascript">
			var ventanaCalendario=false
			function imprimir() {
				if(confirm('Desea Imprimir ?')){
					window.print();
				}
			}
		</script>
	</head>
	<body style='cursor:pointer;cursor:hand' onclick='imprimir();'>
 	<table width="100%" border="0">
		<tr>
			<td> 
				<img src="../tapiceria_img/logos/{$logo_tapiceria}" width="70%"> 
			</td>
			<td align="center" width="80%">
				<h1>PEDIDOS POR FECHAS</h1>
			</td>
		</tr>
	</table>
	<br>
	<center>
		<table border="1" cellspacing="0">
			<tr>
				<th>NRO</th><th>CLIENTE</th><th>FECHA PEDIDO</th><th>FECHA ENTREGA</th>
			</tr>
			{assign var="b" value="1"}
			{foreach item=r from=$pedidos_fechas}
			
			<tr>
				<td align="center">{$b}</td>
				<td>{$r.nombre} {$r.apellido}</td>
				<td align="center">{$r.fecha_pedido}</td>
				<td><i>{$r.fecha_entrega}</i></td>
				{assign var="b" value="`$b+1`"}
				{/foreach}

			</tr>
		</table>
		<br><br>
	</center>
	<b>DEL:</b> {$fecha1} <b>A</b> {$fecha2}
</body>
</html>