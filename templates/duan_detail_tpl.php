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


<div class="tcat"><?=$tintuc_detail[0]['ten_'.$lang]?></div>
   <div class="content">             
           <?=$tintuc_detail[0]['noidung_'.$lang]?>
			<?php for($i=0;$i<count($hinhanh);$i++){?>
			   <div class="box_duan">
				<a href="<?=_upload_hinhanh_l.$hinhanh[$i]['photo']?>" rel="prettyPhoto[pp_gal]" title="<?=htmlentities($hinhanh[$i]['ten'], ENT_QUOTES, "UTF-8")?>" >
					<img src="<?=_upload_hinhanh_l.$hinhanh[$i]['photo']?>" border="0" width="200" />
				</a>
			   </div>
			<?php }?>
			<div class="clear"></div>
          <div class="othernews">
           <h1><?=_othernews?></h1>
           <ul>
           
<?php foreach($tintuc_khac as $tinkhac){?>
<li><a href="du-an/<?=$tinkhac['id']?>/<?=$tinkhac['tenkhongdau']?>.html" style="text-decoration:none;" title="<?=htmlentities($tinkhac['ten_'.$lang], ENT_QUOTES, "UTF-8")?>"><?=$tinkhac['ten_'.$lang]?></a> (<?=make_date($tinkhac['ngaytao'])?>)</li>
<?php }?>
     </ul>
</div>
         </div>
         
         </div>