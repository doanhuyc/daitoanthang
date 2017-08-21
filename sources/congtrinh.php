<?php  
		session_start();
if(!defined('_source')) die("Error");

		@$idl =  addslashes($_GET['idl']);
		@$idc =  addslashes($_GET['idc']);
		@$idi =  addslashes($_GET['idi']);
		@$id=  addslashes($_GET['id']);				
		
		if($id!=''){
		#các sản phẩm khác======================
		$sql_lanxem = "UPDATE #_product SET luotxem=luotxem+1  WHERE id ='".$id."'";
			$d->query($sql_lanxem);

		$sql_detail = "select id,thumb,photo,ten_$lang,noidung_$lang,maso,tenkhongdau,gia,id_item,id_cat,luotxem,mota_$lang,id_list from #_product where hienthi=1 and id='".$id."'";
		$d->query($sql_detail);
		$row_detail = $d->fetch_array();
		$id_list = $row_detail['id_list'];
		$title_bar= $row_detail['ten_'.$lang]." - ";		
		$title_tcat= $row_detail['ten_'.$lang]." - ";	

	

	$sql_sanphamkhac = "select photo from #_hinhanhct where hienthi=1 and id_photo='".$row_detail['id']."'";
		$d->query($sql_sanphamkhac);
		$hinhanh = $d->result_array();	
		
		$sql_sanphamkhac = "select id,thumb,ten_$lang,tenkhongdau,gia,mota_$lang,photo from #_product where hienthi=1 and id <>'".$id."' and id_cat = '".$row_detail['id_cat']."' order by stt,ngaytao desc limit 8";
		$d->query($sql_sanphamkhac);
		$sanpham_khac = $d->result_array();
		
		
		}elseif($idl!='')
		{
		$sql="select ten_$lang,id from #_product_list where id='$idl' limit 0,1 ";
		$d->query($sql);
		$loaitin=$d->result_array();
		$title_bar=$loaitin[0]['ten_$lang'].' - ';
		$title_tcat=$loaitin[0]['ten_'.$lang];
		
		$id_list =$loaitin[0]['id'];
		
		$idc=$loaitin[0]['id'];
		$sql = "select ten_$lang,tenkhongdau,thumb,gia,id,mota_$lang,photo from #_product where hienthi=1 and id_list='".$loaitin[0]['id']."'  order by id desc";
		$d->query($sql);
		$product = $d->result_array();
		$curPage = isset($_GET['p']) ? $_GET['p'] : 1;
			$url=getCurrentPageURL()."/";
			$maxR=4;
			$maxP=5;
			$paging=paging_home($product, $url, $curPage, $maxR, $maxP);
			$product=$paging['source'];
		}elseif($idc!='')
		{
		$sql="select ten_$lang,id,id_list from #_product_cat where id='$idc' limit 0,1 ";
		$d->query($sql);
		$loaitin=$d->result_array();
		$title_bar=$loaitin[0]['ten_'.$lang].' - ';
		$title_tcat=$loaitin[0]['ten_'.$lang];
		
		 $sql="select ten_$lang,id from #_product_list where id='".$loaitin[0]['id_list']."' limit 0,1 ";
		$d->query($sql);
		$loaitin1=$d->result_array();
		$id_list =$loaitin1[0]['id'];
		
		
		$idc=$loaitin[0]['id'];
		$sql = "select ten_$lang,tenkhongdau,thumb,gia,id,mota_$lang,photo from #_product where hienthi=1 and id_cat='".$loaitin[0]['id']."'  order by id desc";
		$d->query($sql);
		$product = $d->result_array();
		$curPage = isset($_GET['p']) ? $_GET['p'] : 1;
			$url=getCurrentPageURL()."/";
			$maxR=4;
			$maxP=5;
			$paging=paging_home($product, $url, $curPage, $maxR, $maxP);
			$product=$paging['source'];
		}elseif($idi!='')
		{
		
		$sql="select ten_$lang,id,id_cat from #_product_item where id='$idi' limit 0,1 ";
		$d->query($sql);
		$loaitin=$d->result_array();
		$title_bar=$loaitin[0]['ten'].' - ';
		$title_tcat=$loaitin[0]['ten'];
		
		$idc=$loaitin[0]['id_cat'];
		
		$sql = "select ten_$lang,tenkhongdau,thumb,gia,id,mota_$lang,photo from #_product where hienthi=1 and id_item='".$loaitin[0]['id']."'  order by id desc";
		$d->query($sql);
		$product = $d->result_array();
		$curPage = isset($_GET['curPage']) ? $_GET['curPage'] : 1;
		$curPage = isset($_GET['p']) ? $_GET['p'] : 1;
			$url=getCurrentPageURL()."/";
			$maxR=4;
			$maxP=5;
			$paging=paging_home($product, $url, $curPage, $maxR, $maxP);
			$product=$paging['source'];
		}
		
		else{
			$title_bar= _congtrinh." - ";		
			$title_tcat= _congtrinh;		
			$idc=0;
			$sql = "select ten_$lang,tenkhongdau,thumb,gia,id,mota_$lang,maso,photo,mota_$lang from #_product where hienthi=1 order by id desc";		
			$d->query($sql);
			$product = $d->result_array();
			$curPage = isset($_GET['p']) ? $_GET['p'] : 1;
			$url=getCurrentPageURL()."/";
			$maxR=4;
			$maxP=5;
			$paging=paging_home($product, $url, $curPage, $maxR, $maxP);
			$product=$paging['source'];
			
		}
			
?>