<?php
session_start();
require_once("../../smarty/libs/Smarty.class.php");
require_once("../../conexion.php");
require_once("../libreria_menu.php");

$__id_producto = $_REQUEST["id_producto"];

$smarty = new Smarty;

$sql = $db->Prepare("SELECT *
					  FROM 	productos
					  WHERE id_producto = ?
					");
$rs = $db->GetAll($sql, array($__id_producto));
$smarty->assign("producto", $rs);

$smarty->assign("direc_css", $direc_css);
$smarty->display("producto_modificar.tpl");
?>