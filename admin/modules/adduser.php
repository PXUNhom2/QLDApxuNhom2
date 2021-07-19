<?php
include 'function.php';
if (isset($_POST["addnew"])) {
    $username = $_POST["Username"];
    $password = $_POST["Password"];
    $fullname = $_POST["Fullname"];
    $email = $_POST["Email"]; 
    $phone = $_POST["Phone"];
    $address = $_POST["Address"];
    date_default_timezone_set('Asia/Ho_Chi_Minh');
    $createdate = date('Y-m-d H:i:s');
   

    $sqlInsert = "INSERT INTO `member`(`Username`, `Password`, `Fullname`, `Email`, `Phone`, `Address`, `CreateDate`, `RoleID`, `Status`) VALUES ('$username','$password','$fullname','$email','$phone','$address','$createdate',2,1)";
 
    mysqli_query($conn, $sqlInsert) or die("Lỗi thêm mới".$sqlInsert);
    header('Location: index.php?module=listuser');
}
?>
<div class="container-fluid  dashboard-content">
    <div class="row">
<form class="splash-container" method="post" style=" max-width: 700px;">
        <div class="card">
            <div class="card-header">
                <h3 class="mb-1">Đăng ký User</h3>
            </div>
            <div class="card-body">
                <div class="form-group">
                    <input class="form-control form-control-lg" type="text" name="Username" required="" placeholder="Tên đăng nhập" autocomplete="off">
                </div>
                <div class="form-group">
                    <input class="form-control form-control-lg" id="pass1" name="Password" type="password" required="" placeholder="Nhập mật khẩu">
                </div>             
               <h4 style="color: #0f9ed8;border-bottom: 1px dotted #333;padding-bottom: 5px; margin-bottom: 10px;">Thông tin cá nhân</h4>
               <div class="form-group">
                    <input class="form-control form-control-lg" type="text" required="" placeholder="Họ tên đầy đủ" autocomplete="off" name="Fullname" id="Fullname">
                </div>
                <div class="form-group">
                    <input class="form-control form-control-lg" type="email" required="" placeholder="Nhập địa chỉ email" autocomplete="off" name="Email" id="Email">
                </div>
                <div class="form-group">
                    <input class="form-control form-control-lg" type="text"  required="" placeholder="Địa chỉ" autocomplete="off" name="Address" id="Address"> 
                </div>
                <div class="form-group">
                    <input class="form-control form-control-lg" type="text"  required="" placeholder="Điện thoại" autocomplete="off" name="Phone" id="Phone">
                </div>
                <div class="form-group pt-2">
                    <button class="btn btn-block btn-primary" name="addnew" type="submit">Đăng ký</button>
                </div>
        </div>
    </form>
</div>
</div>