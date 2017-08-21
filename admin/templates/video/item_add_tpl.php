<h3>Quản lý Video</h3>
<h3>
	<form name="frm" method="post" action="index.php?com=video&act=save" enctype="multipart/form-data" class="nhaplieu">
   <!-- <?php if ($_REQUEST['act']==edit)
	{?>
	<b>Hình hiện tại:</b><?=$item['image']?><br />
	<?php }?>
	<b>Tên file:</b> <input type="file" name="file" /> <br />
    <br />-->
     <b>Tên Video Vi</b><input type="text" name="ten_vi" value="<?=@$item['ten_vi']?>" /></br></br>
     <b>Tên Video EN</b><input type="text" name="ten_en" value="<?=@$item['ten_en']?>" /></br></br>
	<b>Mã youtobe</b><input type="text" name="url" value="<?=@$item['url']?>" /></br></br>
	<br />
    
    <b>Số thứ tự</b> <input type="text" name="stt" value="<?=isset($item['stt'])?$item['stt']:1?>" style="width:30px"><br>

  <b>Hiển thị</b> 
  <input type="checkbox" name="hienthi" <?=(!isset($item['hienthi']) || $item['hienthi']==1)?'checked="checked"':''?>>
  <br />
  <input type="hidden" name="id" id="id" value="<?=@$item['id']?>" />
	<input type="submit" value="Lưu" class="btn" />
	<input type="button" value="Thoát" onclick="javascript:window.location='index.php?com=video&act=man'" class="btn" />
    </form>
</h3>
