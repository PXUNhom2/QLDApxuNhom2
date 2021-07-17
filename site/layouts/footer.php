 <!--footer thôn tin công ty liên hệ-->
            <div class="footer">
                
                <script src="../public/app/services/moduleServices.js"></script>
                <script src="../public/app/controllers/moduleController.js"></script>
                <footer class="footer-content">
                    <div class="footer_top">
                        <div class="container">
                            <div class="footer_top_wrap">
                                <div class="row">
                                    <div class="col-md-3 col-sm-6 col-xs-12">
                                        <!-- footer col 1 -->
                                        <div class="footer_block">
                                            <h4 class="footer_block_title">
                                                Về ch&#250;ng t&#244;i
                                            </h4>
                                            <div class="block_content">
                                                <ul class="list_group">
                                                    <li class="item">
                                                        <a href="gioi-thieu.html">
                                                        Giới thiệu
                                                        </a>
                                                    </li>
                                                    <li class="item">
                                                        <a href="content/giao-hang-doi-tra.html">
                                                        Giao h&#224;ng - Đổi trả
                                                        </a>
                                                    </li>
                                                    <li class="item">
                                                        <a href="content/chinh-sach-bao-mat.html">
                                                        Ch&#237;nh s&#225;ch bảo mật
                                                        </a>
                                                    </li>
                                                    <li class="item">
                                                        <a href="lien-he.html">
                                                        Li&#234;n hệ
                                                        </a>
                                                    </li>
                                                </ul>
                                            </div>
                                        </div>
                                        <!-- End footer col 1 -->
                                    </div>
                                    <div class="col-md-3 col-sm-6 col-xs-12">
                                        <!-- footer col 1 -->
                                        <div class="footer_block">
                                            <h4 class="footer_block_title">
                                                Trợ gi&#250;p
                                            </h4>
                                            <div class="block_content">
                                                <ul class="list_group">
                                                    <li class="item">
                                                        <a href="content/huong-dan-mua-hang.html">
                                                        Hướng dẫn mua h&#224;ng
                                                        </a>
                                                    </li>
                                                    <li class="item">
                                                        <a href="content/huong-dan-thanh-toan.html">
                                                        Hướng dẫn thanh to&#225;n
                                                        </a>
                                                    </li>
                                                    <li class="item">
                                                        <a href="content/tai-khoan-giao-dich.html">
                                                        T&#224;i khoản giao dịch
                                                        </a>
                                                    </li>
                                                </ul>
                                            </div>
                                        </div>
                                        <!-- End footer col 1 -->
                                    </div>
                                    <div class="col-md-3 col-sm-6 col-xs-12">
                                        <!-- footer col 3 -->
                                        <div class="footer_block">
                                            <h4 class="footer_block_title">
                                                Đăng ký nhận bản tin
                                            </h4>
                                            <div class="block_content" ng-controller="moduleController" ng-init="initController()">
                                                <div class="des_newsletter_form">
                                                    Đăng Ký Thành Viên Để Nhận Bản Tin Mỗi Ngày:
                                                </div>
                                                <form id="newsletter_form" ng-submit="registerNewsletter()" class="m-b-20 contact-form">
                                                    <div class="newsletter_wrap">
                                                        <input ng-model="newsletter.Email" required="" id="contact_email" autocomplete="off" type="email">
                                                        <label>Email của bạn </label>
                                                        <button class="btn-newsletter" type="submit">
                                                        <span><i class="fa fa-paper-plane-o"></i></span>
                                                        </button>
                                                    </div>
                                                </form>
                                            </div>
                                        </div>
                                        <!-- End footer col 3 -->
                                    </div>
                                    <div class="col-md-3 col-sm-6 col-xs-12">
                                        <!-- footer col 4 -->
                                        <div class="footer_block">
                                            <h4 class="footer_block_title">
                                                Theo dõi trên Fanpage
                                            </h4>
                                            <div class="block_content">
                                                <div class="fb-page" data-small-header="true" data-href="#" data-tabs="message" data-adapt-container-width="true" data-hide-cover="false" data-show-facepile="true"></div>
                                            </div>
                                        </div>
                                        <!-- End footer col 4 -->
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="footer_bottom">
                        <div class="container">
                            <div class="footer_bottom_wrap">
                                <div class="row">
                                    <div class="col-lg-7">
                                        <div class="footer_address">
                                            <p><span>LOGO</span></p>
                                            <p><span>Địa chỉ: ...</span></p>
                                            <p><span>Số điện thoại: ....</span></p>
                                            <p><span>Số di động: ....</span></p>
                                            <p><span>Email: ...</span></p>
                                        </div>
                                    </div>
                                    <div class="col-lg-5 text-right text-center-xs">
                                        <div class="copy_right">
                                            <p>
                                                &copy; 2021.
                                            </p>
                                        </div>
                                        <div class="social_footer">
                                            <ul>
                                                <li><a><span><i class="fa fa-facebook"></i></span></a></li>
                                                <li><a><span><i class="fa fa-twitter"></i></span></a></li>
                                                <li><a><span><i class="fa fa-google-plus"></i></span></a></li>
                                                <li><a><span><i class="fa fa-youtube"></i></span></a></li>
                                            </ul>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </footer>      
            </div>
        <a href="javascript:void(0);" class="back-to-top"><span>Top</span></a>
    </body>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
      <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
      <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js" integrity="sha384-OgVRvuATP1z7JjHLkuOU7Xw704+h835Lr+6QL9UvYjZE3Ipu6Tp75j7Bh/kR0JKI" crossorigin="anonymous"></script>
</html>
<script type="text/javascript">
    $(".header-content").css({ "background": '' });
    $("html").addClass('');
</script>