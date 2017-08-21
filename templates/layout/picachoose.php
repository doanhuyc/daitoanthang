<?php 
	$d->reset();
	$sql_images= "select photo,id,link from #_slider where hienthi=1";
	$d->query($sql_images);
	$slide_giau = $d->result_array();
	
	$d->reset();
	$sql_images= "select * from #_video where hienthi=1";
	$d->query($sql_images);
	$row_video = $d->result_array();
	

?>
		<link type="text/css" href="pikachoose/bottom.css" rel="stylesheet" />        
		<script type="text/javascript" src="pikachoose/jquery.pikachoose.js"></script>
		<script language="javascript">
			$(document).ready(
				function (){
					$("#pikame").PikaChoose({carousel:true,carouselOptions:{wrap:'circular'}});
				});
		</script>

<div class="pikachoose">
	<ul id="pikame" class="jcarousel-skin-pika">
	<?php for($i=0;$i<count($slide_giau);$i++){?>
		<li><a href="<?=$slide_giau[$i]['link']?>"><img src="<?=_upload_hinhanh_l.$slide_giau[$i]['photo']?>" /></a></li>
	<?php }?>
	</ul>
</div>


