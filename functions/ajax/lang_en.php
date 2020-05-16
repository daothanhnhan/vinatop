<?php
	session_start();
	$_SESSION['lang'] = 'en';
	///////////////
	include_once dirname(__FILE__) . "/../database.php";
	include_once dirname(__FILE__) . "/../library.php";
	include_once dirname(__FILE__) . "/../pagination/Pagination.php";
	include_once dirname(__FILE__) . "/../action.php";
	include_once dirname(__FILE__) . "/../action_page.php";
	include_once dirname(__FILE__) . "/../action_news.php";
	include_once dirname(__FILE__) . "/../action_service.php";
    include_once dirname(__FILE__) . "/../action_product.php";
	
	$url = $_GET['url'];

    if ($url == 'services' || $url == 'dich-vu' || $url == 'san-pham-1' || $url == 'products') {
        echo $url;die;
    }
    
	$lang = $_GET['lang'];
	$action = new action();
	$urlAnalytic = $action->getTypePage_byUrl($_GET['url'],$_GET['lang']);
	switch ($urlAnalytic) {
            case 'page_language':
            	$action_page = new action_page();
            	$page = $action_page->getPageLangDetail_byUrl($url, $lang);
            	$page = $action_page->getPageLangDetail_byId($page['page_id'], 'en');
            	echo $page['friendly_url'];
                break;

            case 'news_languages':
            	$action_news = new action_news();
            	$news = $action_news->getNewsLangDetail_byUrl($url, $lang);
            	$news = $action_news->getNewsLangDetail_byId($news['news_id'], 'en');
            	echo $news['friendly_url'];
                break;

            case 'servicecat_languages':
            	$action_service = new action_service();
            	$service = $action_service->getServiceCatLangDetail_byUrl($url, $lang);
            	$service = $action_service->getServiceCatLangDetail_byId($service['servicecat_id'], 'en');
            	echo $service['friendly_url'];
                break;

            case 'service_languages':
                $action_service = new action_service();
                $service = $action_service->getServiceLangDetail_byUrl($url, $lang);
                $service = $action_service->getServiceLangDetail_byId($service['service_id'], 'en');
                echo $service['friendly_url'];
                break;

            case 'productcat_languages':
                $action_product = new action_product();
                $product = $action_product->getProductCatLangDetail_byUrl($url, $lang);
                $product = $action_product->getProductCatLangDetail_byId($product['productcat_id'], 'en');
                echo $product['friendly_url'];
                break;

            case 'product_languages':
                $action_product = new action_product();
                $product = $action_product->getProductLangDetail_byUrl($url, $lang);
                $product = $action_product->getProductLangDetail_byId($product['product_id'], 'en');
                echo $product['friendly_url'];
                break;

            default: 
                echo $url;
            }
?>