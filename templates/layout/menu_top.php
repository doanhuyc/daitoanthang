<?php
	$sql_dmsp="select ten_$lang,tenkhongdau,id from #_product_list where hienthi =1 order by stt,id desc";
	$d->query($sql_dmsp);
	$result_dmsp=$d->result_array();
	
	$sql_dmsp="select ten_$lang,tenkhongdau,id from #_news_item where hienthi =1 order by stt,id desc";
	$d->query($sql_dmsp);
	$tintuc_item=$d->result_array();
	
	$sql_dmsp="select ten_$lang,tenkhongdau,id from #_dichvu_item where hienthi =1 order by stt,id desc";
	$d->query($sql_dmsp);
	$dichvu_item=$d->result_array();
	
	$sql_dmsp="select ten_$lang,tenkhongdau,id from #_khuyenmai_item where hienthi =1 order by stt,id desc";
	$d->query($sql_dmsp);
	$khuyenmai_item=$d->result_array();
?>

<ul>		                                        
 
	<li >
		<a <?php if($_GET['com']=='' || $_GET['com']=='index' ) echo ' class="active"' ?> href="index.html"><?=_home?></a></li> 
		
	<li class="am10" >
		<a <?php if($_GET['com']=='gioi-thieu') echo ' class="active"' ?> href="gioi-thieu.html"><?=_about?></a></li>
	
	<li class="am10" ><a <?php if($_GET['com']=='san-pham') echo ' class="active"' ?> href="san-pham.html"><?=_product?></a>		
		<!--<ul>
			<?php for($i=0;$i<count($result_dmsp);$i++){?>
				<li><a href="san-pham/<?=$result_dmsp[$i]['tenkhongdau']?>-<?=$result_dmsp[$i]['id']?>.html"><?=$result_dmsp[$i]['ten_'.$lang]?></a>					
					<?php 
						$sql_dmsp="select ten_$lang,tenkhongdau,id from #_product_cat where hienthi =1 and id_list='".$result_dmsp[$i]['id']."' order by stt,id desc";
						$d->query($sql_dmsp);
						$result_cat=$d->result_array();
						if(count($result_cat)>0){
					?>
						<ul>
							<?php for($j=0;$j<count($result_cat);$j++){?>
								<li><a href="san-pham/<?=$result_dmsp[$i]['tenkhongdau']?>/<?=$result_cat[$j]['tenkhongdau']?>-<?=$result_cat[$j]['id']?>.html"><?=$result_cat[$j]['ten_'.$lang]?></a></li>
							<?php }?>
						</ul>
					<?php }?>
				</li>
			<?php }?>
		</ul>-->
		</li> 

	
	
	<li class="am10" >
		<a <?php if($_GET['com']=='dich-vu') echo ' class="active"' ?> href="dich-vu.html"><?=_dichvu?></a></li>
	
	<li class="am10" >
		<a <?php if($_GET['com']=='tuyen-dung') echo ' class="active"' ?> href="tuyen-dung.html"><?=_tuyendung?></a></li>

	
	<li class="am10" >
		<a <?php if($_GET['com']=='tin-tuc') echo ' class="active"' ?> href="tin-tuc.html"><?=_news?></a></li>
	
	<li class="am10" >
		<a <?php if($_GET['com']=='lien-he'  ) echo ' class="active"' ?> href="lien-he.html"><?=_contact?></a></li>  

 
</ul>

