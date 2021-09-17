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
			<td align="center" width="80%"><h1>CLIENTES</h1></td>
		</tr>
	</table>
	<br>
	<center>
		<table border="1" cellspacing="0">
			<tr>
				<th>NRO</th><th>NOMBRE</th><th>APELLIDO</th><th>DIRECCION</th><th>TELEFONO</th>
			</tr>
			{assign var="b" value="1"}
			{foreach item=r from=$clientes1}
			<tr>
				<td align="center">{$b}</td>
				<td align="center">{$r.ci}</td>
				<td align="center">{$r.nombre}</td> 
				<td align="center">{$r.apellido}</td>
				<td align="center">{$r.direccion}</td>
				<td align="center">{$r.telefono}</td>
				{assign var="b" value="`$b+1`"}
				{/foreach}
			</tr>
		</table>
		<br><br>
		<b>Fecha:</b> {$fecha}
	</center>
</body>
</html>