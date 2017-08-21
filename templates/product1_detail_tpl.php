<script type="text/javascript" src="js/jquery.prettyPhoto.js"></script>
<link href="style/prettyPhoto.css" rel="stylesheet" type="text/css" />
<script type="text/javascript">

jQuery(document).ready(function() {
   	 jQuery('a[rel^="prettyPhoto"]').prettyPhoto({
                    theme: 'dark_rounded',
                    overlay_gallery: false
                });
				
});

</script>


<div class="module_main">
<div class="tcat"><?=_spchitiet?></div>        
	<div class="content" style="margin-top:10px;margin-left:10px;">
      <div class="product_detail_pic" ><a href="<?=_upload_sanpham_l.$row_detail['photo']?>" rel="prettyPhoto[pp_gal]" title="<?=htmlentities($row_detail['ten'], ENT_QUOTES, "UTF-8")?>" ><img src="<?=_upload_sanpham_l.$row_detail['photo']?>" border="0" width="250"  /></a></div>
            <ul class="product_info" style="margin-left:10px;" >
                <li><span style="color:#09F; font-weight:bold; text-transform:uppercase;"><?=$row_detail['ten_'.$lang]?></span></li>                
                 <li><b><?=_gia?> : <span style="color:#F00;"><?php if($row_detail['gia']==0) echo _contact; else echo number_format ($row_detail['gia'],0,",",".")." VNĐ";?></span></b></li>                    
                 <li><b><?=_luotxem?>:</b> <?=$row_detail['luotxem']?></span></li>                 
                 
                 </ul>                                
                 <div class="clear" style="height:20px;"></div>
				
 
 <?=$row_detail['noidung_'.$lang]?>
 
   
  
    
     </div>   
</div>
<br/>



        <div class="module_main">
<div class="tcat"><?=_spkhac?></div>        
	  <div class="content" style="padding:0px;">
<?php for($i=0,$count_sanpham_khac=count($sanpham_khac);$i<$count_sanpham_khac;$i++){	?>    
   <div class="box_sp">    	
                <div class="pic"><a href="san-pham/<?=$sanpham_khac[$i]['id']?>/<?=$sanpham_khac[$i]['tenkhongdau']?>.html" onmouseout="hideTip()" onmouseover="doTooltip(event, '<?=_upload_sanpham_l.$sanpham_khac[$i]['photo']?>')"><img src="<?=_upload_product_l.$sanpham_khac[$i]['photo']?>" border="0" width="195" height="137" /></a></div>               
                <div class="desc"><a href="san-pham/<?=$sanpham_khac[$i]['id']?>/<?=$sanpham_khac[$i]['tenkhongdau']?>.html"><?=$sanpham_khac[$i]['ten_'.$lang]?></a></div>                
                <div class="chitiet"><a href="san-pham/<?=$sanpham_khac[$i]['id']?>/<?=$sanpham_khac[$i]['tenkhongdau']?>.html"><?=_chitiet?></a></div>
            </div>
			 <?php if(($i+1)%3==0){?><div class="clear"></div><?php }?> 
<?php  } ?>
<div class="clear"></div>
</div>
</div>
