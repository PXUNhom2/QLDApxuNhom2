
<div class="container-fluid  dashboard-content">
    <div class="row">
        <!-- ============================================================== -->
        <!-- basic table  -->
        <!-- ============================================================== -->
        <div class="col-xl-12 col-lg-12 col-md-12 col-sm-12 col-12">
            <div class="card">
                <h5 class="card-header">Danh sách user</h5>
                <div class="card-body">
                    <div class="table-responsive">
                        <table class="table table-striped table-bordered first">
                            <thead>
                                <tr>
                                    <th>#</th>
                                    <th>Họ và tên</th>
                                    <th>Username</th>
                                    <th></th>
                                   
                                    <th></th>
                                </tr>
                            </thead>
                            <tbody>
                                <?php
                                $sqlSelect = "SELECT * FROM user WHERE user_id > 1";
                                $result = mysqli_query($conn, $sqlSelect) or die("Lỗi truy vấn");
                                if (mysqli_num_rows($result) > 0) {
                                    $count = 0;
                                    while ($row = mysqli_fetch_assoc($result)) {
                                        $count++;
                                    ?>
                                    <tr>
                                        <td><?php echo $count?></td>
                                        <td><?php echo $row["fullname"]?></td>
                                        <td><?php echo $row["user_name"];?></td>
                                        <td><a href="index.php?module=phanquyen&id=<?php echo $row["user_id"]?>">Phân quyền</a></td>
                                        
                                        <td><a href="index.php?module=deleteuser&id=<?php echo $row["user_id"]?>">Xóa</a></td>
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
