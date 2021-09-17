<!DOCTYPE html>
<html lang="esp">
	<head>
		<link rel="stylesheet" href="../{$direc_css}" type="text/css">
		<meta charset="utf-8">
		<script type="text/javascript" src="../../ajax.js"></script>
		<script type="text/javascript">
			function buscar() {
			var d1, d2, d3, d4, contenedor, ajax,url,param; 
				contenedor = document.getElementById('tapizados1');
			    d1 = document.formu.objeto.value;
				d2 = document.formu.tipo_tapizado.value;
				d3 = document.formu.color.value;
				d4 = document.formu.disenio.value;
				ajax = nuevoAjax();
				url = "ajax_buscar_tapizados.php"
				param = "objeto="+d1+"&tipo_tapizado="+d2+"&color="+d3+"&disenio="+d4;
				//alert(param);
				ajax.open("POST", url, true);
				ajax.setRequestHeader('Content-Type','application/x-www-form-urlencoded');
				ajax.onreadystatechange = function() {
					if (ajax.readyState == 4) {
						contenedor.innerHTML = ajax.responseText;
					}
				}
				ajax.send(param);
			}
			function mostrar(id_tapizado) {
				var d1, ventanaCalendario;
				d1 = id_tapizado;
				//alert(id_tapizado);
				ventanaCalendario = window.open("fichas_tecnicas_tapizados1.php?id_tapizado=" + d1, "calendario", "width=600, height=550,left=100,top=100,scrollbars=yes,menubars=no,statusbar=NO,status=NO,resizable=YES,location=NO")
			}
	    	</script>
		</head>
	<body>
		<!----------BUSCADOR------------>
	<center>
		<h1> FICHAS TECNICAS DE TAPIZADOS </h1>
		<form action="#" method="post" name="formu">
			<table border="1" class="listado">
				<tr>
				<th>
					<b>Objeto</b><br />
					<input type="text" name="objeto" value="" size="10" onkeyup="buscar()">
				</th>
				<th>
					<b>Tipo Tapizado</b><br />
					<input type="text" name="tipo_tapizado" value="" size="10" onkeyup="buscar()">
				</th>
				<th>
					<b>Color</b><br />
					<input type="text" name="color" value="" size="10" onkeyup="buscar()">
				</th>
				<th>
					<b>Diseño</b><br />
					<input type="text" name="disenio" value="" size="10" onkeyup="buscar()">
				</th>
			</tr>
			</table>
			</form>
	    	</center>
		    <!-----------BUSCADOR---------->
		    <center>
		    	<div id="tapizados1">
		    	</div>
		    </center>
	</body>
</html>
