<?php include 'function.php'; ?>
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
                    $sqlInsertOrderDetail = "INSERT INTO `bill_detail`(`OrderID`, `ProductID`, `Price`, `Quatity`, `Discount`) VALUES ('$last_id','$key','$quantity','$price','0')";
                    mysqli_query($conn,$sqlInsertOrderDetail)or die("Lỗi thêm mới".$sqlInsertOrderDetail);
                }

                  session_destroy(); 
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