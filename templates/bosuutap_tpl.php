

<form name="form1" action="index.php">
	<input type="hidden" name="bosuutapid" />
    <input type="hidden" name="command" />
</form>
<div class="tcat"><?=$title_tcat?></div>                                                     
        <div class="content">
	<?php for($i=0,$count_sptb=count($bosuutap);$i<$count_sptb;$i++){ ?>
   <div class="box_sp">  		
    	<div class="pic">
        	<a href="thu-vien-anh/<?=$bosuutap[$i]['id']?>/<?=$bosuutap[$i]['tenkhongdau']?>.html" onmouseout="hideTip()" onmouseover="doTooltip(event, '<?=_upload_tintuc_l.$bosuutap[$i]['photo']?>')"><img src="<?=_upload_tintuc_l.$bosuutap[$i]['photo']?>" border="0" /></a>
        </div>          
		<div class="desc"><a href="thu-vien-anh/<?=$bosuutap[$i]['id']?>/<?=$bosuutap[$i]['tenkhongdau']?>.html"><?=$bosuutap[$i]['ten']?></a></div>       
		
    </div>
     <?php if(($i+1)%3==0){?> <div class="clear"></div><?php }?>
    <?php } ?>
    
    
    <div class="clear"></div>
    <div class="phantrang" ><?=$paging['paging']?></div>
</div>