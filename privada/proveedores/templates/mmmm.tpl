<!DOCTYPE html>
<html>
<head>
   <link rel="stylesheet" href="../{$direc_css}" type="text/css">
    <script type="text/javascript" src="../js/expresiones_regulares.js"></script>
    <script type="text/javascript" src="js/validar_proveedor.js "></script>
	</head>
<body>  
      <div class="formu_ingreso_datos">
      <form action="proveedor_nuevo1.php" method="post" name="formu">
        <h2>REGISTRAR PROVEEDOR </h2>
                  
                  
                  <p>
                  <input type="text" name="nombre" size="15" placeholder="Nombre" onkeyup="this.value=this.value.toUpperCase()">(*)
                  </p>
                   
                    
                   <p>
                  <input type="text" name="direccion" size="15" placeholder="Direccion" onkeyup="this.value=this.value.toUpperCase()">
                   </p>
                    
                              
                  
          <p>
          <input type="hidden" name="accion" value="">   
          <input type="button" value="Aceptar" onclick="validar();" class="boton2">
          <input type="button" value="Cancelar" onclick="javascript:location.href='proveedores.php';" class="boton2">
          </p>
             <p><b>(*)Campos Obligatorios</b></p>             
           </form>  
     </div> 
</body>
</html>