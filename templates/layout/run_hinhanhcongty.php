<?php
	$sql_muaban = "select * from #_hinhanhcongty where hienthi=1";
	$d->query($sql_muaban);
	$hinhanhcongty_l = $d->result_array();

?>

<script src="js/ImageScroller.js" language="javascript"></script>
<div id="ctsdiv123" style="text-align:center; position:relative; height:400px; overflow:hidden">
             <table width="100%" border="0" cellspacing="0" cellpadding="0" id="ctstbl123" style="position:relative; margin:0px">
        
             <?php for($i=0,$count_ha=count($hinhanhcongty_l);$i<$count_ha;$i++){?>
             <tr>
                <td valign="top">
                   <table width="100%" cellspacing="0" cellpadding="0" border="0">
                           <tr>
                              <td valign="top">
                             <a href="<?=$hinhanhcongty_l[$i]['mota_vi']?>"  target="_blank"><img src="<?=_upload_tintuc_l.$hinhanhcongty_l[$i]['thumb']?>" style="margin-top:5px;margin-bottom:10px;; border:1px solid #CCC;" width="180"/></a>
                              </td>                              
                           </tr>
                           <tr>
                              <td valign="top" class="hinhanhcongty_l">
                             <a href="<?=$hinhanhcongty_l[$i]['mota_vi']?>" target="_blank"><?=$hinhanhcongty_l[$i]['ten_'.$lang]?></a>
                              </td>
                              
                           </tr>                          
                  
			 </table>
                </td>
             </tr>
             <?php }?>
           
             </table>
 <script type="text/javascript">createScroller("myScroller123", "ctsdiv123", "ctstbl123",0,80,1,0,1);</script>   
 </div>
 
 <style>
 .hinhanhcongty_l a{
	font-weight:bold;
	color:#000;
	font-size:12px;
	text-decoration:none;
	margin-right:10px;
	}

 .hinhanhcongty_l a:hover{
	text-decoration:underline;
	}
 </style>