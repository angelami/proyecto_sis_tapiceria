<?php
session_start(); /*inicio de sesion*/

require_once("../../smarty/libs/Smarty.class.php");
require_once("../../conexion.php");

$__id_empleado = $_REQUEST["id_empleado"];

$smarty = new Smarty;

//$db-> debug = true;

/*LAS CONSULTAS SE TIENEN QUE HACER CON TODAS LAS TABLAS EN LAS QUE id_empleado ESTA COMO HERENCIA*/
/*EN ESTE CASO NOY HAY HERENCIA y no ve eso............ */
/*$sql = $db->Prepare("SELECT *
					  FROM 	empleados
					  WHERE id_empleado = ?
					  AND estado <> '0'
					");
$rs = $db->GetAll($sql, array($__id_empleado));

if (!$rs) {*/
	$reg = array();
	$reg["estado"] = '0';
	$reg["id_usuario"] = $_SESSION["sesion_id_usuario"];
	$rs1 = $db->AutoExecute("empleados", $reg, "UPDATE", "id_empleado='".$__id_empleado."'");
	header("Location: empleados.php");
	exit();

/*}else{
	$smarty->assign("mensaje","ERROR: Los datos no se eliminaron!!!!!!!");
	$smarty->assign("direc_css", $direc_css);
	$smarty->display("empleado_eliminar.tpl");
}*/
?>