<?php
include 'function.php';
if (isset($_POST["addnew"])) {
    
    $sqlInsert = save('user', $_POST);
    // echo "<prE>";
    // print_r($sqlInsert);die;
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
                    <input class="form-control form-control-lg" type="text" name="user_name" required="" placeholder="Tên đăng nhập" autocomplete="off">
                </div>
                <div class="form-group">
                    <input class="form-control form-control-lg" id="pass1" name="password" type="password" required="" placeholder="Nhập mật khẩu">
                </div>             
               <h4 style="color: #0f9ed8;border-bottom: 1px dotted #333;padding-bottom: 5px; margin-bottom: 10px;">Thông tin cá nhân</h4>
               <div class="form-group">
                    <input class="form-control form-control-lg" type="text" required="" placeholder="Họ tên đầy đủ" autocomplete="off" name="fullname" id="fullname">
                </div>
                <div class="form-group">
                    <input class="form-control form-control-lg" type="email" name="email" required="" placeholder="Nhập địa chỉ email" autocomplete="off" name="email" id="email">
                </div>
                <div class="form-group">
                    <input class="form-control form-control-lg" type="text"  required="" placeholder="Quê quán" autocomplete="off" name="quequan" id="quequan"> 
                </div>
                <div class="form-group">
                    <input class="form-control form-control-lg" type="text"  required="" placeholder="Điện thoại" autocomplete="off" name="phone" id="phone">
                </div>
                <div class="form-group pt-2">
                    <button class="btn btn-block btn-primary" name="addnew" type="submit">Đăng ký</button>
                </div>
        </div>
    </form>
</div>
</div>