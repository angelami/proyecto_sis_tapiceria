<!DOCTYPE html>
<html>
<head>
   <link rel="stylesheet" href="../{$direc_css}" type="text/css">
    <script type="text/javascript" src="../js/expresiones_regulares.js"></script>
    <script type="text/javascript" src="js/validar_cotizacion.js "></script>
	</head>
<body>  
      <div class="formu_ingreso_datos">
      <form action="cotizacion_nuevo1.php" method="post" name="formu">
        <h2>REGISTRAR COTIZACION </h2>
                  
                    <input  type="text" name="nombre" placeholder="nombre" onkeyup="this.value=this.value.toUpperCase()">(*)
               <p>
                  <input  type="text" name="monto_total_cotizacion" placeholder="Monto Total Cotizacion" onkeyup="this.value=this.value.toUpperCase()">(*)
              </p>
                  <p>
                  <input type="text" name="fecha_cotizacion" size="15" placeholder="Fecha Cotizacion" onkeyup="this.value=this.value.toUpperCase()">(*)
              </p>
                  
          <p>
          <input type="hidden" name="accion" value="">   
          <input type="button" value="Aceptar" onclick="validar();" class="boton2">
          <input type="button" value="Cancelar" onclick="javascript:location.href='cotizaciones.php';" class="boton2">
          </p>
             <p><b>(*)Campos Obligatorios</b></p>             
           </form>  
     </div> 
</body>
</html>