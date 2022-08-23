<?php 
session_start();
$page ="irregstudent";
if (isset($_SESSION['username'])) {
include_once '../adminlayout/head.admin.php' ?>      
<nav class="navbar navbar-expand navbar-light  topbar  static-top ">
<h1 class="h3 text-gray-800 mr-auto">Irregular Student List</h1>
<!-- Topbar Search -->
</nav>
<div class="float-right m-1">
<a class="btn btn-outline-primary btn-sm" href="../../print/irregular.print.php"><i class="fas fa-print"></i>Print Records</a>
</div>
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
                <th>Program Title</th>
                <th>Action</th>
            </tr>
        </thead>
        <tbody> 
            <?php
                    include_once '../../database/dbconnection.db.php';
                    $sql = "SELECT * from studentrecords where status = 'irregular'";
                    $result = $conn-> query($sql);
                
                    if($result-> num_rows > 0 ){
                        while($row = $result-> fetch_assoc()){
                            $edit = "<a class='btn btn-sm btn-outline-info' href='irregular.admin.php?stid=$row[student_id]'>
                            <i class='fas fa-edit'></i></a>";
                            echo "<tr><td>".$row['student_id']."</td>
                            <td>".$row['name']."</td>
                            <td>".$row['gender']."</td>
                            <td>".$row['cellphone']."</td>
                            <td>".$row['bday']."</td>
                            <td>".$row['bplace']."</td>
                            <td>".$row['address']."</td>
                            <td>".$row['course']."</td>
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
                    
                    
                

