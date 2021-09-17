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
					 FROM proveedores
					 WHERE estado <> '0'
					 ORDER BY (id_proveedor) DESC
					");
$rs = $db->GetAll($sql);

$smarty->assign("proveedores1", $rs);
$smarty->assign("direc_css", $direc_css);
$smarty->display ("proveedores.tpl");
?>