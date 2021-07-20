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
   <form class="" id=""  method="post">
      <div class="col-md-4 col-sm-12 col-xs-12 payment-step step2">
         <h4  style="margin-top: 0;padding: 10px;background-color: #f69679;font-size: 14px;text-transform: uppercase;color: #ffffff;margin-bottom: 0;">1. Địa chỉ thanh toán và giao hàng</h4>
         <div class="step-preview clearfix">
            <h2 style="font-weight:normal;
               font-size:16px;
               margin-bottom:5px;
               color:#f69679;" class="title">Thông tin thanh toán</h2>
            <!-- ngIf: CustomerId>0 -->
            <!-- ngIf: CustomerId<=0 -->
            <div class="form-block form-group" ng-if="CustomerId<=0">
               <div class="user-login" style="margin-bottom: 15px;"><a href="/dang-ky.html" style="color: red;">Đăng ký tài khoản mua hàng</a><a href="/dang-nhap.html" style="color: red;">  / Đăng nhập</a></div>
               <label>Mua hàng không cần tài khoản</label>
               <div class="form-group">
                  <input class="form-control " placeholder="Nhập Họ tên" type="text" name="name" id="name">
               </div>
               <div class="form-group">
                  <input class="form-control " placeholder="Nhập email" type="email" name="email" id="email" >
               </div>
               <div class="form-group">
                  <input class="form-control " placeholder="Nhập địa chỉ" type="text" name="address" id="address">
               </div>
               <div class="form-group">
                  <input class="form-control " placeholder="Nhập số điện thoại" type="tel" name="phone" id="phone">
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
               color:#f69679;">Vận chuyển</h2>
            <div class="form-group ">
               <select class="form-control ng-pristine ng-valid ng-touched" ng-model="ShippingRateId" ng-options="item.Id as item.Name for item in ShippingRates" ng-change="changeShippingRate()">
                  <option value="?" selected="selected"></option>
               </select>
            </div>
            <h2 class="title" style="font-weight:normal;
               font-size:16px;
               margin-bottom:5px;
               color:#f69679;">Thanh toán</h2>
            <!-- ngRepeat: item in PaymentMethods -->
         </div>
      </div>
      <div class="col-md-4 col-sm-12 col-xs-12 payment-step step1">
         <h4  style="margin-top: 0;padding: 10px;background-color: #f69679;font-size: 14px;text-transform: uppercase;color: #ffffff;margin-bottom: 0;">3. Thông tin đơn hàng</h4>
         <div class="step-preview">
            <div class="cart-info">
               <div class="cart-items">
                  <!-- ngRepeat: item in OrderDetails -->
               </div>
               <div class="total-price" style=" font-weight: 600;
                  padding: 10px 0;
                  border-bottom: 1px solid #eaeaea;">
                  Thành tiền  <label class="ng-binding" style="float: right;"> 0 ₫</label>
               </div>
               <div class="shiping-price" style=" font-weight: 600;
                  padding: 10px 0;
                  border-bottom: 1px solid #eaeaea;">
                  Phí vận chuyển  <label class="ng-binding" style="float: right;">0 ₫</label>
               </div>
               <div class="total-payment" style=" font-weight: 600;
                  padding: 10px 0;
                  border-bottom: 1px solid #eaeaea;">
                  Thanh toán <span class="ng-binding" style="float: right;"> 0 ₫</span>
                  <div class="button-submit">
                     <button class="btn btn-primary" id="addnew" name="addnew" type="submit">Đặt hàng</button>
                  </div>
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