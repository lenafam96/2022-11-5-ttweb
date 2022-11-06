<div class="container-fluid">
    <div class="card">
        <div class="card-header">
            <h2>Quản lý sản phẩm</h2>
        </div>
        <div class="card-body">
            <form action="?action=search" method="post">
                <table class="table table-hover">
                    <thead>
                        <tr>
                            <th colspan="9" style="text-align: center;">
                                <h1 style="text-transform:uppercase;">Tìm kiếm sản phẩm</h1>
                            </th>
                        </tr>
                        <tr style="background-color: #E9967A; text-align: center;">
                            <th colspan="9">
                                <span class="search-span">Loại tìm kiếm: </span>
                                <input type="radio" name="chose" id="chose" value="0" <?php if ($_POST["chose"] == 0) echo "checked"; ?>>Tên sản phẩm &nbsp;
                                <input type="radio" name="chose" id="chose" value="1" <?php if ($_POST["chose"] == 1) echo "checked"; ?>>Hãng sản phẩm &nbsp;
                                <input type="radio" name="chose" id="chose" value="2" <?php if ($_POST["chose"] == 2) echo "checked"; ?>>Mô tả sản phẩm &nbsp;
                            </th>
                        </tr>
                        <tr style="background-color: #E9967A; text-align: center;">
                            <th colspan="9">
                                <span class="search-span">Từ khoá: </span>
                                <input type="text" name="keyword" value="<?php echo $_POST['keyword'] ?? ''; ?>" size="50">
                                <button type="submit" name="sbm" class="btn btn-primary">Tìm kiếm</button>
                            </th>
                        </tr>
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
            </form>
            <a class='btn btn-primary' href="index.php">Quay lại</a>
        </div>
    </div>
</div>

<script>
    document.title = "Quản lý sản phẩm";

    function Del(name) {
        return confirm("Bạn có chắc chắn muốn xoá sản phẩm: " + name + " ?");
    }
</script>