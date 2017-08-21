<h3>Quản Lí Đối Tác</h3>

<form name="frm" method="post" action="index.php?com=doitac&act=save_photo&id=<?=$_REQUEST['id'];?>&idc=<?=$_REQUEST['idc']?>" enctype="multipart/form-data" class="nhaplieu">
	
	<b>&nbsp;</b> 
    
        <img src="<?=_upload_doitac.$item['photo']?>" width="100" />
    
    <br />
	<b>Hình ảnh </b> <input type="file" name="file" /><br />
	<br />
    <b>	Tên</b> <input type="text" name="ten" value="<?=$item['ten']?>" style="width:300px" /><br /><br />
    <b>	Link Đối tác</b> <input type="text" name="mota" value="<?=$item['mota']?>" style="width:300px" /><br />
   </b> 
    <br />
    
	<b>Số thứ tự </b> <input type="text" name="stt" value="<?=$item['stt']?>" style="width:30px" />	<br />
	<b>Hiển thị</b> <input type="checkbox" name="hienthi" <?=$item['hienthi'] ? 'checked="checked"' : ""?> /> <br /><br />
	
	<input type="hidden" name="id" value="<?=$item['id']?>" />
	<input type="submit" value="Lưu" class="btn" />
	<input type="button" value="Thoát" onclick="javascript:window.location='index.php?com=doitac&act=man_photo'" class="btn" />
</form>