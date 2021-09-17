<!DOCTYPE html>
<html>
	<head>
		<link rel="stylesheet" href="../{$direc_css}" type="text/css">
		<script type="text/javascript">
			var ventanaCalendario=false
			function imprimir() {
				ventanaCalendario = window.open("tapizados1.php", "calendario", "width=600, height=550,left=100,top=100,scrollbars=yes,menubars=no,statusbar=NO,status=NO,resizable=YES,location=NO")
			}
		</script>
	</head>
<body>
	<table width="100%" border="0">
		<tr>
			<td align="center"><h1>TAPIZADOS</h1></td>
		</tr>
	</table>
	<br>

	<center>
		<table class="listado">
			<tr>
				<th>NRO</th><th>MONTO ESTIMADO</th><th>OBJETO</th><th>TIPO TAPIZADO</th><th>COLOR</th><th>DISEÑO</th><th>DESCRIPCION</th>
			</tr>
			{assign var="b" value="1"}
			{foreach item=r from=$tapizados1}
			<tr>
				<td align="center">{$b}</td>
				<td align="center">{$r.monto_estimado}</td> 
				<td align="center">{$r.objeto}</td>
				<td align="center">{$r.tipo_tapizado}</td>
				<td align="center">{$r.color}</td>
				<td align="center">{$r.disenio}</td>
				<td align="center">{$r.descripcion}</td>
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