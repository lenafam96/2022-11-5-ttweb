<?php

class HomeController
{
    public function index($category = null, $sort = null): void
    {
        require_once 'models/Product.php';
        require_once 'models/Category.php';
        $categoryName = '';
        if ($category == null && $sort == null)
            $arr = (new Product())->all();
        else if ($category == '')
            $arr = (new Product())->all($sort);
        else {
            $arr = (new Product())->findByCategoryId($category, $sort);
            $categoryName = (new Category())->find($category)->getCategoryName();
        }
        require 'views/Home.php';
    }

    public function login(): void
    {
        $message = '';
        require 'views/Login.php';
    }

    public function verification(): void
    {
        require_once 'models/Account.php';
        if ((new Account)->login($_POST) > 0) {
            $_SESSION['email'] = $_POST;
            header('location: index.php');
        } else {
            $message = "Email hoặc Password không đúng!";
            require 'views/Login.php';
        }
    }

    public function logout(): void
    {
        unset($_SESSION['email']);
        header('location: index.php');
    }
}
