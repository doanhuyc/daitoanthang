<div class="box_container">

<div class="tcat"><?=$title_tcat?></div>
   <div class="content">
               	         
             <?php
			   if(count($product)>0){
			   for($i=0,$count_product=count($product);$i<$count_product;$i++){
		   ?>
            <div class="box_new">
            	<div class="image_boder"><img src="<?php if($product[$i]['thumb']!=NULL) echo _upload_tintuc_l.$product[$i]['thumb']; else echo 'images/noimage.gif';?>" onerror="this.src='images/noimage.gif';" width="120" height="80" title="<?=htmlentities($product[$i]['ten'], ENT_QUOTES, "UTF-8")?>" alt="<?=htmlentities($product[$i]['ten'], ENT_QUOTES, "UTF-8")?>"/></div>
               <h1> <?=$product[$i]['ten']?></h1> <?=$product[$i]['mota']?>          
               <div class="viewmore"><a href="<?=_upload_l.$product[$i]['file']?>"><img src="images/download.png" border="0" /></a></div>
              <div class="clear"></div>
              
            </div>
            <?php } }else echo '<p>Nội dung đang cập nhật, bạn vui lòng xem các chuyên mục khác.</p>';  ?>                                     
            <div class="phantrang" ><?=$paging['paging']?></div>
            </div> 
</div>