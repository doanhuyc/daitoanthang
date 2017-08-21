<h3>Logo</h3>

 	<h3>Width:120px</h3>
	<form name="frm" method="post" action="index.php?com=background&amp;act=save" enctype="multipart/form-data" class="nhaplieu">

	<?php if ($_REQUEST['act']==capnhat)
	{?>
	<b>Hình hiện tại:</b><img src="<?=_upload_hinhanh.$item['photo']?>"  alt="NO PHOTO" width="120" /><br />
	<?php }?>
	<b>Hình trái:</b> <input type="file" name="file" /> <?=_product_type?><br />
    <b>Link:</b> <input type="text" name="link" value="<?=$item['link']?>" /><br />
    <hr />
    <?php if ($_REQUEST['act']==capnhat)
	{?>
	<b>Hình hiện tại:</b><img src="<?=_upload_hinhanh.$item['photo1']?>"  alt="NO PHOTO" width="120" /><br />
	<?php }?>
	<b>Hình phải:</b> <input type="file" name="file1" /> <?=_product_type?><br />
    <b>Link:</b> <input type="text" name="link1" value="<?=$item['link1']?>" /><br />
    
    <input type="submit" value="Lưu" class="btn" />
    <input type="hidden" name="id" id="id" value="<?=$item['id']?>" />
    
    
   
    </form>
