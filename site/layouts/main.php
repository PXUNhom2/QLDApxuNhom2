
<!--nội dung chính sẽ thay đổi theo trang-->
<!--Thay đội nội dụng ở đây-->


<div class="col-md-12">
    <div class="product_home">
        <div class="clearfix">
            <div class="section-heading">
                <h2 title="Nội khoa">
                    <span>Sản phẩm bán chạy</span>
                </h2>
            </div>
        </div>
       
            <div class="clearfix">
                   <div class="product-list">
                     <?php
        $sqlSelect = "SELECT * FROM product";
        $result = mysqli_query($conn, $sqlSelect) or die("Lỗi truy vấn");
        while ($row = mysqli_fetch_array($result)) {
            ?>
                    <div class="col-lg-3 col-md-3 col-sm-6 col-xs-6 product-wrapper zoomIn wow" style="visibility: visible; animation-name: zoomIn;">
                        <div class="product-block product-resize fixheight" style="height: 299px;">
                            <div class="product-image image-resize" style="height: 212px;">
                                <!-- <div class="sold-out">Hot</div> -->
                                <a href="">
                                    <img class="first-img" src="../public/Uploads/product/<?php echo $row["image"] ?>" alt="">
                                </a>
                                <div class="product-actions hidden-xs">
                                     <div class="btn-add-to-cart" onclick="addCart(<?php echo $row['ProductID']?>)">
                                        <a href="javascript:void(0);">
                                            <i class="fa fa-shopping-bag" aria-hidden="true"></i>
                                        </a>
                                    </div>
                                    <div class="btn_quickview">
                                        <a class="quickview" href="index.php?view=detail&id=<?php echo $row["ProductID"] ?>"><i class="fa fa-eye"></i></a>
                                    </div>
                                </div>
                            </div>
                            <div class="product-info text-center m-t-xxs-20">
                                <h3 class="pro-name">
                                    <a href="" title=""><?php echo $row["ProductName"];?></a>
                                </h3>
                                <div class="pro-prices">
                                    <span class="pro-price"><?php $price = (int)$row["Price"] ; echo number_format($price,0,",","."); ?>&nbsp;₫
                                    </span>
                                </div>
                            </div>
                        </div>
                    </div> <?php }?>
                </div>
            </div> 
    </div>
</div>




