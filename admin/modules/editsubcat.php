<?php
include 'function.php';
$catname = "";
$status = 0;
if(isset($_GET["module"])&&isset($_GET["id"])&& isset($_GET["sid"])){
    $id = $_GET["id"];
    $sqlGetid = "SELECT * FROM subcategory where SubCategoryID = ".$id;
    $result = mysqli_query($conn,$sqlGetid);
    $row = mysqli_fetch_row($result);
 
//  echo '<prE>';
// print_r($row);die;
   
    
    $catname = $row[1];
    $status = $row[3];
}
    
if (isset($_POST["update"])) {
    $catName = $_POST["CategoryName"];
    $status = ($_POST["Status"])?$_POST["Status"]:0;
    $sqlUpdate = "UPDATE subcategory SET SubName = '$catName',`Status`= b'$status' WHERE SubCategoryID =".$_GET["id"];
    
    // $table = "category";
    // $data = $_POST;
    // $condition = "WHERE CategoryID=".$_GET["id"];
    // $sqlUpdate = update($table,$data,$condition);
    
    mysqli_query($conn, $sqlUpdate) or die("Lỗi thêm mới");
    header('Location: index.php?module=listcategory');
}   
?>
<div class="container-fluid  dashboard-content">
    <div class="row">
        <!-- ============================================================== -->
        <!-- basic form -->
        <!-- ============================================================== -->
        <div class="col-xl-6 col-lg-6 col-md-12 col-sm-12 col-12">
            <div class="card">
                <h5 class="card-header">Cập nhật danh mục</h5>
                <div class="card-body">
                    <form action="" method="post" id="basicform" data-parsley-validate="">
                        <div class="form-group">
                            <label for="CategoryName    ">Tên danh mục</label>
                            <input id="CategoryName"  type="text" name="CategoryName"  value="<?php echo $catname?>" placeholder="Nhập tên danh mục" class="form-control">
                        </div>

                        <div class="row">
                            <div class="col-sm-6 pb-2 pb-sm-4 pb-lg-0 pr-0">
                                <label class="be-checkbox custom-control custom-checkbox">
                                    <input type="checkbox" class="custom-control-input" name="Status" id="Status" value="1" <?php echo ($status)?"checked":""?> ><span class="custom-control-label">Trạng thái</span>
                                </label>
                            </div>
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
