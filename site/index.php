<?php
ob_start();
session_start();

?>
<?php require_once ("layouts/header.php")?>
<?php require_once ("layouts/nav.php")?>
	<?php require_once ("layouts/slide.php")?> 
	<?php require_once ("layouts/adv.php")?> 
<!--nội dung chính sẽ thay đổi theo trang-->
            <div class="main">
                <div class="container">
                	<div class="row">
                	<?php require_once ("layouts/blogsidebar.php")?> 
                	 <?php
                    if (isset($_GET["view"])) {
                        $module = $_GET["view"];
                        include("layouts/" . $module . ".php");
                    } else {
                        include("layouts/main.php");
                    }
                    ?>
                    
                    </div>
                </div>
            </div>
<?php require_once ("layouts/footer.php")?>
<!--Thanh1234pro--!>

