
<?php 
ob_start();
session_start();
$error ="";
include ("../config/connection.php");
if(isset($_POST["login"])){

        // echo '<pre>';
        // print_r($_POST);die;
        // 
   $username = $_POST["username"];
   $password = $_POST["password"];

   if (isset($_POST["remember"])) {
       setcookie("username",$username);
       setcookie("password",$password);
   }

   
   $sqlLogin = "SELECT * FROM `member` WHERE `Username` = '$username' AND `Password` = '$password'";
   $result = mysqli_query($conn,$sqlLogin);
   $row = mysqli_fetch_row($result);

         // if (count($row)){
         //     $_SESSION["login"]= $row;
         //     header("location: index.php");  
         // }
   $count = mysqli_num_rows($result);
   
   if($count == 1) {

    $_SESSION["login"]= $row;
    header("location: index.php");  
}else {
   $error = "Tài khoản hoặc mật khẩu không đúng";
}
}

$username="";
$password="";
$check = false;
if (isset($_COOKIE["username"])&&isset($_COOKIE["password"])) {
   $username = $_COOKIE["username"];
   $password = $_COOKIE["password"];
   $chek = true;
}
?>
<!doctype html>
<html lang="en">

<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>Login</title>
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="assets/vendor/bootstrap/css/bootstrap.min.css">
    <link href="assets/vendor/fonts/circular-std/style.css" rel="stylesheet">
    <link rel="stylesheet" href="assets/libs/css/style.css">
    <link rel="stylesheet" href="assets/vendor/fonts/fontawesome/css/fontawesome-all.css">
    <style>
        html,
        body {
            height: 100%;
        }

        body {
            display: -ms-flexbox;
            display: flex;
            -ms-flex-align: center;
            align-items: center;
            padding-top: 40px;
            padding-bottom: 40px;
        }
    </style>
</head>

<body>
    <!-- ============================================================== -->
    <!-- login page  -->
    <!-- ============================================================== -->
    <div class="splash-container">
        <div class="card ">
            <div class="card-header text-center"><a href="#"><img class="logo-img" src="assets/images/logo.png" alt="logo"></a><span class="splash-description">Vui lòng nhập thông tin người dùng</span></div>
            <div class="card-body">

                <form method="post">
                    <div class="form-group">
                        <input class="form-control form-control-lg" id="username" name="username" type="text" placeholder="Nhập tên người dùng" autocomplete="off" value="<?php echo $username; ?>">
                    </div>
                    <div class="form-group">
                        <input class="form-control form-control-lg" id="password" name="password" type="password" placeholder="Nhập mật khẩu" value="<?php echo $password; ?>">
                    </div>
                    <div style = "font-size:11px; color:#cc0000; margin-top:10px"><?php echo $error; ?></div>

                    <div class="form-group">
                        <label class="custom-control custom-checkbox">
                            <input class="custom-control-input" type="checkbox" name="remember" value="1" <?php echo ($check)?"checked":""; ?>><span class="custom-control-label" >Nhớ mật khẩu</span>
                        </label>
                    </div>

                    <button type="submit" name="login" class="btn btn-primary btn-lg btn-block">Đăng nhập</button>
                </form>
            </div>
            <!-- <div class="card-footer bg-white p-0  ">
                <div class="card-footer-item card-footer-item-bordered">
                    <a href="signup.php" class="footer-link">Create An Account</a></div>
                <div class="card-footer-item card-footer-item-bordered">
                    <a href="#" class="footer-link">Forgot Password</a>
                </div>
            </div> -->
        </div>
    </div>
    
    <!-- ============================================================== -->
    <!-- end login page  -->
    <!-- ============================================================== -->
    <!-- Optional JavaScript -->
    <script src="assets/vendor/jquery/jquery-3.3.1.min.js"></script>
    <script src="assets/vendor/bootstrap/js/bootstrap.bundle.js"></script>
</body>

</html>