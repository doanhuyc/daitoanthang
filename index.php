<?php
	
	session_start();
	@define ( '_template' , './templates/');
	@define ( '_source' , './sources/');
	@define ( '_lib' , './admin/lib/');
	
	if(!isset($_SESSION['lang']))
	{
	$_SESSION['lang']='vi';
	}
	
	
	$lang=$_SESSION['lang'];
	include_once _lib."config.php";
	include_once _lib."constant.php";
	include_once _lib."functions.php";
	include_once _lib."functions_giohang.php";	
	require_once _source."lang_$lang.php";	
	include_once _lib."class.database.php";
	include_once _lib."file_requick.php";	
			
	if($_REQUEST['command']=='add' && $_REQUEST['productid']>0){
	$pid=$_REQUEST['productid'];
		addtocart($pid,1);
		redirect("");}	
		
	$sql_dmsp="select photo from #_background";
	$d->query($sql_dmsp);
	$back=$d->fetch_array();
	
		
?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<base href="http://<?=$config_url?>/" />
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="google-site-verification" content="qi9WSxiC03-JfsPp-47o0R4J-jQ1K5CtU-dBnMpCsuk" />

<meta name="http://daitoanthang.com" content="d2fedc9d3774335a03bd4fd07a08920e"/>

<script>
  (function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
  (i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
  m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
  })(window,document,'script','//www.google-analytics.com/analytics.js','ga');

  ga('create', 'UA-61205233-1', 'auto');
  ga('send', 'pageview');

</script>
<?php 
	if($tukhoa==''){
		$tukhoa = $row_meta['ten_'.$lang];
	}
	if($des == ''){
		$des= $row_meta['ten_'.$lang];
	}
?>
<meta name="keywords" content="<?=$tukhoa?>" />
<meta name="description" content="<?=$des?>" />

<meta name="author" content="an.nt82 - Nguyá»…n ThÃ nh An" />
<meta name="copyright" content="Nguyá»…n ThÃ nh An [ntan.nina@gmail.com]" />
<meta name="google-site-verification" content="qi9WSxiC03-JfsPp-47o0R4J-jQ1K5CtU-dBnMpCsuk" />
<title><?=$title_bar?><?=$row_title['ten_'.$lang]?></title>
<link href="style/style.css" rel="stylesheet" type="text/css" />
<link href="style/map.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src=" https://ajax.googleapis.com/ajax/libs/jquery/1.6/jquery.js"></script>
<script type="text/javascript" src="js/ImageTooltip.js"></script>
<script src="js/jquery.nicescroll.js"></script>
<script type="text/javascript" src="js/crawler.js"></script>
<script src="js/tab.js"></script>
<script type="text/javascript">
$(document).ready(function() {
    nice = $(".list_video").niceScroll();
  });  
</script>


<div id="fb-root"></div>
<script>(function(d, s, id) {
  var js, fjs = d.getElementsByTagName(s)[0];
  if (d.getElementById(id)) return;
  js = d.createElement(s); js.id = id;
  js.src = "//connect.facebook.net/en_US/sdk.js#xfbml=1&version=v2.0";
  fjs.parentNode.insertBefore(js, fjs);
}(document, 'script', 'facebook-jssdk'));</script>
</head><script type="text/javascript">
var uid = '58363';
var wid = '119107';
</script>



<body <?php if(@$_GET['com']=='lien-he') echo 'onLoad="initialize()"'; ?>> 

	        
<div id="wrap">	
		
		<div id="menu_all">
			<div id="menu">
				<?php include _template."layout/menu_top.php"; ?>
			</div>
		</div>
		<div id="header" style="position:relative;">        	          
           <div class="banner">
				<?php include _template."layout/banner.php"; ?>
				
				<div id="ngonngu">      
						        
						<a href="index.php?com=ngonngu&lang=vi"><img src="images/vi.png" /></a>            
						<a href="index.php?com=ngonngu&lang=en"><img src="images/en.png" /></a> 
				</div>
		   </div>                       
                                   
        </div><!-- End header -->
			 		
			<div class="slide_all">
					<div class="slide">
						<?php include _template."layout/nivo.php"; ?>
					</div>
					
				</div>
			<div id="container">
				<div class="clear"></div>		
				
			<div class="clear"></div>
				 <div class="container_left">
					<?php include _template."layout/left.php"; ?>
				</div><!-- End container left --> 
					   
				<div class="container_right">
					
					 <?php include _template.$template."_tpl.php"; ?> 
				</div><!-- End container right --> 
																					
				 <div class="clear"></div>  
			</div><!-- End container --> 
		 <div style="clear:both;"></div>			
        <div class="clear"></div>
		
	</div><!-- End wrap -->
 <div class="clear"></div>	
	
		<div id="footer_all">
			<div id="footer">
				<?php include _template."layout/footer.php"; ?>            
			</div>	
        </div>	
    
    <?php include _template."layout/quangcao.php"; ?>


<div class="linktttt">
         
	<strong><a href="http://chuyennhakhoinguyen.com/"title="chuyen nha quan go vap" target="_blank">chuyen nha quan go vap</a></strong> |			
	 <strong> <a href="http://catkinhcuongluc.com/vach-tam-kinh.html"title="vach tam kinh" target="_blank">vach tam kinh</a> </strong> |
         <strong> <a href="http://catkinhcuongluc.com/kinh-cuong-luc.html"title="vach kinh cuong luc" target="_blank">vach kinh cuong luc</a> gia re</strong> |
         <strong> <a href="http://tieucanhsanvuon24h.com/thiet-ke-san-vuon.html"title="thiet ke san vuon" target="_blank">thiet ke san vuon</a> biet thu</strong> |
         <strong><a href="http://tieucanhsanvuon24h.com/thi-cong-san-vuon.html"title="thi cong san vuon" target="_blank">thi cong san vuon</a> biet thu</strong> |			

<a href="http://www.lidota.com/2015/09/lam-mai-hien-di-dong-tai-quan-9-tphcm.html">mai hien di dong quan 9</a>|
<a href="http://thanhphu.agola.vn">lam mai hien</a> |
<a href="http://www.lidota.com/p/mai-hien-di-dong.html">mai hien</a>|
    <a href="http://thietkesangtrong.vn/"title="thiet ke nha dep" rel="dofollow" target="_blank"><strong>thiet ke nha dep</strong></a>|

<a href="http://quocthanh.com" title="in nhanh" target="_blank" rel="dofollow">in nhanh</a>



       
 <a href="https://www.dantaichinh.com" rel="dofollow" title="dan tai chinh" target="_blank">dan tai chinh</a>|
         <a href="http://www.weldtec.com.vn" title="Máy hàn,Thi&#7871;t b&#7883; hàn" target="_blank"><b>May han,Thiet Bi han </b></a>|

<strong><a href="http://chetaomaysaigon.com/"title="may be dai sat tu dong" target="_blank">may be dai sat tu dong</a></strong> |
<strong><a href="http://maylanhcuhcm.com/"title="may lanh cu" target="_blank">may lanh cu</a></strong> |




</div>


<script type="text/javascript" src="https://apis.google.com/js/plusone.js"></script>

<script>
  (function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
  (i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
  m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
  })(window,document,'script','//www.google-analytics.com/analytics.js','ga');

  ga('create', 'UA-61205233-1', 'auto');
  ga('send', 'pageview');

</script>



<div id="fb-root"></div><g:plusone></g:plusone>

<script>(function(d, s, id) {
  var js, fjs = d.getElementsByTagName(s)[0];
  if (d.getElementById(id)) return;
  js = d.createElement(s); js.id = id;
 js.src = "//connect.facebook.net/vi_VN/sdk.js#xfbml=1&version=v2.3";
  fjs.parentNode.insertBefore(js, fjs);
}(document, 'script', 'facebook-jssdk'));</script>
<div class="fb-like" data-layout="standard" data-action="like" data-show-faces="true" data-share="true"></div>

</body>
</html>