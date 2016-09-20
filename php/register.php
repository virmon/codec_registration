<?php

	include('dbconfig.php');

	if(isset($_POST["submit"]))
	{
		$student_no = $_POST['student_no'];
		$firstname = $_POST['firstname'];
		$middlename = $_POST['middlename'];
		$lastname = $_POST['lastname'];
		$birthdate = $_POST['birthdate'];
		$contact = $_POST['contact'];
		$email = $_POST['email'];
		$section = $_POST['section'];
		$apply = $_POST['apply'];
		$hackathon = $_POST['hackathon'];

		$sql = "INSERT INTO members(student_no, firstname, middlename, lastname, birthdate, contact, email, section, apply, hackathon)
				    VALUES('$student_no', '$firstname', '$middlename','$lastname', '$birthdate', '$contact', '$email', '$section', '$apply', '$hackathon')";

		if($apply === 'EA'){
			$sql2 = "INSERT INTO ea_applicants(student_number, last_name, first_name, middle_name, email, contact, section)
					    VALUES('$student_no','$lastname', '$firstname', '$middlename', '$email', '$contact',  '$section')";
		}
		if ($apply === 'Staff') {
			$sql2 = "INSERT INTO staff_applicants(student_number, last_name, first_name, middle_name, email, contact, section)
					    VALUES('$student_no','$lastname', '$firstname', '$middlename', '$email', '$contact',  '$section')";
		}



    if ($mysqli->query($sql) === TRUE) {

			if(isset($sql2)){
				$mysqli->query($sql2);
			}

      header('Location: ../finish.html');

		} else {
		    // echo "Error: " . $sql . "<br>" . $mysqli->error;
		  ?><script type="text/javascript">
		    	alert('Something went wrong');
				window.location.href='../finish.html';
			</script><?php
		}

		$mysqli->close();


	}

?>
