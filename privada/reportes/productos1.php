<?php
session_start();

require_once("../../smarty/libs/Smarty.class.php");
require_once("../../conexion.php");

$smarty = new Smarty;

//$db->debug=true;

/*$sql = $db->Prepare("SELECT*
					 FROM _personas p, _usuarios u
					 WHERE p.id_persona = u.id_persona
					 AND p.estado <> '0'
					 AND u.estado <> '0'
					 ORDER BY (u.id_persona) DESC
					");*/
$sql = $db->Prepare("SELECT*
					 FROM productos p
					 INNER JOIN productos_proveedores pp ON p.id_producto = pp.id_producto
					 WHERE p.estado <> '0'
					 AND pP.estado <> '0'
					 ORDER BY (P.id_producto) DESC
					");
$rs = $db->GetAll($sql);



$sql1 = $db->Prepare("SELECT*
					 FROM tapiceria
					 WHERE id_tapiceria = 1
					 AND estado <> '0'
					");
$rs1 = $db->GetAll($sql1);
$nombre = $rs1[0]["nombre"];
$logo_tapiceria = $rs1[0]["logo_tapiceria"];

$fecha = date("Y-m-d H:i:s");

$smarty->assign("productos1", $rs);
$smarty->assign("logo_tapiceria", $logo_tapiceria);
$smarty->assign("fecha", $fecha);


$smarty->assign("direc_css", $direc_css);
$smarty->display ("productos1.tpl");
?>