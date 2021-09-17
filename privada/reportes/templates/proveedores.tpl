<!DOCTYPE html>
<html>
	<head>
		<link rel="stylesheet" href="../{$direc_css}" type="text/css">
		<script type="text/javascript">
			var ventanaCalendario=false
			function imprimir() {
				ventanaCalendario = window.open("proveedores1.php", "calendario", "width=600, height=550,left=100,top=100,scrollbars=yes,menubars=no,statusbar=NO,status=NO,resizable=YES,location=NO")
			}
		</script>
	</head>
<body>
	<table width="100%" border="0">
		<tr>
			<td align="center"><h1>PROVEEDORES</h1></td>
		</tr>
	</table>
	<br>

	<center>
		<table class="listado">
			<tr>
				<th>NRO</th><th>NOMBRE</th><th>DIRECCION</th>
			</tr>
			{assign var="b" value="1"}
			{foreach item=r from=$proveedores1}
			<tr>
				<td align="center">{$b}</td>
				<td>{$r.nombre}</td>
				<td>{$r.direccion}</td>
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