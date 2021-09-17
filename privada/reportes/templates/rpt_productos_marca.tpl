<!DOCTYPE html>
<html lang="esp">
	<head>
		<link rel="stylesheet" href="../{$direc_css}" type="text/css">
		<meta charset="utf-8">
		{literal}
		<script type="text/javascript">
			function validar() {
			marca = document.formu.marca.value;
			if (document.formu.marca.value == "") {
				alert("Seleccione la marca");
				document.formu.marca.focus();
				return;
			}
				ventanaCalendario = window.open("rpt_productos_marca1.php?marca=" + marca, "calendario", "width=600, height=550,left=100,top=100,scrollbars=yes,menubars=no,statusbar=NO,status=NO,resizable=YES,location=NO")
			}
		</script>
		{/literal}
	</head>
<body>
	<div class="formu_ingreso_datos">
		<h2>RPT DE PRODUCTOS POR MARCA</h2>
		<form method="post" name="formu">
			<p>
				<b>*Seleccione marca</b>
				<select name="marca">
					<option value="">--Seleccione--</option>
					<option value="T">Todos</option>
					<option value="Brasilero">Brasilero</option>
					<option value="Americano">Americano</option>
				</select>
			</p>
			<p>
				<input type="hidden" name="accion" value="">
				<input type="button" value="Aceptar" onclick="validar();" class="boton">
			</p>
		</form>
	</div>
</body>
</html>
