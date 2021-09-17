<!DOCTYPE html>
<head>
	<!--<link rel="stylesheet" type="text/css" href="../../css/colores.css">-->
	<link rel="stylesheet" href="../{$direc_css}" type="text/css">
	<script type="text/javascript">
	  	function refrescar(){
	  		var p = window.parent;
	  		p.location.href='../';
	  	}
	  </script>
	
</head>
<body ONLOAD="self.setTimeout('refrescar()',1000);"><!--el tiempo de carga de espera-->
	<center>
		<h1>{$mensage}</h1>
		<br>
		<h1>{$mensage1}</h1>
	</center>
</body>
</html>