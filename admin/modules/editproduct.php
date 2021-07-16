<?php
include_once 'function.php';
$sqlSelectCat = "Select * from subcategory";
$resultCat = mysqli_query($conn, $sqlSelectCat) or die("Lỗi truy vấn");
$proname = "";
$scatid = "";
$price = 0;
$image = "";
$tonkho = 0;
$mota = "";
$status = 0;
$imgOld ="";
if(isset($_GET["module"])&&isset($_GET["id"])){
    $id = $_GET["id"];
    $sqlGetid = "SELECT * FROM product where ProductID = ".$id;
    $result = mysqli_query($conn,$sqlGetid);
    $row = mysqli_fetch_row($result);
 
//echo '<prE>';
//print_r($row);die;
   
$proname = $row[2];
$scatid = $row[1];
$image = $row[3];
$mota = $row[4];
$tonkho = $row[5];
$price = $row[6];
$status = $row[7];

$imgOld.=$row[3];

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
    $data["Status"] = ($data["Status"])?$data["Status"]:0;
    
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

    $condition = "WHERE ProductID=".$_GET["id"];
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
                            <label for="ProductName">Tên sản phẩm</label>
                            <input id="ProductName"  type="text" name="ProductName" value="<?php echo $proname; ?>"  placeholder="Nhập tên sản phẩm" class="form-control">
                        </div>
                        <div class="form-group">
                            <label for="SubCategoryID">Loại sản phẩm</label>
                            <select name="SubCategoryID" id="SubCategoryID" class="form-control">
                                <option value="">--Chọn loại sản phẩm</option>
                                <?php while ($rowcat = mysqli_fetch_assoc($resultCat)){
                                    $selected = ""; 
                                        if ($scatid == $rowcat["SubCategoryID"]) {
                                            $selected = "selected";
                                        }
                                    ?>
                                <option <?php echo $selected; ?> value="<?php echo $rowcat["SubCategoryID"]?>"><?php echo  $rowcat["SubName"]?></option>
                                <?php }?>
                            </select>
                        </div>
                        <div class="form-group">
                            <label for="Price">Giá sản phẩm</label>
                            <input id="Price"  type="text" name="Price" value="<?php echo $price; ?>" placeholder="Nhập giá" class="form-control">
                        </div>
                        <div class="form-group">
                            <label for="image">Ảnh sản phẩm</label>
                            <img src="../public/Uploads/product/<?php echo $image; ?>" width="150px" alt="">
                            <input id="image"  type="file" name="image"  placeholder="" class="form-control">
                        </div>
                         <div class="form-group">
                            <label for="TonKho">Tồn kho</label>
                            <input id="TonKho"  type="text" name="TonKho" value="<?php echo $tonkho; ?>" placeholder="Nhập tồn kho" class="form-control">
                        </div>
                        <div class="form-group">
                            <label for="Mota">Mô tả</label>
                            <textarea cols="60" name="Mota" id="Mota" ><?php echo $mota; ?></textarea>
                            <script>    CKEDITOR.replace( 'Mota' );</script>
                        </div>

                         <div class="form-group">
                                <label class="be-checkbox custom-control custom-checkbox">
                                    <input type="checkbox" class="custom-control-input" name="Status" id="Status" value="1" <?php echo ($status)?"checked":""?>><span class="custom-control-label">Trạng thái</span>
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
