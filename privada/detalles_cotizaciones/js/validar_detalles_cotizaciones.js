"use strict"

function validar() {
	
	var cantidad = document.formu.cantidad.value;
	var monto_parcial = document.formu.monto_parcial.value;
	var descripcion = document.formu.descripcion.value;
			
			if (( !v2.test(cantidad)) || (cantidad == "")) {
 		alert("La cantidad ingresada es incorrecta o el campo esta vacio");
 		document.formu.cantidad.focus();
 		return;
 	}
 	if (( !v2.test(monto_parcial)) || (monto_parcial == "")) {
 		alert("El monto_parcial ingresado es incorrecto o el campo esta vacio");
 		document.formu.monto_parcial.focus();
 		return;
 	}
			if (descripcion == "") {
 		alert("La descripcion es incorrecta o el campo esta vacio");
 		document.formu.descripcion.focus();
 		return;
 	}
 	
			
  			document.formu.submit();

			}