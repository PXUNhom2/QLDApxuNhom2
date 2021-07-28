
<div class="container-fluid  dashboard-content">
    <div class="row">
        <!-- ============================================================== -->
        <!-- basic table  -->
        <!-- ============================================================== -->
        <div class="col-xl-12 col-lg-12 col-md-12 col-sm-12 col-12">
            <button type="button" class="btn btn-primary" style="margin-bottom: 10px;">
                <a class="" href="index.php?module=addproduct" style="color: white;">Thêm mới</a>
            </button>
            <div class="card">
                <h5 class="card-header">Danh sách sản phẩm</h5>
                <div class="card-body">
                    <div class="table-responsive">
                        <table id="table_id" class="table table-striped table-bordered first">
                            <thead>
                                <tr>
                                    <th>Id</th>
                                    <th>Tên sản phẩm</th>
                                    <th>Loại</th>
                                    <th>Image</th>
                                    <th>Giá</th>
                                    <th>Tồn kho</th>
                                    <th>Trạng thái</th>
                                    <th></th>
                                    <th></th>
                                </tr>
                            </thead>
                            <tbody>
                                <?php
                                $sqlSelect = "SELECT * FROM product";
                                $result = mysqli_query($conn, $sqlSelect) or die("Lỗi truy vấn");
                                if (mysqli_num_rows($result) > 0) {
                                    $count = 0;
                                    while ($row = mysqli_fetch_assoc($result)) {
                                        $count++;
                                        ?>
                                        <tr>
                                            <td><?php echo $count ?></td>
                                            <td><?php echo $row["ProductName"] ?></td>
                                            <td ><?php
                                                $sqlSelectCat = "Select * from subcategory where SubCategoryID=".$row["SubCategoryID"];
                                                $resultCat = mysqli_query($conn, $sqlSelectCat) or die("Lỗi truy vấn");
                                                while ($rowcat = mysqli_fetch_assoc($resultCat)){
                                                    echo  $rowcat["SubName"];
                                                }
                                                ?></td>
                                            <td><img style="width: 100px;" src="../public/Uploads/product/<?php echo $row['image']; ?>"></td>
                                            <td><?php echo $row["Price"] ?></td>
                                            <td><?php echo $row["TonKho"] ?></td>
                                            <td><?php echo $row["Status"] ? "Hiển thị" : "Ẩn" ?></td>
                                            <td><a href="index.php?module=editproduct&id=<?php echo $row["ProductID"] ?>">Sửa</a></td>
                                            <td><a href="index.php?module=deleteproduct&id=<?php echo $row["ProductID"] ?>">Xóa</a></td>
                                        </tr>
                                    <?php }
                                }
                                ?>
                            </tbody>

                        </table>
                    </div>
                </div>
            </div>
        </div>
        <!-- ============================================================== -->
        <!-- end basic table  -->
        <!-- ============================================================== -->
    </div>
</div>
