<?php 
	$sql_dmsp="select noidung_$lang from #_footer";
	$d->query($sql_dmsp);
	$footer=$d->fetch_array();	
	
	$sql_dmsp="select * from #_hotline";
	$d->query($sql_dmsp);
	$mxh=$d->fetch_array();	
?>


	  
    <div class="noidung_ft"><?=$footer['noidung_'.$lang]?>


</div>
	<div class="thongke">
			<div class="link">
				
				<a href="<?=$mxh['face']?>" target="_blank"><img src="images/face.png" /></a>
				<a href="https://plus.google.com/u/0/b/111116621266019639837/+Daitoanthangthep/about" rel="publisher"><img src="images/goo.png" /></a>
				<a href="<?=$mxh['twis']?>" target="_blank"><img src="images/twis.png" /></a>
				<a href="<?=$mxh['you']?>" target="_blank"><img src="images/you.png" /></a>

			</div>
			<div class="tt_thongke"><?=_thongke?></div>
			<div class="content_thongke">
				<!--<div class="dangonl"><?=_dangonline?> : <?php $count = count_online(); echo $count['dangxem']?></div>
				<div class="tongonl"><?=_tongonline?> : <?php $count = count_online(); echo $count['daxem']?></div>
				<?=$counter?>-->
				<li class="dangonl"><?=_dangonline?> : <?php $count = count_online(); echo $count['dangxem']?></li>
				<li class="dangonl"><?=_tongonline?> : <?php $count = count_online(); echo $count['daxem']?></li>
			</div>
	</div>
	<div class="clear"></div>
