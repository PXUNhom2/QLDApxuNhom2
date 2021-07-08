
<div class="container-fluid  dashboard-content">
    <div class="row">
        <!-- ============================================================== -->
        <!-- basic table  -->
        <!-- ============================================================== -->
        <div class="col-xl-12 col-lg-12 col-md-12 col-sm-12 col-12">
            <button type="button" class="btn btn-primary" style="margin-bottom: 10px;">
                <a class="" href="index.php?module=addcategory" style="color: white;">Thêm mới</a>
            </button>
            <div class="card">
                <h5 class="card-header">Danh sách danh mục chính</h5>
                <div class="card-body">
                    <div class="table-responsive">
                        <table class="table table-striped table-bordered first">
                            <thead>
                                <tr>
                                    <th>Id</th>
                                    <th>Tên danh mục</th>
                                    <th>Trạng thái</th>
                                    <th></th>
                                    <th></th>
                                    <th></th>
                                </tr>
                            </thead>
                            <tbody>
                                <?php
                                $sqlSelect = "SELECT * FROM category";
                                $result = mysqli_query($conn, $sqlSelect) or die("Lỗi truy vấn");
                                if (mysqli_num_rows($result) > 0) {
                                    $count = 0;
                                    while ($row = mysqli_fetch_assoc($result)) {
                                        $count++;
                                    ?>
                                    <tr>
                                        <td><?php echo $count?></td>
                                        <td><?php echo $row["CategoryName"]?></td>
                                        <td><?php echo $row["Status"]?"Hiển thị":"Ẩn"?></td>
                                        <td><a href="index.php?module=editcategory&id=<?php echo $row["CategoryID"]?>">Sửa</a></td>
                                        <td><a href="index.php?module=deletecategory&id=<?php echo $row["CategoryID"]?>">Xóa</a></td>
                                        <td><a href="index.php?module=listsubcate&id=<?php echo $row["CategoryID"]?>">Chi tiết</td>
                                    </tr>
                                <?php }        
                                    } ?>
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
