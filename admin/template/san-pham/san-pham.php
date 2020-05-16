<?php
    function set_cn () {
        global $conn_vn;
        $sql = "SELECT * FROM product";
        $result = mysqli_query($conn_vn, $sql);
        while ($row = mysqli_fetch_assoc($result)) {
            $product_id = $row['product_id'];
            $name = $row['product_name'].' cn';
            $title = $row['title_seo'].' cn';
            $url = 'cn-'.$row['friendly_url'];
            $sql = "INSERT INTO product_languages (lang_product_name, title_seo, friendly_url, product_id, languages_code) VALUES ('$name', '$title', '$url', $product_id, 'cn')";
            $result1 = mysqli_query($conn_vn, $sql);
        }
    }
    // set_cn();

    if (isset($_GET['search']) && $_GET['search'] != '') {
        $rows = $action->getSearchAdmin('product',array('product_name','product_code'), $_GET['search'],$trang,20,$_GET['page']);
    }else{
        $rows = $action->getList('product','','','product_id','desc',$trang,20,'san-pham');
    }
?>	
<div class="boxPageNews">
	<div class="searchBox">
        <form action="">
            <input type="hidden" name="page" value="san-pham">
            <button type="submit" class="btnSearchBox" name="">Tìm kiếm</button>
            <input type="text" class="txtSearchBox" name="search" />                                  
        </form>
    </div>
    <table class="table table-condensed table-hover">
        <thead>
            <tr>
                <th>Tên</th>
                <th>Danh mục</th>
                <th>Giá</th>
                <th>Trạng thái</th>
            </tr>
        </thead>
        <tbody>
            <?php 
                foreach ($rows['data'] as $key => $row) {
                ?>
                    <tr>
                        <td><a href="index.php?page=sua-san-pham&id=<?= $row['product_id']; ?>" title=""><?= $row['product_name']; ?></a></td>
                        <td>
                            <?php 
                                $action1 = new action_page('VN');
                                echo $action1->getDetail('productcat','productcat_id',$row['productcat_id'])['productcat_name'];
                            ?>
                        </td>
                        <td><?= number_format($row['product_price'],'0','','.')?> đ</td>
                        <td><?= $row['state'] == 1 ? 'Hiển thị' : 'Không'?></td>
                    </tr>
                <?php
                }
            ?>
        </tbody>
    </table>
	
    <div class="paging">             
    	<?= $rows['paging'] ?>
	</div>
</div>
<?php  ?>
