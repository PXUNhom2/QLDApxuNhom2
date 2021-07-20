

<?php
include_once 'function.php';
$sqlSelectCat = "Select * from subcategory";
$resultCat = mysqli_query($conn, $sqlSelectCat) or die("Lỗi truy vấn");

if (isset($_POST["addnew"])) {
    $table = 'product';
    $data = $_POST;
    $data["Status"] = ($data["Status"])?$data["Status"]:0;
    
$fileName="";
 $path = "../public/Uploads/product/";
if(isset($_FILES["image"])){
   
 if ($_FILES["image"]["type"]=="image/jpeg"||$_FILES["image"]["type"]=="image/jpg"||$_FILES["image"]["type"]=="image/png"||$_FILES["image"]["type"]=="image/gif") {
  if ($_FILES["image"]["size"]<120000000) {
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
    }
    $data["image"] =$fileName; 
    $sqlInsert = save($table,$data);
    // echo "<prE>";
    //  print_r($sqlInsert);die;
    mysqli_query($conn, $sqlInsert) or die("Lỗi thêm mới".$sqlInsert);
    header('Location: index.php?module=listproduct');
    
    // $data["image"] =$fileName;
   
    // $sudcatid = $_POST["SubCategoryID"];
    // $proname = $_POST["ProductName"];
    // $imagepro =  $data["image"];
    // $mota = $_POST["Mota"];
    // $price = $_POST["Price"];
    // $tonkho = $_POST["TonKho"];
    // $status = ($_POST["Status"]) ? $_POST["Status"] : 0;
    

    // $sqlInsert = "INSERT INTO `product`( `SubCategoryID`, `ProductName`, `image`, `Mota`, `TonKho`, `Price`, `Status`) 
    // VALUES ('$sudcatid','$proname','$imagepro','$mota','$tonkho','$price','$status')";
    // echo "<prE>";
    // print_r($sqlInsert);die;
    // mysqli_query($conn, $sqlInsert) or die("Lỗi thêm mới".$sqlInsert);
    // header('Location: index.php?module=listproduct');
}
?>
<div class="container-fluid  dashboard-content">
    <div class="row">
        <!-- ============================================================== -->
        <!-- basic form -->
        <!-- ============================================================== -->
        <div class="col-xl-8 col-lg-8 col-md-12 col-sm-12 col-12">
            <div class="card">
                <h5 class="card-header">Thêm sản phẩm</h5>
                <div class="card-body">
                    <form action="" method="post" id="basicform" data-parsley-validate="" enctype="multipart/form-data">
                        <div class="form-group">
                            <label for="ProductName">Tên sản phẩm</label>
                            <input id="ProductName"  type="text" name="ProductName"  placeholder="Nhập tên sản phẩm" class="form-control">
                        </div>
                        <div class="form-group">
                            <label for="SubCategoryID">Loại sản phẩm</label>
                            <select name="SubCategoryID" id="SubCategoryID" class="form-control">
                                <option value="">---Chọn loại sản phẩm---</option>
                                <?php while ($rowcat = mysqli_fetch_assoc($resultCat)){?>
                                <option value="<?php echo $rowcat["SubCategoryID"]?>"><?php echo  $rowcat["SubName"]?></option>
                                <?php }?>
                            </select>
                        </div>
                       
                        <div class="form-group">
                            <label for="image">Ảnh sản phẩm</label>
                            <input id="image"  type="file" name="image"  placeholder="" class="form-control">
                        </div>
                         <div class="form-group">
                            <label for="Price">Giá sản phẩm</label>
                            <input id="Price"  type="text" name="Price"  placeholder="Nhập giá" class="form-control">
                        </div>
                         <div class="form-group">
                            <label for="TonKho">Tồn kho</label>
                            <input id="TonKho"  type="text" name="TonKho"  placeholder="Nhập tồn kho" class="form-control">
                        </div>
                        <div class="form-group">
                            <label for="Mota">Mô tả</label>
                            <textarea cols="60" name="Mota" id="Mota"></textarea>
                            <script>    CKEDITOR.replace( 'Mota' );</script>
                        </div>
                         <div class="form-group">
                                <label class="be-checkbox custom-control custom-checkbox">
                                    <input type="checkbox" class="custom-control-input" name="Status" id="Status" value="1"><span class="custom-control-label">Trạng thái</span>
                                </label>
                            </div>
                        <div class="row">
                           
                            <div class="col-sm-6 pl-0">
                                <p class="text-right">
                                    <button type="submit" class="btn btn-space btn-primary" name="addnew">Thêm mới</button>

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

