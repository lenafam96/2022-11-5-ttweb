<?php
require_once 'models/Product.php';

class ProductController
{
    public function index(): void
    {
        $arr = (new Product())->all();
        require 'views/product/index.php';
    }

    public function search(): void
    {
        $arr = (new Product())->search($_POST);
        require 'views/product/search.php';
    }

    public function create(): void
    {
        require 'views/product/create.php';
    }

    public function store(): void
    {
        (new Product())->create($_POST);

        (new Controller())->myHeader("index.php");
    }

    public function edit(): void
    {
        $id = $_GET['id'];
        $each = (new Product())->find($id);

        require 'views/product/update.php';
    }

    public function update(): void
    {
        (new Product())->update($_POST);
        (new Controller())->myHeader("index.php");
    }

    public function delete(): void
    {
        (new Product())->delete($_GET['id']);
        (new Controller())->myHeader("index.php");
    }

    public function check($action)
    {
        // if (isset($_SESSION['email']))
        $this->$action();
        // else (new Controller())->myHeader("views/404.php");
    }
}
