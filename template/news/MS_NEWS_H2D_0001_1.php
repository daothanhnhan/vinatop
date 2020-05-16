<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>

<?php 
$newscat_id = 1;
$cong_nghe = $action->getDetail_New('newscat_languages', array('newscat_id', 'languages_code'), array(&$newscat_id, &$lang), 'is');
$newscat_id = 2;
$san_pham = $action->getDetail_New('newscat_languages', array('newscat_id', 'languages_code'), array(&$newscat_id, &$lang), 'is');
$newscat_id = 3;
$covid = $action->getDetail_New('newscat_languages', array('newscat_id', 'languages_code'), array(&$newscat_id, &$lang), 'is');
////////////////////////
$tin1 = $action_news -> getNewsList_byMultiLevel_orderNewsId(1,'desc',1,99,'');
$tintuc1=$tin1['data'];
$tin2 = $action_news -> getNewsList_byMultiLevel_orderNewsId(2,'desc',1,99,'');
$tintuc2=$tin2['data'];
$tin3 = $action_news -> getNewsList_byMultiLevel_orderNewsId(3,'desc',1,99,'');
$tintuc3=$tin3['data'];
?>
  <div class="container">
  <h2 class="tit-news"><?= $lang=='vn' ? 'Tin tức' : 'News' ?></h2>
  <ul class="nav nav-tabs ">
    <li class="active" style="margin-left: 38%;"><a href="#SP"><?= $cong_nghe['lang_newscat_name'] ?></a></li>
    <li><a href="#news"><?= $san_pham['lang_newscat_name'] ?></a></li>
    <li><a href="#covid"><?= $covid['lang_newscat_name'] ?></a></li>
   
  </ul>

  <div class="tab-content">
    <div id="SP" class="tab-pane fade in active">
      <?php 
      foreach ($tintuc1 as $item) {
        $news_id = $item['news_id'];
        $rowLang = $action->getDetail_New('news_languages', array('news_id', 'languages_code'), array(&$news_id, &$lang), 'is');
        ?>
 
      <div class="col-md-3 alt-hover" style="padding: 10px;">
        <a href="/<?=$rowLang['friendly_url']?>"><img src="/images/<?=$item['news_img']?>" alt=""></a>
            <a href="/<?=$rowLang['friendly_url']?>"><h5><?=$rowLang['lang_news_name']?></h5></a>
            
      </div>
<?php } ?>
    </div>
    <div id="news" class="tab-pane fade">
      <?php 
      foreach ($tintuc2 as $item) {
        $news_id = $item['news_id'];
        $rowLang = $action->getDetail_New('news_languages', array('news_id', 'languages_code'), array(&$news_id, &$lang), 'is');
        ?>
 
      <div class="col-md-3 alt-hover" style="padding: 10px;">
        <a href="/<?=$rowLang['friendly_url']?>"><img src="/images/<?=$item['news_img']?>" alt=""></a></a>
            <a href="/<?=$rowLang['friendly_url']?>"><h5><?=$rowLang['lang_news_name']?></h5></a>
            
      </div>
<?php } ?>
    </div>
    <div id="covid" class="tab-pane fade">
      <?php 
      foreach ($tintuc3 as $item) {
        $news_id = $item['news_id'];
        $rowLang = $action->getDetail_New('news_languages', array('news_id', 'languages_code'), array(&$news_id, &$lang), 'is');
        ?>
 
      <div class="col-md-3 alt-hover" style="padding: 10px;">
        <a href="/<?=$rowLang['friendly_url']?>"><img src="/images/<?=$item['news_img']?>" alt=""></a>
            <a href="/<?=$rowLang['friendly_url']?>"><h5><?=$rowLang['lang_news_name']?></h5></a>
            
      </div>
<?php } ?>
    </div>

  </div>
<!--   <div class="xemthem">
      <a href="/tin-tuc">
          <div class="xemthem-btn">
              <p>Xem thêm <i class="fa fa-arrow-right" aria-hidden="true"></i></p>
          </div>
      </a>
  </div> -->
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
