<?php 
session_start();
$page ="archive";
if (isset($_SESSION['username'])) {
include_once '../adminlayout/head.admin.php' ?>      
<nav class="navbar navbar-expand navbar-light  topbar  static-top ">
<h1 class="h3 text-gray-800 mr-auto">Withdrawn Students List</h1>
<!-- Topbar Search -->
</nav>
<div class="float-right m-1">
<!-- <a class="btn btn-outline-primary btn-sm" href="../../print/irregular.print.php"><i class="fas fa-print"></i>Print Records</a> -->
</div>
<div class="table-responsive">
    <table class="table table-striped table-hover table-borderless" id="datatableid">
        <thead class="bg-primary text-light ">
            <tr>
                <th>Student ID</th>
                <th>Name</th>
                <th>Course</th>
                <th>Cell No.</th>
                <th>Withdrawn Date</th>
                 <th>Action</th> 
            </tr>
        </thead>
        <tbody> 
            <?php
                    include_once '../../database/dbconnection.db.php';
                    $sql = "SELECT * from withdrawns where student_id != 'test'" ;
                    $result = $conn-> query($sql);
                
                    if($result-> num_rows > 0 ){
                        while($row = $result-> fetch_assoc()){
                            $edit = "<a class='btn btn-sm btn-outline-info' data-toggle='tooltip' data-placement='top' title='Re-Enroll' href='../../database/deleterecord/student.db.php?stid=$row[student_id]'>
                            <i class='fas fa-edit'></i></a>";
                            echo "<tr><td>".$row['student_id']."</td>
                            <td>".$row['name']."</td>
                            <td>".$row['course']."</td>
                            <td>".$row['mobile_number']."</td>
                            <td>".$row['withdraw_date']."</td>
                            <td>".$edit."</td></tr>";
                        }
                    }    
                ?>
        </tbody>
    </table>
</div>
<?php include_once '../adminlayout/footer.admin.php';
 }else{
    header("Location: ../adminlayout/master_layout.blade.php");
    exit();
} ?>
                    
                    
                

