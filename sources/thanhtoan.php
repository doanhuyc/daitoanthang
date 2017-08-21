<?php  if(!defined('_source')) die("Error");		
	// thanh tieu de
	$title_bar .= "Thanh toán - ";
	$sql_contact = "select * from #_lienhe ";
			$d->query($sql_contact);
			$company_contact = $d->fetch_array();
	
	if(!empty($_POST)){
		
		$hoten=$_POST['ten'];
		$dienthoai=$_POST['dienthoai'];
		$diachi=$_POST['diachi'];
		$email=$_POST['email'];
		$noidung=$_POST['noidung'];
		
		//validate dữ liệu
	
	$hoten = trim(strip_tags($hoten));
	$dienthoai = trim(strip_tags($dienthoai));	
	$diachi = trim(strip_tags($diachi));	
	$email = trim(strip_tags($email));	
	$noidung = trim(strip_tags($noidung));		

	if (get_magic_quotes_gpc()==false) {
		$hoten = mysql_real_escape_string($hoten);
		$dienthoai = mysql_real_escape_string($dienthoai);
		$diachi = mysql_real_escape_string($diachi);
		$email = mysql_real_escape_string($email);
		$noidung = mysql_real_escape_string($noidung);						
	}
	$coloi=false;		
	if ($hoten == NULL) { 
		$coloi=true; $error_hoten = "Bạn chưa nhập họ tên<br>";
	} 
	if ($dienthoai == NULL) { 
		$coloi=true; $error_dienthoai = "Bạn chưa nhập điện thoại<br>";
	}
	if ($diachi == NULL) { 
		$coloi=true; $error_diachi = "Bạn chưa nhập địa chỉ<br>";
	}	
	
	if ($email == NULL) { 
		$coloi=true; $error_email = "Bạn chưa nhập email<br>";
	}elseif (filter_var($email,FILTER_VALIDATE_EMAIL)==FALSE) { 
		$coloi=true; $error_email="Bạn nhập email không đúng<br>";
	}	
	
	if ($coloi==FALSE) {
										
			 $body.='<table border="0" cellpadding="5px" cellspacing="1px" style="font-family:Verdana, Geneva, sans-serif; font-size:11px; background-color:#E1E1E1; padding:5px;" width="100%">';
			if(is_array($_SESSION['cart']))
			{
					$body = '<table>';
			$body .= '
					
			<tr><th colspan="2">&nbsp;</th></tr>
			<tr>
			<th colspan="2">Thư liên hệ từ website <a href="">http</a></th>
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
					<th>Tiêu đề :</th><td>'.$_POST['tieude'].'</td>
			</tr>		
			<tr>	
					<th>Nội dung :</th><td>'.$_POST['noidung'].'</td>
					
			</tr>';
			$body .= '</table>';
				
            	$body.='<tr bgcolor="#075992"><td align="center" style="font-weight:bold;color:#FFF">STT</td><td style="font-weight:bold;color:#FFF">Tên</td><td align="center" style="font-weight:bold;color:#FFF">Giá</td><td align="center" style="font-weight:bold;color:#FFF">Số lượng</td><td align="center" style="font-weight:bold;color:#FFF">Tổng giá</td></tr>';
				$max=count($_SESSION['cart']);
				for($i=0;$i<$max;$i++){
					$pid=$_SESSION['cart'][$i]['productid'];
					$q=$_SESSION['cart'][$i]['qty'];					
					$pname=get_product_name($pid);					
					if($q==0) continue;
            		$body.='<tr bgcolor="#FFFFFF"><td width="10%" align="center">'.($i+1).'</td>';
            		$body.='<td width="29%">'.$pname;				
					$body.='</td>';
                    $body.='<td width="20%">'.number_format(get_price($pid),0, ',', '.').'&nbsp;VNĐ</td>';
                    $body.='<td width="14%">'.$q.'</td>';                 
                    $body.='<td>'.number_format(get_price($pid)*$q,0, ',', '.') .'&nbsp;VNĐ</td>
                    </tr>
					<br/>';
				}
				$body.='<tr><td colspan="5">
              <table width="100%" cellpadding="0" cellspacing="0" border="0">
              <tr>
              <td style="text-align:left;"> '; 
               $body.=' <strong>Tổng giá bán:'. number_format(get_order_total(),0, ',', '.') .' &nbsp;VNĐ</strong></td>
              <td colspan="5" align="right">&nbsp;</td>
             </tr>
             </table>   
                </td></tr>';
            }
			else{
				$body.='<tr bgColor="#FFFFFF"><td>There are no items in your shopping cart!</td>';
			}
       $body.='</table>';  						
														
					
					$title_bar = "Thanh Toán ";
					if(!empty($_POST)){
					include_once "phpMailer/class.phpmailer.php";
					
					$mail = new PHPMailer();
					$mail->IsSMTP(); // Gọi đến class xử lý SMTP
					$mail->Host       = "116.193.76.21"; // tên SMTP server
					$mail->SMTPAuth   = true;                  // Sử dụng đăng nhập vào account
					$mail->Host       = "116.193.76.21";     // Thiết lập thông tin của SMPT
					$mail->Username   = "admin@otocongthanh.com"; // SMTP account username
					$mail->Password   = "1234qwer!@";            // SMTP account password
			
					//Thiet lap thong tin nguoi gui va email nguoi gui
					$mail->SetFrom('admin@otocongthanh.com','Hoàng Ngân');
			
					//Thiết lập thông tin người nhận
					$mail->AddAddress($company_contact['mota'], $_POST['name']);
			
					/*=====================================
					 * THIET LAP NOI DUNG EMAIL
					*=====================================*/
			
					//Thiết lập tiêu đề
					$mail->Subject    = "[Activation] - Hoàng Ngân";
					//Thiết lập định dạng font chữ
					$mail->CharSet = "utf-8";
					$mail->IsHTML(true);
					$mail->Body = $body;
					if($mail->Send()) 
					{
						transfer("Thông tin liên hệ được gửi.<br>Cảm ơn.", "san-pham.html");
					}else
						 transfer("Xin lỗi quý khách.<br>Hệ thống bị lỗi, xin quý khách thử lại.", "san-pham.html");		
						
				}
	}
	
	}
?>