<h3>Dịch vụ</h3>

<form name="frm" method="post" action="index.php?com=service&act=save" enctype="multipart/form-data" class="nhaplieu">

	<b>Tiêu đề</b> <input type="text" name="ten" value="<?=$item['ten']?>" class="input" /><br />

	<b>Mô tả</b>
	<div>
	<?php
	$oFCKeditor = new FCKeditor('mota') ;
	$oFCKeditor->BasePath	= $sBasePath ;
	$oFCKeditor->Height		= 300;
	$oFCKeditor->Value		= $item['mota'];
	$oFCKeditor->Create() ;
	?></div>
	
	<b>Nội dung</b>
	<div>
	<?php
	$oFCKeditor = new FCKeditor('noidung') ;
	$oFCKeditor->BasePath	= $sBasePath ;
	$oFCKeditor->Height		= 300;
	$oFCKeditor->Value		= $item['noidung'];
	$oFCKeditor->Create() ;
	?></div>
	
	<b>Số thứ tự</b> <input type="text" name="stt" value="<?=isset($item['stt'])?$item['stt']:1?>" style="width:30px"><br>
	
	<b>Hiển thị</b> <input type="checkbox" name="hienthi" <?=(!isset($item['hienthi']) || $item['hienthi']==1)?'checked="checked"':''?>><br />
	
	<b>&nbsp;</b><img src="<?=_upload_folder.(($item['photo']!="")?$item['photo']:"no_img.gif")?>" height="100px" /><br />
	<b>Hình đại diện</b> <input type="file" name="file" /> <br />
	
	<input type="hidden" name="id" id="id" value="<?=@$item['id']?>" />
	<input type="submit" value="Lưu" class="btn" />
	<input type="button" value="Thoát" onclick="javascript:window.location='index.php?com=service&act=man'" class="btn" />
</form>