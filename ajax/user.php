<?php
	session_start();
	@define ( '_lib' , '../admin/lib/');
	include_once _lib."config.php";
	include_once _lib."constant.php";
	include_once _lib."functions.php";
	include_once _lib."class.database.php";
	$d = new database($config['database']);
	if(isset($_POST['cmd'])){
		if($_POST['cmd']=='login'){
			if($_POST['user']==""){
				echo 'error1';
				exit();
			}
			if($_POST['pass']==""){
				echo 'error2';
				exit();
			}
			$username = magic_quote($_POST['user']);
			$password = magic_quote($_POST['pass']);
			$sql = "select * from #_user where username='".$username."' and hienthi='1'";
			$d->query($sql);
			if($d->num_rows() == 1){
				$row = $d->fetch_array();
				if(($row['password'] == md5($password)) && ($row['role'] == 1 || $row['role'] == 2)){
					$_SESSION['bomchinhhang'] = true;
					$_SESSION['login']['tenuser'] = $row['ten'];
					$_SESSION['login']['id_user'] = $row['id'];
					if($row['role']==2)
						$_SESSION['login']['role'] = true;
					if(isset($_POST['remember']) and $_POST['remember']=='1'){
						setcookie("tenuser", $row['ten'], time()+3600*24*7);
						setcookie("id_user", $row['ten'], time()+3600*24*7);
					}
					exit();
				}
			}
			echo 'error3';
			exit();
		}else if($_POST['cmd']=='register'){
			//Kiểm tra mã xác nhận
			if($_POST['capcha']==''){
				echo 'error1';
				exit();
			}
			if($_SESSION['captcha_code']!= strtoupper($_POST['capcha']))
			{
				echo 'error2';
				exit();
			}
			// kiem tra ten trung
			$d->reset();
			$d->setTable('user');
			$d->setWhere('username', $_POST['txtUser']);
			$d->select();
			if($d->num_rows()>0){
				echo 'error3';
				exit();
			}
			//kiemtra email trung
			$d->reset();
			$d->setTable('user');
			$d->setWhere('email', $_POST['txtEmail']);
			$d->select();
			if($d->num_rows()>0){
				echo 'error4';
				exit();
			}
			
			if($_POST['txtUser']==""){
				echo 'error5';
				exit();
			}
			if($_POST['txtPass']==""){
				echo 'error6';
				exit();			}
			$data['username'] = magic_quote($_POST['txtUser']);
			$data['password'] = md5($_POST['txtPass']);
			$data['email'] = magic_quote($_POST['txtEmail']);
			$data['ten'] = magic_quote($_POST['txtName']);
			$data['dienthoai'] = magic_quote($_POST['txtPhone']);
			$data['diachi'] = magic_quote($_POST['txtAddress']);
			$data['role'] = 1;
			$data['hienthi'] = 1;//Không cần xác nhận
			$data['com'] = "user";
			
			$d->setTable('user');
			if($d->insert($data)){
			}
			else{
				echo 'error7';
				exit();
			}
		}
	}
	
?>