<?php
	$sql_dmsp="select ten_$lang,tenkhongdau,id,thumb,mota_$lang,photo from #_news where hienthi =1 and id_item = 2  order by stt,id desc limit 0,6";
	$d->query($sql_dmsp);
	$tin=$d->result_array();
?>

<div class="module_main">
<!--<div class="tcat"><?=$title_tcat?></div> -->                                                    
        <div class="content">
	<?php for($i=0,$count_sptb=count($product);$i<$count_sptb;$i++){ ?>
  <div class="box_sp">    	
                <div class="pic"><a href="san-pham/<?=$product[$i]['id']?>/<?=$product[$i]['tenkhongdau']?>.html" onmouseout="hideTip()" onmouseover="doTooltip(event, '<?=_upload_sanpham_l.$product[$i]['photo']?>')"><img src="<?=_upload_product_l.$product[$i]['thumb']?>" border="0" width="195" height="137" /></a></div>               
                <div class="desc"><a href="san-pham/<?=$product[$i]['id']?>/<?=$product[$i]['tenkhongdau']?>.html"><?=$product[$i]['ten_'.$lang]?></a></div>
                <!--<div class="gia"><?=make_date($product[$i]['ngaytao'])?> </div> -->
                <div class="mota_sp"><?=catchuoi($product[$i]['mota_'.$lang],150)?></div>
            </div>
			 <?php if(($i+1)%2==0){?><div class="clear"></div><?php }?>
    <?php } ?>
    
    
    <div class="clear"></div>
    <div class="phantrang" ><?=$paging['paging']?></div>
	 <div class="clear"></div>
</div>
<div class="clear"></div>