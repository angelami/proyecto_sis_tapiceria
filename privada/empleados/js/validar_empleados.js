"use strict"

function validar() {
	
	var ci = document.formu.ci.value;
 	var nombres = document.formu.nombres.value;
 	var apellidos = document.formu.apellidos.value;
	var fecha_inicio = document.formu.fecha_inicio.value; 
	var fecha_fin = document.formu.fecha_fin.value;

			
			if (( !v2.test(ci)) || (ci == "")) {
		 		alert("El ci ingresado es incorrecto o el campo esta vacio");
		 		document.formu.ci.focus();
		 		return;
		 	}
			if ((!v1.test(nombres)) || (nombres=="") ) {
			  	alert("Los nombres incorrectos o el campo esta vacio");
			  	document.formu.nombres.focus();
			  	return;
		    }
			
				if (( !v1.test(apellidos)) || (apellidos == "")) {
		 		alert("Los apellidos ingresados son incorrectos o el campo esta vacio");
		 		document.formu.apellidos.focus();
		 		return;
		 	}
			
			if (fecha_inicio =="") {
		 		alert("La fecha de inicio ingresada es incorrecta o el campo esta vacio");
		 		document.formu.fecha_inicio.focus();
		 		return;
		 	}
		 	if (fecha_fin =="") {
		 		alert("La fecha fin ingresada es incorrecta o el campo esta vacio");
		 		document.formu.fecha_fin.focus();
		 		return;
		 	}
			
  			document.formu.submit();

			}