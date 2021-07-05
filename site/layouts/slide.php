<!--Chạy slide hình ảnh-->
<div class="slideshow">
    <?php if(!isset($_GET["view"])||$_GET["view"]!='shoppingcart'&&$_GET["view"]!='checkout'&&$_GET["view"]!='detail'&&$_GET["view"]!='listproduct'&&$_GET["view"]!='dangnhap'&&$_GET["view"]!='dangky'){?>
    <div class="container">
        <div class="row">
            <div class="col-md-3">
            </div>
            <div class="col-md-9 ">
                <div class="homeslider">
                    <div id="owl-slider" class="owl-carousel owl-carousel-banner">
                        <div class="item">
                            <a href="#"><img src="../public/Uploads/slide/so1.jpg" alt="1"></a>
                        </div> 
                        <div class="item">
                            <a href="#"><img src="../public/Uploads/slide/so2.jpg" alt="2"></a>
                        </div>
<!--                        <div class="item">
                            <a href="#"><img src="../libs/images/slide/so3.jpg" alt="3"></a>
                        </div>-->

                    </div>
                </div>
                <!--Template--
                --End-->
            </div>
        </div>
    </div>
    <?php } ?>
</div>