"use strict"

function validar(){
 	
 	var nombre = document.formu.nombre.value;
	var telefono = document.formu.telefono.value; 
 	var direccion = document.formu.direccion.value; 
 	
 	if (nombre == "") {
 		alert("El nombre ingresado es incorrecto o el campo esta vacio");
 		document.formu.nombre.focus();
 		return;
 	}
 	
 	if((!v2.test(telefono)) || (telefono == "")){
	alert("Ingrese numero de celular o telefono");
	document.formu.telefono.focus();
	return;
}
if (direccion == "") {
 		alert("La direccion es incorrecta o el campo esta vacio");
 		document.formu.direccion.focus();
 		return;
 	}
 	document.formu.submit();
}