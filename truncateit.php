<?php

include 'vendor/autoload.php';

const HOST = 'localhost'; // the IP of the database
const DBNAME = 'menu'; // the database name to be used
const USERNAME = 'admin'; // the username to be used with the database
const PASSWORD = 'admin12345'; // the password to be used with the username



$database = SimplePDO::getInstance();

    //$database->query("SELECT `id` FROM `resturant` WHERE `name` LIKE '%".$key."%'");
   
$database->query("TRUNCATE TABLE `menu`");
$database->execute();

?>
