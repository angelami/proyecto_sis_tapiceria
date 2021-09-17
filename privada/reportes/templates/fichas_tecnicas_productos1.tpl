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
				<h1> FICHA TECNICA DE PRODUCTO </h1>
			</td>
		</tr>
	</table>
	<br>
	<center>
		<table border="1" cellspacing="0">
			<tr>
				<td>
					<table border="0">
			     		{foreach item=r from=$producto}
			     		
			
			<tr>
				<th align="right">Nombre</th><th>:</th>
				<td><input type="text" name="nombre" value="{$r.nombre}" disabled=""> </td>
			</tr>
			<tr>
				<th align="right">Marca</th><th>:</th>
				<td><input type="text" name="marca" value="{$r.monto_total_cotizacion}" disabled=""> </td>
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