<div class="gb-chi-tiet-add-to-cart">
    <form class="cart" method="post" enctype="multipart/form-data">
        <div class="quantity">
            <div class="form-group">
                <label><?= $lang=='vn' ? 'Số lượng' : 'Amount' ?>:</label>
                <input type="number" class="form-control qty number_cart" id="pwd" min="0" value="1">
                <input type="hidden" name="id" id="product_id" value="<?php echo $rowLang['product_id'];?>">
                <input type="hidden" name="name" id="product_name" value="<?= $rowLang['lang_product_name'];?>">
                <input type="hidden" name="price" id="product_price" value="<?php echo $row['product_price'];?>">
            </div>
        </div>
        <button type="button" name="add-to-cart" class="single_add_to_cart_button button alt btn_addCart"><?= $lang=='vn' ? 'Thêm vào giỏ hàng' : 'Add to cart' ?></button>
        <div class="clearfix"></div>
    </form>
</div>