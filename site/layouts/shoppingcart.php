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
                          
                        <?php 
                                        $number = 0;
                                        $total = 0;
                                        $subtotal = 0;
                                        if(isset($_SESSION["cart"])){
                                             $cart=$_SESSION["cart"];
                                        foreach ($cart as $key=> $value){
                                            ?>
                        <tr>
                            <td></td>
                            <td><?php echo $value["name"]?></td>
                            <td><?php $price = (int)$value["price"];echo number_format($price,0,",",".");?></td>
                            <td><input class="input"  type="number" id="num_<?php echo $key; ?>" value="<?php echo $value["number"]?>" onclick="updateCart(<?php echo $key; ?>)"></td>
                            <td><?php
                            $total = (int)$value["number"]*(int)$value["price"];
                            $subtotal +=$total;
                            echo number_format($total,0,",",".");
                            
                            ?></td>
                            <td><button class="btn" onclick="deleteCart(<?php echo $key; ?>)"><i class="fa fa-close"></i></button></td>
                        </tr>
                       
                                         <?php   
                                        }
                                        }
                                        ?>         
                    </tbody>
                </table>
                <div class="clearfix text-right">
                <span><b>Tổng thanh toán:</b></span>
                <span class="pay-price ng-binding">

                   <?php echo number_format($subtotal,0,",",".");?>đ
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