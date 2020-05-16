<?php 
    $product_favorite = $action_product->getListProductCat_byOrderASC();
?>
<div class="gb-tieubieu-product_ruouvang" >
    <div class="container">
        <div class="gb-tieubieu-product_ruouvang-title">
            <h3><?= $lang=='vn' ? 'DANH MỤC SẢN PHẨM' : 'PRODUCT PORTFOLIO' ?></h3>
        </div>
        <div class="gb-tieubieu-product_ruouvang-body">
            <div class="row">
                <?php 
                $d = 0;
                foreach ($product_favorite as $item) {
                    $d++;
                  //var_dump($item);
                    $rowLang = $action_product->getProductCatLangDetail_byId($item['productcat_id'],$lang);
                ?>
                <div class="col-md-3 col-sm-6 col-xs-6 danhmucsp-img">
                    <a href="<?=$rowLang['friendly_url']?>"><img src="/images/<?=$item['productcat_img']?>" alt=""></a>
                    <a href="<?=$rowLang['friendly_url']?>"><h5><?=$rowLang['lang_productcat_name']?></h5></a>
                    
                </div>
               <?php
                    if ($d%4==0) {
                        echo '<hr style="width:100%;" />';
                    }
                }
                ?>
            </div>
        </div>
    </div>
</div>