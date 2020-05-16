<!--MENU MOBILE-->

<?php include_once DIR_MENU."MS_MENU_H2D_0002.php"; ?>

<!-- End menu mobile-->



<!--MENU DESTOP-->

<header>

 
    <div class="gb-header-ruouvang">

        <div class="gb-top-header_ruouvang">

            <div class="container" style="width: 100%;">

                <div class="row">

             <!--        <div class="col-md-12 col-sm-12">

                        <div class="gb-top-header_ruouvang-right">

                            <ul>


                    <li><a href="">Trang chủ</a></li>            
        <li><a href="/lien-he"><i class="fa fa-envelope" aria-hidden="true"></i>Liên hệ với chúng tôi</a></li>
        <li> <?php //include DIR_SEARCH."MS_SEARCH_H2D_0003.php"; ?></li>




                            </ul>

                        </div>

                    </div> -->

                    <!-- <div class="col-md-9 col-sm-9 hidden-sm hidden-xs">

                        <div class="gb-top-header_ruouvang-right">

                            <ul>

                                <li><a href="/chuyen-nhan-dat-hang">QUÀ TẶNG DOANH NGHIỆP</a></li>

                                <li><a href="/cong-xuong-truc-tiep">QÙA TẶNG QUẢNG CÁO</a></li>

                                <li><a href="/gia-ca-tot-nhat">QUÀ TẶNG KHUYẾN MÃI</a></li>

                                <li><a href="/cong-ty-uy-tin">GIA CÔNG QUÀ TẶNG</a></li>

                            </ul>

                        </div>

                    </div> -->

                </div>

            </div>

        </div>

        <div class="gb-header-between_ruouvang sticky-menu">

            <div class="container" style="width: 95%;">

                <div class="row">

                    <div class="col-md-2 col-sm-12">

                        <div class="gb-header-between_ruouvang-left">

                            <a href="/"><img src="/images/<?= $rowConfig['web_logo'] ?>" alt="logo" class="img-responsive" style="width:55%;"></a>

                            <!-- <h4>h2dvietnam.com</h4> -->

                        </div>

                    </div>

                    <!-- <div class="col-md-6 col-sm-12">

                        <div class="gb-header-between_ruouvang-right">

                        	<h1>CÔNG TY TNHH DỊCH VỤ VÀ THƯƠNG MẠI H2D VIỆT NAM</h1>

                        </div>

                    </div>

                    <div class="col-md-3 col-sm-12">

                        <div class="gb-header-between_ruouvang-right">

                            <?php //include DIR_CART."MS_CART_H2D_0004.php";?>

                        </div>

                    </div> -->

                    <div class="col-md-7 col-sm-12 clear-padding">
                
                        <?php include DIR_MENU."MS_MENU_H2D_0001.php";?>
                        
                    </div>
                    <div class="col-md-3 col-sm-12 clear-padding">
                                    <div class="gb-top-header_ruouvang-right hidden-mobile">

                            <ul>

                                <!-- <li class="hidden-sm hidden-xs"><i class="fa fa-map-marker" aria-hidden="true"></i> Địa chỉ: <?= $rowConfig['content_home1'] ?></li> -->

                    <li><a href="https://www.facebook.com/Vinatop-Group-474977649667234/"><i class="fa fa-facebook-official" aria-hidden="true"></i></a></li> 
                    <li><a href=""><i class="fa fa-youtube" aria-hidden="true"></i></a></li> 
                    <li><a href=""><i class="fa fa-twitter" aria-hidden="true"></i></a></li> 
                   <!--  <i class="fa fa-facebook-official" aria-hidden="true"></i><i class="fa fa-youtube" aria-hidden="true"></i><i class="fa fa-twitter" aria-hidden="true"></i>      -->      
         <li><a href="/lien-he"><i class="fa fa-envelope" aria-hidden="true"></i><!-- Liên hệ với chúng tôi --></a></li>
        <li> <?php include DIR_SEARCH."MS_SEARCH_H2D_0003.php"; ?></li>




                            </ul>

                        </div>
                     <!--    <?php //include DIR_MENU."MS_MENU_H2D_0001.php";?> -->

                    </div>
                    

                </div>

            </div>

        </div>

        <div class="gb-header-bottom_ruouvang sticky-menu">

            <div class="container">

            	<div class="row">

            		<div class="col-md-9">

						<?php //include DIR_MENU."MS_MENU_H2D_0001.php";?>

            		</div>

            		<div class="col-md-3">

						<?php //include DIR_SEARCH."MS_SEARCH_H2D_0002.php"; ?>

            		</div>

            	</div>               

            </div>

        </div>

    </div>

</header>



<script src="/plugin/sticky/jquery.sticky.js"></script>

<script>

    $(document).ready(function () {

        $(".sticky-menu").sticky({topSpacing:0});

    });

</script>