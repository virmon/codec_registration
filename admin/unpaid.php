<?php
  include("../php/user_session.php");

  $sql = "SELECT * FROM unpaid;";
  $result = $mysqli->query($sql);
?>

<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8">
    <title>Unpaid - CODEC</title>

    <link rel="stylesheet" href="../css/bootstrap.min.css" media="screen" title="no title" charset="utf-8">
    <link rel="stylesheet" href="../css/dataTables.bootstrap.min.css" media="screen" title="no title" charset="utf-8">
    <link rel="stylesheet" href="../css/responsive.bootstrap.min.css" media="screen" title="no title" charset="utf-8">

    <link rel="stylesheet" href="../css/main.css" media="screen" title="no title" charset="utf-8">
    <link rel="icon" type="images/png" href="../images/codec-logo.png" />
  </head>
  <body>

    <nav class="navbar navbar-inverse navbar-static-top">
      <div class="container-fluid">

        <!-- Logo -->
        <div class="navbar-header">
          <a href="members.php" class="navbar-brand">CODEC</a>
        </div>

        <!-- Menu Items -->
        <div class="nav navbar-nav">
          <li class="active"><a href="unpaid.php">Unpaid</a></li>
          <li class=""><a href="members.php">Members</a></li>
        </div>

        <div class="nav navbar-nav navbar-right">
          <li><a href="#">Hello, <?php echo $user_info['username']; ?></a></li>
          <li><a href="../php/logout.php">Logout</a></li>
        </div>
      </div>
    </nav>

    <div class="container">
      <h2>Unpaid</h2>
      <hr/>
      <?php
        if(!empty($_SESSION['message']))
        {
          echo $_SESSION['message'];
          unset($_SESSION['message']);
        }
      ?>
      <table class="table table-stripped table-bordered table-hover" id="myTable">
        <thead>
          <tr>
            <th>#</th>
            <th>Student No</th>
            <th>Name</th>
            <th>Section</th>
            <th>Contact</th>
            <th>Email</th>
            <th>Timestamp</th>
            <th>Actions</th>
          </tr>
        </thead>
        <tbody>
          <?php
            $count = mysqli_num_rows($result);
            if($count > 0){
              while($row = mysqli_fetch_array($result)){
          ?>
                <tr> 
                  <td><?php echo $row['unpaid_id'] ?></td>
                  <td><?php echo $row['student_no'] ?></td> 
                  <td><?php echo $row['lastname'] ?>, <?php echo $row['firstname'] ?> <?php echo $row['middlename'] ?></td>
                  <td><?php echo $row['section'] ?></td>
                  <td><?php echo $row['contact'] ?></td>
                  <td><?php echo $row['email'] ?></td>
                  <td><?php echo $row['timestamp'] ?></td>
                  <td>
                    <form action="../php/paid.php" method="POST">

                      <input type="text" name="unpaid_id" value="<?php echo $row['unpaid_id'] ?>" hidden> 
                      <input type="text" name="student_no" value="<?php echo $row['student_no'] ?>" hidden> 
                      <input type="text" name="firstname" value="<?php echo $row['firstname'] ?>" hidden>
                      <input type="text" name="middlename" value="<?php echo $row['middlename'] ?>" hidden>
                      <input type="text" name="lastname" value="<?php echo $row['lastname'] ?>" hidden>
                      <input type="text" name="birthdate" value="<?php echo $row['birthdate'] ?>" hidden>
                      <input type="text" name="contact" value="<?php echo $row['contact'] ?>" hidden>
                      <input type="text" name="email" value="<?php echo $row['email'] ?>" hidden>
                      <input type="text" name="section" value="<?php echo $row['section'] ?>" hidden>
                      <input type="text" name="apply" value="<?php echo $row['apply'] ?>" hidden>
                      <input type="text" name="hackathon" value="<?php echo $row['hackathon'] ?>" hidden>
                      <input type="submit" name="submit" value="Confim Payment">
                    </form>
                  </td>
                </tr>
          <?php
              }
            }
          ?>
        </tbody>
      </table>

    <script src="../js/jquery.js" charset="utf-8"></script>
    <script src="../js/bootstrap.min.js" charset="utf-8"></script>
    <script src="../js/jquery.dataTables.min.js" charset="utf-8"></script>
    <script src="../js/dataTables.bootstrap.min.js" charset="utf-8"></script>
    <script src="../js/dataTables.responsive.min.js" charset="utf-8"></script>
    <script src="../js/responsive.bootstrap.min.js" charset="utf-8"></script>
    <script type="text/javascript">
      $(document).ready(function(){
        $('#myTable').DataTable({
          responsive: true,
          "order": [[0, "desc"]]
        });
      });
    </script>
  </body>
</html>
