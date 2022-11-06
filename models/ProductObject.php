<?php

class ProductObject
{
    private int $productId;
    private string $productName;
    private int $price;
    private int $quantity;
    private int $yearOfManufacture;
    private string $brand;
    private string $descripttion;

    public function getProductId()
    {
        return $this->productId;
    }

    public function setProductId($value)
    {
        $this->productId = $value;
    }

    public function getProductName()
    {
        return $this->productName;
    }

    public function setProductName($value)
    {
        $this->productName = $value;
    }

    public function getPrice()
    {
        return $this->price;
    }

    public function showPrice()
    {
        return number_format($this->price, 0) . " ₫";
    }

    public function setPrice($value)
    {
        $this->price = $value;
    }

    public function getQuantity()
    {
        return $this->quantity;
    }

    public function setQuantity($value)
    {
        $this->quantity = $value;
    }

    public function getYearOfManufacture()
    {
        return $this->yearOfManufacture;
    }

    public function setYearOfManufacture($value)
    {
        $this->yearOfManufacture = $value;
    }

    public function getBrand()
    {
        return $this->brand;
    }

    public function setBrand($value)
    {
        $this->brand = $value;
    }

    public function getDescription()
    {
        return $this->descripttion;
    }

    public function showDescription()
    {
        return str_replace("\n", "<br>", $this->descripttion);
    }

    public function setDescription($value)
    {
        $this->descripttion = $value;
    }

    public function __construct($each)
    {
        $this->productId = $each['productId'] ?? -1;
        $this->productName = $each['productName'];
        $this->price = $each['price'];
        $this->quantity = $each['quantity'];
        $this->yearOfManufacture = $each['yearOfManufacture'];
        $this->brand = $each['brand'] ?? '';
        $this->descripttion = $each['description'] ? str_replace(`"`, `\"`, $each['description']) : '';
    }
}
