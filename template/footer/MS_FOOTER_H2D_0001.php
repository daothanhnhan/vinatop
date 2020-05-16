<script type="text/javascript">
    function load_url (id, name, price) {
        var xhttp = new XMLHttpRequest();
        xhttp.onreadystatechange = function() {
          if (this.readyState == 4 && this.status == 200) {
           // document.getElementById("demo").innerHTML = this.responseText;
           // alert(this.responseText);
           // alert('thanh cong.');
           // window.location.href = "/gio-hang";
           if (confirm('Thêm sản phẩm thành công, bạn có muốn thanh toán luôn không')) {
                  window.location = '/gio-hang';
              }else{
                  location.reload();
              }  
          }
        };
        xhttp.open("POST", "/functions/ajax-add-cart.php", true);
        xhttp.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
        xhttp.send("product_id="+id+"&product_name="+name+"&product_price="+price+"&product_quantity=1&action=add");
        xhttp.send();        
    }
</script>
<?php 
    $product_favorite = $action_product->getListProductCat_byOrderASC();
    $newscat = $action_news->getListNewsCat_byOrderASC();
    // $newser = $action_service ->getListNews_hasLimit();
?>
<div class="ve-chungtoi">
<div class="follow-us">
  <div class="container">
    <h3 style="margin-top: 20px;
    margin-bottom: 10px;
    font-size: 24px;">follow us </h3> <span><a href="https://www.facebook.com/Vinatop-Group-474977649667234/"><i class="fa fa-facebook-official" aria-hidden="true"></i></a><i class="fa fa-youtube" aria-hidden="true"></i><i class="fa fa-twitter" aria-hidden="true"></i></span>
  </div>
</div>
</div>
<footer class="site-footer footer-default">
    <div class="footer-main-content_ruouvang">
        <div class="container">
            <div class="row">
                <div class="col-md-4 border-rght">
                    <div class="footer-main-content_ruouvang-element">
                        <aside class="widget-footer">
                            <!-- <div class="widget-title-footer-ruouvang uni-uppercase footer-logo_ruouvang"><img src="/images/logo.png" alt="" class="img-responsive"></div> -->
                            <div class="widget-content">
                                <div class="footer-lienhe-ruouvang">
                                   <div class="col-md-3">
                                       <div class="square-gray-15"><i class="fa fa-map-marker" aria-hidden="true"></i></div>
                                   </div>
                                   <div class="col-md-9">
                                       <p ><?= $rowConfig['content_home1'] ?></p>
                                   </div>
                                </div>

                            </div>
                        </aside>
                    </div>
                </div>

                <div class="col-md-3 border-rght">
                    <div class="footer-main-content_ruouvang-element">
                        <aside class="widget-footer">
                            <!-- <div class="widget-title-footer-ruouvang uni-uppercase footer-logo_ruouvang"><img src="/images/logo.png" alt="" class="img-responsive"></div> -->
                            <div class="widget-content">
                                <div class="footer-lienhe-ruouvang">
                                     <div class="footer-lienhe-ruouvang">
                                         <div class="col-md-3">
                                             <div class="square-gray-15"><i class="fa fa-phone" aria-hidden="true"></i></i></div>
                                         </div>
                                         <div class="col-md-9">
                                            <p class="wods"><?= $rowConfig['content_home3'] ?></p>
                                         </div>
                                    </div>
                                </div>
                            </div>
                        </aside>
                    </div>
                </div>

                <div class="col-md-3 border-rght">
                    <div class="footer-main-content_ruouvang-element">
                        <aside class="widget-footer">
                            <!-- <div class="widget-title-footer-ruouvang uni-uppercase footer-logo_ruouvang"><img src="/images/logo.png" alt="" class="img-responsive"></div> -->
                            <div class="widget-content">
                                <div class="footer-lienhe-ruouvang">
                                    <div class="footer-lienhe-ruouvang">
                                        <div class="col-md-3">
                                            <div class="square-gray-15"><i class="fa fa-envelope" aria-hidden="true"></i></div>
                                        </div>
                                        <div class="col-md-9">
                                            <p class="wods"><?= $rowConfig['content_home2'] ?></p>
                                        </div>
                                    </div>

                                </div>
                            </div>
                        </aside>
                    </div>
                </div>

                <div class="col-md-2 hidden-md">
                    <div class="footer-main-content_ruouvang-element">
                        <aside class="widget-footer">
                            <!-- <div class="widget-title-footer-ruouvang uni-uppercase footer-logo_ruouvang"><img src="/images/logo.png" alt="" class="img-responsive"></div> -->
                            <div class="widget-content">
                                <div class="footer-lienhe-ruouvang">
                                    <div class="footer-lienhe-ruouvang">
                                        <div class="col-md-3">
                                           <!--  <div class="square-gray-15"><i class="fa fa-map-marker" aria-hidden="true"></i></div> -->
                                        </div>
                                        <div class="col-md-9">
                                           
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </aside>
                    </div>
                </div>

                
              
            </div>
        </div>
        

    </div>
    <div class="Copyright">
          <div class="container">
            <p>
                © Copyright 2017. All rights reserved. Design by CAFELINK.ORG
            </p>
          </div>
    </div>
</footer>