<div class="module_main">


<div class="tcat"><?=_chitiet?></div>
	
   <div class="content"> 
	<h1 class="chitiet_tin"><?=$tintuc_detail[0]['ten_'.$lang]?></h1>
           <?=$tintuc_detail[0]['noidung_'.$lang]?>
           
          <div class="othernews">
           <h1><?=_othernews?></h1>
           <ul>
           
<?php foreach($tintuc_khac as $tinkhac){?>
<li><a href="khuyen-mai/<?=$tinkhac['id']?>/<?=$tinkhac['tenkhongdau']?>.html" style="text-decoration:none;" title="<?=htmlentities($tinkhac['ten_'.$lang], ENT_QUOTES, "UTF-8")?>"><?=$tinkhac['ten_'.$lang]?></a> (<?=make_date($tinkhac['ngaytao'])?>)</li>
<?php }?>
     </ul>
</div>
         </div>
         
         </div>