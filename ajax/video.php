<?php
	@define ( '_lib' , '../admin/lib/');
	include_once _lib."config.php";
	include_once _lib."constant.php";
	include_once _lib."class.database.php";
	$d = new database($config['database']);
	
	@$id = $_GET['id'];
		
	$d->reset();
	$sql_video = "select link,id from #_video where id='".$id."' order by id desc";
	$d->query($sql_video);
	$row_video = $d->result_array();
	

?>
 
     <div id="mediaplayer">JW Player goes here</div>	
     <script type="text/javascript">
		jwplayer("mediaplayer").setup({			
			file: "<?=$row_video[0]['link']?>",							
			width:178,
            height:158,
			logo:{
				file: "images/logo.jpg",
				link: "http://www.example.com/"
			}			
		});
	</script> 