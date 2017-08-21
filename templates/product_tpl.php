<?php
	$sql_dmsp="select ten_$lang,tenkhongdau,id,thumb,mota_$lang,photo from #_news where hienthi =1 and id_item = 2  order by stt,id desc limit 0,6";
	$d->query($sql_dmsp);
	$tin=$d->result_array();
?>

<div class="module_main">
<div class="tcat"><h1><?=$title_tcat?></h1></div>                                                 
        <div class="content">
	<?php for($i=0,$count_sptb=count($product);$i<$count_sptb;$i++){ ?>
   <div class="box_sp">  		
    	<div class="pic">
        	<a href="san-pham/<?=$product[$i]['id']?>/<?=$product[$i]['tenkhongdau']?>.html" ><img src="<?=_upload_product_l.$product[$i]['photo']?>" border="0" width="220px" height="192px" /></a>
        </div> 		
		      		
		<div class="mota_sp">
			<a href="san-pham/557/thiet-bi-dien-arteor-legrand-mat-chu-nhat.html"></a>
			<div class="desc"><a href="san-pham/<?=$product[$i]['id']?>/<?=$product[$i]['tenkhongdau']?>.html"><?=$product[$i]['ten_'.$lang]?></a></div>       		
			<div class="chitiet"><a href="san-pham/<?=$product[$i]['id']?>/<?=$product[$i]['tenkhongdau']?>.html"><?=_chitiet?></a></div>
            	<div class="maso"><?=_maso?> : <?=$product[$i]['maso']?></div>
				<div class="giasp"><?=_gia?> : <a href="lien-he.html"><?=_contact?></a></div>
          </div>
    </div>
      <?php if(($i+1)%4!=0){?> <div class="box_cach"></div><?php }?>
     <?php if(($i+1)%4==0){?> <div class="clear"></div><?php }?>
    <?php } ?>
    
    
    <div class="clear"></div>
    <div class="phantrang" ><?=$paging['paging']?></div>
</div>
<div class="clear"></div>