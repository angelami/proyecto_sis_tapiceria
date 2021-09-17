<?php
session_start();
require_once("../../smarty/libs/Smarty.class.php");
require_once("../../conexion.php");
require_once("../libreria_menu.php");

$smarty = new Smarty;

//$db->debug=true;

/*$sql = $db->Prepare("SELECT*
					 FROM tapiceria t, clientes cl
					 WHERE t.id_tapiceria = cl.id_tapiceria
					 AND t.estado <> '0'
					 AND cl.estado <> '0'
					 ORDER BY (t.id_tapiceria) DESC
					");*/
$sql = $db->Prepare("SELECT *
					 FROM clientes
					 WHERE estado <> '0'
					 ORDER BY (id_cliente) DESC
					");
$rs = $db->GetAll($sql);

$smarty->assign("clientes1", $rs);
$smarty->assign("direc_css", $direc_css);
$smarty->display("clientes.tpl");
?>