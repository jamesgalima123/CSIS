<?php

include_once '../dbconnection.db.php';
$tid = $_POST['teacherid'];
$id = $_POST['id'];
$name = $_POST['name'];
$gender = $_POST['gender'];
$contact = $_POST['contact'];
$address = $_POST['address'];


$sql = "UPDATE teacherrecords set teacher_id ='$tid' ,name ='$name'
,gender = '$gender' ,cellphone = '$contact' ,address = '$address'
    where teacher_id = '$id';";

                $result = mysqli_query($conn, $sql);
            header("Location: ../../admin/teacher/teacher.admin.php?success=New record is saved &tid=$tid");
       