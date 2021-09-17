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
				<h1>COTIZACIONES POR FECHAS</h1>
			</td>
		</tr>
	</table>
	<br>
	<center>
		<table border="1" cellspacing="0">
			<tr>
				<th>NRO</th><th>NOMBRE</th><th>APELLIDO</th><th>MONTO TOTAL COTIZACION</th><th>FECHA</th>
			</tr>
			{assign var="b" value="1"}
			{foreach item=r from=$cotizaciones_fechas}
			<tr>
				<td align="center">{$b}</td>
				<td align="center">{$r.nombre}</td>
				<td align="center">{$r.apellido}</td>
				<td align="center">{$r.monto_total_cotizacion}</td>
				<td><i>{$r.fecha_cotizacion}</i></td>
				{assign var="b" value="`$b+1`"}
				{/foreach}
			</tr>
		</table>
		<br><br>
	</center>
	<b>DEL:</b> {$fecha1} <b>A</b> {$fecha2}
</body>
</html>