<?php  if(!defined('_source')) die("Error");

		if(!empty($_POST))
		{	
		
			$_SESSION['key_search'] = magic_quote($_POST['txtkey']);
			$_SESSION['listmausac'] = magic_quote($_POST['listmausac']);
			$_SESSION['listchatlieu'] = magic_quote($_POST['listchatlieu']);
			$_SESSION['listgia'] = magic_quote($_POST['listgia']);
		}
		$key = isset($_SESSION['key_search']) ? $_SESSION['key_search'] : '';
		$mausac = isset($_SESSION['listmausac']) ? $_SESSION['listmausac'] : '';
		$chatlieu = isset($_SESSION['listchatlieu']) ? $_SESSION['listchatlieu'] : '';
		$gia = isset($_SESSION['listgia']) ? $_SESSION['listgia'] : '';
		
		if($_SESSION['key_search'] != null){
				$tukhoa = " and ten_$lang like '%".$_SESSION['key_search']."%'" ;
		}else{
			$tukhoa ="";
		}
		
		if($_SESSION['listmausac'] !=0){
				$mausac = " and id_mausac = '".$_SESSION['listmausac']."' ";
		}else{
			$mausac ="";
		}
		
		if($_SESSION['listchatlieu'] !=0){
				$chatlieu = " and id_item = '".$_SESSION['listchatlieu']."' ";
		}else{
			$chatlieu ="";
		}
		
		if($_SESSION['listgia'] !=0){
				$banggia= "and "."(  gia BETWEEN ".$gia.")";
		}else{
			$banggia ="";
		}
		
		
		#=================== lay danh sach sanpham
		
		$where = "where hienthi=1 ";
		$where .= " ".$tukhoa."  ".$mausac." ".$chatlieu."  ".$banggia." ";
		
		
		
		echo $sql = "select *
						from #_product ".$where." 
						order by stt,ngaytao";
		//echo $sql;die();
		$d->query($sql);
		$count_search = $d->num_rows();
		
		
		$product = $d->result_array();
		
		$curPage = isset($_GET['curPage']) ? $_GET['curPage'] : 1;
		$url="index.php?com=timkiem";
		$maxR=12;
		$maxP=4;
		$paging=paging($product, $url, $curPage, $maxR, $maxP);
		$product=$paging['source'];
		$paging = $paging['paging'];
?>