<?php
	session_start();
	@define ( '_template' , './templates/');
	@define ( '_source' , './sources/');
	@define ( '_lib' , './admin/lib/');

	include_once _lib."config.php";
	include_once _lib."constant.php";
	include_once _lib."functions.php";	
	include_once _lib."functions_giohang.php";
	include_once _lib."class.database.php";
	include_once _lib."file_requick.php";	
	
	if($_REQUEST['command']=='add' && $_REQUEST['productid']>0){
	$pid=$_REQUEST['productid'];
		addtocart($pid,1);
		redirect("http://$config_url/gio-hang.html");}	
		
	
	
	@$id = $_GET['id'];
		
	$d->reset();
	$sql_video = "select photo from #_slider where id='".$id."' order by id desc";
	$d->query($sql_video);
	$row_video = $d->fetch_array();
		
?>
<img src="<?=_upload_hinhanh_l.$row_video['photo']?>" width="500" height="270" />