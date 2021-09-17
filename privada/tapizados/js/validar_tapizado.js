"use strict"

function validar() {
	
	var monto_estimado = document.formu.monto_estimado.value;
	var objeto = document.formu.objeto.value;
	var tipo_tapizado = document.formu.tipo_tapizado.value;
	var color = document.formu.color.value;
	var disenio = document.formu.disenio.value;
	var descripcion = document.formu.descripcion.value;
	
	
	
			
			if (( !v22.test(monto_estimado)) || (monto_estimado == "")) {
	 		alert("El monto_estimado ingresado es incorrecto o el campo esta vacio");
	 		document.formu.monto_estimado.focus();
	 		return;
	 	}
	 		if (objeto == "") {
	 		alert("El objeto ingresado es incorrecto o el campo esta vacio");
	 		document.formu.objeto.focus();
	 		return;
	 	}
	 	if (tipo_tapizado == "") {
	 		alert("El tipo_tapizado ingresada es incorrecto o el campo esta vacio");
	 		document.formu.tipo_tapizado.focus();
	 		return;
	 	}
	 	if (( !v1.test(color)) || (color == "")) {
	 		alert("El color ingresado es incorrecto o el campo esta vacio");
	 		document.formu.color.focus();
	 		return;
	 	}
	 	if (disenio == "") {
	 		alert("El diseño ingresado es incorrecto o el campo esta vacio");
	 		document.formu.disenio.focus();
	 		return;
	 	}
	 	
	 	if  (descripcion == "") {
	 		alert("La descripcion es incorrecta o el campo esta vacio");
	 		document.formu.descripcion.focus();
	 		return;
	 	}
	 	
	 	  	document.formu.submit();

			}