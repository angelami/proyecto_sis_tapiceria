<?php 
session_start(); /*inicio de sesion*/

require_once("../../smarty/libs/Smarty.class.php");
require_once("../../conexion.php");
require_once("../libreria_menu.php");
require_once("../paginacion.inc.php");

$smarty = new Smarty;

//$db->debug=true;

contarRegistros($db,"productos_proveedores");

paginacion("productos_proveedores.php?", $smarty);

$sql3 = $db->Prepare("SELECT *
					FROM productos_proveedores pp, productos pro, proveedores prov
					WHERE pp.id_producto = pro.id_producto
					AND pp.id_proveedor = prov.id_proveedor
					AND pp.estado <> '0'
					AND pro.estado <> '0'
					AND prov.estado <> '0'
					ORDER BY id_producto_proveedor DESC 
					LIMIT ? OFFSET ?
					");

$smarty->assign("productos_proveedores", $db->GetAll($sql3, array($nElem, $regIni)));

$smarty->assign("direc_css", $direc_css);
$smarty->display("productos_proveedores.tpl");
?>