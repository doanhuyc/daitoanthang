<?php  if(!defined('_source')) die("Error");
	$d->setTable('about');
	$d->select("noidung_$lang,mota_$lang");
	if($d->num_rows()>0){
		$row = $d->fetch_array();
		$noidung_about= $row['noidung_'.$lang];
	}
	
	// thanh tieu de
	$title_bar = _about." - ";
	$title_tcat= _about;
?>