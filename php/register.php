<?php

	include('dbconfig.php');	

	if(isset($_POST["submit"]))
	{
		$student_no = $_POST['student_no'];
		$firstname = $_POST['firstname'];
		$middlename = $_POST['middlename'];
		$lastname = $_POST['lastname'];
		$birthdate = $_POST['birthdate'];
		$address = $_POST['address'];
		$contact = $_POST['contact'];
		$email = $_POST['email'];
		$section = $_POST['section'];
		$apply = $_POST['apply'];
		$first = $_POST['first'];
		$second = $_POST['second'];
		$hackathon = $_POST['hackathon'];

		$sql = "INSERT INTO members(student_no, firstname, middlename, lastname, birthdate, address, contact, email, section, apply, first, second, hackathon) 
				    VALUES('$student_no', '$firstname', '$middlename','$lastname', '$birthdate', '$address', '$contact', '$email', '$section', '$apply', '$first', '$second', '$hackathon')";
    
    if ($mysqli->query($sql) === TRUE) {
      
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