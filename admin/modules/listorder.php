
<div class="container-fluid  dashboard-content">
    <div class="row">
        <!-- ============================================================== -->
        <!-- basic table  -->
        <!-- ============================================================== -->
        <div class="col-xl-12 col-lg-12 col-md-12 col-sm-12 col-12">
            <div class="card">
                <h5 class="card-header">Danh sách đơn đặt hàng</h5>
                <div class="card-body">
                    <div class="table-responsive">
                        <table class="table table-striped table-bordered first">
                            <thead>
                                <tr>
                                    <th>STT</th>
                                    <th>Order_Id</th>
                                    <th>Tên Khách hàng</th>
                                    <th>Địa chỉ</th>
                                    <th>Email</th>
                                    <th>Phone</th>
                                    <th>Ngày đặt hàng</th>
                                    <th>Trạng thái</th>
                                    <th></th>
                                </tr>
                            </thead>
                            <tbody>
                                <?php
                                $sqlSelect = "SELECT * FROM order_shop";
                                $result = mysqli_query($conn, $sqlSelect) or die("Lỗi truy vấn");
                                if (mysqli_num_rows($result) > 0) {
                                    $count = 0;
                                    while ($row = mysqli_fetch_assoc($result)) {
                                        $count++;
                                        ?>
                                        <tr>
                                            <td><?php echo $count ?></td>
                                            <td><?php echo $row["order_id"]; ?></td>                                        
                                            <td><?php echo $row["name"]; ?></td>
                                    <td><?php echo $row["address"] ?></td>
                                            <td><?php echo $row["email"] ?></td>
                                            <td><?php echo $row["phone"] ?></td>
                                            
                                            <td><?php echo $row["created"] ?></td>

                                            <td><?php echo $row["status"] ? "Chưa xử lý" : "Đã xử lý" ?></td>
                                            <td><a href="index.php?module=detailorder&id=<?php echo $row["order_id"] ?>">Chi tiết</a></td>
                                           
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
