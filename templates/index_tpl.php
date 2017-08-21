<?php
	$sql_dmsp="select ten_$lang,tenkhongdau,id,thumb,photo,ngaytao,mota_$lang,gia,maso from #_product where hienthi =1 and noibat!=0 order by stt,id desc";
	$d->query($sql_dmsp);
	$product_noibat=$d->result_array();
	
	$sql_dmsp="select ten_$lang,tenkhongdau,id,thumb,photo,ngaytao,mota_$lang,gia,maso from #_product where hienthi =1 and hot!=0 order by stt,id desc";
	$d->query($sql_dmsp);
	$product_moi=$d->result_array();	
	
	
	$sql_dmsp="select ten_$lang,tenkhongdau,id,thumb,photo,mota_$lang from #_news where hienthi =1 order by stt,id desc";
	$d->query($sql_dmsp);
	$tintuc=$d->result_array();	
?>
<div class="module_main">
<div class="tcat"><h1><?=_spnoibat?></h1></div>
 <div class="content">
	<?php for($i=0,$count_sptb=count($product_noibat);$i<$count_sptb;$i++){ ?>
   <div class="box_sp">  		
    	<div class="pic">
        	<a href="san-pham/<?=$product_noibat[$i]['id']?>/<?=$product_noibat[$i]['tenkhongdau']?>.html" ><img src="<?=_upload_product_l.$product_noibat[$i]['photo']?>" border="0" width="220px" height="192px" /></a>
        </div> 		
		      		
		<div class="mota_sp">
			<a href="san-pham/557/thiet-bi-dien-arteor-legrand-mat-chu-nhat.html"></a>
			<div class="desc"><a href="san-pham/<?=$product_noibat[$i]['id']?>/<?=$product_noibat[$i]['tenkhongdau']?>.html"><?=$product_noibat[$i]['ten_'.$lang]?></a></div>       		
			<div class="chitiet"><a href="san-pham/<?=$product_noibat[$i]['id']?>/<?=$product_noibat[$i]['tenkhongdau']?>.html"><?=_chitiet?></a></div>
            	<div class="maso"><?=_maso?> : <?=$product_noibat[$i]['maso']?></div>
				<div class="giasp"><?=_gia?> : <a href="lien-he.html"><?=_contact?></a></div>
          </div>
    </div>
      <?php if(($i+1)%4!=0){?> <div class="box_cach"></div><?php }?>
     <?php if(($i+1)%4==0){?> <div class="clear"></div><?php }?>
    <?php } ?>
    
    
    <div class="clear"></div>
    <div class="phantrang" ><?=$paging['paging']?></div>
</div>
</div>
<div class="module_main">
<div class="tcat"><h1><?=_spmoi?></h1></div>
<div class="content">
	<?php for($i=0,$count_sptb=count($product_moi);$i<$count_sptb;$i++){ ?>
   <div class="box_sp">  		
    	<div class="pic">
        	<a href="san-pham/<?=$product_moi[$i]['id']?>/<?=$product_moi[$i]['tenkhongdau']?>.html" ><img src="<?=_upload_product_l.$product_moi[$i]['photo']?>" border="0" width="220px" height="192px" /></a>
        </div> 		
		      		
		<div class="mota_sp">
			<a href="san-pham/557/thiet-bi-dien-arteor-legrand-mat-chu-nhat.html"></a>
			<div class="desc"><a href="san-pham/<?=$product_moi[$i]['id']?>/<?=$product_moi[$i]['tenkhongdau']?>.html"><?=$product_moi[$i]['ten_'.$lang]?></a></div>       		
			<div class="chitiet"><a href="san-pham/<?=$product_moi[$i]['id']?>/<?=$product_moi[$i]['tenkhongdau']?>.html"><?=_chitiet?></a></div>
            	<div class="maso"><?=_maso?> : <?=$product_moi[$i]['maso']?></div>
				<div class="giasp"><?=_gia?> : <a href="lien-he.html"><?=_contact?></a></div>
          </div>
    </div>
      <?php if(($i+1)%4!=0){?> <div class="box_cach"></div><?php }?>
     <?php if(($i+1)%4==0){?> <div class="clear"></div><?php }?>
    <?php } ?>
    
    
    <div class="clear"></div>
    <div class="phantrang" ><?=$paging['paging']?></div>
</div>
</div>
<div class="module_main">
	<div class="tcat"><h1><?=_tintucmoi?></h1></div>
	<div class="content" style="padding-left:10px;padding-right:10px;">
            <div class="box_new acbd">
            	<div class="image_boder hinhtt_tc"><a href="tin-tuc/<?=$tintuc[0]['id']?>/<?=$tintuc[0]['tenkhongdau']?>.html" title="<?=htmlentities($tintuc[0]['ten'], ENT_QUOTES, "UTF-8")?>"><img src="<?php if($tintuc[0]['photo']!=NULL) echo _upload_tintuc_l.$tintuc[0]['photo']; else echo 'images/noimage.gif';?>" onerror="this.src='images/noimage.gif';" width="200" height="120" title="<?=htmlentities($tintuc[0]['ten'], ENT_QUOTES, "UTF-8")?>" alt="<?=htmlentities($tintuc[0]['ten_'.$lang], ENT_QUOTES, "UTF-8")?>"/></a></div>
               <h2> <a href="tin-tuc/<?=$tintuc[0]['id']?>/<?=$tintuc[0]['tenkhongdau']?>.html" title="<?=htmlentities($tintuc[0]['ten'], ENT_QUOTES, "UTF-8")?>"><?=$tintuc[0]['ten_'.$lang]?></a></h2> <?=$tintuc[0]['mota_'.$lang]?> 
              <div class="clear"></div>
            </div>
</div> 
<div class="content tintc">
	<div class="acbdef">Tin liên quan</div>
	<?php for($i=1;$i<count($tintuc);$i++){?>
		<li><a href="tin-tuc/<?=$tintuc[$i]['id']?>/<?=$tintuc[$i]['tenkhongdau']?>.html"><?=$tintuc[$i]['ten_'.$lang]?></a></li>
	<?php }?>
</div>
</div>

