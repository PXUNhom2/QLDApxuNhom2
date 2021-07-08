<?php
include_once 'function.php';
$sqlSelectCat = "Select * from category";
$resultCat = mysqli_query($conn, $sqlSelectCat) or die("Lỗi truy vấn");
$proname = "";
$catid = "";
$price = 0;
$image = "";
$sale_off = 0;
$mota = "";
$status = 0;
$imgOld ="";
if(isset($_GET["module"])&&isset($_GET["id"])){
    $id = $_GET["id"];
    $sqlGetid = "SELECT * FROM product where pro_id = ".$id;
    $result = mysqli_query($conn,$sqlGetid);
    $row = mysqli_fetch_row($result);
 
//echo '<prE>';
//print_r($row);die;
   
$proname = $row[1];
$catid = $row[2];
$price = $row[3];
$image = $row[4];
$sale_off = $row[5];
$mota = $row[6];
$status = $row[7];

$imgOld.=$row[4];

}
    
if (isset($_POST["update"])) {
    // $ProName = $_POST["ProName"];
    // $Catid = $_POST["id"];
    // $Price = $_POST["price"];
    // $Image = $_POST["image"];
    // $Sale  = $_POST["sale_off"];
    // $Mota = $_POST["mota"];
    // $Status = $_POST["status"] ? $_POST["status"]:0;
    // $sqlUpdate = "UPDATE product SET ProName = '$ProName',id='$Catid',price='$Price',image='$Image',sale_off='$Sale',mota='$Mota',`status`='$Status' WHERE pro_id =".$_GET["id"];

     $table = 'product';
    $data = $_POST;
    $data["status"] = ($data["status"])?$data["status"]:0;
    
$fileName="";
 $path = "../public/Uploads/product/";
if(isset($_FILES["image"]["name"])){
   
 if ($_FILES["image"]["type"]=="image/jpeg"||$_FILES["image"]["type"]=="image/jpg"||$_FILES["image"]["type"]=="image/png"||$_FILES["image"]["type"]=="image/gif") {
  if ($_FILES["image"]["size"]<120000) {
                # code...
                     if ($_FILES["image"]["error"]==0) {
                        //đưa file ở đây
                       $filename = $_FILES["image"]["tmp_name"];
                       $target_file = $path.$_FILES["image"]['name'];
                      move_uploaded_file($filename, $target_file);
                      $fileName.=$_FILES["image"]['name'];
                    }else{
                         echo "Lỗi file";
                  }
                }else{
                   echo "Độ lớn file không quá  12mb!!";
                }
                
           }else{
                echo "File không đúng định dạng";
             }
             // echo "<prE>";print_r($_FILES);die;
    }else{
        $fileName = $imgOld;
    }
    $data["image"] =$fileName; 
    // Lỗi thêm mớiUPDATE product SET ProName='Phác đồ sơ sinh',id=12',price=10000',image=',sale_off=100000',mota=',status=1' WHERE pro_id=28
    $condition = "WHERE pro_id=".$_GET["id"];
    $sqlUpdate = update($table,$data,$condition);
    mysqli_query($conn, $sqlUpdate) or die("Lỗi thêm mới".$sqlUpdate);
    header('Location: index.php?module=listproduct');
}
?>
<div class="container-fluid  dashboard-content">
    <div class="row">
        <!-- ============================================================== -->
        <!-- basic form -->
        <!-- ============================================================== -->
        <div class="col-xl-6 col-lg-6 col-md-12 col-sm-12 col-12">
            <div class="card">
                <h5 class="card-header">Thêm sản phẩm</h5>
                <div class="card-body">
                    <form action="" method="post" id="basicform" data-parsley-validate="">
                        <div class="form-group">
                            <label for="ProName">Tên sản phẩm</label>
                            <input id="ProName"  type="text" name="ProName" value="<?php echo $proname; ?>"  placeholder="Nhập tên sản phẩm" class="form-control">
                        </div>
                        <div class="form-group">
                            <label for="catId">Loại sản phẩm</label>
                            <select name="id" id="id" class="form-control">
                                <option value="">--Chọn loại sản phẩm</option>
                                <?php while ($rowcat = mysqli_fetch_assoc($resultCat)){
                                    $selected = ""; 
                                        if ($catid == $rowcat["id"]) {
                                            $selected = "selected";
                                        }
                                    ?>
                                <option <?php echo $selected; ?> value="<?php echo $rowcat["id"]?>"><?php echo  $rowcat["CatName"]?></option>
                                <?php }?>
                            </select>
                        </div>
                        <div class="form-group">
                            <label for="price">Giá sản phẩm</label>
                            <input id="price"  type="text" name="price" value="<?php echo $price; ?>" placeholder="Nhập giá" class="form-control">
                        </div>
                        <div class="form-group">
                            <label for="image">Ảnh sản phẩm</label>
                            <img src="../public/Uploads/product/<?php echo $image; ?>" width="150px" alt="">
                            <input id="image"  type="file" name="image"  placeholder="" class="form-control">
                        </div>
                         <div class="form-group">
                            <label for="sale">Sale off</label>
                            <input id="sale"  type="text" name="sale_off" value="<?php echo $sale_off; ?>" placeholder="Nhập giá" class="form-control">
                        </div>
                        <div class="form-group">
                            <label for="mota">Mô tả</label>
                            <textarea cols="60" name="mota" id="mota" ><?php echo $mota; ?></textarea>
                        </div>
                         <div class="form-group">
                                <label class="be-checkbox custom-control custom-checkbox">
                                    <input type="checkbox" class="custom-control-input" name="status" id="status" value="1" <?php echo ($status)?"checked":""?>><span class="custom-control-label">Trạng thái</span>
                                </label>
                            </div>
                        <div class="row">
                           
                            <div class="col-sm-6 pl-0">
                                <p class="text-right">
                                    <button type="submit" class="btn btn-space btn-primary" name="update">Cập nhật</button>

                                </p>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </div>
        <!-- ============================================================== -->
        <!-- end basic form -->
        <!-- ============================================================== -->       
    </div>
</div>
