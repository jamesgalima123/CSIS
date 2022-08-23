<?php
session_start();
include_once '../database/dbconnection.db.php';
if (isset($_SESSION['user_id'])) {
    $id = $_SESSION['user_id'];
    $sub = $_GET['sub'];
    $course = $_GET['course'];

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
                <th >Prelims</th>
                <th >Midterms</th>
                <th >Finals</th>
            </tr>
        </thead>
        <tbody>
            <?php
            include_once '../database/dbconnection.db.php';
            $sub = $_GET['sub'];
            $course = $_GET['course'];
            $sql = "SELECT *
            FROM studentrecords
            WHERE course = '$course' and student_id NOT IN (SELECT student_id FROM withdrawns);";
            $result = $conn-> query($sql);
            if($result-> num_rows > 0 ){
                while($row = $result-> fetch_assoc()){
                    $id = $row['student_id'];
                    $name = $row['name'];
                    
                    echo "<tr><td>".$id."</td>
                            <td>".$row['name']."</td>";
                            $sql2 = "SELECT * from prelims where subject = '$sub' and student_id = '$id'";
                            $result2 = $conn-> query($sql2);
                            if($result2-> num_rows > 0 ){
                                while($row2 = $result2-> fetch_assoc()){
                                    echo "<td>".$row2['grade']."</td>";
                                           
                                }
                            }else{
                                echo "<td>No records</td>";
                            }
                            $sql2 = "SELECT * from midterms where subject = '$sub' and student_id = '$id'";
                            $result2 = $conn-> query($sql2);
                            if($result2-> num_rows > 0 ){
                                while($row2 = $result2-> fetch_assoc()){
                                    echo "<td>".$row2['grade']."</td>";
                                           
                                }
                            }else{
                                echo "<td>No records</td>";
                            }
                            $sql2 = "SELECT * from finals where subject = '$sub' and student_id = '$id'";
                            $result2 = $conn-> query($sql2);
                            if($result2-> num_rows > 0 ){
                                while($row2 = $result2-> fetch_assoc()){
                                    echo "<td>".$row2['grade']."</td>";
                                           
                                }
                            }else{
                                echo "<td>No records</td>";
                            }
                           
                }
            }
            else{
                echo "<tr><td>No records</td></tr>";
            }
            ?>
        </tbody>
    </table>
                <br>
                <a class="btn btn-danger" id="print-btn" href="../teacher/records/gradingsheet.teacher.php?sub=<?php echo $sub;?>&course=<?php echo $course;?>"><i class="fas fa-arrow-circle-left"></i></a>
                <button class="btn btn-danger" onclick="window.print();" id="print-btn"><i class="fas fa-print"></i></button>
          

        </div>
    </div>
<?php
} else {
    header("Location: ../canossa/master.blade.php");
    exit();
} ?>