<?php include 'function.php';
   use PHPMailer\PHPMailer\PHPMailer;
            use PHPMailer\PHPMailer\SMTP;
            use PHPMailer\PHPMailer\Exception;
            require '../libs/PHPMailer/src/Exception.php';
            require '../libs/PHPMailer/src/PHPMailer.php';
            require '../libs/PHPMailer/src/SMTP.php';
 ?>
<div class="col-md-12">
   <div class="breadcrumb clearfix">
      <ul>
         <li itemtype="http://shema.org/Breadcrumb" itemscope="" class="home">
            <a title="Đến trang chủ" href="/" itemprop="url"><span itemprop="title">Trang chủ</span></a>
         </li>
         <li class="icon-li"><strong>Thanh toán</strong> </li>
      </ul>
   </div>
   <script type="text/javascript">
      $(".link-site-more").hover(function () { $(this).find(".s-c-n").show(); }, function () { $(this).find(".s-c-n").hide(); });
   </script>
   <script src="../app/services/orderServices.js"></script>
   <script src="../app/controllers/orderController.js"></script>

   <?php if (isset($_POST['addnew'])) {
         // echo "<prE>";
         // print_r($_POST);die;
         date_default_timezone_set('Asia/Ho_Chi_Minh');
         $data = $_POST;
         $createdate = date('Y-m-d H:i:s');

         $CustomerID = isset($_SESSION["login"])?$_SESSION["login"]:0;
         $Fullname = $_POST["Fullname"];
         $Address = $_POST["Address"];
         $Phone = $_POST["Phone"];
         $Email = $_POST["Email"];
         $Status = 1;
         $DateCreate = $createdate;
         $payment = $_POST['payment'][0];

         $sqlInsertOrder = "INSERT INTO `bill`( `CustomerID`, `Fullname`, `Address`, `Phone`, `Email`, `Status`, `DateCreate`, `paymentID`) VALUES ('$CustomerID','$Fullname','$Address','$Phone','$Email','$Status','$DateCreate','$payment')";
          // echo "<prE>";
          // print_r($sqlInsertOrder);die;
          mysqli_query($conn, $sqlInsertOrder) or die("Lỗi thêm mới".$sqlInsertOrder);
          $last_id = mysqli_insert_id($conn);
          foreach ($_SESSION["cart"] as $key => $value) {
                $quantity = $value["number"];
                $price = $value["price"];
                    $sqlInsertOrderDetail = "INSERT INTO `bill_detail`(`OrderID`, `ProductID`, `Price`, `Quatity`, `Discount`) VALUES ('$last_id','$key','$price','$quantity','0')";
                    mysqli_query($conn,$sqlInsertOrderDetail)or die("Lỗi thêm mới".$sqlInsertOrderDetail);
                }


                $sqlGetid = "SELECT * FROM bill where OrderID = ".$last_id;
    $result = mysqli_query($conn,$sqlGetid);
    $row = mysqli_fetch_row($result);


    $orderid=$row[0];
    $name = $row[2];
    $email = $row[5];
    $phone = $row[4];
    $address = $row[3];
    $created = $row[7];
    $pid = $row[8];
                 $mail = new PHPMailer(true);                                
            try {
                //Server settings
                $mail->SMTPDebug = 0;                                   
                $mail->isSMTP();                                        
                $mail->Host = 'smtp.gmail.com';                        
                $mail->SMTPAuth = true;                                 
                $mail->Username = 'vuanhle1509@gmail.com';              
                $mail->Password = 'xsgpvdsirhuydnvd';                           
                $mail->SMTPSecure = 'tls';                              
                $mail->Port = 587;                                      
                $mail->CharSet = "UTF-8";

                // Bật chế bộ tự mình mã hóa SSL
                $mail->SMTPOptions = array(
                    'ssl' => array(
                        'verify_peer' => false,
                        'verify_peer_name' => false,
                        'allow_self_signed' => true
                    )
                );

               //Recipients
        $mail->setFrom('vuanhle1509@gmail.com', 'Mail Liên hệ');
        $mail->addAddress($email);       
 
        $mail->isHTML(true);                                    

     
        $mail->Subject = "[Có đơn hàng vừa đặt] - Mã đơn hàng $orderid";

        $templateDonHang = '<tr>';
        $templateDonHang .= '<td width="30%">Khách hàng:</td>';
        $templateDonHang .= '<td><b>'. $name .'</b></td>';
        $templateDonHang .= '</tr>';
        $templateDonHang .= '<tr>';
        $templateDonHang .= '<td width="30%">Địa chỉ:</td>';
        $templateDonHang .= '<td><b>'. $address .'</b></td>';
        $templateDonHang .= '</tr>';
        $templateDonHang .= '<tr>';
        $templateDonHang .= '<td width="30%">Số điện thoại:</td>';
        $templateDonHang .= '<td><b>'. $phone .'</b></td>';
        $templateDonHang .= '</tr>';
        $templateDonHang .= '<tr>';
        $templateDonHang .= '<td width="30%">Ngày đặt hàng:</td>';
        $templateDonHang .= '<td><b>'. $created .'</b></td>';
        $templateDonHang .= '</tr>';
        $templateDonHang .= '<tr>';
        $templateDonHang .= '<td width="30%">Hình thức thanh toán:</td>';

        $sqlSelectPay = "SELECT * from payment where paymentID =".$pid;
                                                $resultPay = mysqli_query($conn, $sqlSelectPay) or die("Lỗi truy vấn");
                                                while ($rowPay = mysqli_fetch_assoc($resultPay)){
                                                    $payname = $rowPay["paymentName"];
                                                }
        $templateDonHang .= '<td><b>'. $payname .'</b></td>';
        $templateDonHang .= '</tr>';
        

        $templateChiTietDonHang  = '';
                  $total = 0;
                  $subtotal = 0;
                  $sqlSelecta= "SELECT * FROM bill_detail WHERE OrderID=".$orderid;
                  $resulta= mysqli_query($conn, $sqlSelecta) or die("Lỗi truy vấn");
                        if (mysqli_num_rows($resulta) > 0) {
                              $count = 0;
                           while ($rowa= mysqli_fetch_assoc($resulta)){
                                 $count++;
                                  //echo "<prE>";print_r($rowa);die;
            $templateChiTietDonHang .= '<tr>';       
            $templateChiTietDonHang .= '<td align="center">' . $count . '</td>';
            $sqlSelectCat = "SELECT * from product where ProductID =".$rowa["ProductID"];
                                                $resultCat = mysqli_query($conn, $sqlSelectCat) or die("Lỗi truy vấn");
                                                while ($rowcat = mysqli_fetch_assoc($resultCat)){
                                                   $proname = $rowcat["ProductName"];
                                                }
            $templateChiTietDonHang .= '<td><b>' . $proname . '</b></td>';
            $templateChiTietDonHang .= '<td>' . $rowa["Quatity"] . '</td>';
            $templateChiTietDonHang .= '<td>' . number_format($rowa["Price"],0,".",",") . '</td>';
                  $total = (int)$rowa["Price"]*(int)$rowa["Quatity"];
                  $subtotal += $total; 
            $templateChiTietDonHang .= '<td>' . number_format($total,0,".",",") . '</td>';
            $templateChiTietDonHang .= '</tr>';
            
        }
     }
         

            $templatetonghoadon = '<tr>';
            $templatetonghoadon .= '<td colspan="4" align="right"><b>Tổng thành tiền</b></td>';
            $templatetonghoadon .= '<td align="right"><b>'.number_format($subtotal,0,".",",").'</b></td>';
            $templatetonghoadon .= '</tr>';
        $body = <<<EOT
            
                <table border="0" width="100%" cellspacing="0">
                  <tbody>
                  <tr>
                    <td align="center"><img src="https://drive.google.com/file/d/1acDD48YBAvtnM0Eufen5WhyHUTsuqW5V/view?usp=sharing" width="150px" height="100px" /></td>
                    <td align="center">
                        <b style="font-size: 2em;">Cửa hàng đồng hồ SHOP TVH</b><br />
                        <small>Cung cấp các mặt hàng phụ kiện thời trang: đồng hồ, phụ kiện kèm theo ...</small><br />
                    </td>
                  </tr>
                  </tbody>
               </table>
               
               <p><i><u>Thông tin Đơn hàng</u></i></p>
               <table border="0" width="100%" cellspacing="0">
                  <tbody>
                     $templateDonHang
                  </tbody>
               </table>
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
                        $templateChiTietDonHang
                  </tbody>
                  <tfoot>
                        $templatetonghoadon
                  </tfoot>
               </table>
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
EOT;

                $mail->Body    = $body;

                $mail->send();
            } catch (Exception $e) {
                echo 'Lỗi khi gởi mail: ', $mail->ErrorInfo;
            }
                  unset($_SESSION["cart"]);
                 header("location: index.php?view=congratulation");

   } ?>
   <form class="" id=""  method="post">
      <div class="col-md-4 col-sm-12 col-xs-12 payment-step step2">
         <h4  style="margin-top: 0;padding: 10px;background-color: #f69679;font-size: 14px;text-transform: uppercase;color: #ffffff;margin-bottom: 0;">1. Địa chỉ thanh toán và giao hàng</h4>
         <div class="step-preview clearfix">
            <h2 style="font-weight:normal;
               font-size:16px;
               margin-bottom:5px;
               color:#f69679;" class="title">Thông tin thanh toán</h2>
            <div class="form-block form-group" ng-if="CustomerId<=0">
               <?php if(!isset($_SESSION["account"])){ ?>
               <div class="user-login" style="margin-bottom: 15px;"><a href="index.php" style="color: red;">Đăng ký tài khoản mua hàng</a><a href="/dang-nhap.html" style="color: red;">  / Đăng nhập</a></div>
               <label>Mua hàng không cần tài khoản</label>
               <?php } ?>
               <div class="form-group">
                  <input class="form-control " placeholder="Nhập Họ tên" type="text" name="Fullname" id="Fullname">
               </div>
               <div class="form-group">
                  <input class="form-control " placeholder="Nhập email" type="email" name="Email" id="Email" >
               </div>
               <div class="form-group">
                  <input class="form-control " placeholder="Nhập địa chỉ" type="text" name="Address" id="Address">
               </div>
               <div class="form-group">
                  <input class="form-control " placeholder="Nhập số điện thoại" type="tel" name="Phone" id="Phone">
               </div>
            </div>
         </div>
      </div>
      <div class="col-md-4 col-sm-12 col-xs-12 payment-step step3">
         <h4 style="margin-top: 0;padding: 10px;background-color: #f69679;font-size: 14px;text-transform: uppercase;color: #ffffff;margin-bottom: 0;">2. Thanh toán và vận chuyển</h4>
         <div class="step-preview clearfix">
            <h2 class="title" style="font-weight:normal;
               font-size:16px;
               margin-bottom:5px;
               color:#f69679;">Phương thức thanh toán</h2>
            <div class="form-group ">
               <select class="form-control ng-pristine ng-valid ng-touched" ng-model="ShippingRateId" ng-options="item.Id as item.Name for item in ShippingRates" ng-change="changeShippingRate()" name="payment[]" id="payment[]">
                  <?php 
                     $sqlpayment = "SELECT * FROM payment WHERE status = 1";
                     $resultpay = mysqli_query($conn, $sqlpayment) or die("Lỗi truy vấn");
                     if(mysqli_num_rows($resultpay)>0){
                         while($rowpay = mysqli_fetch_assoc($resultpay)){
                                     ?>
                  <option  value="<?php echo $rowpay["paymentID"]?>"><?php echo  $rowpay["paymentName"]?></option>
                  <?php }
                     } ?>
               </select>
            </div>
            <!-- <h2 class="title" style="font-weight:normal;
               font-size:16px;
               margin-bottom:5px;
               color:#f69679;">***</h2>   -->  
         </div>
      </div>
      <div class="col-md-4 col-sm-12 col-xs-12 payment-step step1">
         <h4  style="margin-top: 0;padding: 10px;background-color: #f69679;font-size: 14px;text-transform: uppercase;color: #ffffff;margin-bottom: 0;">3. Thông tin đơn hàng</h4>
         <div class="step-preview">
            <div class="cart-info">
               <?php 
                  $number = 0;
                  $total = 0;
                  $subtotal = 0;
                  $ordertotal=0;
                  $ship = 0;
                  if(isset($_SESSION["cart"])){
                       $cart=$_SESSION["cart"];
                  foreach ($cart as $key=> $value){
                    $total = (int)$value["number"]*(int)$value["price"];
                    $subtotal +=$total;
                    $ordertotal = $ship + $subtotal;
                  }}
                      ?>
               <div class="total-price" style=" font-weight: 600;
                  padding: 10px 0;
                  border-bottom: 1px solid #eaeaea;">
                  Thành tiền  <label class="ng-binding" style="float: right;"> <?php echo number_format($subtotal,0,",","."); ?> ₫</label>
               </div>
               <div class="total-price" style=" font-weight: 600;
                  padding: 10px 0;
                  border-bottom: 1px solid #eaeaea;">
                  Giảm giá  <label class="ng-binding" style="float: right;"> 0 ₫</label>
               </div>
               <div class="shiping-price" style=" font-weight: 600;
                  padding: 10px 0;
                  border-bottom: 1px solid #eaeaea;">
                  Phí vận chuyển  <label class="ng-binding" style="float: right;">Miễn phí</label>
               </div>
               <div class="total-payment" style=" font-weight: 600;
                  padding: 10px 0;
                  border-bottom: 1px solid #eaeaea;">
                  Tổng cộng  <span class="ng-binding" style="float: right;"> <?php echo number_format($ordertotal,0,",",".");?>đ ₫</span>
               </div>
               <div class="button-submit" style="margin-top: 20px;">
                  <button class="btn btn-primary" id="addnew" name="addnew" type="submit">Đặt hàng</button>
               </div>
   </form>
   </div>
   </div>
   </div>
</div>
<script type="text/javascript">
   $(".menu-quick-select ul").hide();
   $(".menu-quick-select").hover(function () { $(".menu-quick-select ul").show(); }, function () { $(".menu-quick-select ul").hide(); });
</script>