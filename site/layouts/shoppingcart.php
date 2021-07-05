<div class="col-md-12">
    <div class="breadcrumb clearfix">
        <ul>
            <li itemtype="http://shema.org/Breadcrumb" itemscope="" class="home">
                <a title="Đến trang chủ" href="/" itemprop="url"><span itemprop="title">Trang chủ</span></a>
            </li>
            <li class="icon-li"><strong>Giỏ hàng</strong> </li>
        </ul>
    </div>
    <script type="text/javascript">
        $(".link-site-more").hover(function () { $(this).find(".s-c-n").show(); }, function () { $(this).find(".s-c-n").hide(); });
    </script>
    <script src="../app/services/orderServices.js"></script>
    <script src="../app/controllers/orderController.js"></script>
    <div class="cart-content ng-scope" ng-controller="orderController" ng-init="initOrderCartController()">
        <h1><span>Giỏ hàng của tôi</span></h1>
        
        <div class="cart-block">
            <div class="cart-info table-responsive" id="listCart">
                <table class="table product-list" >
                    <thead>
                        <tr>
                            <th></th>
                            <th>Tên sản phẩm</th>
                            <th>Giá</th>
                            <th>Số lượng</th>
                            <th>Thành tiền</th>
                            <th></th>
                        </tr>
                    </thead>
                    <tbody>
                          
                        <tr>
                            <td></td>
                            <td>xxx</td>
                            <td><?echo number_format(90000,0,",",".");?></td>
                            <td>2
               
                            </td>
                            <td><?php
                    
                            echo number_format(90000,0,",",".");
                            
                            ?></td>
                            <td><button class="btn" onclick="deleteCart()"><i class="fa fa-close"></i></button></td>
                        </tr>
                       
                                         
                    </tbody>
                </table>
                <div class="clearfix text-right">
                <span><b>Tổng thanh toán:</b></span>
                <span class="pay-price ng-binding">

                    <?php echo number_format(90000,0,",",".");?>đ
                </span>
                </div>
            </div>
            
            <div class="button text-right">
                <!-- <a class="comeback" href="/" onclick="window.history.back()">Tiếp tục mua hàng</a> -->
                <a class="button-default" id="checkout" href="index.php?view=checkout">Tiến hành thanh toán</a>
            </div>
        </div>
    </div>
</div>
<script type="text/javascript">
        $(".menu-quick-select ul").hide();
        $(".menu-quick-select").hover(function () { $(".menu-quick-select ul").show(); }, function () { $(".menu-quick-select ul").hide(); });
    </script>