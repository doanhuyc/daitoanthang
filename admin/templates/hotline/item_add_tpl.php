<h3> Cập nhật hotline - link chia sẻ</h3>

<form name="frm" method="post" action="index.php?com=hotline&act=save" enctype="multipart/form-data" class="nhaplieu">	
    
    <b>Link face:</b> <input type="text" name="face" value="<?=@$item['face']?>" class="input" /><br /><br> 	  
    <b>Link Google++:</b> <input type="text" name="goo" value="<?=@$item['goo']?>" class="input" /><br /><br> 
	 <b>Twitter:</b> <input type="text" name="twis" value="<?=@$item['twis']?>" class="input" /><br /><br> 
	 <b>Email:</b> <input type="text" name="you" value="<?=@$item['you']?>" class="input" /><br /><br> 
  
   
	<input type="hidden" name="id" id="id" value="<?=@$item['id']?>" />
	<input type="submit" value="Lưu" class="btn" />
	<input type="button" value="Thoát" onclick="javascript:window.location='index.php?com=hotline&act=capnhat'" class="btn" />
</form>