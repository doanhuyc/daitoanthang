<?php 
	session_start();
	@define ( '_template' , '../templates/');
	@define ( '_source' , '../sources/');
	@define ( '_lib' , '../admin/lib/');
	
	include_once _lib."config.php";
	include_once _lib."constant.php";
	include_once _lib."functions.php";
	include_once _lib."class.database.php";
	$d = new database($config['database']);
	if(isset($_POST['act'])){
		if($_POST['act']=='load_news' and isset($_POST['com'])){
			$com=$_POST['com'];
			if($com!='hoidap'){
				$link='';
			if($com=='dichvu')
				$link='dich-vu';
			else if($com=='tuvan')
				$link='tu-van-ho-tro';
			else if($com=='gioithieu')
				$link='gioi-thieu';
			else if($com=='news')
				$link='tin-tuc';
			else if($com=='nguyendo')
				$link='<?=$link?>';
			else if($com=='xaydung')
				$link='xay-dung-moi';
			else if($com=='hoatdong')
				$link='hoat-dong';
			else if($com=='phongngu')
				$link='phong-ngu';
			else if($com=='phongkhach')
				$link='phong-khach';
			else if($com=='phongtam')
				$link='phong-tam';
			else if($com=='bep')
				$link='bep';
			else if($com=='kinhnghiem')
				$link='kinh-nghiem';
			else if($com=='thugian')
				$link='thu-gian';
			$d->reset();
			$sql = "select id, ten, tenkhongdau, mota, thumb from #_news where hienthi=1 and com='$com' and noibat>0 order by stt,id desc limit 0,2";
			$d->query($sql);
			$result=$d->result_array();
				  	if(!empty($result)){
						echo '<ul class="news_home">';
						foreach($result as $result_item){
				?>
                	<li>
                        <div class="show-news">
                            <div class="block_img"><img src="<?=_upload_news_l,$result_item['thumb']?>" title="<?=$result_item['ten']?>" alt="<?=$result_item['ten']?>" /></div>
                            <div class="block_info">
                                <p class="title-news"><a href="<?=$link?>/<?=$result_item['tenkhongdau']?>-<?=$result_item['id']?>.html" title="<?=$result_item['ten']?>"><?=_substr($result_item['ten'],100)?></a></p>
                                 <p class="mota"><?=_substr($result_item['mota'],250)?></p>
                            </div><!--block-name-->
                        </div><!--show-news-->
                        <div class="clear"></div>
                    </li>
                <?php	
						}
						echo '</ul>';	
						echo '<div class="more"><a href="$link.html" class="btn_xemtiep"></a></div>
                  				<div class="clear"></div>';
					}else{
						echo '<em>Nội dung đang cập nhật...</em>';	
					}
			}else{
				$d->reset();
				$sql = "select id, ten, tenkhongdau, noidung from #_comment where hienthi=1 order by stt,id desc limit 0,2";
				$d->query($sql);
				$hoidap=$d->result_array();
				if(!empty($hoidap)){
						echo '<ul class="news_home">';
						foreach($hoidap as $hoidap_item){
					?>
                        <li>
                            <div class="show-news">
                                <div class="block_img1"></div>
                                <div class="block_info1">
                                    <p class="mota1"><a href="hoi-dap/<?=$hoidap_item['tenkhongdau']?>-<?=$hoidap_item['id']?>.html"><?=$hoidap_item['noidung']?></a></p>
                                </div><!--block-name-->
                            </div><!--show-news-->
                            <div class="clear"></div>
                        </li>
                    <?php
						}
						echo '<ul>';
						echo '<div class="more"><a href="hoi-dap.html" class="btn_xemtiep"></a></div>
                      		<div class="clear"></div>';
					}
			}
		}
	}else{
		echo 'error';
	}
	
?>