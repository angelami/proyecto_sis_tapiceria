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
			<td> <img src="../tapiceria_img/logos/{$logo_tapiceria}" width="70%"> </td>
			<td align="center" width="80%"><h1>PRODUCTOS</h1></td>
		</tr>
	</table>
	<br>
	<center>
		<table border="1" cellspacing="0">
			<tr>
				<th>NRO</th><th>NOMBRE</th><th>MARCA</th><th>PRECIO</th>
			</tr>
			{assign var="b" value="1"}
			{foreach item=r from=$productos1}
			<tr>
				<td align="center">{$b}</td>
				<td>{$r.nombre}</td>
				<td>{$r.marca}</td>
				<td align="center"><i>{$r.precio_producto}</i></td>
				{assign var="b" value="`$b+1`"}
				{/foreach}
			</tr>
		</table>
		<br><br>
		<b>Fecha:</b> {$fecha}
	</center>
</body>
</html>