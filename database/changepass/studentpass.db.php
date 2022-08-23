<?php

include_once '../dbconnection.db.php';

if(isset($_POST['submit'])){
    if($_POST['npass'] === $_POST['cpass']){
        $studentid = $_POST['studentid'];
        $opwd = $_POST['pass'];
        $npwd = $_POST['npass'];
        $cpwd = $_POST['cpass'];

        $sql = "SELECT * FROM users WHERE user_id ='$studentid' AND password='$opwd'";
        $result = $conn-> query($sql);
       
        if (mysqli_num_rows($result) === 1) {
            $row = mysqli_fetch_assoc($result);
            if ($row['user_id'] === $studentid && $row['password'] === $opwd) {
                $con = mysqli_query($conn,"UPDATE users set password='$npwd' 
                where user_id = '$studentid'");
                header("Location: ../../student/changepass.student.php?success=Password is successfuly changed");
                exit();
            }
         } else{
                header("Location: ../../student/changepass.student.php?error=your old password in incorrect");
            }  
         }   
         else{
            header("Location: ../../student/changepass.student.php?error=New password does not match into confirm password");
        }
}



   

