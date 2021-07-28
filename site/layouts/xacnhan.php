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
    <div class="cart-content ng-scope" ng-controller="orderController" ng-init="initOrderCartController()">
        <h1 style="text-align: center;font-style: italic;"><span>Liên hệ của bạn đã được gửi thành công!! Cám ơn bạn đã đóng góp!! Chúc bạn một ngày tốt lành!!</span></h1>

        <div class="button text-right">
                <a class="button-default" id="checkout" href="index.php">Về lại trang chủ</a>
        </div>
        
       
    </div>
</div>
<script type="text/javascript">
        $(".menu-quick-select ul").hide();
        $(".menu-quick-select").hover(function () { $(".menu-quick-select ul").show(); }, function () { $(".menu-quick-select ul").hide(); });
    </script>