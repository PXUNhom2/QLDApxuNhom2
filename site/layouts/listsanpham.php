
        <?php require_once ("layouts/blogsidebar.php")?> 
        <div class="col-md-9">
            <div class="breadcrumb clearfix">
                <ul>
                    <li itemtype="" itemscope="" class="home">
                        <a title="Đến trang chủ" href="index.php" itemprop="url"><span itemprop="title">Trang chủ</span></a>
                    </li>
                    <li itemtype="" itemscope="" class="category17 icon-li">
                        <div class="link-site-more">
                            <a title="" href="#" itemprop="url">
                            
                            </a>
                        </div>
                    </li>
                </ul>
            </div>
            <script type="text/javascript">
                $(".link-site-more").hover(function () { $(this).find(".s-c-n").show(); }, function () { $(this).find(".s-c-n").hide(); });
            </script>

            <div class="product-content">
                
                <div class="sortPagibar m-b-15 clearfix">
                    <div class="pull-left">
                        <div class="collection_view">
                            <button type="button" title="Gird" class="change_view change_view_active" data-view="grid">
                            <span class="icon_fallback_text">
                            <span class="fa fa-th" aria-hidden="true"></span>
                            <span class="fallback-text hidden">Dạng lưới</span>
                            </span>
                            </button>
                            <button type="button" title="List" class="change_view" data-view="list">
                            <span class="icon_fallback_text">
                            <span class="fa fa-th-list" aria-hidden="true"></span>
                            <span class="fallback-text hidden">Dạng danh sách</span>
                            </span>
                            </button>
                        </div>
                    </div>
                    <div class="pull-right">
                        <div class="browse-tags">
                            <span class="sort-view">Sắp xếp:</span>
                            <span class="custom-dropdown custom-dropdown--white">
                                <select class="selectProductSort sort-by custom-dropdown__select custom-dropdown__select--white" id="lbsort" onchange="window.location.href = this.options[this.selectedIndex].value">
                                    <option selected="selected" value=" ?sort=index&amp;order =asc">Mặc định</option>
                                    <option value=" ?sort=price&amp;order =asc">Giá tăng dần</option>
                                    <option value=" ?sort=price&amp;order =desc">Giá giảm dần</option>
                                    <option value=" ?sort=name&amp;order =asc">Tên sản phẩm: A to Z</option>
                                    <option value=" ?sort=name&amp;order =desc">Tên sản phẩm: Z to A</option>
                                </select>
                            </span>
                        </div>
                    </div>
                </div>

            
                <div class="product_list grid clearfix">
                         <?php
        $sqlSelect = "SELECT * FROM product";
        $result = mysqli_query($conn, $sqlSelect) or die("Lỗi truy vấn");
        while ($row = mysqli_fetch_array($result)) {

            ?>
                    <div class="col-lg-3 col-md-4 col-sm-6 col-xs-6 product-wrapper zoomIn wow" style="visibility: visible; animation-name: zoomIn;">
                        <div class="product-block product-resize m-b-20 fixheight" style="height: 295px;">
                            <div class="product-image image-resize" style="height: 208px;">
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
                                        <a class="quickview" href="index.php?view=detail&id=<?php echo $row["ProductID"] ?>">
                                            <i class="fa fa-eye"></i>
                                        </a>
                                    </div>
                                </div>
                            </div>
                            <div class="product-info text-center m-t-xxs-20">
                                <h3 class="pro-name">
                                    <a href="" title=""><?php echo $row["ProductName"] ?></a>
                                </h3>
                                <div class="pro-prices">
                                    <span class="pro-price"><?php $price = (int)$row["Price"] ; echo number_format($price,0,",","."); ?>&nbsp;₫</span>
                                </div>
                            </div>
                        </div>
                    </div>
                    <?php } ?>
                </div>
            
            </div>
            <!--Template--
                --End-->
        </div>
        
<script type="text/javascript">
        $(".menu-quick-select ul").hide();
        $(".menu-quick-select").hover(function () { $(".menu-quick-select ul").show(); }, function () { $(".menu-quick-select ul").hide(); });
    </script>