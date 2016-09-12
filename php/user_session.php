<?php
   include('dbconfig.php');

   session_start();

   if(isset($_SESSION['user_id'])){
     $user_id = $_SESSION['user_id'];

     $sql = "SELECT * FROM users WHERE user_id = $user_id";

     $result = $mysqli->query($sql);

     $user_info = mysqli_fetch_assoc($result);
   }else{
     header("location: ../index.php");
   }
?>
