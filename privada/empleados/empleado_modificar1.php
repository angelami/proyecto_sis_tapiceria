<?php
session_start();

require_once("../../smarty/libs/Smarty.class.php");
require_once("../../conexion.php");

$__id_empleado = $_POST["id_empleado"];
$__id_tapiceria = $_POST["id_tapiceria"];

$__ci = $_POST["ci"];
$__nombres = $_POST["nombres"];
$__apellidos = $_POST["apellidos"];
$__fecha_inicio = $_POST["fecha_inicio"];
$__fecha_fin = $_POST["fecha_fin"];

//$db->debug=true;
$smarty = new Smarty;

$reg = array();
$reg["ci"] = $__ci;
$reg["nombres"] = $__nombres;
$reg["apellidos"] = $__apellidos;
$reg["fecha_inicio"] = $__fecha_inicio;
$reg["fecha_fin"] = $__fecha_fin;

$reg["usuario"] = $_SESSION["sesion_id_usuario"];
$rs1 = $db->AutoExecute("empleados", $reg, "UPDATE", "id_empleado='".$__id_empleado."'");

if ($rs1) {
	header("Location: empleados.php");
	exit();
}else{
	$smarty->assign("mensaje","ERROR: Los datos no se modificaron!!!!!!!!!");
	$smarty->assign("direc_css", $direc_css);
	$smarty->assign("id_empleado", $__id_persona);
	$smarty->display("empleado_modificar1.tpl");
}

?>