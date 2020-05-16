<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<?php 
$productcat_id = 230;
$dexuat_1 = $action->getDetail_New('productcat_languages', array('productcat_id', 'languages_code'), array(&$productcat_id, &$lang), 'is');
$productcat_id = 231;
$dexuat_2 = $action->getDetail_New('productcat_languages', array('productcat_id', 'languages_code'), array(&$productcat_id, &$lang), 'is');
$productcat_id = 232;
$dexuat_3 = $action->getDetail_New('productcat_languages', array('productcat_id', 'languages_code'), array(&$productcat_id, &$lang), 'is');
$productcat_id = 233;
$dexuat_4 = $action->getDetail_New('productcat_languages', array('productcat_id', 'languages_code'), array(&$productcat_id, &$lang), 'is');
$productcat_id = 234;
$dexuat_5 = $action->getDetail_New('productcat_languages', array('productcat_id', 'languages_code'), array(&$productcat_id, &$lang), 'is');
$productcat_id = 235;
$dexuat_6 = $action->getDetail_New('productcat_languages', array('productcat_id', 'languages_code'), array(&$productcat_id, &$lang), 'is');
//////////////////////////
$danhmuc1 = $action_product  -> getProductList_byMultiLevel_orderProductId(230,'desc',1,4,'');
$danhmuc2 = $action_product  -> getProductList_byMultiLevel_orderProductId(231,'desc',1,4,'');
$danhmuc3 = $action_product  -> getProductList_byMultiLevel_orderProductId(232,'desc',1,4,'');
$danhmuc4 = $action_product  -> getProductList_byMultiLevel_orderProductId(233,'desc',1,4,'');
$danhmuc5 = $action_product  -> getProductList_byMultiLevel_orderProductId(234,'desc',1,4,'');
$danhmuc6 = $action_product  -> getProductList_byMultiLevel_orderProductId(235,'desc',1,4,'');
 ?>
  <div class="container">
  <h2 class="tit-news"><?= $lang=='vn' ? 'Sản phẩm đề xuất' : 'Proposal products' ?></h2>
  <ul class="nav nav-tabs ">
    <li class="active canle-mb" style="margin-left: 20%;"><a href="#gach"><?= $dexuat_1['lang_productcat_name'] ?></a></li>
    <li><a href="#tbvt"><?= $dexuat_2['lang_productcat_name'] ?></a></li>
    <li><a href="#khuonchay"><?= $dexuat_3['lang_productcat_name'] ?></a></li>
     <li><a href="#congtrinh"><?= $dexuat_4['lang_productcat_name'] ?></a></li>
      <li><a href="#menmau"><?= $dexuat_5['lang_productcat_name'] ?></a></li>
       <li><a href="#damai"><?= $dexuat_6['lang_productcat_name'] ?></a></li>
 

   
  </ul>

  <div class="tab-content">
    <div id="gach" class="tab-pane fade in active">
      <?php 
      foreach ($danhmuc1['data'] as $item) {
        $product_id = $item['product_id'];
        $rowLang = $action->getDetail_New('product_languages', array('product_id', 'languages_code'), array(&$product_id, &$lang), 'is');
       ?>
      <div class="col-md-3 col-xs-6">
        <a href="<?=$rowLang['friendly_url']?>"><img src="/images/<?=$item['product_img']?>" alt=""></a>
            <a href="<?=$rowLang['friendly_url']?>"><h5><?=$rowLang['lang_product_name']?></h5></a>
            
      </div>
      <?php } ?>
    </div>
    <div id="tbvt" class="tab-pane fade">

            <?php 
      foreach ($danhmuc2['data'] as $item) {
        $product_id = $item['product_id'];
        $rowLang = $action->getDetail_New('product_languages', array('product_id', 'languages_code'), array(&$product_id, &$lang), 'is');
       ?>
      <div class="col-md-3 col-xs-6">
        <a href="<?=$rowLang['friendly_url']?>"><img src="/images/<?=$item['product_img']?>" alt=""></a>
            <a href="<?=$rowLang['friendly_url']?>"><h5><?=$rowLang['lang_product_name']?></h5></a>
            
      </div>
      <?php } ?>
  
 
    </div>
    <div id="khuonchay" class="tab-pane fade">
     
           <?php 
      foreach ($danhmuc3['data'] as $item) {
        $product_id = $item['product_id'];
        $rowLang = $action->getDetail_New('product_languages', array('product_id', 'languages_code'), array(&$product_id, &$lang), 'is');
       ?>
      <div class="col-md-3 col-xs-6">
        <a href="<?=$rowLang['friendly_url']?>"><img src="/images/<?=$item['product_img']?>" alt=""></a>
            <a href="<?=$rowLang['friendly_url']?>"><h5><?=$rowLang['lang_product_name']?></h5></a>
            
      </div>
      <?php } ?>
    
   
    </div>

 <div id="congtrinh" class="tab-pane fade">
     
           <?php 
      foreach ($danhmuc4['data'] as $item) {
        $product_id = $item['product_id'];
        $rowLang = $action->getDetail_New('product_languages', array('product_id', 'languages_code'), array(&$product_id, &$lang), 'is');
       ?>
      <div class="col-md-3 col-xs-6">
        <a href="<?=$rowLang['friendly_url']?>"><img src="/images/<?=$item['product_img']?>" alt=""></a>
            <a href="<?=$rowLang['friendly_url']?>"><h5><?=$rowLang['lang_product_name']?></h5></a>
            
      </div>
      <?php } ?>
    
   
    </div>
     <div id="menmau" class="tab-pane fade">
     
           <?php 
      foreach ($danhmuc5['data'] as $item) {
        $product_id = $item['product_id'];
        $rowLang = $action->getDetail_New('product_languages', array('product_id', 'languages_code'), array(&$product_id, &$lang), 'is');
       ?>
      <div class="col-md-3 col-xs-6">
        <a href="<?=$rowLang['friendly_url']?>"><img src="/images/<?=$item['product_img']?>" alt=""></a>
            <a href="<?=$rowLang['friendly_url']?>"><h5><?=$rowLang['lang_product_name']?></h5></a>
            
      </div>
      <?php } ?>
    
   
    </div>
     <div id="damai" class="tab-pane fade">
     
           <?php 
      foreach ($danhmuc6['data'] as $item) {
        $product_id = $item['product_id'];
        $rowLang = $action->getDetail_New('product_languages', array('product_id', 'languages_code'), array(&$product_id, &$lang), 'is');
       ?>
      <div class="col-md-3 col-xs-6">
        <a href="<?=$rowLang['friendly_url']?>"><img src="/images/<?=$item['product_img']?>" alt=""></a>
            <a href="<?=$rowLang['friendly_url']?>"><h5><?=$rowLang['lang_product_name']?></h5></a>
            
      </div>
      <?php } ?>
    
   
    </div>

  

  </div>
  <div class="xemthem">
      <a href="/danh-muc-san-pham">
          <div class="xemthem-btn">
              <p><?= $lang=='vn' ? 'Xem thêm' : 'See more' ?> <i class="fa fa-arrow-right" aria-hidden="true"></i></p>
          </div>
      </a>
  </div>
</div>

<script>
$(document).ready(function(){
  $(".nav-tabs a").click(function(){
    $(this).tab('show');
  });
});
</script>

</body>
</html>
