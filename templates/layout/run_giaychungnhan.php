<?php
	$sql_muaban = "select * from #_hinhanhcongty";
	$d->query($sql_muaban);
	$hinhanhcty = $d->result_array();
?>
<script src="js/ImageScroller.js" language="javascript"></script>
<div id="ctsdiv5" style="text-align:center; position:relative; height:585px; overflow:hidden;margin-top:10px;">
             <table width="100%" border="0" cellspacing="0" cellpadding="0" id="ctstb5" style="position:relative; margin:0px">
        
             <?php for($i=0,$count_ha=count($hinhanhcty);$i<$count_ha;$i++){?>
             <tr>
                <td valign="top">
                   <table width="100%" cellspacing="0" cellpadding="0" border="0" style="padding-top:10px;">
                           <tr>
                              <td valign="top" style="margin-left:5px;">
                             <center><a ><img src="<?=_upload_tintuc_l.$hinhanhcty[$i]['photo']?>" style="margin-top:0px;" width="200"  /></a></center>
                              </td>
                             
                           </tr> 
                           <tr>                             
                             
                           </tr>                         
                 
			 </table>
                </td>
             </tr>
             <?php }?>
           
             </table>
 <script type="text/javascript">createScroller("myScroller5", "ctsdiv5", "ctstb5",0,100,1,0,1);</script>   
 </div>