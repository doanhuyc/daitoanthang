<h3>Quảng lý banner top</h3>
<form name="frm" method="post" action="index.php?com=bannerqc&act=save" enctype="multipart/form-data" class="nhaplieu">
	<b>Banner hiện tại (Việt Nam):</b> 
	<?php
	 if($item['photo_vi']!=NULL)
	 {
	 ?>
            
     <object width="1000" height="145"  codebase="http://active.macromedia.com/flash4/cabs/swflash.cab#version=4,0,0,0" classid="clsid:D27CDB6E-AE6D-11cf-96B8-444553540000">
              <param NAME="_cx" VALUE="13414">
              <param NAME="_cy" VALUE="6641">
              <param NAME="FlashVars" VALUE>
              <param NAME="Movie" VALUE="<?=_upload_hinhanh.$item['photo_vi']?>">
              <param NAME="Src" VALUE="<?=_upload_hinhanh.$item['photo_vi']?>">
              <param NAME="Quality" VALUE="High">
              <param NAME="AllowScriptAccess" VALUE>
              <param NAME="DeviceFont" VALUE="0">
              <param NAME="EmbedMovie" VALUE="0">
              <param NAME="SWRemote" VALUE>
              <param NAME="MovieData" VALUE>
              <param NAME="SeamlessTabbing" VALUE="1">
              <param NAME="Profile" VALUE="0">
              <param NAME="ProfileAddress" VALUE>
              <param NAME="ProfilePort" VALUE="0">
              <param NAME="AllowNetworking" VALUE="all">
              <param NAME="AllowFullScreen" VALUE="false">
              <param name="scale" value="ExactFit">
             <embed src="<?=_upload_hinhanh.$item['photo_vi']?>" quality="High" pluginspage="http://www.macromedia.com/shockwave/download/index.cgi?P1_Prod_Version=ShockwaveFlash" width="1000" height="145" scale="ExactFit"></embed>
            </object>
            
	 <?php 
	 } 
	 else 
	 {
	 echo "Chưa có banner top"; 
	 }
	 ?><br />
     <hr />
     <br />
     <b>Banner hiện tại (English):</b> 
	<?php
	 if($item['photo_en']!=NULL)
	 {
	 ?>
            
     <object width="1000" height="145"  codebase="http://active.macromedia.com/flash4/cabs/swflash.cab#version=4,0,0,0" classid="clsid:D27CDB6E-AE6D-11cf-96B8-444553540000">
              <param NAME="_cx" VALUE="13414">
              <param NAME="_cy" VALUE="6641">
              <param NAME="FlashVars" VALUE>
              <param NAME="Movie" VALUE="<?=_upload_hinhanh.$item['photo_en']?>">
              <param NAME="Src" VALUE="<?=_upload_hinhanh.$item['photo_en']?>">
              <param NAME="Quality" VALUE="High">
              <param NAME="AllowScriptAccess" VALUE>
              <param NAME="DeviceFont" VALUE="0">
              <param NAME="EmbedMovie" VALUE="0">
              <param NAME="SWRemote" VALUE>
              <param NAME="MovieData" VALUE>
              <param NAME="SeamlessTabbing" VALUE="1">
              <param NAME="Profile" VALUE="0">
              <param NAME="ProfileAddress" VALUE>
              <param NAME="ProfilePort" VALUE="0">
              <param NAME="AllowNetworking" VALUE="all">
              <param NAME="AllowFullScreen" VALUE="false">
              <param name="scale" value="ExactFit">
             <embed src="<?=_upload_hinhanh.$item['photo_en']?>" quality="High" pluginspage="http://www.macromedia.com/shockwave/download/index.cgi?P1_Prod_Version=ShockwaveFlash" width="1000" height="145" scale="ExactFit"></embed>
            </object>
            
	 <?php 
	 } 
	 else 
	 {
	 echo "Chưa có banner top"; 
	 }
	 ?><br />
     <hr />
     <br />        
	
     <hr />
     <br />
     
	<b>Thêm Banner (Việt Nam): </b> 
    <input type="file" name="file_vi" /> <strong>Width:1000px&nbsp;-&nbsp;Height:145px&nbsp;Type:&nbsp;.swf | .jpg | .png | .gif</strong><br />
    
    <b>Thêm Banner (English): </b> 
    <input type="file" name="file_en" /> <strong>Width:1000px&nbsp;-&nbsp;Height:145px&nbsp;Type:&nbsp;.swf | .jpg | .png | .gif</strong><br />
    
	

	
	<input type="submit" value="Lưu" class="btn" />
	<input type="button" value="Thoát" onclick="javascript:window.location='index.php?com=bannerqc&act=capnhat'" class="btn" />
</form>