<?php
    function set_cn () {
        global $conn_vn;
        $sql = "SELECT * FROM productcat";
        $result = mysqli_query($conn_vn, $sql);
        while ($row = mysqli_fetch_assoc($result)) {
            $productcat_id = $row['productcat_id'];
            $name = $row['productcat_name'].' cn';
            $title = $row['title_seo'].' cn';
            $url = 'cn-'.$row['friendly_url'];
            $sql = "INSERT INTO productcat_languages (lang_productcat_name, title_seo, friendly_url, productcat_id, languages_code) VALUES ('$name', '$title', '$url', $productcat_id, 'cn')";
            $result1 = mysqli_query($conn_vn, $sql);
        }
    }
    // set_cn();

    if (isset($_GET['search']) && $_GET['search'] != '') {
        $rows = $action->getSearchAdmin('productcat',array('productcat_name'), $_GET['search'],$trang,20,$_GET['page']);
        $rows = $rows['data'];
    }else{
       $rows = $action->getList('productcat','','','productcat_sort_order','asc','','','sua-danh-muc-san-pham');
        //$rows = $showCategoriesTable
    }
?>
    <div class="boxPageContent">
        <div class="searchBox">
            <form action="">
                <input type="hidden" name="page" value="danh-muc-san-pham">
                <button type="submit" class="btnSearchBox" >Tìm kiếm</button>
                <input type="text" class="txtSearchBox" name="search" />                                    
            </form>
        </div>
        <table class="table table-hover">
            <thead>
                <tr>
                    <th>Tiêu đề</th>
                    <th>Người tạo</th>
                    <!-- <th>Ngày cập nhật</th> -->
                    <th>Trạng thái</th>
                </tr>
            </thead>
            <tbody>
                <?php $action->showCategoriesTable($rows, 'productcat_parent', 0, 'sua-danh-muc-san-pham', 'productcat_id', 'productcat_name', 'state', 0) ?>
            </tbody>
        </table>

        <div class="paging"><?= $rows['paging']?></div>
    </div>
    <p class="footerWeb">Cảm ơn quý khách hàng đã tin dùng dịch vụ của chúng tôi<br />Sản phẩm thuộc Công ty TNHH Truyền Thông Và Công Nghệ GoldBridge Việt Nam</p>