"use strict"

function validar() {
	
	var nombre = document.formu.nombre.value;
	var marca = document.formu.marca.value;

			

			if ((!v1.test(nombre)) || (nombre=="") ) {
			  	alert("El nombre incorrectos o el campo esta vacio");
			  	document.formu.nombre.focus();
			  	return;
		    }
		    if (marca=="") {
			  	alert("La marca es incorrecta o el campo esta vacio");
			  	document.formu.marca.focus();
			  	return;
		    }
			
  			document.formu.submit();

			}