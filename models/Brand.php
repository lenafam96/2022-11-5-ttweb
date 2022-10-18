<?php

require_once 'models/Connect.php';
require 'models/BrandObject.php';

class Brand
{
    public function all()
    {
        $sql = "select * from brands";
        $result = (new Connect())->excuteQuery($sql);

        $arr = [];
        foreach ($result as $each) {
            $object = new BrandObject($each);

            $arr[] = $object;
        }

        return $arr;
    }

    public function find($id): object
    {
        $sql = "select * from brands where brand_id = $id";
        $result = (new Connect())->excuteQuery($sql);
        $each = mysqli_fetch_array($result);
        return new BrandObject($each);
    }
}
