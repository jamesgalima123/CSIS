<?php
include_once '../dbconnection.db.php';
$sub = $_POST['sub'];
$course = $_POST['course'];
$stid = $_POST['tid'];
$score = $_POST['score'];
$id = $_POST['id'];
$year = $_POST['year'];
$uid = array();
$sc = array();
    //getting the term
$sql = "SELECT * from gradingstatus";
$result = $conn->query($sql);
if ($result->num_rows > 0) {
    while ($row = $result->fetch_assoc()) {
        $term = $row['term'];
    }
}
    //getting the subject code
$sq = "SELECT * from subjects where description = '$sub'";
$resul = $conn->query($sq);
if ($resul->num_rows > 0) {
    while ($ro = $resul->fetch_assoc()) {
        $code = $ro['subcode'];
    }
}



    //loop for student and score
foreach( $id as $id ) {
array_push($uid, $id);  
  }
  foreach( $score as $score ) {
    array_push($sc, $score);  
      }

$i = count($sc);
$j = 0;

//print_r(array_values($sc));
//print_r(array_values($uid));

for($j = 0; $j < $i; $j++) {

  
//  print $uid[$j];
//  print $code;
//  print $stid;
//  print $term;
//  print $course;
//  print $sc[$j];

$sql = "INSERT INTO student_attendance (subject_code, teacher_id, student_id, term, score,   course) 
 VALUES ('$code', '$stid', '$uid[$j]', '$term', '$sc[$j]', '$course');";
 $result = mysqli_query($conn, $sql);
header("Location: ../../teacher/records/attendancerecord.teacher.php?course=$course & sub=$sub & success=Recorded Successfuly&year=$year");
}