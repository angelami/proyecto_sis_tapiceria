<?php
session_start();
require_once("../../smarty/libs/Smarty.class.php");
require_once("../../conexion.php");
require_once("../libreria_menu.php");

$smarty = new Smarty;

//$db->debug=true;

/*$sql = $db->Prepare("SELECT*
					 FROM _personas p, _usuarios u
					 WHERE p.id_persona = u.id_persona
					 AND p.estado <> '0'
					 AND u.estado <> '0'
					 ORDER BY (p.id_persona) DESC
					");*/
$sql = $db->Prepare("SELECT *
					FROM productos p
					 INNER JOIN productos_proveedores pp ON p.id_producto = pp.id_producto
					 WHERE p.estado <> '0'
					 AND pP.estado <> '0'
					 ORDER BY (p.id_producto) DESC
					");
$rs = $db->GetAll($sql);

$smarty->assign("productos1", $rs);
$smarty->assign("direc_css", $direc_css);
$smarty->display ("productos.tpl");
?>