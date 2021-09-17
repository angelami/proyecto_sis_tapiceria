<?php
session_start(); /*inicio de sesion*/

require_once("../../smarty/libs/Smarty.class.php");
require_once("../../conexion.php");

$__id_tapizado = $_REQUEST["id_tapizado"];
$__id_tapiceria = $_REQUEST["id_tapiceria"];
$smarty = new Smarty;

//$db-> debug = true;

/*LAS CONSULTAS SE TIENEN QUE HACER CON TODAS LAS TABLAS EN LAS QUE id_persona ESTA COMO HERENCIA*/
$sql = $db->Prepare("SELECT *
					  FROM 	tapiceria
					  WHERE id_tapizado = ?
					  AND estado <> '0'
					");
$rs = $db->GetAll($sql, array($__id_tapizado));

if (!$rs) {
	$reg = array();
	$reg["estado"] = '0';
	$reg["id_usuario"] = $_SESSION["sesion_id_usuario"];
	$rs1 = $db->AutoExecute("tapizados", $reg, "UPDATE", "id_tapizado='".$__id_tapizado."'");
	header("Location: tapizados.php");
	exit();

}else{
	$smarty->assign("mensaje","ERROR: Los datos no se eliminaron!!!!!!!");
	$smarty->assign("direc_css", $direc_css);
	$smarty->display("tapizado_eliminar.tpl");
}
?>