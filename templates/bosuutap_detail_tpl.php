<link href="js/galleria/css/galleria.folio.css" rel="stylesheet" type="text/css">
<script src="js/galleria/galleria-1.2.8.min.js"></script>
<script src="js/galleria/galleria.folio.min.js"></script>
<script>
			Galleria.loadTheme('js/galleria/galleria.folio.min.js');
			$("#album_view").galleria({
				autoplay: 12000,
				pauseOnInteraction: false,
				imageCrop: false,
				maxScaleRatio: 1,
				preload: 3,
				width: 708,
				height: 1 ,
				fullscreenTransition:'slide',
				
			});
			Galleria.run('#album_view');
		</script>
<div class="tcat"><?=_chitiet?></div>
<h1 class="chitiet_tin"><?=$title_tcat?></h1>
<div id="album_view">  		
<?php for($i=0;$i<count($hinhanh);$i++){?>
		<div class="box_sp">
              <a class="thumb_album" href="<?=_upload_hinhanh_l.$hinhanh[$i]['photo'];?>"><img src="<?=_upload_hinhanh_l.$hinhanh[$i]['photo'];?>" width="220" height="165" border="0"  class="img_sp" onmouseover="doTooltip(event, '<?=_upload_hinhanh_l.$hinhanh[$i]['photo'];?>')" onmouseout="hideTip()" /><span class="shadow_bor"></span></a>
              <div class="clear"></div>   
              <div class="sp_info_img_bottom"></div>                         
        </div>
		<?php if(($i+1)%3==0){?><div class="clear"></div><?php }?>
<?php }?>		  
</div>	
<div class="clear"></div>
   