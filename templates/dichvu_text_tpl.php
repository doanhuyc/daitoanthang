<?php
	$sql_dmsp="select ten_$lang,tenkhongdau,id,thumb from #_product where hienthi =1 and noibat!=0 order by stt,id desc";
	$d->query($sql_dmsp);
	$product=$d->result_array();
?>
<div class="module_main">
	<div class="tcat"><?=_dichvu?></div>   
<div class="content" style="padding-left:10px;">
    	<?=$noidung_dv_text?>
    <div class="clear"></div>
</div>

</div><div style="clear:both;"></div>
