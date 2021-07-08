<?php
include 'function.php';
if (isset($_POST["addnew"])) {
    
    $status = ($_POST["Status"]) ? $_POST["Status"] : 0;
    $sqlInsert = save('category', $_POST);
    mysqli_query($conn, $sqlInsert) or die("Lỗi thêm mới".$sqlInsert);
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
                <h5 class="card-header">Thêm danh mục</h5>
                <div class="card-body">
                    <form action="" method="post" id="basicform" data-parsley-validate="">
                        <div class="form-group">
                            <label for="CategoryName">Tên danh mục</label>
                            <input id="CategoryName"  type="text" name="CategoryName"  placeholder="Nhập tên danh mục" class="form-control">
                        </div>

                        <div class="row">
                            <div class="col-sm-6 pb-2 pb-sm-4 pb-lg-0 pr-0">
                                <label class="be-checkbox custom-control custom-checkbox">
                                    <input type="checkbox" class="custom-control-input" name="Status" id="Status" value="1"><span class="custom-control-label">Trạng thái</span>
                                </label>
                            </div>
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
