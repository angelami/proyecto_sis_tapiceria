"use strict"

function validar() {
	var id_producto = document.formu.id_producto.value;
	var id_proveedor = document.formu.id_proveedor.value;
	var precio_producto = document.formu.precio_producto.value;
	var detalle = document.formu.detalle.value;
	
		if (id_producto =="") {
			alert("El producto no fue seleccionado");
			return;
		}

		if (id_proveedor == "") {
			alert("El proveedor no fue seleccionado");
			return;
		}
		
		if (( !v2.test(precio_producto)) || (precio_producto == "")) {
			alert("El precio producto ingresado es incorrecto o el campo esta vacio");
			document.formu.precio_producto.focus();
			return;
		}
		
		if (detalle == "") {
			alert("El campo detalle esta vacio");
			document.formu.detalle.focus();
			return;
		}
  	document.formu.submit();


}