<?php 
session_start(); 
include "../dbconnection.db.php";



	$uname = $_POST['username'];
	$pass = $_POST['pass'];

		$sql = "SELECT * FROM admins WHERE username ='$uname' AND password='$pass'";

		$result = mysqli_query($conn, $sql);

		if (mysqli_num_rows($result) === 1) {
			$row = mysqli_fetch_assoc($result);
            if ($row['username'] === $uname && $row['password'] === $pass) {
            	$_SESSION['username'] = $row['username'];
            	$_SESSION['password'] = $row['password'];
            	$_SESSION['id'] = $row['id'];
            	header("Location: ../../admin/management/index.admin.php");
		        exit();
			}
			else{
				header("Location: ../../admin.php?error= Pls check the details");
				exit();
			}
		}
		else{
			header("Location: ../../admin.php?error= Pls check the details");
	        exit();
		}