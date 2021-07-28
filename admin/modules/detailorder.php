
<?php
if(isset($_GET["module"])&&isset($_GET["id"])){
    $id = $_GET["id"];
    $sqlGetid = "SELECT * FROM bill where OrderID = ".$id;
    $result = mysqli_query($conn,$sqlGetid);
    $row = mysqli_fetch_row($result);

//  echo '<prE>';
// print_r($row);die;

    $orderid=$row[0];
    $name = $row[2];
    $email = $row[5];
    $phone = $row[4];
    $address = $row[3];
    $created = $row[7];
}

?>
<div class="container-fluid  dashboard-content">
    <div class="row">
        <div class="offset-xl-2 col-xl-8 col-lg-12 col-md-12 col-sm-12 col-12">
            <div class="card">
                <div class="card-header p-4">
                    <a class="pt-2 d-inline-block" href="index.html">Nhà sách y dược</a>

                    <div class="float-right"> <h3 class="mb-0">HĐ số: <?php echo $orderid; ?></h3>
                     Date: <?php echo $created; ?></div>
                 </div>
                 <div class="card-body">
                    <div class="row mb-4">
                        <div class="col-sm-6">
                            <h5 class="mb-3">Người gửi:</h5>                                            
                            <h3 class="text-dark mb-1">SHOP TVH</h3>
                            <div>Địa chỉ: 176 Trần Phú, Huế</div>
                            <div>Email: shoptvh@bussines.vn</div>
                            <div>Phone: +573-282-9117</div>
                        </div>
                        <div class="col-sm-6">
                            <h5 class="mb-3">Người đặt hàng:</h5>
                            <h3 class="text-dark mb-1"><?php echo $name; ?></h3>                                          
                            <div>ĐC: <?php echo $address; ?></div>
                            <div>Email: <?php echo $email; ?></div>
                            <div>Phone: <?php echo $phone; ?></div>
                        </div>
                    </div>
                    <div class="table-responsive-sm">
                        <table class="table table-striped">
                            <thead>
                                <tr>
                                    <th class="center">#</th>
                                    <th>Tên sản phẩm</th>
                                    <th class="right">Giá</th>
                                    <th class="center">Số lượng</th>
                                    <th class="right">Thành tiền</th>
                                </tr>
                            </thead>
                            <tbody>
                                <?php
                                $total = 0;
                                $subtotal = 0;
                                $sqlSelect = "SELECT * FROM bill_detail WHERE OrderID=".$orderid;
                                $result = mysqli_query($conn, $sqlSelect) or die("Lỗi truy vấn");
                                if (mysqli_num_rows($result) > 0) {
                                    $count = 0;
                                    while ($row = mysqli_fetch_assoc($result)) {
                                        $count++;
                                        ?>
                                        <tr>
                                            <td class="center"><?php echo $count; ?></td>
                                            <td class="left">

                                                <?php
                                                $sqlSelectCat = "SELECT * from product where ProductID =".$row["ProductID"];
                                                $resultCat = mysqli_query($conn, $sqlSelectCat) or die("Lỗi truy vấn");
                                                while ($rowcat = mysqli_fetch_assoc($resultCat)){
                                                    echo  $rowcat["ProductName"];
                                                }
                                                ?>
                                            </td>
                                            <td class="right"><?php echo number_format($row["Price"],0,".",","); ?></td>
                                            <td class="center"><?php echo $row["Quatity"]; ?></td>
                                            <td class="right"><?php 
                                            $total = (int)$row["Price"]*(int)$row["Quatity"];
                                            $subtotal += $total; 
                                            echo number_format($total,0,".",",");?></td>
                                        </tr>
                                    <?php }} ?>
                                </tbody>
                            </table>
                        </div>
                        <div class="row">
                            <div class="col-lg-4 col-sm-5">
                            </div>
                            <div class="col-lg-4 col-sm-5 ml-auto">
                                <table class="table table-clear">
                                    <tbody>
                                        <tr>
                                            <td class="left">
                                                <strong class="text-dark">Tổng tiền</strong>
                                            </td>
                                            <td class="right">
                                                <strong class="text-dark"><?php echo  number_format($subtotal,0,".",",");?></strong>
                                            </td>
                                        </tr>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div> 
                </div>
            </div>
        </div>
        <div class="row" >
            <div class="offset-xl-2 col-xl-8 col-lg-12 col-md-12 col-sm-12 col-12">
                <form action="detailorder_submit" method="post" accept-charset="utf-8" style="text-align: center;">
                    <button type="submit" class="btn btn-space btn-primary" name="xacnhan">Xác nhận</button>
                    <button class="btn btn-space btn-secondary">Cancel</button>
                </form>

            </div>
        </div>
    </div>