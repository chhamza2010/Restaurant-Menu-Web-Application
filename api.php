<?php

include './vendor/autoload.php';

// DB Connection
$api = new PHP_CRUD_API(array(
 	'dbengine'=>'MySQL',
 	'hostname'=>'localhost',
 	'username'=>'admin',
 	'password'=>'admin12345',
	'database'=>'menu',
	'charset'=>'utf8'
));
$api->executeCommand();