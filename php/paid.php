<?php

	include('dbconfig.php');

	if(isset($_POST["submit"]))
	{
		$unpaid_id = $_POST['unpaid_id'];
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



    if ($mysqli->query($sql) === TRUE) {

    	$sql = "DELETE FROM unpaid WHERE unpaid_id = $unpaid_id";

    	$mysqli->query($sql);


      header('Location: ../admin');

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
