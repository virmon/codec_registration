<?php
  include("../php/dbconfig.php");

  session_start();

  if(isset($_SESSION['user_id'])){
     header("location: unpaid.php");
  }

  if(isset($_POST["login"])) {

   $username = mysqli_real_escape_string($mysqli,$_POST['username']);
   $password = mysqli_real_escape_string($mysqli,$_POST['password']);

   $sql = "SELECT user_id FROM users WHERE (email = '$username' OR username = '$username') AND password = '$password'";

   $result = $mysqli->query($sql);
   $row = mysqli_fetch_assoc($result);

   $count = mysqli_num_rows($result);
   // If result matched $myusername and $mypassword, table row must be 1 row

   if($count == 1) {
      $_SESSION['user_id'] = $row['user_id'];

      header("location: unpaid.php");
   }else {
      $error = "<p style='color:red;text-align:center'>Your Login Name or Password is invalid</p>";
   }
  }
?>

<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8">
    <title>CODECos</title>

    <link rel="stylesheet" href="../css/bootstrap.min.css" media="screen" title="no title" charset="utf-8">

    <link rel="stylesheet" href="../css/login.css" media="screen" title="no title" charset="utf-8">
    <link rel="icon" type="images/png" href="../images/codec-logo.png" />
  </head>
  <body>
    <div class="container">
      <div class="jumbotron" style="margin:50px auto 0;">
        <center><img src="../images/codec-logo-long.png" id="logo1"/></center>
        <center><img src="../images/codec-logo.png" id="logo2"/></center>
        </br>
        <?php echo isset($error)? $error : ""; ?>
        <form action="index.php" method="post">
          <p><input type="text" name="username" required="" class="form-control" placeholder="Username" autofocus/></p>
          <p><input type="password" name="password" required="" class="form-control" placeholder="Password"/></p>
          <center><p><input type="submit" name="login" value="Log In" id="login-btn"></p></center>
        </form>

      </div>
    </div>
  </body>
</html>
