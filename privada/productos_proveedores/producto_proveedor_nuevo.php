<?php
session_start();
require_once("../../smarty/libs/Smarty.class.php");
require_once("../../conexion.php");
require_once("../libreria_menu.php");

$smarty = new Smarty;

$sql = $db->Prepare("SELECT*
					FROM productos_proveedores pp, productos pro, proveedores prov
					WHERE pp.id_producto = pro.id_producto
					AND pp.id_proveedor = prov.id_proveedor
					AND pp.estado <> '0'
					AND pro.estado <> '0'
					AND prov.estado <> '0'
					ORDER BY id_producto_proveedor DESC 
					LIMIT ? OFFSET ?
					");
$rs = $db->GetAll($sql);

$smarty->assign("productos_proveedores", $rs);

$smarty->assign("direc_css", $direc_css);
$smarty->display ("producto_proveedor_nuevo.tpl");
?>