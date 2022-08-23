<?php

include_once '../dbconnection.db.php';
$course = $_POST['course'];
$sub = $_POST['sub'];
echo $sub;
if (isset($_POST['fy-fs'])) {

            $sqlstudent = "INSERT INTO programs (course, subject, year, sem) 
            VALUES ('$course', '$_POST[fyfssub]', 'first', 'first');";

            $sql = "SELECT * from programs where course = '$course' && subject = '$_POST[fyfssub]'";
            $result = $conn->query($sql);
            if ($result->num_rows > 0) {
                while ($row = $result->fetch_assoc()) {
                
                    $sub = $row['subject']; 
                    $cor = $row['coures'];
                    
                }
            }
            if($sub == $_POST['fyfssub']){
                header("Location: ../../admin/program/course.admin.php?des=$course");
            }else{
                $query = mysqli_query($conn, $sqlstudent) or die(mysqli_error($conn));
                header("Location: ../../admin/program/course.admin.php?des=$course");
            }
    
} elseif (isset($_POST['fy-ss'])) {

            $sqlstudent = "INSERT INTO programs (course, subject, year, sem) 
            VALUES ('$course', '$_POST[fysssub]', 'first', 'second');";

            $sql = "SELECT * from programs where course = '$course' && subject = '$_POST[fysssub]'";
            $result = $conn->query($sql);
            if ($result->num_rows > 0) {
                while ($row = $result->fetch_assoc()) {
                    $year = $row['year'];
                    $sub = $row['subject']; 
                    
                }
            }
            if($sub == $_POST['fysssub']){
                header("Location: ../../admin/program/course.admin.php?des=$course");
            }else{
                $query = mysqli_query($conn, $sqlstudent) or die(mysqli_error($conn));
                header("Location: ../../admin/program/course.admin.php?des=$course");
            }

} elseif (isset($_POST['sy-fs'])) {

            $sqlstudent = "INSERT INTO programs (course, subject, year, sem) 
            VALUES ('$course', '$_POST[syfssub]', 'second', 'first');";

            $sql = "SELECT * from programs where course = '$course' && subject = '$_POST[syfssub]'";
            $result = $conn->query($sql);
            if ($result->num_rows > 0) {
                while ($row = $result->fetch_assoc()) {
                
                    $sub = $row['subject']; 
                    
                }
            }
            if($sub == $_POST['syfssub']){
                header("Location: ../../admin/program/course.admin.php?des=$course");
            }else{
                $query = mysqli_query($conn, $sqlstudent) or die(mysqli_error($conn));
                header("Location: ../../admin/program/course.admin.php?des=$course");
            }
    
} elseif (isset($_POST['sy-ss'])) {

            $sqlstudent = "INSERT INTO programs (course, subject, year, sem) 
            VALUES ('$course', '$_POST[sysssub]', 'second', 'second');";

            $sql = "SELECT * from programs where course = '$course' && subject = '$_POST[sysssub]'";
            $result = $conn->query($sql);
            if ($result->num_rows > 0) {
                while ($row = $result->fetch_assoc()) {
                
                    $sub = $row['subject']; 
                    
                }
            }
            if($sub == $_POST['sysssub']){
                header("Location: ../../admin/program/course.admin.php?des=$course");
            }else{
                $query = mysqli_query($conn, $sqlstudent) or die(mysqli_error($conn));
                header("Location: ../../admin/program/course.admin.php?des=$course");
            }
   
} elseif (isset($_POST['ty-fs'])) {

             $sqlstudent = "INSERT INTO programs (course, subject, year, sem) 
            VALUES ('$course', '$_POST[tyfssub]', 'third', 'first');";

            $sql = "SELECT * from programs where course = '$course' && subject = '$_POST[tyfssub]'";
            $result = $conn->query($sql);
            if ($result->num_rows > 0) {
                while ($row = $result->fetch_assoc()) {
                
                    $sub = $row['subject']; 
                    
                }
            }
            if($sub == $_POST['tyfssub']){
                header("Location: ../../admin/program/course.admin.php?des=$course");
            }else{
                $query = mysqli_query($conn, $sqlstudent) or die(mysqli_error($conn));
                header("Location: ../../admin/program/course.admin.php?des=$course");
            }
    
} elseif (isset($_POST['ty-ss'])) {
    

            $sqlstudent = "INSERT INTO programs (course, subject, year, sem) 
            VALUES ('$course', '$_POST[tysssub]', 'third', 'second');";

            $sql = "SELECT * from programs where course = '$course' && subject = '$_POST[tysssub]'";
            $result = $conn->query($sql);
            if ($result->num_rows > 0) {
                while ($row = $result->fetch_assoc()) {
                
                    $sub = $row['subject']; 
                    
                }
            }
            if($sub == $_POST['tysssub']){
                header("Location: ../../admin/program/course.admin.php?des=$course");
            }else{
                $query = mysqli_query($conn, $sqlstudent) or die(mysqli_error($conn));
                header("Location: ../../admin/program/course.admin.php?des=$course");
            }

} elseif (isset($_POST['ff-fs'])) {

            $sqlstudent = "INSERT INTO programs (course, subject, year, sem) 
            VALUES ('$course', '$_POST[fffssub]', 'forth', 'first');";

            $sql = "SELECT * from programs where course = '$course' && subject = '$_POST[fffssub]'";
            $result = $conn->query($sql);
            if ($result->num_rows > 0) {
                while ($row = $result->fetch_assoc()) {
                
                    $sub = $row['subject']; 
                    
                }
            }
            if($sub == $_POST['fffssub']){
                header("Location: ../../admin/program/course.admin.php?des=$course");
            }else{
                $query = mysqli_query($conn, $sqlstudent) or die(mysqli_error($conn));
                header("Location: ../../admin/program/course.admin.php?des=$course");
            }

} elseif (isset($_POST['ff-ss'])) {

            $sqlstudent = "INSERT INTO programs (course, subject, year, sem) 
            VALUES ('$course', '$_POST[ffsssub]', 'forth', 'second');";

            $sql = "SELECT * from programs where course = '$course' && subject = '$_POST[ffsssub]'";
            $result = $conn->query($sql);
            if ($result->num_rows > 0) {
                while ($row = $result->fetch_assoc()) {
                
                    $sub = $row['subject']; 
                    
                }
            }
            if($sub == $_POST['ffsssub']){
                header("Location: ../../admin/program/course.admin.php?des=$course");
            }else{
                $query = mysqli_query($conn, $sqlstudent) or die(mysqli_error($conn));
                header("Location: ../../admin/program/course.admin.php?des=$course");
            }

}