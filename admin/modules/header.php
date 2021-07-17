<div class="dashboard-header">
    <nav class="navbar navbar-expand-lg bg-white fixed-top">
    <a href="index.php" class="logo" title="LOGO TIEU DE">
                                <img src="../libs/images/logonew1.png" alt="" title="">
                            </a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse " id="navbarSupportedContent">
            <ul class="navbar-nav ml-auto navbar-right-top">
                <li class="nav-item">
                    <div id="custom-search" class="top-search-bar">
                        <input class="form-control" type="text" placeholder="Search..">
                    </div>
                </li>
                <li class="nav-item dropdown nav-user">
                    <a class="nav-link nav-user-img" href="#" id="navbarDropdownMenuLink2" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"><img src="assets/images/avatar-1.jpg" alt="" class="user-avatar-md rounded-circle"></a>
                    <div class="dropdown-menu dropdown-menu-right nav-user-dropdown" aria-labelledby="navbarDropdownMenuLink2">
                        <div class="nav-user-info">
                            <h5 class="mb-0 text-white nav-user-name">Xin chào, 
                            <?php 
                                if(isset($_SESSION["login"])){
                                    echo $_SESSION["login"][1]; 
                                }
                            ?>
                            </h5>
                        </div>
                        <a class="dropdown-item" href="#"><i class="fas fa-user mr-2"></i>Hồ sơ</a>
                        <a class="dropdown-item" href="#"><i class="fas fa-cog mr-2"></i>Cài đặt</a>
                        <a class="dropdown-item" href="index.php?module=logout"><i class="fas fa-power-off mr-2"></i>Đăng xuất</a>
                    </div>
                </li>
            </ul>
        </div>
    </nav>
</div>
<!-- ============================================================== -->
<!-- end navbar -->