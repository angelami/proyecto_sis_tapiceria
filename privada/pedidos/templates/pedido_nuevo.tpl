<!DOCTYPE html>
<html>
<head>
   <link rel="stylesheet" href="../{$direc_css}" type="text/css">
    <script type="text/javascript" src="../js/expresiones_regulares.js"></script>
    <script type="text/javascript" src="js/validar_pedidos.js "></script>
	</head>
<body>  
      <div class="formu_ingreso_datos">
      <form action="pedido_nuevo1.php" method="post" name="formu">
        <h2>REGISTRAR PEDIDO </h2>
                  
                  <input  type="text" name="fecha_entrega" placeholder="Fecha Entrega" onkeyup="this.value=this.value.toUpperCase()">(*)
                  <p>
                  <input type="text" name="fecha_pedido" size="15" placeholder="Fecha Pedido" onkeyup="this.value=this.value.toUpperCase()">(*)
                  </p>
                   <p>
                  <input type="text" name="monto_total_pedido" size="15" placeholder="Monto Total Pedido"  onkeyup="this.value=this.value.toUpperCase()">(*)
                   </p>
                    
                  
          <p>
          <input type="hidden" name="accion" value="">   
          <input type="button" value="Aceptar" onclick="validar();" class="boton2">
          <input type="button" value="Cancelar" onclick="javascript:location.href='pedidos.php';" class="boton2">
          </p>
             <p><b>(*)Campos Obligatorios</b></p>             
           </form>  
     </div> 
</body>
</html>