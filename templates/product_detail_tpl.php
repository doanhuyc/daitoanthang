


<link href="css/magiczoom.css" rel="stylesheet" type="text/css" media="screen"/>
<script src="js/magiczoomplus.js" type="text/javascript"></script>
<style>
     a#Zoomer img{width:350px;height:260px;}
</style>



    <link rel="stylesheet" type="text/css" href="css/jquery.lightbox-0.5.css" media="screen" />    
    <script type="text/javascript" src="js/jquery.lightbox-0.5.js"></script><!--jquery phóng to hình-->
    <script type="text/javascript">
        $(function() {
            $('a.MagicZoom').lightBox();<!--div#gallery a:thẻ a trong div id="gallery" sẽ phóng to hình-->
        });
    </script>

<div class="box">
<div class="tcat"><h1>Chi tiết sản phẩm</h1></div>        
	<div class="content" style="padding-top:10px;">
    <div style="clear:both;"></div>            
    <div style="clear:both;"></div>
      <div class="product_detail_pic" style="margin-left:10px;" >
      <a href="<?=_upload_sanpham_l.$row_detail['photo']?>" class="MagicZoom" id="Zoomer" rel="lightbox"><img src="<?=_upload_sanpham_l.$row_detail['photo']?>" border="0" width="350" height="260" /></a><br/>    
      <a class="hinh_an" href="<?=_upload_sanpham_l.$row_detail['photo']?>" rel="zoom-id:Zoomer;" rev="<?=_upload_sanpham_l.$row_detail['photo']?>" ><img src="<?=_upload_sanpham_l.$row_detail['photo']?>" height="55"/></a>
      <?php for($i=0;$i<count($hinhanh);$i++){?>
      	<div class="hinh_an"><a  href="<?=_upload_hinhanh_l.$hinhanh[$i]['photo']?>" rel="zoom-id:Zoomer;" rev="<?=_upload_hinhanh_l.$hinhanh[$i]['photo']?>" ><img src="<?=_upload_hinhanh_l.$hinhanh[$i]['photo']?>" height="55"/></a></div>    
       <?php }?>   
    
      
      </div>
            <ul class="product_info" style="margin-left:10px;" >
                <li><span style="color:#09F; font-weight:bold; text-transform:uppercase;"><?=$row_detail['ten_'.$lang]?> - <?=$row_detail['maso']?></span></li>                
                 <li><b><?=_gia?> : <span style="color:#F00;"><?php if($row_detail['gia']==0) echo _contact; else echo number_format ($row_detail['gia'],0,",",".")." VNĐ";?></span></b></li>                    
                 <li><b><?=_luotxem?>:</b> <?=$row_detail['luotxem']?></span></li>                 
                 
                 </ul>                                
                 <div class="clear" ></div>
				
 
 
 
   <div class="clear" ></div>
  
    
     </div>   
</div>

<div class="module_tab">
   <div class="tab">
			<ul>					
					<li class="active" ><a class="tag_1" style="cursor:pointer;" ><?=_chitietsanpham?></a></li>
					<li ><a  class="tag_2" style="cursor:pointer;"><?=_nhanxet?></a></li>
			</ul>
			<div class="clear"></div>
	</div>
		<div class="clear"></div>
		<div class="content" id="tag_1" style="padding-left:3px;">                         
		<?=$row_detail['noidung_'.$lang]?> 
					<div class="clear"></div>   
		</div>
		<div class="content" id="tag_2">                         		
			<div class="fb-comments" data-href="http://<?=$config_url?>" data-width="730" data-numposts="5" data-colorscheme="light"></div>
		
		</div>
		
  
    
     </div> 


<div style="clear:both;"></div>
        <div class="box">
<div class="tcat"><h2>Sản phẩm khác</h2></div>        
	  <div class="content">
	<?php for($i=0,$count_sptb=count($sanpham_khac);$i<$count_sptb;$i++){ ?>
   <div class="box_sp">  		
    	<div class="pic">
        	<a href="san-pham/<?=$sanpham_khac[$i]['id']?>/<?=$sanpham_khac[$i]['tenkhongdau']?>.html" ><img src="<?=_upload_product_l.$sanpham_khac[$i]['photo']?>" border="0" width="220px" height="192px" /></a>
        </div> 		
		      		
		<div class="mota_sp">
			<a href="san-pham/557/thiet-bi-dien-arteor-legrand-mat-chu-nhat.html"></a>
			<div class="desc"><a href="san-pham/<?=$sanpham_khac[$i]['id']?>/<?=$sanpham_khac[$i]['tenkhongdau']?>.html"><?=$sanpham_khac[$i]['ten_'.$lang]?></a></div>       		
			<div class="chitiet"><a href="san-pham/<?=$sanpham_khac[$i]['id']?>/<?=$sanpham_khac[$i]['tenkhongdau']?>.html"><?=_chitiet?></a></div>
            	<div class="maso"><?=_maso?> : <?=$sanpham_khac[$i]['maso']?></div>
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
