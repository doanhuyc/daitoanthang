<h3>Hinh ảnh</h3>

<form name="frm" method="post" action="index.php?com=hinhanhct&act=save_photo&idc=<?=$_REQUEST['idc']?>" enctype="multipart/form-data" class="nhaplieu">

<?php for($i=0; $i<5; $i++){?>
	
	<b>Hình ảnh <?=$i+1?></b> <input type="file" name="file<?=$i?>" /> <?=_hinhanh_type?><strong> W :</strong> 600px ; <strong>H :</strong> 450px<br />	
	<b>Tiêu đề Vi</b> <input type="text" name="ten_vi<?=$i?>"  class="input" /><br /> 	
	<b>Tiêu đề EN</b> <input type="text" name="ten_en<?=$i?>"  class="input" /><br /> 	
	<b>Số thứ tự </b> <input type="text" name="stt<?=$i?>" value="1" style="width:30px" />	<br />
	<b>Hiển thị</b> <input type="checkbox" name="hienthi<?=$i?>" checked="checked" /> <br /><br />
	
<? }?>
	
	<input type="submit" value="Lưu" class="btn" />
	<input type="button" value="Thoát" onclick="javascript:window.location='index.php?com=hinhanhct&act=man_photo'" class="btn" />
</form>