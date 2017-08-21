<link type="text/css" href="style/bottom.css" rel="stylesheet" />
		
        <script type="text/javascript" src="js/jquery.jcarousel.min.js"></script>
		<script type="text/javascript" src="js/jquery.pikachoose.js"></script>
		<script language="javascript">
			$(document).ready(
				function (){
					$("#pikame").PikaChoose({carousel:true,carouselOptions:{wrap:'circular'}});
				});
		</script>

   
   <div class="module_main">
	<div class="content">
		<div class="ten_chitiet"><?=$row_detail['ten_'.$lang]?></div>
		<div><?=$row_detail['mota_'.$lang]?></div>
		<div><?=$row_detail['noidung_'.$lang]?></div>    
     </div>   
</div>
 <div class="module_main">
	<div class="content">
		
			<div class="pikachoose">
	<ul id="pikame" class="jcarousel-skin-pika">
		<?php for($i=0;$i<count($hinhanh);$i++){?>
			<li><a ><img src="<?=_upload_hinhanh_l.$hinhanh[$i]['photo']?>"/></a><span><?=$hinhanh[$i]['photo']?></span></li>
		<?php }?>
	</ul>
</div>
		
	</div> 		
</div>


<div style="clear:both;"></div>
      