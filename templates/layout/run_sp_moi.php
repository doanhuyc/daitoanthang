<?php
	$sql_muaban = "select * from #_product where hienthi=1 and noibat!=0";
	$d->query($sql_muaban);
	$spbc = $d->result_array();

?>

<script src="js/ImageScroller.js" language="javascript"></script>
<div id="ctsdiv123" style="text-align:center; position:relative; height:400px; overflow:hidden">
             <table width="100%" border="0" cellspacing="0" cellpadding="0" id="ctstbl123" style="position:relative; margin:0px">
        
             <?php for($i=0,$count_ha=count($spbc);$i<$count_ha;$i++){?>
             <tr>
                <td valign="top">
                   <table width="100%" cellspacing="0" cellpadding="0" border="0">
                           <tr>
                              <td valign="top">
                             <a href="san-pham/<?=$spbc[$i]['id']?>/<?=$spbc[$i]['tenkhongdau']?>.html"><img src="<?=_upload_sanpham_l.$spbc[$i]['thumb']?>" style="margin-top:5px;margin-bottom:10px;; border:1px solid #CCC;" width="180"/></a>
                              </td>                              
                           </tr>
                           <tr>
                              <td valign="top" class="spbc">
                             <a href="san-pham/<?=$spbc[$i]['id']?>/<?=$spbc[$i]['tenkhongdau']?>.html"><?=$spbc[$i]['ten_'.$lang]?></a>
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
 .spbc a{
	font-weight:bold;
	color:#000;
	font-size:12px;
	text-decoration:none;
	margin-right:10px;
	}

 .spbc a:hover{
	text-decoration:underline;
	}
 </style>