<?php
    function set_cn () {
        global $conn_vn;
        $sql = "SELECT * FROM servicecat";
        $result = mysqli_query($conn_vn, $sql);
        while ($row = mysqli_fetch_assoc($result)) {
            $servicecat_id = $row['servicecat_id'];
            $name = $row['servicecat_name'].' cn';
            $title = $row['title_seo'].' cn';
            $url = 'cn-'.$row['friendly_url'];
            $sql = "INSERT INTO servicecat_languages (lang_servicecat_name, title_seo, friendly_url, servicecat_id, languages_code) VALUES ('$name', '$title', '$url', $servicecat_id, 'cn')";
            $result1 = mysqli_query($conn_vn, $sql);
        }
    }
    // set_cn();

    if (isset($_GET['search']) && $_GET['search'] != '') {

        $rows = $action->getSearchAdmin('servicecat',array('servicecat_name'), $_GET['search'],'','',$_GET['page']);

    }else{

	   $rows = $action->getList('servicecat','','','servicecat_id','desc','','','danh-muc-dich-vu');

        //$rows = $showCategoriesTable

    }

?>

	<div class="boxPageContent">

    	<div class="searchBox">

    		<form action="">

    			<input type="hidden" name="page" value="danh-muc-dich-vu">

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

                <?php $action->showCategoriesTable($rows, 'servicecat_parent', 0, 'sua-danh-muc-dich-vu', 'servicecat_id', 'servicecat_name', 'state', 0) ?>

            </tbody>

        </table>

    



        <div class="paging"><?= $rows['paging']?></div>

    </div>

    <p class="footerWeb">Cảm ơn quý khách hàng đã tin dùng dịch vụ của chúng tôi<br />Sản phẩm thuộc Công ty TNHH Truyền Thông Và Công Nghệ GoldBridge Việt Nam</p>