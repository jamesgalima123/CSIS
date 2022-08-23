<?php
session_start();
include_once '../database/dbconnection.db.php';

if (isset($_SESSION['username'])) {
    $c = 0;
    $id = $_SESSION['username'];
    $year = $_GET['year']; 
    $sub = $_GET['sub'];
    $course = $_GET['course'];
    $term = $_GET['term'];
    $sql2 = "SELECT * from subjects where description = '$sub'";
    $result2 = $conn->query($sql2);
    if ($result2->num_rows > 0) {
        while ($row2 = $result2->fetch_assoc()) {
            $subcode = $row2['subcode'];
        }
    }
    $sql2 = "SELECT teacher_id from subjects where description = '$sub'";
    $result2 = $conn->query($sql2);

    if ($result2->num_rows > 0) {
        while ($row2 = $result2->fetch_assoc()) {
            $id = $row2['teacher_id'];
        }
    }
    include "../database/grade/computation.php"; 
?>
    <!-- header -->
    <title>CSIS</title>
    <!-- Custom fonts for this template-->
    <link rel="icon" href="../assets/img/logo.png">
    <!-- Custom fonts for this template-->
    <link href="../assets/vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
    <link href="../assets/css/font.css" rel="stylesheet">
    <!-- Custom styles for this template-->
    <link href="../assets/css/sb-admin-2.min.css" rel="stylesheet">
    <link href="../assets/css/print.css" rel="stylesheet" media="print">
    <!-- end of header -->
   
    <div class="p-5">
        <div class="title mb-3 row text-center">
            <div class="col-1 "><img src="../assets/img/logo.jpg" alt=""></div>
        </div>
        <div class=" mb-3">
        <h5 class="title text-dark mb-5"> Summary of Grades <?php echo $_GET['sub'];?></h5>
        <p><?php echo $course ?></p>
        <table class="table" id="studentlist">
        <thead class="bg-primary text-light" >
            <tr>
                <th>Student ID</th>
                <th>Name</th>
                <th >Course</th>
                <th >Score</th>
            </tr>
        </thead>
        <tbody>
            
        <?php
$sql = "SELECT *
FROM studentsubs
WHERE subject = '$sub' and student_id NOT IN (SELECT student_id FROM withdrawns);";


            $result = $conn->query($sql);
            if ($result->num_rows > 0) {
                while ($row = $result->fetch_assoc()) {
                    $id = $row['student_id'];
                    $sql2 = "SELECT * from studentrecords where student_id = '$id' and course = '$course' and year = '$year' order by name";
                    $result2 = $conn->query($sql2);
                     $term;
                     if($term === "prelim"){
                        $table = "prelims";
                        $th = " ";
                    }elseif($term === "midterm"){
                        $table = "prelims";
                        $th = "Prelim";
                    }elseif($term === "final"){
                        $table = "midterms";
                        $th = "Midterm";
                    }
                    

                    if ($result2->num_rows > 0) {
                        while ($row2 = $result2->fetch_assoc()) {

                            $sql3 = "SELECT * from $table where student_id = '$id' and subject = '$sub' order by created_at ASC";
                            $result3 = $conn->query($sql3);
        //getting the recent grade
                            if ($result3->num_rows > 0) {
                                while ($row3 = $result3->fetch_assoc()) {
                                   $recentgrade = $row3['grade'];
                                }
                            }  
                            
// finalizing
                            if ($term == 'prelim'){
                              
                                $grade = ($csarray[$c] + $examarray[$c] + $reportarray[$c] + $satarray[$c]);

                                $finalgrade = $grade;

                            }else{
                                
                                $grade = ($csarray[$c] + $examarray[$c] + $reportarray[$c] + $satarray[$c]);

                                $finalgrade = ($recentgrade * .30 )+($grade * .70);


                            }

                            
            ?>
        <tr>
            <td><?php echo $row2['student_id']; ?></td>
            <td><?php echo $row2['name']; ?></td>
            <td><?php echo $row2['course']; ?></td>
            
        

            <td><a><?php  echo number_format($finalgrade, 0.0); ?> </a></td>
            <input type="hidden" name="studentid[]" value="<?php echo $row2['student_id']; ?>"
                class="border-0 bg-transparent ">
                <input type="hidden" name="course" value="<?php echo $course; ?>"
                class="border-0 bg-transparent ">
          



        </tr>
        <?php $c++;
                        }
                    }
                }
            } else {
                echo "<tr><td>No records</td></tr>";
            }

            ?>
        </tbody>
    </table>
                <br>
                <a class="btn btn-danger" id="print-btn" href="../admin/student/gradeassess.admin.php?sub=<?php echo $sub;?>&course=<?php echo $course;?>&year=<?php echo $year ?>"><i class="fas fa-arrow-circle-left"></i></a>
                <button class="btn btn-danger" onclick="window.print();" id="print-btn"><i class="fas fa-print"></i></button>
          

        </div>
    </div>
<?php
} else {
    header("Location: ../canossa/master.blade.php");
    exit();
} ?>