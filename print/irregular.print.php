<?php
session_start();

if (isset($_SESSION['username'])) {

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
        <div class="text-right mb-3">
            <a class="btn btn-danger" id="print-btn" href="../admin/student/irregularlist.admin.php"><i class="fas fa-arrow-circle-left"></i></a>
            <button class="btn btn-danger" onclick="window.print();" id="print-btn"><i class="fas fa-print"></i></button>


        </div>
        <h5 class="title text-dark mb-5">Irregular Student List</h5>
        <div class="table-responsive">

    <table class="table table-striped table-hover table-borderless" id="datatableid">
        <thead class="bg-primary text-light ">
            <tr>
                <th>Student ID</th>
                <th>Name</th>
                <th>Gender</th>
                <th>Cell No.</th>
                <th>Birthday</th>
                <th>Birth place</th>
                <th>Address</th>
                <th>Course</th>
          
            </tr>
        </thead>
        <tbody> 
            <?php
                    include_once '../database/dbconnection.db.php';
                    $sql = "SELECT *
                    FROM studentrecords
                    WHERE status = 'irregular' and student_id NOT IN (SELECT student_id FROM withdrawns);";
                    $result = $conn-> query($sql);
                
                    if($result-> num_rows > 0 ){
                        while($row = $result-> fetch_assoc()){
                            echo "<tr><td>".$row['student_id']."</td>
                            <td>".$row['name']."</td>
                            <td>".$row['gender']."</td>
                            <td>".$row['cellphone']."</td>
                            <td>".$row['bday']."</td>
                            <td>".$row['bplace']."</td>
                            <td>".$row['address']."</td>
                            <td>".$row['course']."</td></tr>";
                        }
                    }    
                ?>
        </tbody>
    </table>
</div>
    </div>


<?php 
} else {
    header("Location: ../canossa/master.blade.php");
    exit();
} ?>