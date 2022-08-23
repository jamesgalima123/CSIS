<?php 

include "../dbconnection.db.php";

$code = $_POST['code'];
$id = $_POST['id'];
$cod = array();

foreach( $code as $code ) {
array_push($cod, $code);  
  }


$i = count($cod);
$j = 0;
for($j = 0; $j < $i; $j++) {
  $sql = "INSERT INTO studentsubs (student_id, subject) 
  VALUES ('$id','$cod[$j]');";
  $result = mysqli_query($conn, $sql);
}


header("Location: ../../admin/student/irregular.admin.php?success=Successfully enroll&stid=$id");