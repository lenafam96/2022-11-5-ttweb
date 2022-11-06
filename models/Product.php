<?php

require_once 'models/Connect.php';
require 'models/ProductObject.php';

class Product
{
    public function all(): array
    {
        $sql = "select * from products";
        $result = (new Connect())->excuteQuery($sql);

        $arr = [];
        foreach ($result as $each) {
            $object = new ProductObject($each);

            $arr[] = $object;
        }
        return $arr;
    }

    public function search($params): array
    {
        if ($params['keyword'] == "") return [];
        $sql = "select * from products where ";
        if ($params['chose'] == 0)
            $sql .= "productName ";
        if ($params['chose'] == 1)
            $sql .= "brand ";
        if ($params['chose'] == 2)
            $sql .= "description ";
        $sql .= "like '%" . $params["keyword"] . "%'";
        $result = (new Connect())->excuteQuery($sql);

        $arr = [];
        foreach ($result as $each) {
            $object = new ProductObject($each);

            $arr[] = $object;
        }
        return $arr;
    }

    public function create($params1): void
    {
        $object = new ProductObject($params1);
        $sql = "insert into products (productName,price,quantity,yearOfManufacture,brand,description)
        values('" . $object->getProductName() . "'," . $object->getPrice() . "," . $object->getQuantity() . "," . $object->getYearOfManufacture() . ",'" . $object->getBrand() . "','" . $object->getDescription() . "')";
        (new Connect())->excuteNonQuery($sql);
    }

    public function find($id): object
    {
        $sql = "select * from products where productId = $id";
        $result = (new Connect())->excuteQuery($sql);
        $each = mysqli_fetch_array($result);
        return new ProductObject($each);
    }

    public function update($params1): void
    {
        $object = new ProductObject($params1);
        $sql = "update products set productName = '" . $object->getProductName() . "', price = " . $object->getPrice() . ", quantity = " . $object->getQuantity() . ", yearOfManufacture = " . $object->getYearOfManufacture() . ", brand = '" . $object->getBrand() . "', description = '" . $object->getDescription() . "' where productId = " . $object->getProductId();
        (new Connect())->excuteNonQuery($sql);
    }

    public function delete($id): void
    {
        $sql = "delete from products where productId = " . $id;
        (new Connect())->excuteNonQuery($sql);
    }
}
