"use strict"

function validar() {
	
	var fecha_entrega = document.formu.fecha_entrega.value;
	var fecha_pedido = document.formu.fecha_pedido.value;
	var monto_total_pedido = document.formu.monto_total_pedido.value;

			
			if (fecha_entrega =="") {
		 		alert("La fecha de entrega ingresada es incorrecta o el campo esta vacio");
		 		document.formu.fecha_entrega.focus();
		 		return;
		 	}
		 	if (fecha_pedido =="") {
		 		alert("La fecha del pedido ingresada es incorrecta o el campo esta vacio");
		 		document.formu.fecha_pedido.focus();
		 		return;
		 	}
		 	if (( !v2.test(monto_total_pedido)) || (monto_total_pedido == "")) {
		 		alert("El monto_total_pedido ingresado es incorrecto o el campo esta vacio");
		 		document.formu.monto_total_pedido.focus();
		 		return;
		 	}
								
  			document.formu.submit();
			}