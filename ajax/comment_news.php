<?php
	session_start();
	@define ( '_lib' , '../admin/lib/');
	@define ( '_source' , '../sources/');
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
		if($_POST['cmd']=='add_comment'){
			$ten=magic_quote($_POST['ten']);
			$email=magic_quote($_POST['email']);
			$dienthoai=magic_quote($_POST['dienthoai']);
			$noidung=magic_quote($_POST['noidung']);
			$idpro = (int)$_POST['id_pro'];
			$ngaydangky=time();
			$d->reset();
			$sql = "INSERT INTO  table_nhanxet (id_pro,ten,email,dienthoai,noidung,ngaytao, hienthi) 
				  VALUES ('$idpro','$ten','$email','$dienthoai','$noidung','$ngaydangky',0)";
			$d->query($sql);
			echo '1';
		}else if($_POST['cmd']=='del_comment'){
			$id_comment = (int)$_POST['id_comment'];
			$d->reset();
			$sql = "delete from #_nhanxet where id_parent='".$id_comment."'";
			$d->query($sql);
			$d->reset();
			$sql = "delete from #_nhanxet where id='".$id_comment."'";
			$d->query($sql);
			echo '1';
		}else if($_POST['cmd']=='load_comment'){
			$id_pro=(int)$_POST['id_pro'];
			$d->reset();
			$sql= "select * from #_nhanxet where hienthi=1 and id_pro='".$id_pro."' and id_parent=0 order by ngaytao desc, id desc";
			$d->query($sql);
			$nhanxet = $d->result_array();
			if(!empty($nhanxet)){
				foreach($nhanxet as $nhanxet_item){
				?>
                	<div class="sub_comment">
                            <div class="name_comment"><?=$nhanxet_item['ten']?></div>
                            <div class="date_comment"><?=date('d/m/Y, h:i',$nhanxet_item['ngaytao'])?></div>
                            <div class="post_arrow"></div>
                            <div class="cont_comment"><p class="title_comment"><?=_hoi?></p><?=$nhanxet_item['noidung']?><div class="clear"></div></div>
                        </div>
                <?php
					if($nhanxet_item['traloi']!=''){
				?>
						  <div class="sub_comment sub_comment1">
							<div class="name_comment">Quản trị viên</div>
							<div class="date_comment">&nbsp;</div>
							<div class="post_arrow"></div>
							<div class="cont_comment"><p class="title_comment"><?=_dap?></p><?=$nhanxet_item['traloi']?><div class="clear"></div></div>
						</div>      
				<?php	
                		}
						}
			}
		}
	}
	
?>