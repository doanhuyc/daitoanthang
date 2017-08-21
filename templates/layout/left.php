<?php
	include _template."layout/counter.php";
	
	@$idqbc=  addslashes($_GET['id']);	
	$sql_dmsp="select * from #_product_list where hienthi =1  order by stt,id desc";
	$d->query($sql_dmsp);
	$result_dmsp=$d->result_array();
	
	$d->reset();
	$sql_video = "select * from #_yahoo order by id desc";
	$d->query($sql_video);
	$yahoo = $d->result_array();
	
	$d->reset();
	$sql_video = "select dienthoai from #_hotline";
	$d->query($sql_video);
	$hotline = $d->fetch_array();
	
	$sql_sanphamkhac = "select id,thumb,ten,tenkhongdau,photo from #_bosuutap where hienthi=1 and id <>'".$idqbc."'  order by stt,ngaytao desc limit 9";
		$d->query($sql_sanphamkhac);
		$anhkhac = $d->result_array();
	
	
?>
<script type='text/javascript' src='js/jquery.cookie.js'></script>
<script type='text/javascript' src='js/jquery.hoverIntent.minified.js'></script>
<script type='text/javascript' src='js/jquery.dcjqaccordion.2.7.min.js'></script>
<script>
jQuery(document).ready(function($){
					jQuery('#accordion-1').dcAccordion({
						eventType: 'hover',
						autoClose: true,
						saveState: true,
						disableLink: false,
						speed: 'slow',
						showCount: false,
						autoExpand: true,
						cookie	: 'dcjq-accordion-1',
						classExpand	 : 'dcjq-current-parent'
					});						
});
</script>
<div class="module_left">
	<div class="title"><?=_danhmucsanpham?></div>
    <div class="content abcd">
		
			<ul class="accordion" id="accordion-1">
				<?php for($i=0,$count_dmsp=count($result_dmsp);$i<$count_dmsp;$i++){ ?>
					<li class="dmc1">
						<a href="san-pham/<?=$result_dmsp[$i]['tenkhongdau']?>-<?=$result_dmsp[$i]['id']?>.html">
							<?=$result_dmsp[$i]['ten_'.$lang]?>
						</a>
						<?php
							$sql_dmsp="select * from #_product_cat where hienthi =1 and id_list = '".$result_dmsp[$i]['id']."'  order by stt,id desc";
							$d->query($sql_dmsp);
							$result_cat=$d->result_array();
						?>
						<ul>
							<?php for($j=0;$j<count($result_cat);$j++){?>
								<li><a href="san-pham/<?=$result_dmsp[$i]['tenkhongdau']?>/<?=$result_cat[$j]['tenkhongdau']?>-<?=$result_cat[$j]['id']?>.html"><?=$result_cat[$j]['ten_'.$lang]?></a></li>
							<?php }?>
						</ul>
					 </li>
				<?php }?>
			</ul>
       
		
    </div>
</div>
<div class="module_left">
	<div class="title"><?=_doitac?></div>
    <div class="content ptop10">
     <?php include _template."layout/run_doitac.php"; ?>
    <div style="clear:both;"></div>
    </div>
    
</div>
<div class="clear"></div>
<!--
<div class="module_left">
	<div class="title"><?=_news?></div>
    <div class="content ptop10">
     <?php include _template."layout/run_tintuc.php"; ?>
    <div style="clear:both;"></div>
    </div>
</div>
-->
<div class="module_left">
	<div class="title"><?=_hinhanh?></div>
    <div class="content">
     <?php include _template."layout/run_quangcao.php"; ?>
    <div style="clear:both;"></div>
    </div>
    
</div>

<div class="module_left">
	<div class="title"><?=_giaychungnhan?></div>
    <div class="content">
     <?php include _template."layout/run_giaychungnhan.php"; ?>
    <div style="clear:both;"></div>
    </div>
    
</div>




