<div class="container-fluid">
    <div class="card">
        <div class="card-header">
            <h2>Quản lý danh mục sản phẩm</h2>
        </div>
        <div class="card-body">
            <table class="table table-hover">
                <thead>
                    <tr>
                        <th>#</th>
                        <th>Loại sản phẩm</th>
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
                            <td><?php echo $each->getCategoryName(); ?></td>
                            <td>
                                <a href="index.php?page=sua&id=<?php echo $row['masp']; ?>">Sửa</a>
                            </td>
                            <td>
                                <a onclick="return Del('<?php echo $row['tensp']; ?>')" href="index.php?page=xoa&id=<?php echo $row['masp']; ?>">Xoá</a>
                            </td>
                        <?php endforeach ?>
                </tbody>
            </table>
            <a class='btn btn-primary' href="index.php?page=them">Thêm mới</a>
        </div>
    </div>
</div>

<script>
    function Del(name) {
        return confirm("Bạn có chắc chắn muốn xoá sản phẩm: " + name + " ?");
    }
</script>