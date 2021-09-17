<?php
session_start(); /*inicio de sesion*/

require_once("../../smarty/libs/Smarty.class.php");
require_once("../../conexion.php");

$__id_pedido= $_REQUEST["id_pedido"];

$smarty = new Smarty;

//$db-> debug = true;

/*LAS CONSULTAS SE TIENEN QUE HACER CON TODAS LAS TABLAS EN LAS QUE id_pedido ESTA COMO HERENCIA*/
$sql = $db->Prepare("SELECT *
					  FROM 	detalle_pedidos
					  WHERE id_pedido = ?
					  AND estado <> '0'
					");
$rs = $db->GetAll($sql, array($__id_pedido));

if (!$rs) {
	$reg = array();
	$reg["estado"] = '0';
	$reg["id_usuario"] = $_SESSION["sesion_id_usuario"];
	$rs1 = $db->AutoExecute("pedidos", $reg, "UPDATE", "id_pedido='".$__id_pedido."'");
	header("Location: pedidos.php");
	exit();

}else{
	$smarty->assign("mensaje","ERROR: Los datos no se eliminaron!!!!!!!");
	$smarty->assign("direc_css", $direc_css);
	$smarty->display("pedido_eliminar.tpl");
}
?>