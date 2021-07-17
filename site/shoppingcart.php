<?php
ob_start();
session_start();
include ("../config/connection.php");
if(isset($_POST["id"])){
//    echo "ok";
    $id = $_POST["id"];
    $num = $_POST["num"];
    $sqlPro = "SELECT * FROM product WHERE pro_id = ".$_POST["id"];
    $result = mysqli_query($conn, $sqlPro);
    $row = mysqli_fetch_row($result);
    
    if(!isset($_SESSION["cart"])){
        $cart[$id] = array(
            'name'=>$row[1],
            'image'=>$row[4],
            'price'=>$row[3],
            'number'=>$num
        ); 
    }else{
         $cart=$_SESSION["cart"];
         if(array_key_exists($id, $cart)){
        $cart[$id] = array(
            'name'=>$row[1],
            'image'=>$row[4],
            'price'=>$row[3],
         'number'=>(int)$cart[$id]['number']+$num);
         } else {
               $cart[$id] = array(
            'name'=>$row[1],
            'image'=>$row[4],
            'price'=>$row[3],
            'number'=>$num);
         }
    };
    $_SESSION["cart"]=$cart;
   // echo "<prE>";
   // print_r($_SESSION["cart"]);
    $number = 0;
    $total = 0;
    foreach ($cart as $value){
        $number += (int)$value["number"];
        $total += (int)$value["number"]*(int)$value["price"];
    }
    echo $number."-".number_format($total,0,",",".");
}
?>

