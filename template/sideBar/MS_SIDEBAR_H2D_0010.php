<nav class="gb-main-menu_ldpvinhome1" >
<h3 class="widget-title-sidebar-ruouvang">Danh mục</h3>
    <div class="main-navigation uni-menu-text_ldpvinhome">

        <div class="cssmenu">



            <?php 

                $list_menu = $menu->getListMainMenu_byOrderASC();

                $menu->showMenu_byMultiLevel_mainMenuTraiCam_sidebar($list_menu,0,$lang,0);

            ?>

            

        </div>

    </div>

</nav>