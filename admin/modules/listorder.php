
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
                        <table id="table_id" class="table table-striped table-bordered first">
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
                                $sqlSelect = "SELECT * FROM bill";
                                $result = mysqli_query($conn, $sqlSelect) or die("Lỗi truy vấn");
                                if (mysqli_num_rows($result) > 0) {
                                    $count = 0;
                                    while ($row = mysqli_fetch_assoc($result)) {
                                        $count++;
                                        ?>
                                        <tr>
                                            <td><?php echo $count ?></td>
                                            <td><?php echo $row["OrderID"]; ?></td>                                        
                                            <td><?php echo $row["Fullname"]; ?></td>
                                            <td><?php echo $row["Address"] ?></td>
                                            <td><?php echo $row["Email"] ?></td>
                                            <td><?php echo $row["Phone"] ?></td>
                                            <td><?php echo $row["DateCreate"] ?></td>
                                            <td><?php echo $row["Status"]?></td>
                                            <td><a href="index.php?module=detailorder&id=<?php echo $row["OrderID"] ?>">Chi tiết</a></td>
                                           
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
