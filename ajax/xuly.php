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
		if($_POST['act']=='load_congtrinhmain' and isset($_POST['id_cat'])){
			$id_cat=$_POST['id_cat'];
			$d->reset();
			$sql="SELECT id, ten, tenkhongdau, thumb, masp, mota, photo, luotxem FROM #_product WHERE hienthi=1 and id_list=$id_cat ORDER BY stt, id";
			$d->query($sql);
			$congtrinh=$d->result_array();
			if(!empty($congtrinh) and count($congtrinh)>0){
				#ALBUM HÌNH======================	
				$d->reset();
				$sql = "select id,thumb,photo from #_hasp where hienthi=1 and id_photo='".$congtrinh[0]['id']."' and com='hasp'";
				$d->query($sql);
				$album_hinh = $d->result_array();
?>
<script type="text/javascript">
	$(function () {
		var imgData = [
				<?php
					if($congtrinh[0]['photo']!=''){
				?>
				{img: '<?=_upload_product_l,$congtrinh[0]['photo']?>', href: '<?=_upload_product_l,$congtrinh[0]['photo']?>'},
				<?php	
					}
					if(!empty($album_hinh)){
						foreach($album_hinh as $item_ha){
				?>	
					{img: '<?=_upload_product_l,$item_ha['photo']?>', href: '<?=_upload_product_l,$item_ha['photo']?>'}, 
				<?php
					 }
					}
				?>
		];
	
		/*! Photos by Alexei Lebedev: http://alexeilebedev.com/ */
	
		$.fn.noop = function(){return this};
		var fotorama = $('#fotorama');
	
	fotorama.fotorama({
	  data: imgData,
	  width: 515,
	  height:520,
	  aspectRatio: 700/467,
	  thumbsPreview: true,
	  loop: true,
	  autoplay: 5000,
	  caption: 'overlay',
	  onClick: function(data){
		var fotoramaClasses = fotorama.attr('class');
		var fotoramaTouchStyle = fotorama.data('options').touchStyle;
		// fancybox manual call
				$.fancybox(fotorama.data('options').data,
				{
					type: 'image',
					index: data.index,
					changeFade: 333,
					transitionIn: 'elastic',
					transitionOut: 'elastic',
					padding: 0,
					orig: $('.fotorama__wrap', fotorama),
					onStart: function(fancybox, i) {
						$.extend(fotorama.data('options'), {touchStyle: false});
						fotorama
								.trigger('showimg', [i, 333])
								.removeClass('fotorama_csstransitions')
								.find('.fotorama__wrap')
								.removeClass('fotorama__wrap_style_touch')
								.addClass('fotorama__wrap_style_fade')
								.find('.fotorama__frame').not('.fotorama__frame_active')
								[fotoramaTouchStyle ? 'fadeTo': 'noop'](0, 0);
					},
					onClosed: function() {
						$.extend(fotorama.data('options'), {touchStyle: fotoramaTouchStyle});
						fotorama
							.trigger('showimg', [undefined, 0])
							.attr({'class': fotoramaClasses})
							.find('.fotorama__wrap')
							[fotoramaTouchStyle ? 'addClass' : 'removeClass']('fotorama__wrap_style_touch')
							[!fotoramaTouchStyle ? 'addClass' : 'removeClass']('fotorama__wrap_style_fade')
							.find('.fotorama__frame')
							[fotoramaTouchStyle ? 'fadeTo': 'noop'](0, 1);
					}
				});
	
				// stop fotorama
				return false;
			}
		});
	});
</script>
<div class="tab-left">
    <!--<div class="maso">Mã số: <span class="green">ma cong trinh</span></div>--><!--maso-->
    <div class="slidercongtrinh">
        <div id="mainslidecongtrinh">
            <div id="fotorama">
                Please enable Javascript
            </div>
        </div><!---slide-->
        <div class="clear"></div>
    </div><!--slidercongtrinh-->
</div><!--tab-left-->
<div class="tab-right">
    <div class="more_info_right">
        <p class="maso_right"><?=$congtrinh[0]['masp']?></p>
        <p><?=$congtrinh[0]['mota']?></p>
        <p class="pdetail"><a href="javascript:();" class="btn_detail" onclick="load_detail(<?=$congtrinh[0]['id']?>)"></a><div class="clear"></div></p>
    </div>
    <div class="title-mau-khac"><img src="images/icon-muiten.png" /><p>Các tin khác</p></div><!--title-mau-khac-->
    <div class="show-pro_congtrinh">
    	<?php
			if(!empty($congtrinh) and count($congtrinh)>1){
				foreach($congtrinh as $k => $congtrinh_item){
					if($k!=0){
		?>
        	<div class="pro_congtrinh">
                <div class="block_img_congtrinh" style="cursor:pointer"><img src="<?=_upload_product_l,$congtrinh_item['thumb']?>" onClick="load_congtrinh_item(<?=$congtrinh_item['id']?>, <?=$id_cat?>)" /></div>
                <div class="block_name_congtrinh">
                    <p style="cursor:pointer" class="name_congtrinh" onClick="load_congtrinh_item(<?=$congtrinh_item['id']?>, <?=$id_cat?>)"><?=$congtrinh_item['masp']?></p>
                    <p class="small">Đã xem: <?=$congtrinh_item['luotxem']?></p>
                </div><!--block-name_congtrinh-->
            </div><!--pro_congtrinh-->
		<?php	
					}
				}			
			}
		?>
        <div class="clear"></div>
    </div><!--show-pro_congtrinh-->
</div><!--tab-right-->
<div class="clear"></div>
<div class="info-pro">
            <!--<p class="pro-name"><a href="#">ten cong trinh</a></p>
            <p class="pro-address">mota cong trinh</p>
            <p onClick="load_detail()"><a href="javascript:void(0)" class="btn-chitiet">Chi tiết...</a></p>-->
            <div class="chitietcongtrinh" style="margin:20px 0 0 0"></div>
        </div><!---info pro-->
<div class="clear"></div>
<?php
			}
		}else if($_POST['act']=='load_detail' and isset($_POST['id'])){
			$id=$_POST['id'];
			$sql="SELECT * FROM #_product WHERE hienthi=1 and id='$id'";
			$d->query($sql);
			$detail=$d->fetch_array();
			echo ' <p class="pro-name"><a href="javascipt:;">'.$detail['masp'].'</a></p>
                <p class="pro-address">'.$detail['ten'].'</p>
                <p class="pro-address">'.$detail['mota'].'</p>
                <div>'.$detail['noidung'].'<div class="clear"></div></div>';
			exit();
		}else if($_POST['act']=='load_congtrinh_item' and isset($_POST['id']) and isset($_POST['id_cat'])){
			$id=$_POST['id'];
			$id_cat=$_POST['id_cat'];
			//Cập nhật thêm lượt xem
			$d->reset();
			$sql_lanxem = "UPDATE #_product SET luotxem=luotxem+1  WHERE id ='$id'";
			$d->query($sql_lanxem);
			
			$d->reset();
			$sql="SELECT id, ten, tenkhongdau, thumb, masp, mota, luotxem FROM #_product WHERE hienthi=1 and id_list=$id_cat and id <> '$id' ORDER BY stt, id";
			$d->query($sql);
			$congtrinh=$d->result_array();
			$d->reset();
			$sql="SELECT * FROM #_product WHERE hienthi=1 and id_list=$id_cat and id='$id' ORDER BY stt, id";
			$d->query($sql);
			$congtrinh_detail=$d->fetch_array();
			if(!empty($congtrinh_detail) and count($congtrinh_detail)>0){
				#ALBUM HÌNH======================	
				$d->reset();
				$sql = "select id,thumb,photo from #_hasp where hienthi=1 and id_photo='".$congtrinh_detail['id']."'";
				$d->query($sql);
				$album_hinh = $d->result_array();
?>
<script type="text/javascript">
	$(function () {
		var imgData = [
				<?php
					if($congtrinh_detail['photo']!=''){
				?>
				{img: '<?=_upload_product_l,$congtrinh_detail['photo']?>', href: '<?=_upload_product_l,$congtrinh_detail['photo']?>'},
				<?php	
					}
					if(!empty($album_hinh)){
						foreach($album_hinh as $item_ha){
				?>	
					{img: '<?=_upload_product_l,$item_ha['photo']?>', href: '<?=_upload_product_l,$item_ha['photo']?>'}, 
				<?php
					 }
					}
				?>
		];
	
		/*! Photos by Alexei Lebedev: http://alexeilebedev.com/ */
	
		$.fn.noop = function(){return this};
		var fotorama = $('#fotorama');
	
	fotorama.fotorama({
	  data: imgData,
	  width: 515,
	  height:520,
	  aspectRatio: 700/467,
	  thumbsPreview: true,
	  loop: true,
	  autoplay: 5000,
	  caption: 'overlay',
	  onClick: function(data){
		var fotoramaClasses = fotorama.attr('class');
		var fotoramaTouchStyle = fotorama.data('options').touchStyle;
		// fancybox manual call
				$.fancybox(fotorama.data('options').data,
				{
					type: 'image',
					index: data.index,
					changeFade: 333,
					transitionIn: 'elastic',
					transitionOut: 'elastic',
					padding: 0,
					orig: $('.fotorama__wrap', fotorama),
					onStart: function(fancybox, i) {
						$.extend(fotorama.data('options'), {touchStyle: false});
						fotorama
								.trigger('showimg', [i, 333])
								.removeClass('fotorama_csstransitions')
								.find('.fotorama__wrap')
								.removeClass('fotorama__wrap_style_touch')
								.addClass('fotorama__wrap_style_fade')
								.find('.fotorama__frame').not('.fotorama__frame_active')
								[fotoramaTouchStyle ? 'fadeTo': 'noop'](0, 0);
					},
					onClosed: function() {
						$.extend(fotorama.data('options'), {touchStyle: fotoramaTouchStyle});
						fotorama
							.trigger('showimg', [undefined, 0])
							.attr({'class': fotoramaClasses})
							.find('.fotorama__wrap')
							[fotoramaTouchStyle ? 'addClass' : 'removeClass']('fotorama__wrap_style_touch')
							[!fotoramaTouchStyle ? 'addClass' : 'removeClass']('fotorama__wrap_style_fade')
							.find('.fotorama__frame')
							[fotoramaTouchStyle ? 'fadeTo': 'noop'](0, 1);
					}
				});
	
				// stop fotorama
				return false;
			}
		});
	});
</script>
<div class="tab-left">
    <!--<div class="maso">Mã số: <span class="green">ma cong trinh</span></div>--><!--maso-->
    <div class="slidercongtrinh">
        <div id="mainslidecongtrinh">
            <div id="fotorama">
                Please enable Javascript
            </div>
        </div><!---slide-->
        <div class="clear"></div>
    </div><!--slidercongtrinh-->
</div><!--tab-left-->
<div class="tab-right">
    <div class="title-mau-khac"><img src="images/icon-muiten.png" /><p>Các tin khác</p></div><!--title-mau-khac-->
    <div class="show-pro_congtrinh">
    	<?php
			if(!empty($congtrinh)){
				foreach($congtrinh as $k => $congtrinh_item){
		?>
        	<div class="pro_congtrinh">
                <div class="block_img_congtrinh" style="cursor:pointer"><img src="<?=_upload_product_l,$congtrinh_item['thumb']?>" onClick="load_congtrinh_item(<?=$congtrinh_item['id']?>, <?=$id_cat?>)" /></div>
                <div class="block_name_congtrinh">
                    <p style="cursor:pointer" class="name_congtrinh" onClick="load_congtrinh_item(<?=$congtrinh_item['id']?>, <?=$id_cat?>)"><?=$congtrinh_item['masp']?></p>
                    <p class="small">Đã xem: <?=$congtrinh_item['luotxem']?></p>
                </div><!--block-name_congtrinh-->
            </div><!--pro_congtrinh-->
		<?php	
				}			
			}
		?>
        <div class="clear"></div>
    </div><!--show-pro_congtrinh-->
</div><!--tab-right-->
<div class="clear"></div>
<div class="info-pro">
            <div class="chitietcongtrinh" style="margin:20px 0 0 0">
                <p class="pro-name"><a href="javascipt:;"><?=$congtrinh_detail['masp']?></a></p>
                <p class="pro-address"><?=$congtrinh_detail['ten']?></p>
                <p class="pro-address"><?=$congtrinh_detail['mota']?></p>
                <div><?=$congtrinh_detail['noidung']?><div class="clear"></div></div>
            </div>
        </div><!---info pro-->
<div class="clear"></div>
<?php
			}		
		}
	}else{
		echo 'error';
	}
	
?>