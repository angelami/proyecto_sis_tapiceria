<?php 
session_start();

require_once("../../smarty/libs/Smarty.class.php");
require_once("../../conexion.php");

$__ci = $_POST["ci"];
$__nombres = $_POST["nombres"];
$__apellidos = $_POST["apellidos"];
$__fecha_inicio = $_POST["fecha_inicio"];
$__fecha_fin = $_POST["fecha_fin"];

//$db->debug=true;

$smarty = new Smarty;

	$reg = array();
	$reg["id_tapiceria"] = 1;
	$reg["ci"] = $__ci;
	$reg["nombres"] = $__nombres;
	$reg["apellidos"] = $__apellidos;
	$reg["fecha_inicio"] = $__fecha_inicio;
	$reg["fecha_fin"] = $__fecha_fin;
	$reg["fec_insercion"] = date("Y-m-d H:i:s");
	//$reg["fecha_modificacion"] = date("Y-m-d H:i:s") ;
	$reg["estado"] = '1';
	$reg["usuario"] = $_SESSION["sesion_id_usuario"];
	$rs1 = $db->AutoExecute("empleados", $reg , "INSERT");

	if ($rs1) {
		header("Location: empleados.php");
		exit();
	} else{
		$smarty->assign("mensaje","ERROR: los datos no se insertaron!!!!!");
		$smarty->assign("direc_css",$direc_css);
		$smarty->display("empleado_nuevo1.tpl");
	}
 ?>