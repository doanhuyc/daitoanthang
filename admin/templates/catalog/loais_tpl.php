<script>
$(document).ready(function() {
$("#chonhet").click(function(){
	var status=this.checked;
	$("input[name='chon']").each(function(){this.checked=status;})
});

$("#xoahet").click(function(){
	var listid="";
	$("input[name='chon']").each(function(){
		if (this.checked) listid = listid+","+this.value;
    	})
	listid=listid.substr(1);	 //alert(listid);
	if (listid=="") { alert("Bạn chưa chọn mục nào"); return false;}
	hoi= confirm("Bạn có chắc chắn muốn xóa?");
	if (hoi==true) document.location = "index.php?com=catalog&act=delete_item&listid=" + listid;
});
});
</script>
<h3><a href="index.php?com=catalog&act=add_item">Thêm danh mục</a></h3>
<table class="blue_table">
	<tr>
		<th style="width:5%" align="center"><input type="checkbox" name="chonhet" id="chonhet" /></th>
        <th style="width:5%;">Stt</th>		
        <th style="width:20%;">Danh mục cấp 1</th>
        <th style="width:20%;">Danh mục cấp 2</th>
        <th style="width:30%;">Tên  </th>
		<th style="width:5%;">Hiển thị</th>
		<th style="width:5%;">Sửa</th>
		<th style="width:5%;">Xóa</th>
	</tr>
	<?php for($i=0, $count=count($items); $i<$count; $i++){?>
	<tr>
		<td style="width:5%;" align="center"><input type="checkbox" name="chon" id="chon" value="<?=$items[$i]['id']?>" class="chon" /></td>
        <td style="width:5%;"><?=$items[$i]['stt']?></td>
          <td align="center" style="width:20%;">
        
        <?php
		$sql_danhmuc="select ten from table_catalog_list where id='".$items[$i]['id_list']."'";
		$result=mysql_query($sql_danhmuc);
	 	$item_danhmuc =mysql_fetch_array($result);
	 	echo @$item_danhmuc['ten']
	?>
        
        
        </td>	
         <td align="center" style="width:20%;">
        
        <?php
		$sql_danhmuc="select ten from table_catalog_cat where id='".$items[$i]['id_cat']."'";
		$result=mysql_query($sql_danhmuc);
	 	$item_danhmuc =mysql_fetch_array($result);
	 	echo @$item_danhmuc['ten']
	?>
        
        
        </td>		      
		<td style="width:30%;"><a href="index.php?com=catalog&act=edit_item&id_list=<?=$items[$i]['id_list']?>&id_cat=<?=$items[$i]['id_cat']?>&id=<?=$items[$i]['id']?>&curPage=<?=$_REQUEST['curPage']?>" style="text-decoration:none;"><?=$items[$i]['ten']?> </a></td>
		<td style="width:5%;">
		<?php 
		if(@$items[$i]['hienthi']==1)
		{
		?>
        <img src="media/images/active_1.png" />
		<? 
		}
		else
		{
		?>
         <img src="media/images/active_0.png" />
         <?php
		 }?>
        
        </td>
		<td style="width:5%;"><a href="index.php?com=catalog&act=edit_item&id_list=<?=$items[$i]['id_list']?>&id_cat=<?=$items[$i]['id_cat']?>&id=<?=$items[$i]['id']?>"><img src="media/images/edit.png" border="0" /></a></td>
		<td style="width:5%;"><a href="index.php?com=catalog&act=delete_item&id=<?=$items[$i]['id']?>" onClick="if(!confirm('Xác nhận xóa')) return false;"><img src="media/images/delete.png" border="0" /></a></td>
	</tr>
	<?php	}?>
</table>
<a href="index.php?com=catalog&act=add_item"><img src="media/images/add.jpg" border="0"  /></a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="#" id="xoahet"><img src="media/images/delete.jpg" border="0"  /></a>

<div class="paging"><?=$paging['paging']?></div>