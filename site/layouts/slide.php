<!--Chạy slide hình ảnh-->
<div class="slideshow">
    <?php if(!isset($_GET["view"])||$_GET["view"]!='shoppingcart'&&$_GET["view"]!='checkout'&&$_GET["view"]!='detail'&&$_GET["view"]!='listproduct'&&$_GET["view"]!='dangnhap'&&$_GET["view"]!='dangky'){?>
    <div class="container-fluid">
        <div class="row">
        
            <div class="col-md-12 ">
                <div class="homeslider">
                    <div id="owl-slider" class="owl-carousel owl-carousel-banner">
                        <div class="item">
                            <a href="#"><img src="../public/Uploads/slide/banner1.png" alt="1"></a>
                        </div> 
                        <div class="item">
                            <a href="#"><img src="../public/Uploads/slide/banner2.jpg" alt="2"></a>
                        </div>
                        <div class="item">
                            <a href="#"><img src="../public/Uploads/slide/banner3.png" alt="3"></a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <?php } ?>
</div>
