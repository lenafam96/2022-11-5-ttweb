<div class="container-fluid">
    <div class="card">
        <div class="card-header">
            <h2>Thêm sản phẩm mới</h2>
        </div>
        <div class="card-body">
            <form action="?action=store" method="post" enctype="multipart/form-data">
                <div class="form-group">
                    <label for="">Tên sản phẩm</label>
                    <input type="text" name="productName" class="form-control" required>
                </div>
                <div class="form-group">
                    <label for="">Giá bán</label>
                    <input type="number" name="price" min="0" class="form-control" required>
                </div>
                <div class="form-group">
                    <label for="">Số lượng</label>
                    <input type="number" name="quantity" min="0" class="form-control" required>
                </div>
                <div class="form-group">
                    <label for="">Năm sản xuất</label>
                    <input type="number" name="yearOfManufacture" min="1900" max="<?php echo date("Y"); ?>" class="form-control" required>
                </div>
                <div class="form-group">
                    <label for="">Hãng</label>
                    <input type="text" name="brand" class="form-control" required>
                </div>
                <div class="form-group">
                    <label for="">Mô tả</label><br>
                    <textarea name="description" id="description" cols="91" rows="5" required></textarea>
                </div>
                <button type="submit" name="sbm" class="btn btn-primary">Thêm</button>
            </form>
        </div>
    </div>
</div>

<script>
    document.title = "Thêm sản phẩm mới";
</script>