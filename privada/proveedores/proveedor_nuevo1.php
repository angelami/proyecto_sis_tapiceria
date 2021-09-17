<?php 
session_start();

require_once("../../smarty/libs/Smarty.class.php");
require_once("../../conexion.php");

$__nombre = $_POST["nombre"];
$__direccion = $_POST["direccion"];

//$db->debug=true;

$smarty = new Smarty;

	$reg = array();
	$reg["id_tapiceria"] = 1;
	$reg["nombre"] = $__nombre;
	$reg["direccion"] = $__direccion;
	$reg["fec_insercion"] = date("Y-m-d H:i:s");
	//$reg["fecha_modificacion"] = date("Y-m-d H:i:s") ;
	$reg["estado"] = '1';
	$reg["usuario"] = $_SESSION["sesion_id_usuario"];
	$rs1 = $db->AutoExecute("proveedores", $reg , "INSERT");

	if ($rs1) {
		header("Location: proveedores.php");
		exit();
	} else{
		$smarty->assign("mensaje","ERROR: los datos no se insertaron!!!!!");
		$smarty->assign("direc_css",$direc_css);
		$smarty->display("proveedor_nuevo1.tpl");
	}
 ?>