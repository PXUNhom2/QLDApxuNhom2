
<?php
if(isset($_GET["module"])&&isset($_GET["id"])){
    $id = $_GET["id"];
    $sqlGetid = "SELECT * FROM order_shop where order_id = ".$id;
    $result = mysqli_query($conn,$sqlGetid);
    $row = mysqli_fetch_row($result);

//  echo '<prE>';
// print_r($row);die;

    $orderid=$row[0];
    $name = $row[1];
    $email = $row[2];
    $phone = $row[3];
    $address = $row[6];
    $created = $row[4];
}

if (isset($_POST["xacnhan"])) {
    $catName = $_POST["CatName"];
    $status = $_POST["Status"] ? $_POST["Status"]:0;
    // $sqlUpdate = "UPDATE category SET CatName = '$catName',`Status`='$status' WHERE id =".$_GET["id"];
    
    mysqli_query($conn, $sqlUpdate) or die("Lỗi thêm mới");
    header('Location: index.php?module=listcategory');
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
                            <h3 class="text-dark mb-1">NHÀ SÁCH Y DƯỢC</h3>
                            <div>Địa chỉ: 17/3 XUÂN THỦY, P.VỸ DẠ, TP.HUẾ</div>
                            <div>Email: nhasachyduochue@nsyd.vn</div>
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
                                $sqlSelect = "SELECT * FROM order_detail WHERE order_id=".$orderid;
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
                                                $sqlSelectCat = "SELECT * from product where pro_id=".$row["product_id"];
                                                $resultCat = mysqli_query($conn, $sqlSelectCat) or die("Lỗi truy vấn");
                                                while ($rowcat = mysqli_fetch_assoc($resultCat)){
                                                    echo  $rowcat["ProName"];
                                                }
                                                ?>
                                            </td>
                                            <td class="right"><?php echo number_format($row["price"],0,".",","); ?></td>
                                            <td class="center"><?php echo $row["quantity"]; ?></td>
                                            <td class="right"><?php 
                                            $total = (int)$row["price"]*(int)$row["quantity"];
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