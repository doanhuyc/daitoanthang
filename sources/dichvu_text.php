<?php  if(!defined('_source')) die("Error");
	$d->setTable('dv_text');
	$d->select("noidung_$lang,mota_$lang");
	if($d->num_rows()>0){
		$row = $d->fetch_array();
		$noidung_dv_text= $row['noidung_'.$lang];
	}
	
	// thanh tieu de
	$title_bar = _dichvu." - ";
	$title_tcat= _dichvu;
?>