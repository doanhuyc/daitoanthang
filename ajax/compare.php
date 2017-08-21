<?php
	session_start();
	@define ( '_lib' , '../admin/lib/');
	include_once _lib."config.php";
	include_once _lib."constant.php";
	include_once _lib."functions.php";
	include_once _lib."class.database.php";
	$d = new database($config['database']);
	if(isset($_POST['cmd'])){
		if($_POST['cmd']=='load_pro' and isset($_POST['str']) and $_POST['str']!=''){
			$str=$_POST['str'];
			$id_pro=(int)$_POST['id_pro'];
			$d->reset();
			if(isset($_SESSION['strid']) and count($_SESSION['strid'])>0){
				$strid=implode(',',$_SESSION['strid']);
				$sql = "select id, ten from #_product where hienthi=1 and ten like '%$str%' and id !=$id_pro and id NOT IN ($strid) order by stt,id desc limit 0,8";
			}else{
				$sql = "select id, ten from #_product where hienthi=1 and ten like '%$str%' and id !=$id_pro order by stt,id desc limit 0,8";
			}
			$d->query($sql);
			$pro=$d->result_array();
			if(!empty($pro)){
				echo '<ul class="search-suggestion-list nolist clear">';
				foreach($pro as $pro_item){
			?>
            	<li><a href="javascript:void(0)" onclick="AddToDetailCompare(<?=$pro_item['id']?>)"><strong><?=_substr($pro_item['ten'], 45)?></strong></a></li>
            <?php
				}              
                echo '</ul><!--search-suggestion-wrapper-->';
			}
		}else if($_POST['cmd']=='load_detail'){
			$id=(int)$_POST['id'];
			$d->reset();
			$sql = "select id, ten, tenkhongdau, photo, gia from #_product where id='$id'";
			$d->query($sql);
			$pro_detail=$d->fetch_array();
		?>
        	<div id="box<?=$pro_detail['id']?>">
                <div class="close clear"><a href="javascript:void(0)" onClick="RemoveFromDetailCompare(<?=$pro_detail['id']?>)" class="image-replace">Đóng</a></div><!--close-->
                <div class="img clear"><a href="san-pham/<?=$pro_detail['tenkhongdau']?>-<?=$pro_detail['id']?>.html" title="<?=$pro_detail['ten']?>"><img src="timthumb.php?src=<?=_upload_product_l,$pro_detail['photo']?>&h=120&w=180&zc=2&q=100" title=""></a></div>
                <div class="name clear">
                    <h3><?=$pro_detail['ten']?></h3>
                    <div class="price-list clear"><cite class="price"><?php if($pro_detail['gia']==0) echo 'Liên hệ'; else echo number_format ($pro_detail['gia'],0,",",".")." VNĐ";?></cite></div>
                </div>
            </div>
        <?php
		$_SESSION['strid'][$id]=$id;
		}else if($_POST['cmd']=='load_compare_detail'){
			$id=(int)$_POST['id'];
			$d->reset();
			$sql = "select nguondien, congsuat, cotap, luuluong, hutsau, hutxa, qg.ten as ten_qc from #_product as p inner join #_product_quocgia as qg on p.id_quocgia=qg.id where p.id='$id'";
			$d->query($sql);
			$pro_compare=$d->fetch_array();
			echo json_encode($pro_compare);
		}else if($_POST['cmd']=='remove_compare_pro'){
			$id=(int)$_POST['id'];
			unset($_SESSION['strid'][$id]);
		}
	}
	
?>