<?php  if(!defined('_source')) die("Error");

	$title_bar='Map - ';		
	$title_tcat='Map';	
	$sql_tintuc = "select * from #_lienhe";
	$d->query($sql_tintuc);
	$map = $d->fetch_array();	
	
?>


