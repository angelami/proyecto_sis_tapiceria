<!DOCTYPE html>
<html>
<head>
	<link rel="stylesheet" href="../{$direc_css}" type="text/css">
	<meta http-equiv="Content-type" content="text/html; charset=utf-8"/>
</head>
<body>
	<div class="titulo_listado">
		<h1>
			PROVEEDORES
		</h1>
	</div>
		<div class="titulo_nuevo">
			<form name="formNuevo" method="post" action="proveedor_nuevo.php">
			<a href="javascript:document.formNuevo.submit();">
						Nuevo>>>
			</a>
			</form>
		</div>
	<center>
		<table class="listado">
			<tr>
				<th>NRO</th><th>NOMBRE</th><th>DIRECCION</th>
				<th><img src="../../images/modif.png" width="25px" height="25px"></th><th><img src="../../images/eliminar.png"width="25px" height="25px"></th>
			</tr>
			{assign var="b" value="0"}
			{assign var="total" value="`$pagina-1`"}
			{assign var="a" value="`$numreg*$total`"}
			{assign var="b" value="`$b+1+$a`"}
			{foreach item=r from=$proveedores}
			<tr>
				<td align="center">{$b}</td>
				<td>{$r.nombre}</td>
				<td align="center">{$r.direccion}</td>
				
				<td align="center">
	
			<form name="formModif{$r.id_proveedor}" method="post" action="proveedor_modificar.php">
				<input type="hidden" name="id_proveedor" value="{$r.id_proveedor}">
				     <a href="javascript:document.formModif{$r.id_proveedor}.submit();" title="Modificar proveedor Sistema">
				     	Modificar>>
					 </a>
					</form>
				</td>
				<td align="center">
					<form name="formElimi{$r.id_proveedor}" method="post" action="proveedor_eliminar.php">
						<input type="hidden" name="id_proveedor" value="{$r.id_proveedor}">
						<a href="javascript:document.formElimi{$r.id_proveedor}.submit();" title="Eliminar proveedor Sistema" onclick="javascript:return(confirm(' Desea realmente Eliminar al proveedor..?')); location.href='proveedor_eliminar.php'">
							Eliminar>>
						</a>
					</form>
				</td>
			{assign var="b" value="`$b+1`"}
			{/foreach}	
			</tr>
		</table>

		<!--PAGINACION--------------------------------->
		<table>
			<tr align="center">
				<td>
				{if !empty($urlback)}
				<a onclick="location.href='{$urlback}'" style="font-family: Verdana;font-size: 9px;cursor:pointer"; >&laquo;Anterior</a>
				{/if}
				{if !empty($paginas)}
					{foreach from=$paginas item=pag}
						{if $pag.npag == $pagina}
							{if $pagina neq '1'}|{/if} <b style="color:#FB992F;font-size: 12px;"> {$pag.npag}</b>
							{else}
							| <a onclick="location.href ='{$pag.pagV}'" style="cursor:pointer;">{$pag.npag} </a>
							{/if}
							{/foreach}
							{/if}
							{if $numpaginas gt $numbotones and !empty($urlnext) and $pagina lt $numpaginas}
							| <a onclick="location.href ='{$urlnext}'" style="font-family: Verdana;font-size: 9px;cursor:pointer">
							Siguiente&raquo;</a>
							{/if}
					</td>	
			</tr>
		</table>
	</center>
</body>
</html>