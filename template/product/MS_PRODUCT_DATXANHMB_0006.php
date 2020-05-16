<?php 
	$news_id = 56;
    $rowLang = $action->getDetail_New('page_languages', array('page_id', 'languages_code'), array(&$news_id, &$lang), 'is');
?>
<div class="ve-chungtoi" style="background: #efefef">
  <div class="container" >
  <h2 class="tit-news"><?= $rowLang['lang_page_name'] ?></h2>
      <div class="notthing">
      	<?= $rowLang['lang_page_content'] ?>
      <!-- <p >Công ty cổ phần Tập Đoàn <span>VINA TOP</span> tiền thân là Công ty Cổ phần <span>VINA TOP</span> được thành lập vào tháng 7 năm 2009, là một doanh nghiệp 100% vốn đầu tư nước ngoài. <p>

    <p>Với diện tích đất 3,4ha và máy móc hiện đại công ty đang tạo nên vị thế  hàng đầu trong ngành công nghiệp sản xuất trang thiết bị gạch men và gạch men. Qua 10 năm phát triển công ty <span>VINATOP</span> tự tin mang đến những sản phẩm tốt nhất cho khách hàng.</p>

    <p>Khách hàng là động lực lớn nhất để chúng tôi phát triển, sáng tạo và là lý do để công ty trường tồn. Cùng với sự nỗ lực và khát vọng không ngừng đổi mới, tự hoàn thiện mình <span>VINATOP</span> hy vọng sẽ nhận được sự đồng thuận và hợp tác lâu dài của quý vị.</p> -->
    </div>
 
</div>

 

 <!--      <img src="images/dsds.png" alt="" style="width: 100%;"> -->
      


</div>