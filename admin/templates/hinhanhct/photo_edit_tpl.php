<h3>Hinh ảnh</h3>

<form name="frm" method="post" action="index.php?com=hinhanhct&act=save_photo&id=<?=$_REQUEST['id'];?>&idc=<?=$_REQUEST['idc']?>" enctype="multipart/form-data" class="nhaplieu">
	
	<b>&nbsp;</b> <img src="<?=_upload_hinhanh.$item['photo']?>"  width="100" height="100"/><br />
	<b>Hình ảnh </b> <input type="file" name="file" /> <?=_hinhanh_type?> <strong> W :</strong> 600px ; <strong>H :</strong> 450px<br />	 
	<b>Tiêu đề VN</b> <input type="text" name="ten_vi" value="<?=$item['ten_vi']?>" class="input" /><br /> 
    <b>Tiêu đề EN</b> <input type="text" name="ten_en" value="<?=$item['ten_en']?>" class="input" /><br /> 
<b>Số thứ tự </b> <input type="text" name="stt" value="<?=$item['stt']?>" style="width:30px" />	<br />
	<b>Hiển thị</b> <input type="checkbox" name="hienthi" <?=$item['hienthi'] ? 'checked="checked"' : ""?> /> <br /><br />
	
	<input type="hidden" name="id" value="<?=$item['id']?>" />
	<input type="submit" value="Lưu" class="btn" />
	<input type="button" value="Thoát" onclick="javascript:window.location='index.php?com=hinhanhct&act=man_photo'" class="btn" />
</form>