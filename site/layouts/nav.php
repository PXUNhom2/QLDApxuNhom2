  <!-- Main menu -->
                <nav class="navbar-main">
                    <div id="mb_mainnav">
                        <div class="container">
                            <div class="row">
                                <div class="col-md-3 col-sm-12 col-xs-12 vertical_menu">
                                    <div id="mb_verticle_menu" class="menu-quick-select">
                                        <div class="title_block">
                                            <span>Danh mục sản phẩm</span>
                                        </div>
                                        <div id="menuverti" class="block_content navbar_menuvertical">
                                            <ul class='nav_verticalmenu'>
                                             <?php if(!isset($_GET["view"])||$_GET["view"]!='shoppingcart'&&$_GET["view"]!='checkout'&&$_GET["view"]!='dangky'&&$_GET["view"]!='dangnhap'){?>
                                                <?php 
                                                    $sqlSelect = "SELECT * FROM category";
                                $result = mysqli_query($conn, $sqlSelect) or die("Lỗi truy vấn");
                                                    while($row = mysqli_fetch_array($result)){
                                                ?>
                                            <li class="has-child level0">
                                                <a class='' href="#"><img class='' src='' alt=''> <span><?php echo $row["CategoryName"]?></span></a>
                                                <ul class="level1">
                                                    <?php 
                                                    $sqlssSelect = "SELECT * FROM subcategory WHERE CategoryID=".$row["CategoryID"];
                                $resultss = mysqli_query($conn, $sqlssSelect) or die("Lỗi truy vấn");
                                                    while($rowss = mysqli_fetch_array($resultss)){
                                                ?>
                                                    <li class="level1"><a class="" href="index.php?view=listproduct&id=<?php echo $rowss["SubCategoryID"]?>"><span><?php echo $rowss["SubName"]?></span></a></li>
                                                <?php }?>
                                                </ul>
                                            </li>
                                           
                                         
                                            <?php }?> <?php }?>
                                            </ul class='nav_verticalmenu'>
                                        </div>
                                    </div>
                                </div>
                                <nav class="col-md-9 col-sm-12 col-xs-12 p-l-0">
                                    <ul class='menu nav navbar-nav menu_hori'>
                                    <li class="level0"><a class='' href='index.php'><span>Trang chủ</span></a></li>
                                    <li class="level0"><a class='' href='index.php?view=gioithieu'><span>Giới thiệu</span></a></li>
                                    <li class="level0"><a class='' href='index.php?view=listsanpham'><span>Sản phẩm</span></a></li>
                                    <li class="level0"><a class='' href='index.php?view=lienhe'><span>Liên hệ</span></a></li>
                                    </ul class='menu nav navbar-nav menu_hori'>
                                </nav>
                            </div>
                        </div>
                    </div>
                </nav>
                <!-- End main menu -->


                <script type="text/javascript">
                    $(document).ready(function () {
                        var str = location.href.toLowerCase();
                        $("ul.menu li a").each(function () {
                            if (str.indexOf(this.href.toLowerCase()) >= 0) {
                                $("ul.menu li").removeClass("active");
                                $(this).parent().addClass("active");
                            }
                        });
                    });
                </script>
                <!--Template--
                    --End-->
            </div>
            <script type="text/javascript">
        $(".menu-quick-select ul").hide();
        $(".menu-quick-select").hover(function () { $(".menu-quick-select ul").show(); }, function () { $(".menu-quick-select ul").hide(); });
    </script>