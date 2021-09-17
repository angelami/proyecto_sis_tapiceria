"use strict"

function validar(){
 	
 	var nombre = document.formu11.nombre.value;
	var direccion = document.formu11.direccion.value; 
 	var telefono = document.formu11.telefono.value; 
 	
 	if (nombre == "") {
 		alert("El nombre ingresado es incorrecto o el campo esta vacio");
 		document.formu11.nombre.focus();
 		return;
 	}
 	if (direccion == "") {
 		alert("La direccion es incorrecta o el campo esta vacio");
 		document.formu11.direccion.focus();
 		return;
 	}
 	if((!v2.test(telefono)) || (telefono == "")){
	alert("Ingrese numero de celular o telefono");
	document.formu11.telefono.focus();
	return;
}
 	alert("DATOS CORRECTOS");
}