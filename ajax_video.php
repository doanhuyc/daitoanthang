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
	$sql_video = "select url from #_video where id='".$id."' order by id desc";
	$d->query($sql_video);
	$row_video = $d->fetch_array();
	

		
?>



<object width="448" height="270" align="absmiddle" >
    
  					<param name="movie" value="http://www.youtube.com/v/<?=$row_video['url']?>&rel=0&color1=0xCCCCCC&color2=0x999999&border=0&autoplay=0&fs=1&showinfo=0&showsearch=1&hd="></param>
 
  					<param name="allowFullScreen" value="true"></param>
 
  					<param name="quality" value="best"></param>
 
  					<embed src="http://www.youtube.com/v/<?=$row_video['url']?>&rel=0&color1=0xCCCCCC&color2=0x999999&border=0&autoplay=0&fs=1&showinfo=0&showsearch=1&hd="
 
   					 type="application/x-shockwave-flash"
 
   					 width="448" height="270"  allowfullscreen="true" wmode="transparent"></embed>
</object>
