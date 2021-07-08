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
                                             
                                            <li class="has-child level0">
                                            	<a class='' href='#'><img class='' src='' alt=''> <span>Cate 1</span></a>
                                                <ul class="level1">
                                                    <li class="level1"><a class="" href=""><span>Ngao</span></a></li>
                                                </ul>
                                            </li>
                                            <li class="level0">
                                                <a class='' href='#'><img class='' src='' alt=''> <span>Cate 1</span></a>
                                            </li>
                                            <li class="level0">
                                                <a class='' href='#'><img class='' src='' alt=''> <span>Cate 1</span></a>
                                            </li>
                                            <li class="level0">
                                                <a class='' href='#'><img class='' src='' alt=''> <span>Cate 1</span></a>
                                            </li>
                                            <li class="level0">
                                                <a class='' href='#'><img class='' src='' alt=''> <span>Cate 1</span></a>
                                            </li>
                                            <li class="level0">
                                                <a class='' href='#'><img class='' src='' alt=''> <span>Cate 1</span></a>
                                            </li>
                                            <li class="level0">
                                                <a class='' href='#'><img class='' src='' alt=''> <span>Cate 1</span></a>
                                            </li>
                                            <li class="level0">
                                                <a class='' href='#'><img class='' src='' alt=''> <span>Cate 1</span></a>
                                            </li>
                                            </ul class='nav_verticalmenu'>
                                        </div>
                                    </div>
                                </div>
                                <nav class="col-md-9 col-sm-12 col-xs-12 p-l-0">
                                    <ul class='menu nav navbar-nav menu_hori'>
                                    <li class="level0"><a class='' href='trang-chu.html'><span>Trang chủ</span></a></li>
                                    <li class="level0"><a class='' href='gioi-thieu.html'><span>Giới thiệu</span></a></li>
                                    <li class="level0"><a class='' href='san-pham.html'><span>Sản phẩm</span></a></li>
                                    <li class="level0"><a class='' href='lien-he.html'><span>Liên hệ</span></a></li>
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