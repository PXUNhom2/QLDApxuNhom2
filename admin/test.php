<?php 

 ob_start();
 session_start();
include ("../config/connection.php");

if(isset($_GET["printid"])){
    $id = $_GET["printid"];
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
    $pid = $row[8];
 
}

 ?>
<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="utf-8">
  <title>A4</title>

  <!-- Normalize or reset CSS with your favorite library -->
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/normalize/7.0.0/normalize.min.css">

  <!-- Load paper.css for happy printing -->
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/paper-css/0.4.1/paper.css">


  <style>@page { size: A4 }</style>
</head>


<body class="A4">


  <section class="sheet padding-10mm">

    <!-- Thông tin Cửa hàng -->
        <table border="0" width="100%" cellspacing="0">
            <tbody>
                <tr>
                    <td align="center"><img src="assets/images/logon.png" width="150px" height="100px" /></td>
                    <td align="center">
                        <b style="font-size: 2em;">Cửa hàng đồng hồ SHOP TVH</b><br />
                        <small>Cung cấp các mặt hàng phụ kiện thời trang: đồng hồ, phụ kiện kèm theo ...</small><br />
                        
                    </td>
                </tr>
            </tbody>
        </table>
        <div class="float-right"> <h3 class="mb-0">HĐ số: <?php echo $orderid; ?></h3>
        <!-- Thông tin đơn hàng -->
        <p><i><u>Thông tin Đơn hàng</u></i></p>
        <table border="0" width="100%" cellspacing="0">
            <tbody>

                <tr>
                    <td width="30%">Khách hàng:</td>
                    <td><b><?php echo $name; ?></b></td>
                </tr>
                <tr>
                    <td>Địa chỉ:</td>
                    <td><b><?php echo $address; ?></b></td>
                </tr>
                <tr>
                    <td>Ngày lập:</td>
                    <td><b><?php echo $created; ?></b></td>
                </tr>
                <tr>
                    <td>Số điện thoại:</td>
                    <td><b><?php echo $phone; ?></b></td>
                </tr>
                <tr>
                    <td>Email liên lạc:</td>
                    <td><b><?php echo $email; ?></b></td>
                </tr>
                <tr>
                    <td>Hình thức thanh toán:</td>
                    <td><b>
                    	<?php
                                                $sqlSelectPay = "SELECT * from payment where paymentID =".$pid;
                                                $resultPay = mysqli_query($conn, $sqlSelectPay) or die("Lỗi truy vấn");
                                                while ($rowPay = mysqli_fetch_assoc($resultPay)){
                                                    echo  $rowPay["paymentName"];
                                                }
                                                ?>
                    </b></td>
                </tr>
                
            </tbody>
        </table>

        <!-- Thông tin sản phẩm -->
        <p><i><u>Chi tiết đơn hàng</u></i></p>
        <table border="1" width="100%" cellspacing="0" cellpadding="5">
            <thead>
                <tr>
                    <th>STT</th>
                    <th>Sản phẩm</th>
                    <th>Số lượng</th>
                    <th>Đơn giá</th>
                    <th>Thành tiền</th>
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
                                         //echo "<prE>";print_r($row);die; 
                                        ?>

                <tr>
                    <td align="center"><?php echo $count; ?></td>
                    <td><b>
                    	<?php
                                                $sqlSelectCat = "SELECT * from product where ProductID =".$row["ProductID"];
                                                $resultCat = mysqli_query($conn, $sqlSelectCat) or die("Lỗi truy vấn");
                                                while ($rowcat = mysqli_fetch_assoc($resultCat)){
                                                    echo  $rowcat["ProductName"];
                                                }
                                                ?>
                    </b><br />
                        <small><i></i></small><br />
                        <small><i></i></small>
                    </td>
                    <td align="right"><?php echo $row["Quatity"]; ?></td>
                    <td align="right"><?php echo number_format($row["Price"],0,".",","); ?></td>
                    <td align="right"><?php 
                                            $total = (int)$row["Price"]*(int)$row["Quatity"];
                                            $subtotal += $total; 
                                            echo number_format($total,0,".",",");?></td>
                </tr>
                <?php }} ?>
            </tbody>
            <tfoot>
                <tr>
                    <td colspan="4" align="right"><b>Tổng thành tiền</b></td>
                    <td align="right"><b><?php echo  number_format($subtotal,0,".",",");?></b></td>
                </tr>
            </tfoot>
        </table>

        <!-- Thông tin Footer -->
        <br />
        <table border="0" width="100%">
            <tbody>
                <tr>
                    <td align="center">
                        <small>Xin cám ơn Quý khách đã ủng hộ Cửa hàng, Chúc Quý khách An Khang, Thịnh Vượng!</small>
                    </td>
                </tr>
            </tbody>
        </table>

  </section>

</body>

</html>