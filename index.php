<!DOCTYPE>
<html>
	<head>
		<title>CODEC - Registration</title>
		  <meta charset="utf-8">
		  <meta name="viewport" content="width=device-width, initial-scale=1">
		  <link rel="stylesheet" href="css/bootstrap.min.css" media="screen" title="no title" charset="utf-8">
		  <link rel="stylesheet" href="css/main.css" media="screen" title="no title" charset="utf-8">
    	<link rel="icon" type="images/png" href="images/codec-logo.png" />
	</head>
	<body>

    <div class="container-fluid form">
      <center><div><img src="images/codec-logo-long.png" id="logo1" /></div></center>
			<center><h3>REGISTRATION</h3></center>
			<!--Form Body-->
			<div class="">
			  <form action="php/register.php" method="POST">
          <div class="form-group row">
            <div class="col-sm-4"><label>Student Number</label><input type="number"min="0" maxlength="10" class="form-control" name="student_no" placeholder="" autocomplete="off" required autofocus></div>
          </div>
					<div class="form-group row">
						<div class="col-sm-4"><label>Last Name</label><input type="text" class="form-control" name="lastname" placeholder="" autocomplete="off" required></div>
						<div class="col-sm-4"><label>First Name</label><input type="text" class="form-control" name="firstname" placeholder="" autocomplete="off" required></div>
            <div class="col-sm-4"><label>Middle Initial</label><input type="text" class="form-control" name="middlename" placeholder="" autocomplete="off" required></div>
					</div>
          <div class="form-group row">
            <div class="col-sm-4"><label>Year-Course-Section</label><input type="text" class="form-control" name="section" placeholder="" autocomplete="off" required></div>
						<div class="col-sm-4"><label>Mobile Number</label><input type="number" min="0" maxlength="11" class="form-control" name="contact" placeholder="" autocomplete="off" required></div>
            <div class="col-sm-4"><label>E-mail Address</label><input type="email" class="form-control" name="email" placeholder="" autocomplete="off" required></div>
            <!-- <div class="col-sm-4"><label>Home Address</label><input type="text" class="form-control" name="address" placeholder="Ex. Espana, Manila" autocomplete="off" required></div> -->
          </div>
          <div class="form-group row">
            <div class="col-sm-4"><label>Birthdate</label><input type="date" class="form-control" name="birthdate" placeholder="" autocomplete="off" required></div>
          </div>
          <div class="form-group row">
					  <div class="col-sm-12"><label>What do you want to apply for?</label></div>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
							<label class="radio-inline"><input type="radio" id="member" name="apply" value="member" required checked>Membership</label>
  					  <label class="radio-inline"><input type="radio" id="ea" name="apply" value="EA" required>Executive Associate</label>
              <label class="radio-inline"><input type="radio" id="staff" name="apply" value="Staff" required>Staff</label>
					</div>
					<!-- <div class="form-group col-sm-6 hidden" id="firstChoiceEa">
            <label for="first">First Choice:</label>
            <select class="form-control" id="firstEa" name="first" disabled required>
              <option value=""></option>
              <option value="Internal">Internal Affairs</option>
              <option value="External">External Affairs</option>
              <option value="Documentation">Documentation</option>
              <option value="Finance">Finance</option>
              <option value="Audit">Audit</option>
              <option value="Publicity">Publicity</option>
              <option value="Creatives">Creatives</option>
              <option value="Logistics">Logistics</option>
              <option value="Comdev">Community Development</option>
              <option value="Tech">Technologies</option>
            </select>
          </div>
          <div class="form-group col-sm-6 hidden" id="secondChoiceEa">
            <label for="second">Second Choice:</label>
            <select class="form-control" id="secondEa" name="second" disabled>
              <option value=""></option>
              <option value="Internal">Internal Affairs</option>
              <option value="External">External Affairs</option>
              <option value="Documentation">Documentation</option>
              <option value="Finance">Finance</option>
              <option value="Audit">Audit</option>
              <option value="Publicity">Publicity</option>
              <option value="Creatives">Creatives</option>
              <option value="Logistics">Logistics</option>
              <option value="Comdev">Community Development</option>
              <option value="Tech">Technologies</option>
            </select>
          </div>
					<div class="form-group col-sm-6 hidden" id="firstChoiceStaff">
            <label for="first">First Choice:</label>
            <select class="form-control" id="firstStaff" name="first" disabled required>
              <option value=""></option>
              <option value="Internal">Internal Affairs</option>
              <option value="External">External Affairs</option>
              <option value="Documentation">Documentation</option>
              <option value="Finance">Finance</option>
              <option value="Audit">Audit</option>
              <option value="Publicity">Publicity</option>
              <option value="Creatives">Creatives</option>
              <option value="Logistics">Logistics</option>
              <option value="Comdev">Community Development</option>
              <option value="Tech">Technologies</option>
            </select>
          </div>
          <div class="form-group col-sm-6 hidden" id="secondChoiceStaff">
            <label for="second">Second Choice:</label>
            <select class="form-control" id="secondStaff" name="second" disabled>
              <option value=""></option>
              <option value="Internal">Internal Affairs</option>
              <option value="External">External Affairs</option>
              <option value="Documentation">Documentation</option>
              <option value="Finance">Finance</option>
              <option value="Audit">Audit</option>
              <option value="Publicity">Publicity</option>
              <option value="Creatives">Creatives</option>
              <option value="Logistics">Logistics</option>
              <option value="Comdev">Community Development</option>
              <option value="Tech">Technologies</option>
            </select>
          </div> -->
					<div class="form-group row">
					  <div class="col-sm-12"><label>Have you joined any Hackathons?</label></div>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
						<label class="radio-inline"><input type="radio" name="hackathon" value="Yes" required>Yes</label>
            <label class="radio-inline"><input type="radio" name="hackathon" value="No" required>No</label>
					</div>
					<hr>
					<center><input type="submit" name="submit" value="SAVE AND SUBMIT" /></center>
			  </form>
			</div>
			<!--Form Body End-->
    </div>

    <!-- jQuery library -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <script src="https://ajax.aspnetcdn.com/ajax/jquery.validate/1.11.1/jquery.validate.min.js"></script>
    <!-- Latest compiled JavaScript -->
    <script src="js/bootstrap.min.js"></script>
    <script type="text/javascript">
      // $("#member").click(function() {
      //   $("#firstEa").attr("disabled", true);
      //   $("#secondEa").attr("disabled", true);
			// 	$("#firstStaff").attr("disabled", true);
      //   $("#secondStaff").attr("disabled", true);
			// 	$("#firstEa").attr("required", false);
      //   $("#secondEa").attr("required", false);
			// 	$("#firstStaff").attr("required", false);
      //   $("#secondStaff").attr("required", false);
			// 	$("#firstChoiceEa").addClass('hidden');
			// 	$("#firstChoiceStaff").addClass('hidden');
			// 	$("#secondChoiceEa").addClass('hidden');
			// 	$("#secondChoiceStaff").addClass('hidden');
      //   //$("").show(); //To Show the dropdown
      // });
      // $("#ea").click(function() {
			// 	$("#firstChoiceEa").removeClass('hidden');
			// 	$("#firstChoiceStaff").addClass('hidden');
			// 	$("#secondChoiceEa").removeClass('hidden');
			// 	$("#secondChoiceStaff").addClass('hidden');
      //   $("#firstEa").attr("disabled", false);
      //   $("#secondEa").attr("disabled", false);
      //   $("#firstEa").attr("required", true);
      //   $("#secondEa").attr("required", true);
			// 	$("#firstStaff").attr("disabled", true);
      //   $("#secondStaff").attr("disabled", true);
      //   $("#firstStaff").attr("required", false);
      //   $("#secondStaff").attr("required", false);
      //   //$("#discountselection").hide();//To hide the dropdown
      // });
      // $("#staff").click(function() {
			// 	$("#firstChoiceEa").addClass('hidden');
			// 	$("#firstChoiceStaff").removeClass('hidden');
			// 	$("#secondChoiceEa").addClass('hidden');
			// 	$("#secondChoiceStaff").removeClass('hidden');
      //   $("#firstStaff").attr("disabled", false);
      //   $("#secondStaff").attr("disabled", false);
      //   $("#firstStaff").attr("required", true);
      //   $("#secondStaff").attr("required", true);
			// 	$("#firstEa").attr("disabled", true);
      //   $("#secondEa").attr("disabled", true);
      //   $("#firstEa").attr("required", false);
      //   $("#secondEa").attr("required", false);
      //   //$("#discountselection").hide();//To hide the dropdown
      // });
    </script>
	</body>
</html>
