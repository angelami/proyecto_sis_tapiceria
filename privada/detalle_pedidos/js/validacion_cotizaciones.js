"use strict"

function validar(){
 	var fecha_cotizacion = document.formu.fecha_cotizacion.value;
 	var monto_total_cotizacion = document.formu.monto_total_cotizacion.value;
 		

 	 	if (fecha_cotizacion == "") {
 		alert("El nombre ingresado es incorrecto o el campo esta vacio");
 		document.formu.fecha_cotizacion.focus();
 		return;
 	}
 	
 	if (( !v2.test(monto_total_cotizacion)) || (monto_total_cotizacion == "")) {
 		alert("El codigo ingresado es incorrecto o el campo esta vacio");
 		document.formu.monto_total_cotizacion.focus();
 		return;
 	}
 	alert("DATOS CORRECTOS");
}