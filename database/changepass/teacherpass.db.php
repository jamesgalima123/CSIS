<?php

include_once '../dbconnection.db.php';

if(isset($_POST['submit'])){
    if($_POST['npass'] === $_POST['cpass']){
        $teacherid = $_POST['teacherid'];
        $opwd = $_POST['pass'];
        $npwd = $_POST['npass'];
        $cpwd = $_POST['cpass'];

        $sql = "SELECT * from users WHERE user_id ='$teacherid' AND password='$opwd'";
        $result = $conn-> query($sql);
        
    if (mysqli_num_rows($result) === 1) {
        $row = mysqli_fetch_assoc($result);
        if ($row['user_id'] === $teacherid && $row['password'] === $opwd) {
            $con = mysqli_query($conn,"UPDATE users set password='$npwd' 
            where user_id = '$teacherid'");
            header("Location: ../../teacher/profile/changepass.teacher.php?success=Password is successfuly changed");
            close();
        }
    }
        else{
            header("Location: ../../teacher/profile/changepass.teacher.php?error=your old password is incorrect");
        }  
       
        
    } 

    else{
        header("Location: ../../teacher/profile/changepass.teacher.php?error=New password does not match into confirm password");
    }
    

    }

    


