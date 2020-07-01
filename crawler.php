<?php

include 'vendor/autoload.php';

const HOST = 'localhost'; // the IP of the database
const DBNAME = 'menu'; // the database name to be used
const USERNAME = 'admin'; // the username to be used with the database
const PASSWORD = 'admin12345'; // the password to be used with the username
set_time_limit(10000);
include_once ('simple_html_dom.php');
ini_set('display_errors', '0');

$database = SimplePDO::getInstance();
$resturant['pizzahut'] = get_pizzahut_data();
$resturant['saltnpepper'] = get_saltnpepper_data();
$resturant['andazz'] = get_andazz_resturant();
echo json_encode($resturant);
foreach ($resturant as $key => $data) {
    $database->query("SELECT `id` FROM `resturant` WHERE `name` LIKE '%".$key."%'");
   $result = $database->single();
    foreach ($data as $key => $value) {
        $database->query("INSERT INTO `menu` (`name`, `desc`, `price`, `type` , `resturant_id`) VALUES (:name, :desc, :price, :type, :resturant_id)");
        $database->bind(':name', $value['name']);
        $database->bind(':desc', $value['desc']);
        $database->bind(':price', cleanit($value['price']));
        $database->bind(':type', $value['type']);
        $database->bind(':resturant_id', $result['id']);
        $database->execute();
    }
}

function get_pizzahut_data()
{
    $kfc_data = array();
    //header('Content-type: text/plain');
    //echo htmlspecialchars($homepage);
    $url = "https://pizzahut.com.pk/pizza.php?id=1";
    $data = file_get_contents($url); // moving to login page
    $html = str_get_html($data);
    foreach($html->find('.box') as $box) {
        $push['type'] = 'Pizza';
        $push['image'] = $box->find('.centerProductImage img',0)->src;
        $push['name'] = $box->find('h3.product_name',0)->plaintext;
        $push['desc'] = $box->find('p',0)->plaintext;
        $push['price'] = $box->find('.price',0)->plaintext;
        $push['size'] = $box->find('select[name="size"] option[selected]',0)->plaintext;
        array_push($kfc_data,$push);
    }

    $url = "https://pizzahut.com.pk/starters.php";
    $data = file_get_contents($url); // moving to login page
    $html = str_get_html($data);
    foreach($html->find('.box') as $box) {
        //echo '//////////////////////////////////////////////////////////////<br>';
        //echo 'Type  :: Starters <br>';
        //echo 'Image :: '.$box->find('.centerProductImage img',0)->src . '<br>';
        //echo 'Product name :: '.$box->find('h3.product_name',0)->plaintext . '<br>';
        //echo 'Description :: '.$box->find('p',0)->plaintext . '<br>';
        //echo 'Price :: '.$box->find('.price',0)->plaintext . '<br>';
        //echo 'Size :: '.$box->find('select[name="size"] option[selected]',0)->plaintext . '<br>';

        $push['type'] = 'Starters';
        $push['image'] = $box->find('.centerProductImage img',0)->src;
        $push['name'] = $box->find('h3.product_name',0)->plaintext;
        $push['desc'] = $box->find('p',0)->plaintext;
        $push['price'] = $box->find('.price',0)->plaintext;
        $push['size'] = $box->find('select[name="size"] option[selected]',0)->plaintext;
        array_push($kfc_data,$push);
    }

    $url = "https://pizzahut.com.pk/menu.php?id=4";
    $data = file_get_contents($url); // moving to login page
    $html = str_get_html($data);
    foreach($html->find('.box') as $box) {

        $push['type'] = 'Desserts';
        $push['image'] = $box->find('.centerProductImage img',0)->src;
        $push['name'] = $box->find('h3.product_name',0)->plaintext;
        $push['desc'] = $box->find('p',0)->plaintext;
        $push['price'] = $box->find('.price',0)->plaintext;
        $push['size'] = $box->find('select[name="size"] option[selected]',0)->plaintext;

        array_push($kfc_data,$push);
    }
    return $kfc_data;
}

function get_saltnpepper_data()
{
    header('Content-type: text/plain');
    $salt_data = array();
    $url = "http://www.saltnpepper.com.pk/salt-n-pepper-restaurant/menu";
    $data = file_get_contents($url); // moving to login page
    $html = str_get_html($data);
    foreach ($html->find('.all-menu') as $menu) {
        foreach($menu->find('.menu-itm') as $box) {
            
            $push['type'] = $menu->find('h3.cat_title ',0)->plaintext;
            $push['name'] = $box->find('.menu_details p',0)->plaintext;
            $push['desc'] = $box->find('.menu_details p',1)->plaintext;
            $push['price'] = $box->find('.menu-price',0)->plaintext;
            array_push($salt_data,$push);
        }
    }
    return $salt_data;
}

function get_andazz_resturant()
{
    $andazz_data = array();
    $url = "https://andaazrestaurant.com/tandoori-namonay/";
    $data = file_get_contents($url); // moving to login page
    $html = str_get_html($data);
    foreach($html->find('.cerchez-menu-item') as $box) {
        $push['type'] = 'Tandoori Namonay';
        $push['name'] = $box->find('div h3',0)->plaintext;
        $push['desc'] = $box->find('div p',0)->plaintext;
        $push['price'] = $box->find('div span.price',0)->plaintext;

        $andazz_data[] = $push;
    }

    $url = "https://andaazrestaurant.com/karahi-kay-kamal/";
    $data = file_get_contents($url); // moving to login page
    $html = str_get_html($data);
    foreach($html->find('.cerchez-menu-item') as $box) {
        $push['type'] = 'Karahi Kay Kamal';
        $push['name'] = $box->find('div h3',0)->plaintext;
        $push['desc'] = $box->find('div p',0)->plaintext;
        $push['price'] = $box->find('div span.price',0)->plaintext;
        $andazz_data[] = $push;
    }

    $url = "https://andaazrestaurant.com/diigar-lawazmaat/";
    $data = file_get_contents($url); // moving to login page
    $html = str_get_html($data);
    foreach($html->find('.cerchez-menu-item') as $box) {
        $push['type'] = 'Diigar Lawazmaat';
        $push['name'] = $box->find('div h3',0)->plaintext;
        $push['desc'] = $box->find('div p',0)->plaintext;
        $push['price'] = $box->find('div span.price',0)->plaintext;
        $andazz_data[] = $push;
    }

    $url = "https://andaazrestaurant.com/khaas-mithaiyaan/";
    $data = file_get_contents($url); // moving to login page
    $html = str_get_html($data);
    foreach($html->find('.cerchez-menu-item') as $box) {
        $push['type'] = 'Khaas Mithaiyaan';
        $push['name'] = $box->find('div h3',0)->plaintext;
        $push['desc'] = $box->find('div p',0)->plaintext;
        $push['price'] = $box->find('div span.price',0)->plaintext;
        $andazz_data[] = $push;
    }

    $url = "https://andaazrestaurant.com/mashrubaat/";
    $data = file_get_contents($url); // moving to login page
    $html = str_get_html($data);
    foreach($html->find('.cerchez-menu-item') as $box) {
        $push['type'] = 'Mashrubaat';
        $push['name'] = $box->find('div h3',0)->plaintext;
        $push['desc'] = $box->find('div p',0)->plaintext;
        $push['price'] = $box->find('div span.price',0)->plaintext;

        $andazz_data[] = $push;
    }
    return $andazz_data;
}

function cleanit($string){
    $string = str_replace(' ', '', $string);
    $string = str_replace('Rs', '', $string);
    $string = str_replace('.', '', $string);
    $string = str_replace('\t\t\t\t\t\t', '', $string);
    return $string;
}
?>