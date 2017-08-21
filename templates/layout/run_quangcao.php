<?php
	$sql_muaban = "select ten,photo,id,mota from #_quangcao";
	$d->query($sql_muaban);
	$nums_anh = $d->result_array();
?>
<script src="js/ImageScroller.js" language="javascript"></script>
<div id="ctsdiv" style="text-align:center; position:relative; height:481px; overflow:hidden;margin-top:10px;">
             <table width="100%" border="0" cellspacing="0" cellpadding="0" id="ctstb" style="position:relative; margin:0px">
        
             <?php for($i=0,$count_ha=count($nums_anh);$i<$count_ha;$i++){?>
             <tr>
                <td valign="top">
                   <table width="100%" cellspacing="0" cellpadding="0" border="0" style="padding-top:10px;">
                           <tr>
                              <td valign="top" style="margin-left:5px;">
                             <center><a href="<?=$nums_anh[$i]['mota']?>" target="_blank"><img src="<?=_upload_hinhanh_l.$nums_anh[$i]['photo']?>" style="margin-top:0px;" width="200"  /></a></center>
                              </td>
                             
                           </tr> 
                           <tr height="10">                             
                            
                           </tr>                         
                 
			 </table>
                </td>
             </tr>
             <?php }?>
           
             </table>
 <script type="text/javascript">createScroller("myScroller", "ctsdiv", "ctstb",0,100,1,0,1);</script>   
 </div>