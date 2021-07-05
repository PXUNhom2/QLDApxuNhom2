<?php 
    if(isset($_GET["id"])){
        $sqlSelect = "SELECT * FROM product WHERE pro_id=".$_GET["id"];
        $result = mysqli_query($conn,$sqlSelect) or die("Lỗi truy cập".$sqlSelect);
        $rowpro = mysqli_fetch_row($result);
        // echo "<prE>";
        // print_r($rowpro);die;
        
    }

  ?>

<div class="col-md-9">
    <script type="text/javascript">
        $(".link-site-more").hover(function () { $(this).find(".s-c-n").show(); }, function () { $(this).find(".s-c-n").hide(); });
    </script>
    <link href="../libs/Scripts/smoothproducts/smoothproducts.css" rel="stylesheet" type="text/css">
    <script src="../libs/Scripts/smoothproducts/smoothproducts.js" type="text/javascript"></script>
    <script src="../public/app/services/productServices.js"></script>
    <script src="../public/app/controllers/productController.js"></script>
   
    <div class="product-detail clearfix relative ng-scope" ng-controller="productController" ng-init="initController(46444)">
        <!--Begin-->
  <div class="clearfix">
            <div class="row">
                <div class="col-md-6 col-sm-6 col-xs-12 product-image clearfix">
                
                    <div class="sp-wrap sp-non-touch" style="display: inline-block;">
               
                        <div class="sp-large">
                            <a href="" ng-repeat="item in ProductImages" class="ng-scope .sp-current-big">
                                <img src="../public/Uploads/product/<?php echo $rowpro[4] ?>">
                            </a>
                        </div>
                    </div>
                </div>

                <div class="col-md-6 col-sm-6 col-xs-12 clearfix">
                    <h1 class="name m-b-5 ng-binding"><?php echo $rowpro[1]; ?></h1>
               
                    <div class="product_price p-b-10 ng-scope">
                  
                        <div class="ng-scope"><ins class="m-b-5 ng-binding" style="    font-size: 24px;font-weight: 300;color: #ff7200;text-decoration: none; display: block;"><?php echo number_format((int)$rowpro[3],0,",","."); ?>đ</ins>
                        </div>
            
                    </div>
       
                    <!-- <div class="product-code p-b-10 ng-binding">Mã SP: SKU-0</div>
                    <div class="des p-b-10 ng-binding">
                        <p>xxxxxxxxxxxxxxxxxxxxxxxxxx</p>
                    </div> -->

                    <div id="add-item-form" class="variants clearfix m-b-10 p-b-10">
              
                        <div class="clearfix product_quantity m-t-10 m-b-20">
                            <label class="label_quantity m-b-5" style="display: block;">Số lượng</label>

                            <input name="quantity" class="quantity text-center ng-pristine ng-untouched ng-valid ng-valid-min" min="1" value="1" type="number"  id="num_<?php echo $rowpro[0];?>">

                        </div>
         
                        <div class="button clearfix ng-scope">
                            <div class="col-lg-6 col-sm-6 col-xs-6 col-xxs-12 p-l-0 p-r-xxs-0 m-b-10">
                                <button id="add-to-cart" style="border: 1px solid #0f9ed8;background: #ffffff;color: #0f9ed8;font-size: 16px;font-weight: 600;height: 45px;line-height: 45px; width: 100%;text-transform: uppercase;" onclick="addCart('<?php echo $rowpro[0]?>')">
                                    <i class="glyphicon glyphicon-shopping-cart"></i> Thêm giỏ hàng</button>
                            </div>
                            <div class="col-lg-6 col-sm-6 col-xs-6 col-xxs-12 p-r-0 p-l-xxs-0 m-b-10">
                                <button id="buy-now" ng-click="addToCardBuy()" style="    background: #0f9ed8;border: 1px solid #0f9ed8;color: #ffffff;font-size: 16px;text-transform: uppercase;height: 45px;line-height: 45px;width: 100%;"><i class="glyphicon glyphicon-ok"></i> Mua ngay</button>
                         </div>
                        </div>
                    
                    </div>
                </div>
            </div>
        </div>
        <div role="tabpanel" class="product_description product-tabs panel-group">
            <ul class="nav nav-tabs" role="tablist">
     
                <li role="presentation" class="ng-scope active">
                    <a data-toggle="tab" href="#tab1" role="tab" class="ng-binding">Chi tiết sản phẩm</a>
                </li>
          
            </ul>
            <div class="tab-content">
                <div class="tab-pane fade in ng-scope active" id="tab1" >
                    <div class="container-fluid rte ng-binding" ng>
                        <p>xxxxxxxxxxxxxxxxx</p>

                    </div>
                </div>
     
            </div>
        </div>
    
    </div>
</div>
<script type="text/javascript">
        $(".menu-quick-select ul").hide();
        $(".menu-quick-select").hover(function () { $(".menu-quick-select ul").show(); }, function () { $(".menu-quick-select ul").hide(); });
    </script>
