
    <div class="col-md-3">
        <div class="menu-account">
            <h3>
                <span>
                Tài khoản
                </span>
            </h3>
            <ul>
                <li><a href="index.php?view=dangnhap"><i class="fa fa-sign-in"></i> Đăng nhập</a></li>
                <li><a href="index.php?view=dangky"><i class="fa fa-key"></i> Đăng ký</a></li>
                <li><a href="index.php?view=quenpass"><i class="fa fa-key"></i> Quên mật khẩu</a></li>
            </ul>
        </div>
    </div>
    <div class="col-md-9">
        <div class="breadcrumb clearfix">
            <ul>
                <li>
                    <a title="Đến trang chủ" href="/" itemprop="url"><span itemprop="title">Trang chủ</span></a>
                </li>
                <li class="icon-li"><strong>Đăng nhập</strong> </li>
            </ul>
        </div>
        <script type="text/javascript">
            $(".link-site-more").hover(function () { $(this).find(".s-c-n").show(); }, function () { $(this).find(".s-c-n").hide(); });
        </script>
        <script src="/app/services/accountServices.js"></script>
        <script src="/app/controllers/accountController.js"></script>
        <div class="login-content clearfix ng-scope" ng-controller="accountController" ng-init="initController()">
            <h1 class="title"><span>Đăng nhập hệ thống</span></h1>
          
            <div class="col-md-6 col-md-offset-3 col-xs-12 col-sm-12 col-xs-offset-0 col-sm-offset-0">
                <form class="form-horizontal" method="post">
                    <div class="form-group">
                        <label for="account" class="col-sm-4 control-label">Tài khoản</label>
                        <div class="col-sm-8">
                            <input type="text" class="form-control"  required="required" name="account" id="account">
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="Password" class="col-sm-4 control-label">Mật khẩu</label>
                        <div class="col-sm-8">
                            <input type="password" class="form-control ng-pristine ng-untouched ng-invalid ng-invalid-required" ng-model="Password" name="password" ng-required="true" required="required">
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="col-sm-offset-4 col-sm-8">
                              <div style = "font-size:11px; color:#cc0000; margin-top:10px"></div>
                            <button type="submit" class="btn btn-primary" name="login" id="login">Đăng nhập</button>
                            <a href="">Quên mật khẩu?</a>
                        </div>
                    </div>
                </form>
            </div>
        </div>
    </div>

    <script type="text/javascript">
        $(".menu-quick-select ul").hide();
        $(".menu-quick-select").hover(function () { $(".menu-quick-select ul").show(); }, function () { $(".menu-quick-select ul").hide(); });
    </script>
