<?php
require_once 'models/Brand.php';
$BrandArr = (new Brand())->all();
?>

<ul>
    <?php foreach ($BrandArr as $each) : ?>
        <li>
            <a href="?brand=<?php echo $each->getBrandId(); ?>"><?php echo $each->getBrandName(); ?></a>
        </li>
    <?php endforeach; ?>
</ul>