<?php
	$d->reset();
	$sql_banner_giua = "select photo_$lang from #_photo where com='banner_top' order by id desc";
	$d->query($sql_banner_giua);
	$row_banner_giua = $d->result_array();
	
?>  
       
<!--        <object width="1000" height="154" data="<?=_upload_hinhanh_l.$row_banner_giua[0]['photo_'.$lang]?>" type="application/x-shockwave-flash">
        <param value="<?=_upload_hinhanh_l.$row_banner_giua[0]['photo_'.$lang]?>" name="movie">
        <param value="high" name="quality">
        <param value="transparent" name="wmode">
        </object>  -->
 	
<img src="<?=_upload_hinhanh_l.$row_banner_giua[0]['photo_'.$lang]?>" width="1000" height="154" />	