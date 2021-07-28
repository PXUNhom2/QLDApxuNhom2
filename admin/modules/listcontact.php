
<div class="container-fluid  dashboard-content">
    <div class="row">
        <!-- ============================================================== -->
        <!-- basic table  -->
        <!-- ============================================================== -->
        <div class="col-xl-12 col-lg-12 col-md-12 col-sm-12 col-12">
             <button type="button" class="btn btn-primary" style="margin-bottom: 10px;">
                <a class="" href="index.php?module=adduser" style="color: white;">Thêm mới</a>
            </button>
            
            <div class="card">
                <h5 class="card-header">Danh sách user</h5>
                <div class="card-body">
                    <div class="table-responsive">
                        <table id="table_id" class="table table-striped table-bordered first">
                            <thead>
                                <tr>
                                    <th>#</th>
                                    <th>Họ và tên</th>
                                    <th>Email</th>
                                    <th>Phone</th>
                       
                                    <th>Ngày gửi</th>
                                    <th>Tiêu đề</th>
                                    <th>Tin nhắn</th>
                                    <th>Trạng thái</th>
                                    <th>Hành động</th>
                                </tr>
                            </thead>
                            <tbody>
                                <?php
                                $sqlSelect = "SELECT * FROM contact";
                                $result = mysqli_query($conn, $sqlSelect) or die("Lỗi truy vấn");
                                if (mysqli_num_rows($result) > 0) {
                                    $count = 0;
                                    while ($row = mysqli_fetch_assoc($result)) {
                                        $count++;
                                    ?>
                                    <tr>
                                        <td><?php echo $count?></td>
                                        <td><?php echo $row["Fullname"]?></td>
                                        <td><?php echo $row["Email"];?></td>
                                        <td><?php echo $row["Phone"];?></td>
                                       
                                        <td><?php echo $row["DateCreate"];?></td>
                                        <td><?php echo $row["Title"];?></td>
                                        <td><?php echo $row["Message"];?></td>
                                        <td><?php echo $row["Status"] ? "Chưa reply" : "Đã reply" ?></td>
                                        <td><button class="btn-primary">Xác nhận</button></td>
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
