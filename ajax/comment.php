<?php
	session_start();
	@define ( '_lib' , '../admin/lib/');
	include_once _lib."config.php";
	include_once _lib."constant.php";
	include_once _lib."functions.php";
	include_once _lib."class.database.php";
	$d = new database($config['database']);
	if(isset($_POST['cmd'])){
		if($_POST['cmd']=='add_comment'){
			$strTen='';
			if(isset($_SESSION['bomchinhhang'], $_SESSION['login']) and $_SESSION['bomchinhhang']==true and !isset($_SESSION['login']['role']))
				$strTen='<span style="color:#00A3FF"><em> - Thành viên</em></span>';
			else if(isset($_SESSION['bomchinhhang'], $_SESSION['login'], $_SESSION['login']['role']) and $_SESSION['bomchinhhang']==true and $_SESSION['login']['role']==true)
				$strTen='<span style="color:#f00"><em> - Quản trị viên</em></span>';
			$ten=$_POST['ten'].$strTen;
			$noidung=$_POST['noidung'];
			$idpro = (int)$_POST['id_pro'];
			$ngaydangky=time();
			$d->reset();
			$sql = "INSERT INTO  table_nhanxet (id_pro,ten,noidung,ngaytao, hienthi) 
				  VALUES ('$idpro','$ten','$noidung','$ngaydangky',1)";
			$d->query($sql);
			echo '1';
		}else if($_POST['cmd']=='add_comment_sub'){
			$strTen='';
			if(isset($_SESSION['bomchinhhang'], $_SESSION['login']) and $_SESSION['bomchinhhang']==true and !isset($_SESSION['login']['role']))
				$strTen='<span style="color:#00A3FF"><em> - Thành viên</em></span>';
			else if(isset($_SESSION['bomchinhhang'], $_SESSION['login'], $_SESSION['login']['role']) and $_SESSION['bomchinhhang']==true and $_SESSION['login']['role']==true)
				$strTen='<span style="color:#f00"><em> - Quản trị viên</em></span>';
			$ten=$_POST['ten'].$strTen;
			$noidung=$_POST['noidung'];
			$id_comment = (int)$_POST['id_comment'];
			$idpro = (int)$_POST['id_pro'];
			$ngaydangky=time();
			$d->reset();
			$sql = "INSERT INTO  table_nhanxet (id_pro,id_parent,ten,noidung,ngaytao, hienthi) 
				  VALUES ('$idpro','$id_comment','$ten','$noidung','$ngaydangky',1)";
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
                        <div class="name_comment"><?=$nhanxet_item['ten']?> - <a href="javascript:;" class="reply_here" onclick="comment_sub(<?=$nhanxet_item['id']?>)">Trả lời</a><?php if(isset($_SESSION['bomchinhhang'], $_SESSION['login'], $_SESSION['login']['role']) and $_SESSION['bomchinhhang']==true and $_SESSION['login']['role']==true){?> | <a href="javascript:;" class="reply_here" onclick="del_comment(<?=$nhanxet_item['id']?>, <?=$id_pro?>)" title="Xóa bình luận này">Xóa</a><?php }?></div>
                        <div class="date_comment"><?=date('d/m/Y, h:i',$nhanxet_item['ngaytao'])?></div>
                        <div class="post_arrow"></div>
                        <div class="cont_comment"><?=$nhanxet_item['noidung']?></div>
                    </div>
                <?php
					$d->reset();
					$sql= "select * from #_nhanxet where hienthi=1 and id_parent='".$nhanxet_item['id']."' and id_pro='".$id_pro."' order by ngaytao desc, id desc";
					$d->query($sql);
					$nhanxetsub = $d->result_array();
					if(!empty($nhanxetsub)){
						foreach($nhanxetsub as $nhanxetsub_item){
				?>
                	<div class="sub_comment sub_comment1">
                        <div class="name_comment"><?=$nhanxetsub_item['ten']?><?php if(isset($_SESSION['bomchinhhang'], $_SESSION['login'], $_SESSION['login']['role']) and $_SESSION['bomchinhhang']==true and $_SESSION['login']['role']==true){?> - <a href="javascript:;" class="reply_here" onclick="del_comment(<?=$nhanxetsub_item['id']?>, <?=$id_pro?>)" title="Xóa bình luận này">Xóa</a><?php }?></div>
                        <div class="date_comment"><?=date('d/m/Y, h:i',$nhanxetsub_item['ngaytao'])?></div>
                        <div class="post_arrow"></div>
                        <div class="cont_comment"><?=$nhanxetsub_item['noidung']?></div>
                    </div>
                <?php	
						}
					}
				}
			}
		}
	}
	
?>