<?php if(!defined('_source')) die("Error");
		$d->reset();
			$sql_contact = "select * from #_lienhe ";
			$d->query($sql_contact);
			$company_contact = $d->result_array();
			
			$sql_tintuc = "select * from #_lienhe";
			$d->query($sql_tintuc);
			$map = $d->fetch_array();	
			
			
				$d->reset();
				$sql_contact1 = "select email from #_company ";
				$d->query($sql_contact1);
				$company_contact1 = $d->result_array();
				
				
				if(!empty($_POST) && isset($_POST['timkiem'])){ 
				
				$ten = $_POST['ten'];
				$diachi = $_POST['diachi'];
				$dienthoai = $_POST['dienthoai'];
				$email = $_POST['email'];
				$tieude1 = $_POST['tieude'];
				$noidung = $_POST['noidung'];
				$ngaytao= time();
				
				$sql = "INSERT INTO  table_contact (ten,diachi,dienthoai,email,tieude,noidung) 
					  VALUES ('$ten','$diachi','$dienthoai','$email','$tieude','$noidung')";
					 
				mysql_query($sql) or die(mysql_error());

	}
				
						
		$title_bar = "Liên Hệ ";
		if(!empty($_POST)){
		include_once "phpMailer/class.phpmailer.php";
		
		$mail = new PHPMailer();
		$mail->IsSMTP(); // Gọi đến class xử lý SMTP
		$mail->Host       = "120.72.98.56"; // tên SMTP server
		$mail->SMTPAuth   = true;                  // Sử dụng đăng nhập vào account
		$mail->Host       = "120.72.98.56";     // Thiết lập thông tin của SMPT
		$mail->Username   = "admin@sanxuatodu.com.vn"; // SMTP account username
		$mail->Password   = "123qwe";            // SMTP account password

		
		//Thiết lập thông tin người nhận
		$mail->AddAddress($company_contact[0]['mota'], $_POST['name']);

		/*=====================================
		 * THIET LAP NOI DUNG EMAIL
 		*=====================================*/

		//Thiết lập tiêu đề
		$mail->Subject    = "[Activation] - CÔNG TY TNHH SẢN XUẤT THƯƠNG MẠI BẢO THÀNH";
		//Thiết lập định dạng font chữ
		$mail->CharSet = "utf-8";
		$mail->IsHTML(true);
		$body = '<table>';
			$body .= '
					
			<tr><th colspan="2">&nbsp;</th></tr>
			<tr>
			<th colspan="2">Thư liên hệ từ website <a href="/"></a></th>
			</tr>
			<tr>
				<th colspan="2">&nbsp;</th>
			</tr>
			<tr>
					<th>Họ tên :</th><td>'.$_POST['ten'].'</td>
			</tr>		
			<tr>
					<th>Địa chỉ :</th><td>'.$_POST['diachi'].'</td>
			</tr>		
			<tr>	
					<th>Điện thoại :</th><td>'.$_POST['dienthoai'].'</td>
			</tr>		
			<tr>	
					<th>Email :</th><td>'.$_POST['email'].'</td>
			</tr>		
			<tr>	
					<th>Tiêu đề :</th><td>'.$_POST['tieude1'].'</td>
			</tr>		
			<tr>	
					<th>Nội dung :</th><td>'.$_POST['noidung'].'</td>
					
			</tr>';
			$body .= '</table>';
		 
		$mail->Body = $body;
		if($mail->Send()) 
		{
			transfer("Thông tin liên hệ được gửi.<br>Cảm ơn.", "lien-he.html");
		}else
			 transfer("Xin lỗi quý khách.<br>Hệ thống bị lỗi, xin quý khách thử lại.", "lien-he.html");
		
			
	}
			
	
?>