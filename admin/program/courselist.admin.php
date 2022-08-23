<?php
session_start();
$page ="course";
if (isset($_SESSION['username'])) {

    include_once '../adminlayout/head.admin.php' ?>
    <nav class="navbar navbar-expand navbar-light  topbar static-top ">
        <!-- Topbar Search -->
        <h1 class="h3 text-gray-800 mr-auto">Program List</h1>
        <div class="float-right">
        <a class="btn btn-sm btn-outline-primary" data-toggle="modal" data-target="#AddcourseModal"><i class="fas fa-plus"></i>Add Course</a>
    </div>
    </nav>
    
    <div class="table-responsive">
    <table class="table">
        <thead class="bg-primary text-light ">
            <tr>
                <th class="">Program Title</th>
                <th>Action</th>
                <th></th>
            </tr>
        </thead>
        <tbody>
            <?php

            $sql = "SELECT * from course";
            $result = $conn->query($sql);

            if ($result->num_rows > 0) {
                while ($row = $result->fetch_assoc()) {

                    $del = "<a class='btn btn-sm btn-outline-danger' href='../../database/deleterecord/course.db.php?cid=$row[id]'>
                            <i class='fas fa-minus'></i></a>";
                    $des = "<a class='btn btn-sm btn-outline-info' href='course.admin.php?des=$row[description]'>
                            <i class='fas fa-edit'></i></a>";

                    echo "<tr>
                            <td class='font-weight-bold'>" . $row['description'] . "</td>
                            <td class=''>" . $des . "</td>
                            <td class=''>" . $del . "</td>";
                }
            } else {
                echo "<tr><td>No records</td></tr>";
            }
            ?>
        </tbody>
    </table>
    </div>
    
    <?php include "creatcourse.admin.php"; ?>

<?php include_once '../adminlayout/footer.admin.php';
} else {
    header("Location: ../canossa/master.blade.php");
    exit();
} ?>