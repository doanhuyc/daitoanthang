<div class="tcat"><?=$title_tcat?></div>

   <div class="content" style="padding-left:10px;padding-right:10px;">
               	         
             <?php
			   if(count($tintuc)>0){
			   for($i=0,$count_tintuc=count($tintuc);$i<$count_tintuc;$i++){
		   ?>
           <div class="box_new">
           <h1> <a href="<?=_upload_tintuc_l.$tintuc[$i]['photo']?>" title="<?=htmlentities($tintuc[$i]['ten_'.$lang], ENT_QUOTES, "UTF-8")?>"><?=$tintuc[$i]['ten_'.$lang]?></a></h1>
            	<div class="image_boder" style="background:none !important;border:none;"><a title="download" href="<?=_upload_tintuc_l.$tintuc[$i]['photo']?>"><img src="images/download.png" width="70"></a></span></div></br>
               <?=$tintuc[$i]['mota_'.$lang]?>          
              <div class="clear"></div>
            </div>
           
          
            <?php } }else echo '<p>Nội dung đang cập nhật, bạn vui lòng xem các chuyên mục khác.</p>';  ?>                                     
            <div class="phantrang" ><?=$paging['paging']?></div>
            </div> 
