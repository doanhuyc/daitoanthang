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
	if (hoi==true) document.location = "index.php?com=product&act=delete&listid=" + listid;
});
});
</script>
<h3><a href="index.php?com=product&act=add">Thêm sản phẩm</a></h3>
<table class="blue_table">
	<tr>
		<th style="width:5%" align="center"><input type="checkbox" name="chonhet" id="chonhet" /></th>
        <th style="width:5%;">Stt</th>		
        <th style="width:15%;">Danh mục cấp 1</th>
        <th style="width:15%;">Danh mục cấp 2</th>
     
        <th style="width:20%;">Tên  </th>
        <th style="width:20%;">Hình ảnh  </th>
      
      
		<th style="width:5%;">SP mới</th>
		<th style="width:5%;">SP khuyến mãi</th>
       
		<th style="width:5%;">Hiển thị</th>
		<th style="width:5%;">Sửa</th>
		<th style="width:5%;">Xóa</th>
	</tr>
	<?php for($i=0, $count=count($items); $i<$count; $i++){?>
	<tr>
		<td style="width:5%;" align="center"><input type="checkbox" name="chon" id="chon" value="<?=$items[$i]['id']?>" class="chon" /></td>
        <td style="width:5%;"><?=$items[$i]['stt']?></td>
		<td style="width:15%;">
			  <?php
				$sql_danhmuc="select ten_vi from table_product_list where id='".$items[$i]['id_list']."'";
				$result=mysql_query($sql_danhmuc);
				$item_danhmuc =mysql_fetch_array($result);
				echo @$item_danhmuc['ten_vi']
			?>      
        </td>
      
      <td style="width:15%;">
			  <?php
				$sql_danhmuc="select ten_vi from table_product_cat where id='".$items[$i]['id_cat']."'";
				$result=mysql_query($sql_danhmuc);
				$item_danhmuc =mysql_fetch_array($result);
				echo @$item_danhmuc['ten_vi']
			?>      
        </td>
      
      
        <td style="width:25%;"><a href="index.php?com=product&act=edit&id_list=<?=$items[$i]['id_list']?>&id_cat=<?=$items[$i]['id_cat']?>&id_item=<?=$items[$i]['id_item']?>&id_mausac=<?=$items[$i]['id_mausac']?>&id=<?=$items[$i]['id']?>" style="text-decoration:none;"><?=$items[$i]['ten_vi']?></a></td>
        <td align="center" style="width:5%;"><a href="index.php?com=hinhanhct&act=man_photo&idc=<?=$items[$i]['id']?>">Hình ảnh</a></td>
        <td align="center" style="width:5%;">
      
      <?php
		if($items[$i]['hot']>0)
		{
		?>
		<a href="index.php?com=product&act=man&hot=<?=$items[$i]['id']?><?php if($_REQUEST['curPage']!='') echo'&curPage='. $_REQUEST['curPage'];?>"><img src="media/images/yes-km.gif" border="0" /></a>
        <?php
		}
		else
		{
		?>
       <a href="index.php?com=product&act=man&hot=<?=$items[$i]['id']?><?php if($_REQUEST['curPage']!='') echo'&curPage='. $_REQUEST['curPage'];?>"><img src="media/images/no-km.gif" border="0" /></a>
       <?php }
        ?>      </td>
         <td align="center" style="width:5%;">
      
      <?php
		if($items[$i]['noibat']>0)
		{
		?>
		<a href="index.php?com=product&act=man&noibat=<?=$items[$i]['id']?><?php if($_REQUEST['curPage']!='') echo'&curPage='. $_REQUEST['curPage'];?>"><img src="media/images/yes-km.gif" border="0" /></a>
        <?php
		}
		else
		{
		?>
       <a href="index.php?com=product&act=man&noibat=<?=$items[$i]['id']?><?php if($_REQUEST['curPage']!='') echo'&curPage='. $_REQUEST['curPage'];?>"><img src="media/images/no-km.gif" border="0" /></a>
       <?php }
        ?>      </td>  
       
		<td style="width:5%;">
		<?php 
		if(@$items[$i]['hienthi']==1)
		{
		?>
        
        <a href="index.php?com=product&act=man&hienthi=<?=$items[$i]['id']?><?php if($_REQUEST['curPage']!='') echo'&curPage='. $_REQUEST['curPage'];?>"><img src="media/images/active_1.png" border="0" /></a>
		<? 
		}
		else
		{
		?>
         <a href="index.php?com=product&act=man&hienthi=<?=$items[$i]['id']?><?php if($_REQUEST['curPage']!='') echo'&curPage='. $_REQUEST['curPage'];?>"><img src="media/images/active_0.png"  border="0"/></a>
         <?php
		 }?>      
        </td>
		<td style="width:5%;"><a href="index.php?com=product&act=edit&id_list=<?=$items[$i]['id_list']?>&id_cat=<?=$items[$i]['id_cat']?>&id_item=<?=$items[$i]['id_item']?>&id=<?=$items[$i]['id']?>"><img src="media/images/edit.png" /></a></td>
		<td style="width:5%;"><a href="index.php?com=product&act=delete&id=<?=$items[$i]['id']?>" onClick="if(!confirm('Xác nhận xóa')) return false;"><img src="media/images/delete.png" /></a></td>
	</tr>
	<?php	}?>
    </table>
<a href="index.php?com=product&act=add"><img src="media/images/add.jpg" border="0"  /></a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="#" id="xoahet"><img src="media/images/delete.jpg" border="0"  /></a>

<div class="paging"><?=$paging['paging']?></div>