<?php  if(!defined('_source')) die("Error");

		@$idl =  addslashes($_GET['idl']);
		@$idc =  addslashes($_GET['idc']);
		@$idi =  addslashes($_GET['idi']);
		@$id=  addslashes($_GET['id']);				
		
		if($id!=''){
		#các sản phẩm khác======================
	
		$sql_detail = "select * from #_bosuutap where hienthi=1 and id='".$id."'";
		$d->query($sql_detail);
		$row_detail = $d->fetch_array();
		$title_tcat=$row_detail['ten'];		
		$title_bar=$row_detail['ten']." -";			
		
		$sql_sanphamkhac = "select photo from #_hinhanh where hienthi=1 and id_photo='".$row_detail['id']."'";
		$d->query($sql_sanphamkhac);
		$hinhanh = $d->result_array();
		
		
				
		$sql_sanphamkhac = "select id,thumb,ten,tenkhongdau,photo from #_bosuutap where hienthi=1 and id <>'".$id."' and id_item = '".$row_detail['id_item']."' order by stt,ngaytao desc limit 9";
		$d->query($sql_sanphamkhac);
		$sanpham_khac = $d->result_array();
		
		
		}
		
		else{
			$title_bar='Bộ sưu tập - ';		
			$title_tcat='Bộ sưu tập';		
			$idc=0;
			$sql = "select ten,tenkhongdau,thumb,id,photo from #_bosuutap where hienthi=1 order by id desc";		
			$d->query($sql);
			$bosuutap = $d->result_array();
			$curPage = isset($_GET['p']) ? $_GET['p'] : 1;
			$url=getCurrentPageURL();
			$maxR=9;
			$maxP=5;
			$paging=paging_home($bosuutap, $url, $curPage, $maxR, $maxP);
			$bosuutap=$paging['source'];
			
		}
			
?>