<?php 
session_start(); 
include "../dbconnection.db.php";

	$uname = $_POST['id'];
	$pass = $_POST['pass'];

	
		$sql = "SELECT * FROM users WHERE user_id ='$uname' AND password='$pass'";

		$result = mysqli_query($conn, $sql);

		if (mysqli_num_rows($result) === 1) {
			$row = mysqli_fetch_assoc($result);
            if ($row['user_id'] === $uname && $row['password'] === $pass) {
            	$_SESSION['user_id'] = $row['user_id'];
            	$_SESSION['role'] = $row['role'];

                if($_SESSION['role'] == "student"){
					$sql3 = "SELECT * from withdrawns where student_id = '$_SESSION[user_id]'";
					$result3 = $conn->query($sql3);
					if ($result3->num_rows > 0) {
						while ($row3 = $result3->fetch_assoc()) {
							header("Location: ../../index.php?error=Your account is Lock");
							exit();
						}
					}
					header("Location: ../../student/sublist.student.php");
					
		        exit();
                }elseif($_SESSION['role'] == "faculty"){
                    header("Location: ../../teacher/teacherlayout/master_layout.tlayout.php");
		        exit();
                }
            	
            }
			else{
				header("Location: ../../index.php?error=Pls check the details");
				exit();
			}
		}else{
			header("Location: ../../index.php?error=Pls check the details");
	        exit();
		}