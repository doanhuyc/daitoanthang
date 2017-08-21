<?php
	$sql_hotro="select photo,mota from #_doitac";
	$d->query($sql_hotro);
	$result_sphot = $d->result_array();

?>
<div class="marquee" id="mycrawler2">
	<?php for($i=0,$count_sphot=count($result_sphot);$i<$count_sphot;$i++){ ?>
    <a style="margin-right:10px;" href="<?=$result_sphot[$i]['mota']?>" target="_blank"><img src="<?=_upload_doitac_l.$result_sphot[$i]['photo']?>" width="110" height="80" /></a>
    <?php } ?>
</div>

<script type="text/javascript">
marqueeInit({
	uniqueid: 'mycrawler2',
	style: {
		'padding': '0px',
		'width': '970px',
		'height': '117px',
		
	},
	inc: 5, //speed - pixel increment for each iteration of this marquee's movement
	mouse: 'cursor driven', //mouseover behavior ('pause' 'cursor driven' or false)
	moveatleast: 2,
	neutral: 150,
	savedirection: true,
	random: true
});
</script>