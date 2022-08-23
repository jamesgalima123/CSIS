<?php

include_once '../dbconnection.db.php';

if (isset($_POST['submit'])) {
    if ($_POST['npass'] === $_POST['cpass']) {
        $username = $_POST['username'];
        $opwd = $_POST['pass'];
        $npwd = $_POST['npass'];
        $cpwd = $_POST['cpass'];

        $sql = "SELECT * FROM admins WHERE username ='$username' AND password='$opwd'";

		$result = mysqli_query($conn, $sql);

		if (mysqli_num_rows($result) === 1) {
			$row = mysqli_fetch_assoc($result);
            if ($row['username'] === $username && $row['password'] === $opwd) {
                $con = mysqli_query($conn, "UPDATE admins set password='$npwd' 
                where username = '$username'");
            header("Location: ../../admin/management/changepass.admin.php?success=Password is successfuly changed");
		        exit();
			}
        } else {
            header("Location: ../../admin/management/changepass.admin.php?error=invalid username or password");
        }
    } else {
        header("Location: ../../admin/management/changepass.admin.php?error=New password does not match into confirm password");
    }
}
