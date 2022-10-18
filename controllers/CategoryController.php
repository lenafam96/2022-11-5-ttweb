<?php

class CategoryController
{
    public function index()
    {
        require_once 'models/Category.php';
        $arr = (new Category())->all();
        require_once 'views/category/index.php';
    }

    public function create(): void
    {
        require 'views/category/create.php';
    }

    public function store(): void
    {
        (new Category())->create($_POST);

        header('location: index.php');
    }

    public function edit(): void
    {
        $id = $_GET['id'];
        require_once 'models/Category.php';
        require_once 'models/Brand.php';
        $categories = (new Category())->all();
        $brands = (new Brand())->all();
        $each = (new Product())->find($id);

        require 'views/category/update.php';
    }

    public function update(): void
    {
        if ($_FILES['image']['name'] != null) (new Product())->update($_POST, $_FILES);
        else (new Product())->update($_POST);
        header('location: index.php');
    }

    public function delete(): void
    {
        (new Product())->delete($_GET['id']);
        header('location: index.php');
    }

    public function check($action)
    {
        if (isset($_SESSION['email']))
            $this->$action();
        else
            header('location: views/404.php');
    }
}
