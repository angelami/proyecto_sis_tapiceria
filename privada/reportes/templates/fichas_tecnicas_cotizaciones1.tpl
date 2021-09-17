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
				<h1> FICHA TECNICA DE COTIZACION </h1>
			</td>
		</tr>
	</table>
	<br>
	<center>
		<table border="1" cellspacing="0">
			<tr>
				<td>
					<table border="0">
			     		{foreach item=r from=$cotizacion}
			     		
			<tr>
				<th align="right">CI</th><th>:</th>
				<td><input type="text" name="ci" value="{$r.ci}" disabled=""> </td>
			</tr>
			<tr>
				<th align="right">Nombre</th><th>:</th>
				<td><input type="text" name="nombre" value="{$r.nombre}" disabled=""> </td>
			</tr>
			<tr>
				<th align="right">Monto Total Cotizacion</th><th>:</th>
				<td><input type="text" name="monto_total_cotizacion" value="{$r.monto_total_cotizacion}" disabled=""> </td>
			</tr>
			<tr>
				<th align="right">Fecha Cotizacion</th><th>:</th>
				<td><input type="text" name="fecha_cotizacion" value="{$r.fecha_cotizacion}" disabled=""> </td>
			</tr>		
				</td>
			  </tr>
			{/foreach}
		   </table>
		 </td>
       </tr>
      </table>
	</center>
	</body>
</html>