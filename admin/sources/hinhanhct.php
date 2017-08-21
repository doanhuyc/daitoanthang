<?php	if(!defined('_source')) die("Error");

$act = (isset($_REQUEST['act'])) ? addslashes($_REQUEST['act']) : "";

switch($act){
	case "man_photo":
		get_photos();
		$template = "hinhanhct/photos";
		break;
	case "add_photo":
		$template = "hinhanhct/photo_add";
		break;
	case "edit_photo":
		get_photo();
		$template = "hinhanhct/photo_edit";
		break;
	case "save_photo":
		save_photo();
		break;
	case "delete_photo":
		delete_photo();
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
function get_photos(){
	global $d, $items, $paging;
	
	#----------------------------------------------------------------------------------------
	if($_REQUEST['hienthi']!='')
	{
	$id_up = $_REQUEST['hienthi'];
	$sql_sp = "SELECT id,hienthi FROM table_hinhanhct where id='".$id_up."' ";
	$d->query($sql_sp);
	$cats= $d->result_array();
	$hienthi=$cats[0]['hienthi'];
	if($hienthi==0)
	{
	$sqlUPDATE_ORDER = "UPDATE table_hinhanhct SET hienthi =1 WHERE  id = ".$id_up."";
	$resultUPDATE_ORDER = mysql_query($sqlUPDATE_ORDER) or die("Not query sqlUPDATE_ORDER");
	}
	else
	{
	$sqlUPDATE_ORDER = "UPDATE table_hinhanhct SET hienthi =0  WHERE  id = ".$id_up."";
	$resultUPDATE_ORDER = mysql_query($sqlUPDATE_ORDER) or die("Not query sqlUPDATE_ORDER");
	}	
	}
	
	
	
	$sql = "select * from #_hinhanhct where ( id_photo = '".$_REQUEST['idc']."' OR '".$_REQUEST['idc']."'=0  ) order by stt,id desc ";			
	$d->query($sql);
	$items = $d->result_array();
	
	$curPage = isset($_GET['curPage']) ? $_GET['curPage'] : 1;
	$url="index.php?com=hinhanhct&act=man_photo&idc=".$_REQUEST['idc']."";
	$maxR=10;
	$maxP=4;
	$paging=paging($items, $url, $curPage, $maxR, $maxP);
	$items=$paging['source'];

}

function get_photo(){
	global $d, $item, $list_cat;
	$id = isset($_GET['id']) ? themdau($_GET['id']) : "";
	if(!$id)
		transfer("Không nhận được dữ liệu", "index.php?com=hinhanhct&act=man_photo&idc=".$_REQUEST['idc']."");
	
	$d->setTable('hinhanhct');
	$d->setWhere('com', 'hinhanhct');
	$d->setWhere('id', $id);
	$d->select();
	if($d->num_rows()==0) transfer("Dữ liệu không có thực", "index.php?com=hinhanhct&act=man_photo&idc=".$_REQUEST['idc']."");
	$item = $d->fetch_array();
	$d->reset();
}

function save_photo(){
	global $d;
	$file_name=fns_Rand_digit(0,9,10);
	if(empty($_POST)) transfer("Không nhận được dữ liệu", "index.php?com=hinhanhct&act=man_photo&idc=".$_REQUEST['idc']."");
	
	$id = isset($_POST['id']) ? themdau($_POST['id']) : "";
	if($id){ // cap nhat
		
			if($photo = upload_image("file", 'jpg, jpeg, png, gif, JPG, JPEG, PNG, GIF', _upload_hinhanh,$file_name)){
				$data['photo'] = $photo;
				$data['thumb'] = create_thumb($data['photo'], 75, 75, _upload_hinhanh,$file_name);
				$d->setTable('hinhanhct');
				$d->setWhere('id', $id);
				$d->select();
				if($d->num_rows()>0){
					$row = $d->fetch_array();
					delete_file(_upload_hinhanh.$row['photo']);
					delete_file(_upload_hinhanh.$row['thumb']);
				}
			}
			$data['id'] = $_REQUEST['id'];
			$data['ten_vi'] = $_POST['ten_vi'];
			$data['ten_en'] = $_POST['ten_en'];
			$data['stt'] = $_POST['stt'];
			$data['hienthi'] = isset($_POST['hienthi']) ? 1 : 0;
			$data['com'] = 'hinhanhct';
			$d->reset();
			$d->setTable('hinhanhct');
			$d->setWhere('id', $id);
			if(!$d->update($data)) transfer("Cập nhật dữ liệu bị lỗi", "index.php?com=hinhanhct&act=man_photo&idc=".$_REQUEST['idc']."");
			redirect("index.php?com=hinhanhct&act=man_photo&idc=".$_REQUEST['idc']."");
			
	}{ // them moi
		
			for($i=0; $i<5; $i++){
				if($photo = upload_image("file".$i, 'jpg, jpeg, png, gif, JPG, JPEG, PNG, GIF', _upload_hinhanh,$file_name.$i))
					{
						$data['photo'] = $photo;
						$data['thumb'] = create_thumb($data['photo'], 75, 75, _upload_hinhanh,$file_name);
						
						$data['ten_vi'] = "ten_vi :".$i;
						$data['ten_en'] = "ten_en :".$i;
						
						$data['stt'] = $_POST['stt'.$i];
					
						
						$data['hienthi'] = isset($_POST['hienthi'.$i]) ? 1 : 0;
						$data['com'] = 'hinhanhct';
						
						$data['id_photo'] = $_REQUEST['idc'];
						
						$d->setTable('hinhanhct');
						if(!$d->insert($data)) transfer("Lưu dữ liệu bị lỗi", "index.php?com=hinhanhct&act=man_photo&idc=".$_REQUEST['idc']."");
					}
			}
			redirect("index.php?com=hinhanhct&act=man_photo&idc=".$_REQUEST['idc']."");
	}
}


function delete_photo(){
	global $d;
	
	if(isset($_GET['id'])){
		$id =  themdau($_GET['id']);
		$d->setTable('hinhanhct');
		$d->setWhere('id', $id);
		$d->select();
		if($d->num_rows()==0) transfer("Dữ liệu không có thực", "index.php?com=hinhanhct&act=man_photo&idc=".$_REQUEST['idc']."");
		$row = $d->fetch_array();
			delete_file(_upload_hinhanh.$row['photo']);
			delete_file(_upload_hinhanh.$row['thumb']);
		if($d->delete())
		
			redirect("index.php?com=hinhanhct&act=man_photo&idc=".$_REQUEST['idc']."");
		else
			transfer("Xóa dữ liệu bị lỗi", "index.php?com=hinhanhct&act=man_photo&idc=".$_REQUEST['idc']."");
	}else transfer("Không nhận được dữ liệu", "index.php?com=hinhanhct&act=man_photo&idc=".$_REQUEST['idc']."");
}

?>