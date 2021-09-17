"use strict"

function validar() {

	
	var nombre = document.formu.nombre.value;
	var direccion = document.formu.direccion.value;
				
			if ((!v1.test(nombre)) || (nombre=="") ) {
			  	alert("El nombre es incorrecto o el campo esta vacio");
			  	document.formu.nombres.focus();
			  	return;
		    }
		    			
				if ((!v1.test(direccion)) || (direccion =="") ) {
					alert("La direccion es incorrecta o el campo esta vacio");
					document.formu.direccion.focus();
					return;
			}
			
		document.formu.submit();
}