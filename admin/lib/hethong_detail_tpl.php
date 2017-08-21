<div class="box_container">


<div class="tcat"><?=$row_detail['ten_'.$lang]?></div>
   <div class="content">             
           <?=$row_detail['noidung_'.$lang]?>
           
          <div class="othernews">
           <h1>Các bài khác</h1>
           <ul>
           
<?php foreach($sanpham_khac as $tinkhac){?>
<li><a href="he-thong-phan-phoi/<?=$tinkhac['id']?>/<?=$tinkhac['tenkhongdau']?>.html" style="text-decoration:none;" title="<?=htmlentities($tinkhac['ten'], ENT_QUOTES, "UTF-8")?>"><?=$tinkhac['ten_'.$lang]?></a> (<?=make_date($tinkhac['ngaytao'])?>)</li>
<?php }?>
     </ul>
</div>
         </div>
         
         </div>