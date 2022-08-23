<?php

include_once '../dbconnection.db.php';
$studentid = $_POST['studentid'];
$id = $_POST['id'];
$name = $_POST['name'];
$gender = $_POST['gender'];
$contact = $_POST['contact'];
$address = $_POST['address'];
$bday = $_POST['bday'];
$bplace = $_POST['bplace'];
$status =$_POST['status'];
$course = $_POST['course'];
$year = $_POST['year'];
$sql = "UPDATE studentrecords set student_id ='$studentid' ,name ='$name', course = '$course', year = '$year'
,gender = '$gender' ,cellphone = '$contact' ,address = '$address' ,bday ='$bday' ,bplace ='$bplace',status='$status'
    where id = $id;";

                $result = mysqli_query($conn, $sql) or die($conn->error);
                header("Location: ../../admin/student/studentlist.admin.php?success=The Record is updated");
       