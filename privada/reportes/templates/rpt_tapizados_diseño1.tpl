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
				<img src="../tapiceria_img/logos/{$logo_tapiceria}" width="70%"> </td>
			</td>
			<td align="center" width="80%">
				<h1>  TAPIZADOS -- DISEÑO </h1>
			</td>
		</tr>
	</table>
	<br>
	<center>
		<table border="1" cellspacing="0">
			<tr>
				<th>NRO</th><th>MONTO ESTIMADO</th><th>OBJETO</th><th>TIPO TAPIZADO</th><th>COLOR</th><th>DISEÑO</th>
			</tr>
			{assign var="b" value="1"}
			{foreach item=r from=$tapizados_disenio1}
			<tr>
				<td align="center">{$b}</td>
				<td>{$r.monto_estimado}</td> 
				<td>{$r.objeto}</td>
				<td>{$r.tipo_tapizado}</td>
				<td>{$r.color}</td>
				<td>{if $r.disenio=='recta para micro'}RECTA PARA MICRO{else 'abanico'}ABANICO{/if}</td>

				{assign var="b" value="`$b+1`"}
				{/foreach}
			</tr>
		</table>
		<br><br>
		<b>Fecha:</b> {$fecha}
	</center>
</body>
</html>