<?php

require_once 'controllers/ProductController.php';
require_once 'controllers/HomeController.php';
require_once 'controllers/Controller.php';
require_once 'controllers/Session.php';


$action = $_GET['action'] ?? 'index';
switch ($action) {
    case 'index':
    case 'create':
    case 'store':
    case 'edit':
    case 'update':
    case 'delete':
    case 'search':
        (new ProductController())->check($action);
        break;
    default:
        (new Controller())->goError();
}
