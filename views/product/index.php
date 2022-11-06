<div class="container-fluid">
    <div class="card">
        <div class="card-header">
            <h2>Quản lý sản phẩm</h2>
        </div>
        <div class="card-body">
            <a class='btn btn-primary' href="?action=create">Thêm mới</a>
            <a class='btn btn-primary' href="?action=search">Tìm kiếm</a>
            <table class="table table-hover">
                <thead>
                    <tr>
                        <th rowspan="2">#</th>
                        <th rowspan="2" style="width:25%">Tên sản phẩm</th>
                        <th rowspan="2" style="width:15%">Giá bán</th>
                        <th rowspan="2">Số lượng</td>
                        <th rowspan="2">Năm sản xuất</td>
                        <th rowspan="2">Hãng</td>
                        <th rowspan="2">Mô tả</td>
                        <th colspan="2">Thao tác</th>
                    </tr>
                    <tr>
                        <th>Sửa</th>
                        <th>Xoá</th>
                    </tr>
                </thead>
                <tbody>
                    <?php
                    $i = 1;
                    foreach ($arr as $each) : ?>
                        <tr>
                            <td><?php echo $i++; ?></td>
                            <td><?php echo $each->getProductName(); ?></td>
                            <td><?php echo $each->showPrice(); ?></td>
                            <td><?php echo $each->getQuantity(); ?></td>
                            <td><?php echo $each->getYearOfManufacture(); ?></td>
                            <td><?php echo $each->getBrand(); ?></td>
                            <td>
                                <p class="truncate"><?php echo $each->showDescription(); ?></p>
                            </td>
                            <td>
                                <a href="?action=edit&id=<?php echo $each->getProductId(); ?>">Sửa</a>
                            </td>
                            <td>
                                <a onclick="return Del('<?php echo $each->getProductName(); ?>')" href="?action=delete&id=<?php echo $each->getProductId(); ?>">Xoá</a>
                            </td>
                        <?php endforeach ?>
                </tbody>
            </table>
        </div>
    </div>
</div>

<script>
    document.title = "Quản lý sản phẩm";

    function Del(name) {
        return confirm("Bạn có chắc chắn muốn xoá sản phẩm: " + name + " ?");
    }
</script>