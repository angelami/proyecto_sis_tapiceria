<!DOCTYPE html>
<html>
	<head>
		<link rel="stylesheet" href="../{$direc_css}" type="text/css">
		<script type="text/javascript">
			var ventanaCalendario=false
			function imprimir() {
				ventanaCalendario = window.open("clientes1.php", "calendario", "width=600, height=550,left=100,top=100,scrollbars=yes,menubars=no,statusbar=NO,status=NO,resizable=YES,location=NO")
			}
		</script>
	</head>
<body>
	<table width="100%" border="0">
		<tr>
			<td align="center"><h1>CLIENTES</h1></td>
		</tr>
	</table>
	<br>

	<center>
		<table class="listado">
			<tr>
				<th>NRO</th><th>CI</th><th>NOMBRE</th><th>APELLIDO</th><th>DIRECCION</th><th>TELEFONO</th>
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
			</tr>
			{/foreach}
		</table>
		<br><br>
		<h2>
			<input type="radio" name="seleccionar" onclick="javascript:imprimir()">Imprimir</td>
		</h2>
	</center>
</body>
</html>