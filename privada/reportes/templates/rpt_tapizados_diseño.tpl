<!DOCTYPE html>
<html lang="esp">
	<head>
		<link rel="stylesheet" href="../{$direc_css}" type="text/css">
		<meta charset="UTF-8">
		{literal}
		<script type="text/javascript">
			function validar() {
				disenio = document.formu.disenio.value;
				if(document.formu.disenio.value == "") {
					alert("Por favor seleccione el diseño de tapizado");
					document.formu.disenio.focus();
					return;
				}
				ventanaCalendario = window.open("rpt_tapizados_diseño1.php?disenio=" + disenio, "calendario", "width=600, height=550,left=100,top=100,scrollbars=yes,menubars=no,statusbar=NO,status=NO,resizable=YES,location=NO")
			}
		</script>
		{/literal}
	</head>
<body>
	<div class="formu_ingreso_datos">
	<h2>RPT DE TAPIZADOS POR SU DISEÑO</h2>
	<form method="post" name="formu">
			<p>
				<b>*Seleccione el diseño de tapizado</b>
				<select name="disenio">
					<option value="">--Seleccione--</option>
					<option value="T">Todos</option>
					<option value="recta para micro">Recta para micro</option>
					<option value="abanico">Abanico</option>
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