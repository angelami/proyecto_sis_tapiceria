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
				<h1> FICHA TECNICA DE TAPIZADOS </h1>
			</td>
		</tr>
	</table>
	<br>
	<center>
		<table border="1" cellspacing="0">
			<tr>
				<td>
					<table border="0">
			     		{foreach item=r from=$tapizado}
			<tr>
				<th align="right">Objeto</th><th>:</th>
				<td><input type="text" name="objeto" value="{$r.objeto}" disabled=""> </td>
			</tr>
			<tr>
				<th align="right">Tipo Tapizado</th><th>:</th>
				<td><input type="text" name="tipo_tapizado" value="{$r.tipo_tapizado}" disabled=""> </td>
			</tr>
			<tr>
				<th align="right">Color</th><th>:</th>
				<td><input type="text" name="color" value="{$r.color}" disabled=""> </td>
			</tr>
			<tr>
				<th align="right">Diseño</th><th>:</th>
				<td><input type="text" name="disenio" value="{$r.disenio}" disabled=""> </td>
			</tr>
			<tr>
				<th align="right">Descripcion</th><th>:</th>
				<td><input type="text" name="descripcion" value="{$r.descripcion}" disabled=""> </td>
				
			  </tr>
			{/foreach}
		   </table>
		 </td>
       </tr>
      </table>
	</center>
	</body>
</html>