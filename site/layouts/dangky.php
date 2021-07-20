<?php

$passErr="";
$accErr="";
$emailErr="";
$repassErr="";
if (isset($_POST["submit"])) {
	
	$phone = $_POST["phone"];
	$address = $_POST["address"];
	date_default_timezone_set('Asia/Ho_Chi_Minh');
    $createdate = date('Y-m-d H:i:s');
  			if (isset($_POST['fullname'])) {
                $fullname = $_POST["fullname"];
            }
            //user
            if (empty($_POST["account"])) {
               $accErr = "account không có bạn ơi";
            } else {
            	 $account = $_POST["account"];
                if (!preg_match("/^[a-zA-Z ]*$/", $_POST["account"]) ){
                     $accErr = "account không hợp bạn ơi";
                } else {
                    $account = $_POST["account"];
                }
            }
            //pass
            if (empty($_POST["password"])) {
                $passErr = "Không được để pass rỗng";
            } else 
           
            {
            	$password = $_POST["password"];

                $lowercase = preg_match("#[a-z]+#",$password);
                $number = preg_match("#[0-9]+#", $_POST["password"]);

                if (!$lowercase || !$number ||  strlen($_POST["password"]) < '8') {
                    $passErr = "Pass không hợp bạn ơi";
                } else 

                {
                    $password = $_POST["password"];
                }
                }
            
             //pass
            if (empty($_POST["repassword"])) {
                $passErr = "Không được để pass rỗng";
            } else {
               $repassword = $_POST["repassword"];
                if (empty($passErr)&&($_POST["password"]!= $repassword)) {
                    $passErr = "Pass nhập lại không khớp";
                } 
            }
            //email
            if (empty($_POST["email"])) {
                 $emailErr = "Không được để email rỗng";
            } else {
                if (!filter_var($_POST["email"], FILTER_VALIDATE_EMAIL)) {
                     $emailErr = "Email không hợp bạn ơi";
                } else {
                   	$email = $_POST["email"];

                }
            }
    
    $sqlInsert = "INSERT INTO `customer`(`Username`, `Password`, `Fullname`, `Email`, `Phone`, `Address`, `CreateDate`, `Status`) VALUES ('$account','$password','$fullname','$email','$phone','$address','$createdate',1)";
    // echo "<prE>";
    // print_r($sqlInsert);die;
    mysqli_query($conn, $sqlInsert) or die("Lỗi thêm mới".$sqlInsert);
    header('Location: index.php?view=dangnhap');

}
?>

<div class="col-md-3">
	<div class="menu-account">
		<h3>
			<span>
				Tài khoản
			</span>
		</h3>
		<ul>
			<li><a href=""><i class="fa fa-sign-in"></i> Đăng nhập</a></li>
			<li><a href=""><i class="fa fa-key"></i> Đăng ký</a></li>
			<li><a href=""><i class="fa fa-key"></i> Quên mật khẩu</a></li>
		</ul>
	</div>
</div>
<div class="col-md-9">
	<div class="breadcrumb clearfix">
		<ul>
			<li itemtype="" itemscope="" class="home">
				<a title="Đến trang chủ" href="/" itemprop="url"><span itemprop="title">Trang chủ</span></a>
			</li>
			<li class="icon-li"><strong>Đăng ký tài khoản</strong> </li>
		</ul>
	</div>
	<script type="text/javascript">
		$(".link-site-more").hover(function () { $(this).find(".s-c-n").show(); }, function () { $(this).find(".s-c-n").hide(); });
	</script>
	<script src="/app/services/accountServices.js"></script>
	<script src="/app/controllers/accountController.js"></script>
	<div class="register-content clearfix ng-scope" ng-controller="accountController" ng-init="initRegisterController()">
		<h1 class="title"><span>Đăng ký tài khoản</span></h1>
		<div class="col-md-8 col-md-offset-2 col-xs-12 col-sm-12 col-xs-offset-0 col-sm-offset-0">
			<form class="form-horizontal ng-pristine ng-invalid ng-invalid-required ng-valid-email" ng-submit="register()" method="post">
				<h2><span>Thông tin tài khoản</span></h2>
				<div class="form-group">
					<label for="Code" class="col-sm-3 control-label">Tài khoản<span class="warning">(*)</span></label>
					<div class="col-sm-9">
						<input type="text" class="form-control ng-pristine ng-untouched ng-invalid ng-invalid-required" ng-model="Code" required="true" name="account" id="account">
						<span class="error"> <?php echo $accErr;?></span>
					</div>
				</div>
				
				<div class="form-group">
					<label for="Password" class="col-sm-3 control-label">Mật khẩu<span class="warning">(*)</span></label>
					<div class="col-sm-9">
						<input type="password" class="form-control ng-pristine ng-untouched ng-invalid ng-invalid-required" ng-model="Password" required="true" id="password" name="password">
						<span class="error"><?php echo $passErr;?></span>
					</div>
				</div>
				<div class="form-group">
					<label for="RePassword" class="col-sm-3 control-label">Nhập lại mật khẩu<span class="warning">(*)</span></label>
					<div class="col-sm-9">
						<input type="password" class="form-control ng-pristine ng-untouched ng-valid" ng-model="RePassword" id="repassword" name="repassword">
						<span class="error"><?php echo $repassErr;?></span>
					</div>
				</div>
				<h2>Thông tin cá nhân</h2>
				<div class="form-group">
					<label for="Name" class="col-sm-3 control-label">Họ tên<span class="warning">(*)</span></label>
					<div class="col-sm-9">
						<input type="text" class="form-control ng-pristine ng-untouched ng-invalid ng-invalid-required" ng-model="Name" required="true" id="fullname" name="fullname">
					</div>
				</div>
				<div class="form-group">
					<label for="Email" class="col-sm-3 control-label">Email<span class="warning">(*)</span></label>
					<div class="col-sm-9">
						<input type="email" class="form-control ng-pristine ng-untouched ng-valid-email ng-invalid ng-invalid-required" ng-model="Email" required="true" id="email" name="email">
												<span class="error"> <?php echo $emailErr;?></span>

					</div>
				</div>
				<div class="form-group">
					<label for="" class="col-sm-3 control-label">Điện thoại</label>
					<div class="col-sm-9">
						<input type="text" class="form-control ng-pristine ng-untouched ng-valid" ng-model="Phone" id="phone" name="phone">
					</div>
				</div>
				<div class="form-group">
					<label for="" class="col-sm-3 control-label">Địa chỉ</label>
					<div class="col-sm-9">
						<input type="text" class="form-control ng-pristine ng-untouched ng-valid" ng-model="Address" id="address" name="address">
					</div>
				</div>

				<div class="form-group">
					<div class="col-sm-offset-4 col-sm-8">
						<button type="submit" class="btn btn-primary" id="submit" name="submit">Đăng ký</button>
					</div>
				</div>
			</form>
		</div>
	</div>
</div>

<!-- <script type="text/javascript">
	$(".menu-quick-select ul").hide();
	$(".menu-quick-select").hover(function () { $(".menu-quick-select ul").show(); }, function () { $(".menu-quick-select ul").hide(); });
</script> -->