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

<script>
    function addCart(id){
        num = $("#num_"+id).val();
        if(num == undefined){
            num = 1;
        }
        // alert(num);
        $.post("shoppingcart.php",{'id':id,'num':num}, function(data, status){
   // alert("Data: " + data + "\nStatus: " + status);
        item = data.split("-");
        $("#qty").text(item[0]);
        $("#total").text(item[1]);
  });
};
    function updateCart(id){
        num = $("#num_"+id).val();
        $.post("updatecart.php",{'id':id,'num':num}, function(data)  {
            $("#listCart").load("index.php?view=shoppingcart #listCart")
        });      
    };

    function deleteCart(id){
        // alert(id);
         $.post("updatecart.php",{'id':id,'num':0}, function(data)  {
            $("#listCart").load("index.php?view=shoppingcart #listCart")
        });      
    }
</script>
<!--Thanh1234pro--!>


