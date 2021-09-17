<?php
session_start();
require_once("../../smarty/libs/Smarty.class.php");
require_once("../../conexion.php");
require_once("../libreria_menu.php");

$__id_pedido = $_REQUEST["id_pedido"];

$smarty = new Smarty;

$sql = $db->Prepare("SELECT *
					  FROM 	pedidos
					  WHERE id_pedido = ?
					");
$rs = $db->GetAll($sql, array($__id_pedido));
$smarty->assign("pedido", $rs);

$smarty->assign("direc_css", $direc_css);
$smarty->display("pedido_modificar.tpl");
?>