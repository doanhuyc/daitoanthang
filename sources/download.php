<?php  if(!defined('_source')) die("Error");
		@$idl =  addslashes($_GET['idl']);
		@$idc =  addslashes($_GET['idc']);
		@$idi =  addslashes($_GET['idi']);
if(isset($_GET['id'])){
	#tin tuc chi tiet
	$id =  addslashes($_GET['id']);
	$sql = "select ten_$lang,mota_$lang,noidung_$lang from #_download where hienthi=1 and id='".$id."'";
	$d->query($sql);
	$tintuc_detail = $d->result_array();
	$title_bar=$tintuc_detail[0]['ten'].' - ';
	#các tin cu hon
	$sql_khac = "select ten_$lang,tenkhongdau,ngaytao,id from #_download where hienthi=1 and id <>'".$id."' order by stt,ngaytao desc limit 0,5";
	$d->query($sql_khac);
	$tintuc_khac = $d->result_array();
	
}

else{
	$title_bar=_baogia;		
	$title_tcat=_baogia;	
	$sql_tintuc = "select * from #_download where hienthi=1 order by stt,ngaytao desc";
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