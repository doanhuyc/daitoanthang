<?php
	session_start();
	@define ( '_lib' , '../admin/lib/');
	include_once _lib."config.php";
	include_once _lib."constant.php";
	include_once _lib."functions.php";
	include_once _lib."class.database.php";
	$d = new database($config['database']);
	if(isset($_POST['cmd'])){
		if($_POST['cmd']=='rate' and isset($_POST['score'], $_POST['id'])){
			$score=(int)$_POST['score'];
			$id=(int)$_POST['id'];
			$d->reset();
			$sql="UPDATE #_product SET score=score+".$score.",hit=hit+1 WHERE id='$id'";
			$d->query($sql);
			echo '1';
		}
	}
	
?>