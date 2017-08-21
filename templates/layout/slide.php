<?php 
	$d->reset();
	$sql_images= "select photo,id from #_slider where hienthi=1";
	$d->query($sql_images);
	$slide_giau = $d->result_array();
	
	$d->reset();
	$sql_images= "select * from #_video where hienthi=1";
	$d->query($sql_images);
	$row_video = $d->result_array();
	

?>
	<script type="text/javascript">
	$(document).ready(function() {
		  $('li.ajx_sl a').click(function (){
			var value = $(this).attr('rel');			
			if(value != '')
				$('.hinh_slide').load("ajax_slide.php?id="+value);
			return false;
		});	
		$('.list_video ul li a').click(function (){
			var value = $(this).attr('title');			
			if(value != '')
				$('.video_1').load("ajax_video.php?id="+value);
			return false;
		});		
			
	});
</script>
	<link rel="stylesheet" type="text/css" href="css/jcarousel.css" media="screen" />
    <script type="text/javascript" src="js/jquery.jcarousel.js"></script><!--jquery chạy hình ngan từng nhít một-->
    <script type="text/javascript">
		jQuery(document).ready(function() {
    	jQuery('#mycarousel').jcarousel({<!--thẻ ul id="mycarousel" sẽ được thực thi-->
    	wrap: 'circular',
		auto:1,
		scroll: 1
   	 	});    
	});
	</script>
<div class="slide">	
   <?php include _template."layout/picachoose.php"; ?>
</div><!--slide-->
<div class="video">
	<div class="video_1">
		<object width="448" height="270" align="absmiddle" >
    
  					<param name="movie" value="http://www.youtube.com/v/<?=$row_video[0]['url']?>&rel=0&color1=0xCCCCCC&color2=0x999999&border=0&autoplay=0&fs=1&showinfo=0&showsearch=1&hd="></param>
 
  					<param name="allowFullScreen" value="true"></param>
 
  					<param name="quality" value="best"></param>
 
  					<embed src="http://www.youtube.com/v/<?=$row_video[0]['url']?>&rel=0&color1=0xCCCCCC&color2=0x999999&border=0&autoplay=0&fs=1&showinfo=0&showsearch=1&hd="
 
   					 type="application/x-shockwave-flash"
 
   					 width="448" height="270"  allowfullscreen="true" wmode="transparent"></embed>
		</object>	
	</div>
	<div class="list_video">
		<ul>
			<?php for($i=0;$i<count($row_video);$i++){?>
			<li><a href="#" title="<?=$row_video[$i]['id']?>" ><?=$row_video[$i]['ten_'.$lang]?></a></li>
			<?php }?>
		</ul>
	</div>
</div><!--video-->








