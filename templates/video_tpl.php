<?php
	$sql_dmsp="select ten_$lang,tenkhongdau,id,thumb,mota_$lang,photo from #_news where hienthi =1 and id_item = 2  order by stt,id desc limit 0,6";
	$d->query($sql_dmsp);
	$tin=$d->result_array();
?>

<div class="module_main">
<div class="tcat">Video</div>                                                     
        <div class="content" style="padding:0px;">
	<?php for($i=0,$count_sptb=count($video);$i<$count_sptb;$i++){ ?>
   <div class="box_video">    	
    	<object width="340" height="315" align="absmiddle" >
    
  					<param name="movie" value="http://www.youtube.com/v/<?=$video[$i]['url']?>&rel=0&color1=0xCCCCCC&color2=0x999999&border=0&autoplay=0&fs=1&showinfo=0&showsearch=1&hd="></param>
 
  					<param name="allowFullScreen" value="true"></param>
 
  					<param name="quality" value="best"></param>
 
  					<embed src="http://www.youtube.com/v/<?=$video[$i]['url']?>&rel=0&color1=0xCCCCCC&color2=0x999999&border=0&autoplay=0&fs=1&showinfo=0&showsearch=1&hd="
 
   					 type="application/x-shockwave-flash"
 
   					 width="340" height="315"  allowfullscreen="true" wmode="transparent"></embed>
</object>	
    </div>
    <?php } ?>
    
    
    <div class="clear"></div>
    <div class="phantrang" ><?=$paging['paging']?></div>
</div>