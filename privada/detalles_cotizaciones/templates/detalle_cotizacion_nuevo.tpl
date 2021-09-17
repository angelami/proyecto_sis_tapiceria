<!DOCTYPE html>
<html>
<head>
   <link rel="stylesheet" href="../{$direc_css}" type="text/css">
    <script type="text/javascript" src="../js/expresiones_regulares.js"></script>
    <script type="text/javascript" src="js/validar_detalles_cotizaciones.js "></script>
	</head>
<body>  
      <div class="formu_ingreso_datos">
      <form action="detalle_cotizacion_nuevo1.php" method="post" name="formu">
        <h2>REGISTRAR DETALLE COTIZACION </h2>
                                    
                  <input type="text" name="cantidad" size="15" placeholder="Cantidad" onkeyup="this.value=this.value.toUpperCase()">(*)
                   <p>
                  <input type="text" name="monto_parcial" size="15" placeholder="Monto Parcial"  onkeyup="this.value=this.value.toUpperCase()">(*)
                   </p>
                    <p>
                  <input type="text" name="descripcion" size="40" placeholder="Descripcion" onkeyup="this.value=this.value.toUpperCase()">(*)
                   </p>
                   
          <p>
          <input type="hidden" name="accion" value="">   
          <input type="button" value="Aceptar" onclick="validar();" class="boton2">
          <input type="button" value="Cancelar" onclick="javascript:location.href='detalle_cotizacion.php';" class="boton2">
          </p>
             <p><b>(*)Campos Obligatorios</b></p>             
           </form>  
     </div> 
</body>
</html>