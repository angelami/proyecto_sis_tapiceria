<!DOCTYPE html>
<html>
<head>
   <link rel="stylesheet" href="../{$direc_css}" type="text/css">
    <script type="text/javascript" src="../js/expresiones_regulares.js"></script>
    <script type="text/javascript" src="js/validar_tapizado.js "></script>
	</head>
<body>  
      <div class="formu_ingreso_datos">
      <form action="tapizado_nuevo1.php" method="post" name="formu">
        <h2>REGISTRAR TAPIZADO </h2>
                  
                  <input  type="text" name="monto_estimado" size="11" placeholder="Monto Estimado">(*)
                  <p>
                  <input type="text" name="objeto" size="30" placeholder="Objeto" onkeyup="this.value=this.value.toUpperCase()">(*)
                  </p>
                   <p>
                  <input type="text" name="tipo_tapizado" size="30" placeholder="Tipo Tapizado"  onkeyup="this.value=this.value.toUpperCase()">(*)
                   </p>
                    <p>
                  <input type="text" name="color" size="30" placeholder="Color" onkeyup="this.value=this.value.toUpperCase()">(*)
                   </p>
                   <p>
                  <input type="text" name="disenio" size="30" placeholder="Diseño" onkeyup="this.value=this.value.toUpperCase()">
                   </p>
                    <p>
                  <input type="text" name="descripcion" size="60" placeholder="Descripcion" >
                  </p>
                                   
                
                  
          <p>
          <input type="hidden" name="accion" value="">   
          <input type="button" value="Aceptar" onclick="validar();" class="boton2">
          <input type="button" value="Cancelar" onclick="javascript:location.href='tapizados.php';" class="boton2">
          </p>
             <p><b>(*)Campos Obligatorios</b></p>             
           </form>  
     </div> 
</body>
</html>