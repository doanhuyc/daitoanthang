<?php  if(!defined('_source')) die("Error");

	$title_bar=_video." - ";		
	$title_tcat=_video;	
	$sql_video = "select * from #_video where hienthi=1  order by stt desc";
	$d->query($sql_video);
	$video = $d->result_array();
	$curPage = isset($_GET['p']) ? $_GET['p'] : 1;
	$url=getCurrentPageURL();
	$maxR=10;
	$maxP=5;
	$paging=paging_home($video, $url, $curPage, $maxR, $maxP);
	$video=$paging['source'];

?>