<?php 
	$d->reset();
	$sql_images= "select photo,id from #_slider where hienthi=1";
	$d->query($sql_images);
	$slide_giau = $d->result_array();
	

?>
<style>
.theme-default #slider {
    width:980px; /* Make sure your images are the same size */
    height:365px; /* Make sure your images are the same size */
	box-shadow:none !important;
	border-radius:8px !important;
	-moz-border-radius:8px !important;
}

/*====================*/
/*=== Other Styles ===*/
/*====================*/
.clear {
	clear:both;
}
</style>
    <link rel="stylesheet" href="themes/default/default.css" type="text/css" media="screen" />
    <link rel="stylesheet" href="themes/pascal/pascal.css" type="text/css" media="screen" />
    <link rel="stylesheet" href="themes/orman/orman.css" type="text/css" media="screen" />
    <link rel="stylesheet" href="themes/nivo-slider.css" type="text/css" media="screen" />

    <div id="wrapper">
        <div class="slider-wrapper theme-default">
            <div id="slider" class="nivoSlider">
                    <?php for($i=0,$count_image=count($slide_giau);$i<$count_image;$i++){?>
                			<img src="<?=_upload_hinhanh_l.$slide_giau[$i]['photo']?>" width="980" height="365" />
            		 <?php }?> 
            </div>
        </div>



    </div>
 
    <script type="text/javascript" src="themes/jquery.nivo.slider.pack.js"></script>
    <script type="text/javascript">
    $(window).load(function() {
        $('#slider').nivoSlider();
    });
    </script>