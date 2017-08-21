<?php
	$d->query($sql);
	$sql_tin = "select * from #_doitac where hienthi=1";
	$d->query($sql_tin);
	$doitac = $d->result_array();
	
	
?>
<script src="js/ImageScroller.js" language="javascript"></script>
<div id="ctsdiv2" style="padding-left:10px;; position:relative; height:260px; overflow:hidden">
             <table width="100%" border="0" cellspacing="0" cellpadding="0" id="ctstb2" style="position:relative; margin:0px;color:#000;">
        
             <?php for($i=0,$count_tintuc=count($doitac);$i<$count_tintuc;$i++){?>
             <tr style="margin-bottom:10px;">
               <td valign="top">
				<div class="tin_chay">					
					<div class="img_tt"><a href="<?=$doitac[$i]['mota']?>" target="_blank"><img class="aaa" src="<?php if($doitac[$i]['photo']!=NULL) echo _upload_doitac_l.$doitac[$i]['photo']; else echo 'images/noimage.gif';?>" width="60" height="60" /></a></div>
					<div class="ten_tt123"><?=$doitac[$i]['ten']?></div>
                </div>
				</td>
             </tr>
            <div style="clear:both;"></div>
             <?php }?>
           
             </table>
 <script type="text/javascript">createScroller("myScroller2", "ctsdiv2", "ctstb2",0,75,1,0,1);</script>   
</div>
 <style>
.ten_tt123{
	color:#000;
	font-size:14px;
	font-weight:bold;
}
 </style>