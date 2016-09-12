<?php
  include("../php/user_session.php");

  $sql = "SELECT student_no, concat(lastname, ', ', firstname, ' ', middlename) as name, section, contact, email, birthdate, address, apply, first, second, hackathon, timestamp FROM members;";
  $result = $mysqli->query($sql);
?>

<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8">
    <title>Members - CODEC</title>

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
          <li class="active"><a href="members.php">Members</a></li>
        </div>

        <div class="nav navbar-nav navbar-right">
          <li><a href="#">Hello, <?php echo $user_info['username']; ?></a></li>
          <li><a href="../php/logout.php">Logout</a></li>
        </div>
      </div>
    </nav>

    <div class="container">
      <h2>Members</h2>
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
            <!-- <th>#</th> -->
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
                   <td><?php echo $row['student_no'] ?></td> 
                  <td><?php echo $row['name'] ?></td>
                  <td><?php echo $row['section'] ?></td>
                  <td><?php echo $row['contact'] ?></td>
                  <td><?php echo $row['email'] ?></td>
                  <td><?php echo $row['timestamp'] ?></td>
                  <td><a href="" onclick="viewMember(<?php echo $row['student_no'] ?>,'<?php echo $row['name'] ?>','<?php echo $row['section'] ?>','<?php echo $row['contact'] ?>','<?php echo $row['email'] ?>','<?php echo $row['birthdate'] ?>','<?php echo $row['address'] ?>','<?php echo $row['apply'] ?>','<?php echo $row['first'] ?>','<?php echo $row['second'] ?>','<?php echo $row['hackathon'] ?>','<?php echo $row['timestamp'] ?>')" data-toggle="modal" data-target="#viewMemberModal">View</a></td>
                </tr>
          <?php
              }
            }
          ?>
        </tbody>
      </table>

      <div class="modal fade" id="viewMemberModal">
        <div class="modal-dialog">
          <div class="modal-content">
            <div class="modal-header">
              <h3>View Members</h3>
            </div>
            <div class="modal-body">
              <table class="table">
                <tr>
                  <td>Student No:</td>
                  <td id="view_student_no"></td>
                </tr>
                <tr>
                  <td>Name:</td>
                  <td id="view_name"></td>
                </tr>
                <tr>
                  <td>Section:</td>
                  <td id="view_section"></td>
                </tr>
                <tr>
                  <td>Email:</td>
                  <td id="view_email"></td>
                </tr>
                <tr>
                  <td>Contact:</td>
                  <td id="view_contact"></td>
                </tr>
                <tr>
                  <td>Birthdate:</td>
                  <td id="view_birthdate"></td>
                </tr>
                <tr>
                  <td>Address:</td>
                  <td id="view_address"></td>
                </tr>
                <tr>
                  <td>Membership:</td>
                  <td id="view_membership"></td>
                </tr>
                <tr>
                  <td>First Choice:</td>
                  <td id="view_first"></td>
                </tr>
                <tr>
                  <td>Second Choice:</td>
                  <td id="view_second"></td>
                </tr>
                <tr>
                  <td>Hackathon:</td>
                  <td id="view_hackathon"></td>
                </tr>
                <tr>
                  <td>Timestamp:</td>
                  <td id="view_timestamp"></td>
                </tr>
              </table>
            </div>
            <div class="modal-footer">
              <p><button type="button" class="btn btn-default" data-dismiss="modal">Close</button></p>
            </div>
          </div>
        </div>
      </div>

    <script src="../js/jquery.js" charset="utf-8"></script>
    <script src="../js/bootstrap.min.js" charset="utf-8"></script>
    <script src="../js/jquery.dataTables.min.js" charset="utf-8"></script>
    <script src="../js/dataTables.bootstrap.min.js" charset="utf-8"></script>
    <script src="../js/dataTables.responsive.min.js" charset="utf-8"></script>
    <script src="../js/responsive.bootstrap.min.js" charset="utf-8"></script>
    <script type="text/javascript">
      $(document).ready(function(){
        $('#myTable').DataTable({
          responsive: true
        });
      });

      function viewMember(student_no, name, section, contact, email, birthdate, address, membership, first, second, hackathon, timestamp){
        document.getElementById("view_student_no").textContent = student_no;
        document.getElementById("view_name").textContent = name;
        document.getElementById("view_section").textContent = section;
        document.getElementById("view_contact").textContent = contact;
        document.getElementById("view_email").textContent = email;
        document.getElementById("view_birthdate").textContent = birthdate;
        document.getElementById("view_address").textContent = address;
        document.getElementById("view_membership").textContent = membership;
        document.getElementById("view_first").textContent = first;
        document.getElementById("view_second").textContent = second;
        document.getElementById("view_hackthon").textContent = hackathon;
        document.getElementById("view_timestamp").textContent = timestamp;
      }
    </script>
  </body>
</html>
