<!DOCTYPE html>
<html lang="esp">
	<head>
		<link rel="stylesheet" href="../{$direc_css}" type="text/css">
		<meta charset="UTF-8">
		{literal}
		<script type="text/javascript">
			function validar() {
				tipo_tapizado = document.formu.tipo_tapizado.value;
				if(document.formu.tipo_tapizado.value == "") {
					alert("Por favor seleccione el tipo de tapizado");
					document.formu.tipo_tapizado.focus();
					return;
				}
				ventanaCalendario = window.open("rpt_tapizados1.php?tipo_tapizado=" + tipo_tapizado, "calendario", "width=600, height=550,left=100,top=100,scrollbars=yes,menubars=no,statusbar=NO,status=NO,resizable=YES,location=NO")
			}
		</script>
		{/literal}
	</head>
<body>
	<div class="formu_ingreso_datos">
	<h2>RPT DE TAPIZADOS POR SU TIPO</h2>
	<form method="post" name="formu">
			<p>
				<b>*Seleccione el tipo de tapizado</b>
				<select name="tipo_tapizado">
					<option value="">--Seleccione--</option>
					<option value="T">Todos</option>
					<option value="cuerina de primera">Cuerina de primera</option>
					<option value="cuerina comun">Cuerina comun</option>
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