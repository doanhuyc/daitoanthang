<?php 
	error_reporting(0);
	session_start();
	@define ( '_template' , '../templates/');
	@define ( '_source' , '../sources/');
	@define ( '_lib' , '../admin/lib/');
	//Lưu ngôn ngữ chọn vào $_SESSION
		
	$lang_arr=array("vi","en");
	if (isset($_GET['lang']) == true){
        if (in_array($_GET['lang'], $lang_arr)==true){
            $lang = $_GET['lang'];
            $_SESSION['lang']=$lang;
        } 
	}
    if(isset($_SESSION['lang'])){
        $lang= $_SESSION['lang'];
    }else{
        $lang="vi";
    }
	require_once _source."lang_$lang.php";	
	include_once _lib."config.php";
	include_once _lib."constant.php";
	include_once _lib."functions.php";
	include_once _lib."class.database.php";
	$d = new database($config['database']);
	if(isset($_POST['cmd'])){
		if($_POST['cmd']=='load_nhanvien' and isset($_POST['id_phong'])){
			$id_phong=(int)$_POST['id_phong'];
			//Lấy tên phòng của nhân viên
			$d->reset();
			$sql = "select ten_$lang, id from #_news_list where com='daily' and hienthi=1";
			if($id_phong!=0)
				$sql.=" and id=$id_phong";
			$d->query($sql);
			$phong = $d->result_array();
			$res['nhanvien']='';
			if(!empty($phong)){
				foreach($phong as $phong_item){
					$res['nhanvien'].='<h2 class="phong_title">'.$phong_item["ten_$lang"].'</h2>';
					//Lấy nhân viên thuộc phòng
					$d->reset();
					$sql_detail = "select ten_$lang, mota_$lang, tel, mobile, fax from #_news where com='daily' and hienthi=1 and id_list='".$phong_item['id']."'";
					$d->query($sql_detail);
					$row = $d->result_array();
					if(!empty($row)){
						$res['nhanvien'].='<ul class="cb_nhanvien">';
						foreach($row as $row_item){
							$res['nhanvien'].='<li>';
								$res['nhanvien'].='<p class="ten_daily">'.$row_item["ten_$lang"].'</p>';
								$res['nhanvien'].='<p class="info_daily"><span>Tel:</span>'.$row_item["tel"].'</p>';
								$res['nhanvien'].='<p class="info_daily"><span>Mobile:</span>'.$row_item["mobile"].'</p>';
								$res['nhanvien'].='<p class="info_daily"><span>Fax:</span>'.$row_item["fax"].'</p>';
								$res['nhanvien'].='<p class="info_daily"><span>'._diachi.':</span>'.$row_item["mota_$lang"].'</p>';
							$res['nhanvien'].='</li>';
							
						}
						$res['nhanvien'].='</ul>';
					}else{
						$res['nhanvien'].='<p class="notice">'._khongcodailynaookhuvucnay.'</p>';
					}
				}
			}
			echo json_encode($res);
		}
	}	
?>