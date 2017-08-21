<script language="javascript" src="admin/media/scripts/my_script.js"></script>
<script language="javascript">
function js_submit(){
	if(isEmpty(document.getElementById('ten'), "Xin nhập Họ tên.")){
		document.getElementById('ten').focus();
		return false;
	}
	
	if(isEmpty(document.getElementById('ten'), "Xin nhập Họ tên.")){
		document.getElementById('ten').focus();
		return false;
	}
	
	if(isEmpty(document.getElementById('dienthoai'), "Xin nhập Số điện thoại.")){
		document.getElementById('dienthoai').focus();
		return false;
	}
	
	if(!isNumber(document.getElementById('dienthoai'), "Số điện thoại không hợp lệ.")){
		document.getElementById('dienthoai').focus();
		return false;
	}
	
	if(!check_email(document.frm.email.value)){
		alert("Email không hợp lệ");
		document.frm.email.focus();
		return false;
	}
	
	if(isEmpty(document.getElementById('tieude1'), "Xin nhập Chủ đề.")){
		document.getElementById('tieude1').focus();
		return false;
	}
	
	if(isEmpty(document.getElementById('noidung'), "Xin nhập Nội dung.")){
		document.getElementById('noidung').focus();
		return false;
	}
	
	document.frm.submit();
}
</script>
<div class="module_main">

	<div class="tcat"><h1><?=_contact?></h1></div>
  
   <div class="content" style="padding-left:10px;">
       <div class="box_contact_l">
          	<?=$company_contact[0]['noidung_'.$lang];?>  
       </div>
       <div class="box_contact_r">
								<form method="post" name="frm" action="">
	
      <table width="100%" cellpadding="5" cellspacing="0" border="0" class="tablelienhe">
                        <tr>
                        <td><?=_hovaten?><span>*</span></td>
						<td><input name="ten" type="text" class="input" id="ten" size="50" style="border:1px solid #333;" /></td>
                        </tr>                        
                         <tr>
                        <td><?=_address?><span>*</span></td>
						<td><input name="diachi" type="text"  class="input" size="50" style="border:1px solid #333;"  /></td>
                        </tr>
                        <tr>
                        <td><?=_phone?><span>*</span></td>
						<td><input name="dienthoai" type="text" class="input" id="dienthoai"  style="border:1px solid #333;" size="50"/></td>
                        </tr>
                        <tr>
                        <td>Email<span>*</span></td>
						<td><input name="email" type="text" class="input" size="50"  style="border:1px solid #333;"  /></td>
                        </tr>                                                  
                        <tr>
                        <td><?=_chude?><span>*</span></td>
						<td>
						<input name="tieude1" type="text" class="input" id="tieude1" style="border:1px solid #333;"  size="50"  />
						</td>
                        </tr>                         
                        <tr>
                        <td><?=_noidung?><span>*</span></td>
						<td>
                        <textarea name="noidung" cols="50" rows="5" class="ta_noidung" id="noidung" style="background-color:#FFFFFF; color:#666666;border:1px solid #333;"></textarea>
                        </td>
                        </tr>
                         <tr>
                         <td>&nbsp;</td>
                        <td> 
                    <input class="button" type="button" value="<?=_gui?>" onclick="js_submit();" />
                    <input class="button" type="button" value="<?=_nhaplai?>" onclick="document.frm.reset();" />
                                                         
                        </td>
						</tr>
                        </table>   
	                            </form>
				</div>
                <div class="clear"></div>
                				
          </div>
</div>
<div class="module_main">
	<div class="content">
                <div>	

	<script type="text/javascript" src="http://maps.google.com/maps/api/js?sensor=true"></script>
  <script type="text/javascript">
		   var map;
		   var infowindow;
		   var marker= new Array();
		   var old_id= 0;
		   var infoWindowArray= new Array();
		   var infowindow_array= new Array();function initialize(){
			   var defaultLatLng = new google.maps.LatLng(<?=$map['toado']?>);
			   var myOptions= {
				   zoom: 14,
				   center: defaultLatLng,
				   scrollwheel : false,
				   mapTypeId: google.maps.MapTypeId.ROADMAP
				};
				map = new google.maps.Map(document.getElementById("map_canvas"), myOptions);map.setCenter(defaultLatLng);
			    
			   var arrLatLng = new google.maps.LatLng(<?=$map['toado']?>);
			   infoWindowArray[7895] = '<div class="map_description"><div class="map_title"><?=$map['ten']?></div><div>Email : <?=$map['mota']?> </br> Điện thoại: <?=$map['dienthoai']?></br> Địa chỉ: <?=$map['diachi']?> </div></div>';
			   loadMarker(arrLatLng, infoWindowArray[7895], 7895);
			   
			   moveToMaker(7895);}function loadMarker(myLocation, myInfoWindow, id){marker[id] = new google.maps.Marker({position: myLocation, map: map, visible:true});
			   var popup = myInfoWindow;infowindow_array[id] = new google.maps.InfoWindow({ content: popup});google.maps.event.addListener(marker[id], 'mouseover', function() {if (id == old_id) return;if (old_id > 0) infowindow_array[old_id].close();infowindow_array[id].open(map, marker[id]);old_id = id;});google.maps.event.addListener(infowindow_array[id], 'closeclick', function() {old_id = 0;});}function moveToMaker(id){var location = marker[id].position;map.setCenter(location);if (old_id > 0) infowindow_array[old_id].close();infowindow_array[id].open(map, marker[id]);old_id = id;}</script>
           <div id="map_canvas"></div>
</div>
              </div>
</div>
