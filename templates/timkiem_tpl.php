
		<div class="tcat"><?=_ketquatimkiem?></div>                                                     
        <div class="content" style="padding:0px;">
	<?php for($i=0,$count_sptb=count($product);$i<$count_sptb;$i++){ ?>
     <div class="box_sp">    	
                <div class="pic"><a href="san-pham/<?=$product[$i]['id']?>/<?=$product[$i]['tenkhongdau']?>.html" onmouseout="hideTip()" onmouseover="doTooltip(event, '<?=_upload_sanpham_l.$product[$i]['photo']?>')"><img src="<?=_upload_product_l.$product[$i]['thumb']?>" border="0" width="195" height="137" /></a></div>               
                <div class="desc"><a href="san-pham/<?=$product[$i]['id']?>/<?=$product[$i]['tenkhongdau']?>.html"><?=$product[$i]['ten_'.$lang]?></a></div>
                <div class="gia"><b><?=_gia?> : <span style="color:#F00;"><?php if($product[$i]['gia']==0) echo _contact; else echo number_format ($product[$i]['gia'],0,",",".")." VNĐ";?></span></b></div> 
                <div class="chitiet"><a href="san-pham/<?=$product[$i]['id']?>/<?=$product[$i]['tenkhongdau']?>.html"><?=_chitiet?></a></div>
            </div> 
     <?php if(($i+1)%4==0){?> <div class="clear"></div><?php }?>
    <?php } ?>
    
    
    <div class="clear"></div>
    <div class="phantrang" ><?=$paging['paging']?></div>
</div>
