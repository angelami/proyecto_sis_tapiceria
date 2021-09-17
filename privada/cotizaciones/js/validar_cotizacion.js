"use strict"

function validar(){
 	
 	var monto_total_cotizacion = document.formu.monto_total_cotizacion.value;
 	var fecha_cotizacion = document.formu.fecha_cotizacion.value;	
 	var nombre = document.formu.nombre.value;

 	if (nombre == "") {
 		alert("El nombre ingresado es incorrecto o el campo esta vacio");
 		document.formu.nombre.focus();
 		return;
 	} 	 	
 	if (( !v22.test(monto_total_cotizacion)) || (monto_total_cotizacion == "")) {
 		alert("El monto ingresado es incorrecto o el campo esta vacio");
 		document.formu.monto_total_cotizacion.focus();
 		return;
 	}
 	if (fecha_cotizacion == "") {
 		alert("La fecha ingresada es incorrecta o el campo esta vacio");
 		document.formu.fecha_cotizacion.focus();
 		return;
 	}
 	document.formu.submit();
}