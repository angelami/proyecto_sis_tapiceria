"use strict"

function validar(){
 	var ci = document.formu.ci.value;
 	var nombre = document.formu.nombre.value;
 	var apellido = document.formu.apellido.value;
	var direccion = document.formu.direccion.value; 
	var telefono = document.formu.telefono.value;
 
 	if (( !v2.test(ci)) || (ci == "")) {
 		alert("El ci ingresado es incorrecto o el campo esta vacio");
 		document.formu.ci.focus();
 		return;
 	}
 	if (nombre == "") {
 		alert("El nombre ingresado es incorrecto o el campo esta vacio");
 		document.formu.nombre.focus();
 		return;
 	}
 	if (apellido == "") {
 		alert("El apellido ingresado es incorrecto o el campo esta vacio");
 		document.formu.apellido.focus();
 		return;
 	}
 	if (( !v1.test(direccion)) || (direccion == "")) {
 		alert("La direccion es incorrecta o el campo esta vacio");
 		document.formu.direccion.focus();
 		return;
 	}
 	if((!v2.test(telefono)) || (telefono == "")){
	alert("El telefono o celular es incorrecto o el campo esta vacio");
	document.formu.telefono.focus();
	return;
}
 	document.formu.submit();
}