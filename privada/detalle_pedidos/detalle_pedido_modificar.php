<?php
session_start();
require_once("../../smarty/libs/Smarty.class.php");
require_once("../../conexion.php");
require_once("../libreria_menu.php");

$__id_detalle_pedido = $_REQUEST["id_detalle_pedido"];

$smarty = new Smarty;

$sql = $db->Prepare("SELECT *
					  FROM 	detalle_pedidos
					  WHERE id_detalle_pedido = ?
					");
$rs = $db->GetAll($sql, array($__id_detalle_pedido));
$smarty->assign("detalle_pedido", $rs);

$smarty->assign("direc_css", $direc_css);
$smarty->display("detalle_pedido_modificar.tpl");
?>