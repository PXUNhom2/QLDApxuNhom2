<?php
    if(isset($_GET["module"])&&isset($_GET["id"])){
    $id = $_GET["id"];
    $sqlGetid = "SELECT * FROM category where CategoryID = ".$id;
    $result = mysqli_query($conn,$sqlGetid);
    $rows = mysqli_fetch_row($result);
 
//  echo '<prE>';
// print_r($row);die;
   
    $subid = $rows[0];
    $catname = $rows[1];
    $status = $rows[2];
}
?>
<div class="container-fluid  dashboard-content">
    <div class="row">
        <!-- ============================================================== -->
        <!-- basic table  -->
        <!-- ============================================================== -->
        <div class="col-xl-12 col-lg-12 col-md-12 col-sm-12 col-12">


            <button type="button" class="btn btn-primary" style="margin-bottom: 10px;">
                <a class="" href="index.php?module=addsubcate&id=<?php echo $subid?>" style="color: white;">Thêm mới</a>
            </button>


            <div class="card">
                <h5 class="card-header">Danh sách danh mục phụ của <?php echo $catname?>

                </h5>
                <div class="card-body">
                    <div class="table-responsive">
                        <table class="table table-striped table-bordered first">
                            <thead>
                                <tr>
                                    <th>#</th>
                                    <th>Tên danh mục phụ</th>
                                    <th>Trạng thái</th>
                                    <th></th>
                                    <th></th>
                                </tr>
                            </thead>
                            <tbody>
                                <?php
                                $sqlSelect = "SELECT * FROM subcategory WHERE CategoryID =".$_GET["id"];
                                $result = mysqli_query($conn, $sqlSelect) or die("Lỗi truy vấn");
                                if (mysqli_num_rows($result) > 0) {
                                    $count = 0;
                                    while ($row = mysqli_fetch_assoc($result)) {
                                        $count++;
                                    ?>
                                    <tr>
                                        <td><?php echo $count?></td>
                                        <td><?php echo $row["SubName"]?></td>
                                        <td><?php echo $row["Status"]?"Hiển thị":"Ẩn"?></td>
                                        <td><a href="index.php?module=editsubcat&id=<?php echo $row["CategoryID"]?>&sid=<?php echo $row["SubCategoryID"]?>">Sửa</a></td>
                                        <td><a href="index.php?module=deletesubcat&id=<?php echo $row["CategoryID"]?>&sid=<?php echo $row["SubCategoryID"]?>">Xóa</a></td>
                                    </tr>
                                <?php }        
                                    } ?>
                            </tbody>

                        </table>
                    </div>
                </div>
            </div>
          
        </div>
        <!-- ============================================================== -->
        <!-- end basic table  -->
        <!-- ============================================================== -->
    </div>
</div>
