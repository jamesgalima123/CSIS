<?php
session_start();
$page ="teacher";
if (isset($_SESSION['username'])) {
    include_once '../adminlayout/head.admin.php' ?>
    <nav class="navbar navbar-expand navbar-light topbar static-top ">
        <!-- Topbar Search -->
        <h1 class="h3 text-gray-800">Teacher List</h1>
    </nav>
    <div class="float-right m-1">
<a class="btn btn-sm btn-outline-primary" data-toggle="modal" data-target="#AddTeacherModal"><i class="fas fa-plus mr-2"></i>Add Teacher</i></a>
<a class="btn btn-sm btn-outline-primary" href="../../print/teacher.print.php"><i class="fas fa-print"></i>Print Records</a>
</div>
    <?php if (isset($_GET['error'])) { ?>
    <div class="alert alert-danger text-center">
      <strong>Error!</strong> <?php echo $_GET['error']; ?>
    </div><?php } ?>
    <div class="table-responsive">
    <table class="table table-striped table-hover table-borderless" id="datatableid">
        <thead class="bg-primary text-light">
            <tr>
                <th >Teacher ID</th>
                <th>Name</th>
                <th>Sex</th>
                <th>Cell No.</th>
                <th>Address</th>
                <th>Action</th>
            </tr>
        </thead>
        <tbody>
        
            <?php

        //href='../../database/deleterecord/teacher.db.php?tid=$row[teacher_id]
        $sql = "SELECT *
        FROM teacherrecords
        WHERE teacher_id NOT IN (SELECT teacher_id FROM resigns);";

            
            $result = $conn->query($sql);
            if ($result->num_rows > 0) {
                while ($row = $result->fetch_assoc()) {
                    $del = "<a class='btn btn-sm btn-outline-danger m-1' href='../../database/withdraws/teacher.db.php?tid=$row[teacher_id]'>
                                <i class='fas fa-user-minus'></i></a>";
                                $tid = "<a class='btn btn-sm btn-outline-info m-1' href='teacher.admin.php?tid=$row[teacher_id]'>
                                <i class='fas fa-edit'></i></a>";
                    echo "<tr><td>" . $row['teacher_id'] . "</td>
                            <td>" . $row['name'] . "</td>
                            <td>" . $row['gender'] . "</td>
                            <td>" . $row['cellphone'] . "</td>
                            <td>" . $row['address'] . "</td>
                            <td class=''>" . $tid . $del ."</td></tr>";
                }
            } else {
                echo "<tr><td>No records</td></tr>";
            }
            ?>
        </tbody>
    </table>
    </div>

<?php 

include "createteacher.admin.php" ;
include_once '../adminlayout/footer.admin.php';
       
} else {
    header("Location: ../canossa/master.blade.php");
    exit();
} ?>