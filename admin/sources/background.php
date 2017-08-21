<?php	if(!defined('_source')) die("Error");
$act = (isset($_REQUEST['act'])) ? addslashes($_REQUEST['act']) : "";
switch($act){
	case "capnhat":
		get_background();
		$template = "background/item_add";
		break;
	case "save":
		save_background();
		break;

		
	default:
		$template = "index";
}
function fns_Rand_digit($min,$max,$num)
	{
		$result='';
		for($i=0;$i<$num;$i++){
			$result.=rand($min,$max);
		}
		return $result;	
	}

function get_background(){
	global $d, $item;

	$sql = "select * from #_background limit 0,1";
	$d->query($sql);
	if($d->num_rows()==0) transfer("Dữ liệu chưa khởi tạo.", "index.php");
	$item = $d->fetch_array();
}

function save_background(){
	global $d;
	$file_name=fns_Rand_digit(0,9,5);
	if(empty($_POST)) transfer("Không nhận được dữ liệu", "index.php?com=background&act=capnhat");
	if($photo = upload_image("file", 'jpg|png|gif|JPG|jpeg|JPEG',_upload_hinhanh,$file_name)){
			$data['photo'] = $photo;
			$d->setTable('background');			
			$d->select();
			if($d->num_rows()>0){
				$row = $d->fetch_array();
				delete_file(_upload_hinhanh.$row['photo']);
				
			}
		}	
	if($photo1 = upload_image("file1", 'jpg|png|gif|JPG|jpeg|JPEG',_upload_hinhanh,$file_name."1")){
			$data['photo1'] = $photo1;
			$d->setTable('background');			
			$d->select();
			if($d->num_rows()>0){
				$row = $d->fetch_array();
				delete_file(_upload_hinhanh.$row['photo1']);
				
			}
		}	
	$data['link']=$_POST['link'];
	$data['link1']=$_POST['link1'];
	$d->reset();
	$d->setTable('background');
	if($d->update($data))
		redirect("index.php?com=background&act=capnhat");
	else
		transfer("Cập nhật dữ liệu bị lỗi", "index.php?com=background&act=capnhat");
}

?>