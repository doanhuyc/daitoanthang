<?php
	$sql_dmsp="select ten_$lang,tenkhongdau,id,thumb,photo,ngaytao,mota_$lang,gia,maso from #_product where hienthi =1 and noibat!=0 order by stt,id desc";
	$d->query($sql_dmsp);
	$product_noibat=$d->result_array();
	
	$sql_dmsp="select ten_$lang,tenkhongdau,id,thumb,photo,ngaytao,mota_$lang,gia,maso from #_product where hienthi =1 and hot!=0 order by stt,id desc";
	$d->query($sql_dmsp);
	$product_moi=$d->result_array();	
?>
<div class="module_main">
<div class="tcat"><h1><?=_spnoibat?></h1></div>
<div class="content" id="tag_1" style="padding-left:3px;">                         
				<?php for($i=0,$count_sptb=count($product_noibat);$i<$count_sptb;$i++){ ?>
	<div class="box_sp">    	
		<div class="pic"><a href="san-pham/<?=$product_noibat[$i]['id']?>/<?=$product_noibat[$i]['tenkhongdau']?>.html" onmouseout="hideTip()" onmouseover="doTooltip(event, '<?=_upload_sanpham_l.$product_noibat[$i]['photo']?>')"><img src="<?=_upload_product_l.$product_noibat[$i]['photo']?>" border="0" width="195" height="137" /></a></div>               
		<div class="bong_sp"></div>
		<div class="desc"><a href="san-pham/<?=$product_noibat[$i]['id']?>/<?=$product_noibat[$i]['tenkhongdau']?>.html"><?=$product_noibat[$i]['ten_'.$lang]?></a></div>
		<div class="maso"><?=_maso?> : <?=$product_noibat[$i]['maso']?></div>
		<div class="giasp"><?=_gia?> : <span><?=_contact?></span></div>
	</div>
			 <?php if(($i+1)%4==0){?><div class="clear"></div><?php }?>
			<?php } ?>
			<div class="clear"></div>
		</div>
</div>
<div class="module_main">
<div class="tcat"><h1><?=_spmoi?></h1></div>
<div class="content" id="tag_1" style="padding-left:3px;">                         
				<?php for($i=0,$count_sptb1=count($product_moi);$i<$count_sptb1;$i++){ ?>
	<div class="box_sp">    	
		<div class="pic"><a href="san-pham/<?=$product_moi[$i]['id']?>/<?=$product_moi[$i]['tenkhongdau']?>.html" onmouseout="hideTip()" onmouseover="doTooltip(event, '<?=_upload_sanpham_l.$product_moi[$i]['photo']?>')"><img src="<?=_upload_product_l.$product_moi[$i]['photo']?>" border="0" width="195" height="137" /></a></div>               
		<div class="bong_sp"></div>
		<div class="desc"><a href="san-pham/<?=$product_moi[$i]['id']?>/<?=$product_moi[$i]['tenkhongdau']?>.html"><?=$product_moi[$i]['ten_'.$lang]?></a></div>
		<div class="maso"><?=_maso?> : <?=$product_moi[$i]['maso']?></div>
		<div class="giasp"><?=_gia?> : <span><?=_contact?></span></div>
	</div>
			 <?php if(($i+1)%4==0){?><div class="clear"></div><?php }?>
			<?php } ?>
			<div class="clear"></div>
		</div>
</div>

