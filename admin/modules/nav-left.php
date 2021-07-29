
<div class="nav-left-sidebar ">
    <div class="menu-list">
        <nav class="navbar navbar-expand-lg navbar-light">
            <a class="d-xl-none d-lg-none" href="#">Trang chủ</a>
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarNav">
                <ul class="navbar-nav flex-column">
                    
                    <li class="nav-item ">
                        <a class="nav-link" href="index.php" data-toggle="collapse" aria-expanded="false" data-target="#submenu-1" aria-controls="submenu-1"><i class="fa fa-fw fa-user-circle"></i>Trang chủ </a>  
                    </li>

                    <li class="nav-item">
                        <a class="nav-link" href="#" data-toggle="collapse" aria-expanded="false" data-target="#submenu-2" aria-controls="submenu-2"><i class="fa fa-fw fa-rocket"></i>Quản lý cửa hàng</a>
                        <div id="submenu-2" class="collapse submenu" style="background: white;">
                            <ul class="nav flex-column">
                                <li class="nav-item">
                                    <a class="nav-link" href="index.php?module=listcategory">QL Danh mục</a>
                                </li>
                                 <li class="nav-item">
                                    <a class="nav-link" href="index.php?module=listproduct">QL Sản phẩm</a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link" href="index.php?module=listproduct">QL Banner</a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link" href="index.php?module=listproduct">QL Ưu đãi</a>
                                </li>
                            </ul>
                        </div>
                    </li>
                    <?php if(isset($_SESSION["login"])){
                        $seslogin = $_SESSION["login"][8];
                        if ($seslogin==1) {
                        
                                                ?>
                     <li class="nav-item">
                        <a class="nav-link" href="#" data-toggle="collapse" aria-expanded="false" data-target="#submenu-4" aria-controls="submenu-4"><i class="fas fa-meh"></i>Quản lý Người dùng</a>
                        <div id="submenu-4" class="collapse submenu" style="background: white;">
                            <ul class="nav flex-column">

                                <li class="nav-item">
                                    <a class="nav-link" href="index.php?module=listuser">QL Thành viên</a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link" href="#">QL Khách hàng</a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link" href="index.php?module=listcontact">QL phản hồi</a>
                                </li>
                            </ul>
                        </div>
                    </li>
                    <?php }} ?>

                    <?php if(isset($_SESSION["login"])){
                        $seslogin = $_SESSION["login"][8];
                        if ($seslogin==1 || $seslogin==2) {
                        
                                                ?>
                     <li class="nav-item">
                        <a class="nav-link" href="#" data-toggle="collapse" aria-expanded="false" data-target="#submenu-6" aria-controls="submenu-6"><i class="fas fa-dolly"></i>Quản lý bán hàng</a>  
                          <div id="submenu-6" class="collapse submenu" style="background: white;">
                            <ul class="nav flex-column">
                                <li class="nav-item">
                                    <a class="nav-link" href="index.php?module=listorder">QL đơn hàng</a>
                                </li>
                            </ul>
                        </div>  
                    </li> 
                    <?php }} ?>          
                </ul>
            </div>
        </nav>
    </div>
</div>
<!-- ============================================================== -->
<!-- end left sidebar -->