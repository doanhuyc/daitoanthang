<?php
	$d->query($sql);
	$sql_tin = "select ten_$lang,tenkhongdau,ngaytao,id,mota_$lang,thumb,photo from #_news where hienthi=1  order by stt,ngaytao desc limit 0,5";
	$d->query($sql_tin);
	$tin_tuc = $d->result_array();
	
	
?>
<script src="js/ImageScroller.js" language="javascript"></script>
<div id="ctsdiv222" style="padding-left:10px;; position:relative; height:260px; overflow:hidden">
             <table width="100%" border="0" cellspacing="0" cellpadding="0" id="ctstb222" style="position:relative; margin:0px;color:#000;">
        
             <?php for($i=0,$count_tintuc=count($tin_tuc);$i<$count_tintuc;$i++){?>
             <tr style="margin-bottom:10px;">
               <td valign="top">
				<div class="tin_chay">
					<div class="ten_tt"><a href="tin-tuc/<?=$tin_tuc[$i]['id']?>/<?=$tin_tuc[$i]['tenkhongdau']?>.html"><?=$tin_tuc[$i]['ten_'.$lang]?></a></div>
					<div class="img_tt"><img class="aaa" src="<?php if($tin_tuc[$i]['photo']!=NULL) echo _upload_tintuc_l.$tin_tuc[$i]['thumb']; else echo 'images/noimage.gif';?>" width="60" height="60" /></div>
					<div class="ten_tt1"><?=$tin_tuc[$i]['ten_'.$lang]?></div>
                </div>
				</td>
             </tr>
            <div style="clear:both;"></div>
             <?php }?>
           
             </table>
 <script type="text/javascript">createScroller("myScroller222", "ctsdiv222", "ctstb222",0,75,1,0,1);</script>   
</div>
 <style>
.tin_chay{
	margin-top:10px;
}
 .ten_tt{
	margin-top:10px;
 }
 .ten_tt a{
	color:#000;
	font-size:13px;
	font-weight:bold;
 }
 .ten_tt a:hover{
	text-decoration:underline;
 }
 .ten_tt span{
	color:#CCC;
 }
 .img_tt{
	width:80px;
	float:left;
	margin-right:5px;
 }
 .mota_tt{	
	float:left;
 }
 img.aaa{
	border:1px solid #CCC;
	padding:5px;
 }
 </style>