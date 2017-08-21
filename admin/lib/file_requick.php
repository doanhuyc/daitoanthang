<?php
	$com = (isset($_REQUEST['com'])) ? addslashes($_REQUEST['com']) : "";
	$act = (isset($_REQUEST['act'])) ? addslashes($_REQUEST['act']) : "";
	$d = new database($config['database']);
	switch($com){
	
		case 'khuyen-mai':
			$source = "khuyenmai";
			$template = isset($_GET['id']) ? "khuyenmai_detail" : "khuyenmai";
			break;
		case 'thu-vien-anh':
			$source = "bosuutap";
			$template = isset($_GET['id']) ? "bosuutap_detail" : "bosuutap";
			break;
			
		case 'tin-tuc':
			$source = "news";
			$template = isset($_GET['id']) ? "news_detail" : "news";
			break;
		case 'video':
			$source = "video";
			$template = "video";
			break;
		case 'du-an':
			$source = "duan";
			$template = isset($_GET['id']) ? "duan_detail" : "duan";
			break;
		case 'hinh-anh-cong-ty':
			$source = "hinhanhcongty";
			$template = isset($_GET['id']) ? "hinhanhcongty_detail" : "hinhanhcongty";
			break;
		case 'kien-thuc':
			$source = "kienthuc";
			$template = isset($_GET['id']) ? "kienthuc_detail" : "kienthuc";
			break;
		case 'bao-gia':
			$source = "download";
			$template = isset($_GET['id']) ? "download_detail" : "download";
			break;
		case 'hinh-thuc-thanh-toan':
			$source = "tt";
			$template = isset($_GET['id']) ? "tt_detail" : "tt";
			break;
		case 'he-thong-phan-phoi':
			$source = "hethongphanphoi";
			$template = isset($_GET['id']) ? "hethong_detail" : "hethong";
			break;
		case 'hinh-anh':
			$source = "hinhanh";
			$template = isset($_GET['idl']) ? "hinhanh_detail" : "hinhanh";
			break;
		case 'doi-tac':
			$source = "khachhang";
			$template = isset($_GET['id']) ? "khachhang_detail" : "khachhang";
			break;
		case 'ban-do':
			$source = "map";
			$template = "map";
			break;
		case 'doi-tac':
			$source = "doitac";
			$template = isset($_GET['id']) ? "doitac_detail" : "doitac";
			break;
		case 'thong-tin':
			$source = "news";
			$template = isset($_GET['id']) ? "news_detail" : "news";
			break;
		case 'dich-vu':
			$source = "dichvu";
			$template = isset($_GET['id']) ? "dichvu_detail" : "dichvu";
			break;
		case 'tuyen-dung':
			$source = "tuyendung";
			$template = isset($_GET['id']) ? "tuyendung_detail" : "tuyendung";
			break;
			
		case 'gioi-thieu':
			$source = "gioithieu";
		$template = isset($_GET['id']) ? "gioithieu_detail" : "gioithieu";
			break;
			
		case 'san-pham':
			$source = "product";
			$template = isset($_GET['id']) ? "product_detail" : "product";
			break;
		case 'cong-trinh':
			$source = "congtrinh";
			$template = isset($_GET['id']) ? "congtrinh_detail" : "congtrinh";
			break;
		case 'catalogs':
			$source = "catalogs";
			$template = isset($_GET['id']) ? "catalogs_detail" : "catalogs";
			break;
			
		case 'tai-lieu-ky-thuat':
			$source = "tlkt";
			$template ="tlkt";
			break;
		case 'yeu-cau-bao-gia':
			$source = "baogia";
			$template = "baogia";
			break;			
		case 'tim-kiem':
			$source = "timkiem";
			$template = isset($_GET['id']) ? "timkiem_detail" : "timkiem";
			break;						
		case 'lien-he':
			$source = "contact";
			$template = "contact";
			break;	
		case 'gio-hang':
			$source = "giohang";
			$template = "giohang";
			break;
			
		case 'thanh-toan':
			$source = "thanhtoan";
			$template = "thanhtoan";
			break;	
		case 'ngonngu':
			if(isset($_GET['lang']))
			{
				switch($_GET['lang'])
					{
					case 'vi':
						$_SESSION['lang'] = 'vi';
						break;
					case 'en':
						$_SESSION['lang'] = 'en';
						break;
					case 'cn':
						$_SESSION['lang'] = 'cn';
						break;
					default: 
						$_SESSION['lang'] = 'vi';
						break;
					}
			}
			else{
			$_SESSION['lang'] = 'vi';
			}
			echo '<script language="javascript">history.go(-1)</script>';
			break;		
										
		default: 
			$source = "index";
			$template = "index";
			break;
	}
	
	if($source!="") include _source.$source.".php";
	
	if($_REQUEST['com']=='logout')
	{
	session_unregister($login_name);
	header("Location:index.php");
	}


	$sql_title = "select ten_vi,ten_en from #_title limit 0,1";
	$d->query($sql_title);
	$row_title= $d->fetch_array();
	#  lay meta tim kiem
	$sql_meta = "select ten_vi,ten_en from #_meta limit 0,1";
	$d->query($sql_meta);
	$row_meta= $d->fetch_array();	
?>