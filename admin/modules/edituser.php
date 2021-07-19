<?php
include 'function.php';
$sqlSelectCat = "Select * from role where RoleID > 1";
$resultCat = mysqli_query($conn, $sqlSelectCat) or die("Lỗi truy vấn");
   
    $status = 0;
if(isset($_GET["module"])&&isset($_GET["id"])){
    $id = $_GET["id"];
    $sqlGetid = "SELECT * FROM member where MemberID = ".$id;
    $result = mysqli_query($conn,$sqlGetid);
    $row = mysqli_fetch_row($result);
 
//  echo '<prE>';
// print_r($row);die;
   
    $roleid = $row[8];
    $username = $row[1];
    $password = $row[2];
    $fullname = $row[3];
    $email = $row[4];
    $phone = $row[5];
    $address = $row[6];
    $status = $row[9];
}

if (isset($_POST["addnew"])) {
    $username = $_POST["Username"];
    $password = $_POST["Password"];
    $fullname = $_POST["Fullname"];
    $email = $_POST["Email"]; 
    $phone = $_POST["Phone"];
    $address = $_POST["Address"];
    $role = $_POST["RoleID"];
   $status = ($_POST["Status"])?$_POST["Status"]:0;
   

    $sqlInsert = "UPDATE `member` SET `Username`='$username',`Password`='$password',`Fullname`='$fullname',`Email`='$email',`Phone`='$phone',`Address`='$address',`RoleID`='$role',`Status`= b'$status' WHERE MemberID = ".$id;
 
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
                    <input class="form-control form-control-lg" type="text" name="Username" value="<?php echo $username; ?>" required="" placeholder="Tên đăng nhập" autocomplete="off">
                </div>
                <div class="form-group input-group mb-3">
                    <input class="form-control form-control-lg" id="ipnPassword" name="Password" type="password" value="<?php echo $password; ?>" required="" placeholder="Nhập mật khẩu">
                    <div class="input-group-append">
                             <button class="btn btn-outline-primary" type="button" id="btnPassword">
                            <span class="fas fa-eye"></span>
                            </button>
                    </div>
                </div>             
               <h4 style="color: #0f9ed8;border-bottom: 1px dotted #333;padding-bottom: 5px; margin-bottom: 10px;">Thông tin cá nhân</h4>
               <div class="form-group">
                    <input class="form-control form-control-lg" type="text" required="" value="<?php echo $fullname; ?>" placeholder="Họ tên đầy đủ" autocomplete="off" name="Fullname" id="Fullname">
                </div>
                <div class="form-group">
                    <input class="form-control form-control-lg" type="email" value="<?php echo $email; ?>" required="" placeholder="Nhập địa chỉ email" autocomplete="off" name="Email" id="Email">
                </div>
                <div class="form-group">
                    <input class="form-control form-control-lg" type="text"  required="" value="<?php echo $address; ?>" placeholder="Địa chỉ" autocomplete="off" name="Address" id="Address"> 
                </div>
                <div class="form-group">
                    <input class="form-control form-control-lg" type="text"  required="" placeholder="Điện thoại" value="<?php echo $phone; ?>" autocomplete="off" name="Phone" id="Phone">
                </div>
                <div class="form-group">
                            <label for="RoleID">Phân quyền</label>
                            <select name="RoleID" id="RoleID" class="form-control">
                                <option value="">--Chọn quyền hạn</option>
                                <?php while ($rowcat = mysqli_fetch_assoc($resultCat)){
                                    $selected = ""; 
                                        if ($roleid == $rowcat["RoleID"]) {
                                            $selected = "selected";
                                        }
                                    ?>
                                <option <?php echo $selected; ?> value="<?php echo $rowcat["RoleID"]?>"><?php echo  $rowcat["RoleName"]?>
                                </option>
                                <?php }?>
                            </select>
                        </div>
                <div class="form-group">
                                <label class="be-checkbox custom-control custom-checkbox">
                                    <input type="checkbox" class="custom-control-input" name="Status" id="Status" value="1" <?php echo ($status)?"checked":""?>>
                                    <span class="custom-control-label">Trạng thái</span>
                                </label>
                </div>
                <div class="form-group pt-2">
                    <button class="btn btn-block btn-primary" name="addnew" type="submit">Đăng ký</button>
                </div>
        </div>
    </form>
    <script>
        // step 1
const ipnElement = document.querySelector('#ipnPassword')
const btnElement = document.querySelector('#btnPassword')

// step 2
btnElement.addEventListener('click', function() {
  // step 3
  const currentType = ipnElement.getAttribute('type')
  // step 4
  ipnElement.setAttribute(
    'type',
    currentType === 'password' ? 'text' : 'password'
  )
})
    </script>
</div>
</div>