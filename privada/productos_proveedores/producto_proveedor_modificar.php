<?php
session_start();
require_once("../../smarty/libs/Smarty.class.php");
require_once("../../conexion.php");
require_once("../libreria_menu.php");

$__id_producto_proveedor = $_REQUEST["id_producto_proveedor"];

$smarty = new Smarty;

$sql = $db->Prepare("SELECT *
					  FROM 	productos_proveedores
					  WHERE id_producto_proveedor = ?
					");
$rs = $db->GetAll($sql, array($__id_persona));
$smarty->assign("producto_proveedor", $rs);

$smarty->assign("direc_css", $direc_css);
$smarty->display("producto_proveedor_modificar.tpl");
?>