 <!-- cac view cart, checkout, login, resgiter ko hien thi blogside -->
     <?php if(!isset($_GET["view"])||$_GET["view"]!='shoppingcart'&&$_GET["view"]!='checkout'&&$_GET["view"]!='dangnhap'&&$_GET["view"]!='dangky'){?>
        <div class="col-md-3">
    <script src="../public/app/services/moduleServices.js"></script>
    <script src="../public/app/controllers/moduleController.js"></script>
    <!-- Blog sidebar -->

                            <!--Begin-->
                            <div class="box-sale-policy ng-scope" ng-controller="moduleController" ng-init="initSalePolicyController('Shop')">
                                <h3><span>Chính sách bán hàng</span></h3>
                                <div class="sale-policy-block">
                                    <ul>
                                        <li>Giao hàng TOÀN QUỐC</li>
                                        <li>Thanh toán khi nhận hàng</li>
                                        <li>Đổi trả trong <span>15 ngày</span></li>
                                        <li>Hoàn ngay tiền mặt</li>
                                        <li>Chất lượng đảm bảo</li>
                                        <li>Miễn phí vận chuyển:<span>Đơn hàng từ 3 món trở lên</span></li>
                                    </ul>
                                </div>
                                <div class="buy-guide">
                                    <h3>Hướng Dẫn Mua Hàng</h3>
                                    <ul>
                                        <li>
                                            Mua hàng trực tiếp tại website
                                            <b class="ng-binding"> http://www.nhasachyduochue.vn</b>
                                        </li>
                                        <li>
                                            Gọi điện thoại <strong class="ng-binding">
                                                077 2455 xxx
                                            </strong> để mua hàng
                                        </li>
                                        <li>
                                            Mua tại Trung tâm CSKH:<br>
                                            <strong class="ng-binding">Ở đâu còn lâu mới nói</strong>
                                            <a href="/ban-do.html" rel="nofollow" target="_blank">Xem Bản Đồ</a>
                                        </li>
                                        <li>
                                            Mua sỉ/buôn xin gọi <strong class="ng-binding">
                                                0908 xx xx xx
                                            </strong> để được
                                            hỗ trợ.
                                        </li>
                                    </ul>
                                </div>
                            </div>  
                        </div>
                            <!--End-->
     <?php }?>
                      