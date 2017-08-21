<?php  if(!defined('_source')) die("Error");
	@$idl =  addslashes($_GET['idl']);
		@$idc =  addslashes($_GET['idc']);
		@$idi =  addslashes($_GET['idi']);
		@$id=  addslashes($_GET['id']);	
if(isset($_GET['id'])){
	#tin tuc chi tiet
	$id =  addslashes($_GET['id']);
	$sql = "select ten_$lang,mota_$lang,noidung_$lang from #_kienthuc where hienthi=1 and id='".$id."'";
	$d->query($sql);
	$tintuc_detail = $d->result_array();
	$title_bar=$tintuc_detail[0]['ten_'.$lang].' - ';
	$title_tcat=$tintuc_detail[0]['ten_'.$lang].' - ';
	#các tin cu hon
	$sql_khac = "select ten_$lang,tenkhongdau,ngaytao,id from #_kienthuc where  hienthi=1 and id <>'".$id."' order by stt,ngaytao desc limit 0,5";
	$d->query($sql_khac);
	$tintuc_khac = $d->result_array();
	
}
	elseif($idl!='')
		{
		$sql="select ten_$lang,id from #_kienthuc_item where id='$idl' limit 0,1 ";
		$d->query($sql);
		$loaitin=$d->result_array();
		$title_bar=$loaitin[0]['ten_'.$lang].' - ';
		$title_tcat=$loaitin[0]['ten_'.$lang];
		
		$idc=$loaitin[0]['id'];
		$sql = "select ten_$lang,tenkhongdau,thumb,id,photo,mota_$lang from #_kienthuc where hienthi=1 and id_item='".$loaitin[0]['id']."'  order by id desc";
		$d->query($sql);
		$tintuc = $d->result_array();
		$curPage = isset($_GET['p']) ? $_GET['p'] : 1;
			$url=getCurrentPageURL()."/";
			$maxR=16;
			$maxP=5;
			$paging=paging_home($tintuc, $url, $curPage, $maxR, $maxP);
			$tintuc=$paging['source'];
		}
else{
	$title_bar=_kienthuc." - ";		
	$title_tcat=_kienthuc;	
	$sql_tintuc = "select ten_$lang,tenkhongdau,mota_$lang,thumb,id from #_kienthuc where hienthi=1  order by stt,ngaytao desc";
	$d->query($sql_tintuc);
	$tintuc = $d->result_array();
	$curPage = isset($_GET['p']) ? $_GET['p'] : 1;
	$url=getCurrentPageURL();
	$maxR=10;
	$maxP=5;
	$paging=paging_home($tintuc, $url, $curPage, $maxR, $maxP);
	$tintuc=$paging['source'];
}
?>