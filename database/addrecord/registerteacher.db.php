<?php

include_once '../dbconnection.db.php';
include_once '../passgen.db.php';

if (isset($_POST['ok'])) {
    $teacherid = $_POST['teacherid'];
    $name = $_POST['name'];
    $gender = $_POST['gender'];
    $contact = $_POST['contact'];
    $address = $_POST['address'];
    $subject = $_POST['subject'];

    $sq = "SELECT * from sublists where description = '$subject'";
    $resul = $conn-> query($sq);
    if ($resul->num_rows > 0) {
        while ($row = $resul->fetch_assoc()) {
            $subcode = $row['subject_code'];
        }
    }

    $sql = "SELECT * from subjects where description = '$subject'";
    $resul = $conn->query($sql);
    if ($resul->num_rows > 0) {
        while ($row = $resul->fetch_assoc()) {
            $sub = $row['description'];
            
        }
    }

    $sql = "SELECT * from teacherrecords where teacher_id = '$teacherid'";
    $resul = $conn->query($sql);
    if ($resul->num_rows > 0) {
        while ($row = $resul->fetch_assoc()) {
            $id = $row['teacher_id'];
        }
    }


    $sqlteacher = "INSERT INTO teacherrecords (teacher_id, name, gender, cellphone, address) 
    VALUES ('$teacherid', '$name', '$gender', '$contact', '$address');";

    $sqlsubject = "INSERT INTO subjects (teacher_id, description, subcode) 
    VALUES ('$teacherid', '$subject', '$subcode');";

    $sqluser = "INSERT INTO users (user_id, password, role) 
    VALUES ('$teacherid', '$gen_pass', 'faculty');";


   
    if (($teacherid == $id) || ($subject == $sub)) {
        header("Location: ../../admin/teacher/teacherlist.admin.php?error= The Subject or the Id is Already Taken");
        exit(); 

    } else {
        $quey = mysqli_query($conn, $sqluser) or die(mysqli_error($conn));

        $query = mysqli_query($conn, $sqlteacher) or die(mysqli_error($conn));
    
        $quey = mysqli_query($conn, $sqlsubject) or die(mysqli_error($conn));

        header("Location: ../../admin/teacher/teacherlist.admin.php?succesfull");
    }
}
