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
            <a class="btn btn-danger" id="print-btn" href="../admin/teacher/teacherlist.admin.php"><i class="fas fa-arrow-circle-left"></i></a>
            <button class="btn btn-danger" onclick="window.print();" id="print-btn"><i class="fas fa-print"></i></button>
        </div>
        <h5 class="title text-dark mb-5">Teacher List</h5>
        <table class="table">
            <thead class="bg-primary text-light">
                <tr>
                    <th>Teacher ID</th>
                    <th>Name</th>
                    <th>Gender</th>
                    <th>Cell No.</th>
                    <th>Address</th>
                </tr>
            </thead>
            <tbody>


                <?php
                include_once '../database/dbconnection.db.php';

                $sql = "SELECT * from teacherrecords";
                $result = $conn->query($sql);

                if ($result->num_rows > 0) {
                    while ($row = $result->fetch_assoc()) {

                        $id = $row['teacher_id'];
                        $name = $row['name'];
                        $gender = $row['gender'];
                        $cell = $row['cellphone'];
                        $address = $row['address'];

                        $sq = "SELECT * from users where user_id = '$id'";
                        $resul = $conn->query($sq);

                        echo "<tr><td>" . $id . "</td>
                                    <td>" . $name . "</td>
                                    <td>" . $gender . "</td>
                                    <td>" . $cell . "</td>
                                    <td>" . $address . "</td>
                                    </tr>";
                    }
                } else {
                    echo "<tr><td>No records</td></tr>";
                }

                ?>


            </tbody>
        </table>

    </div>


<?php 
} else {
    header("Location: ../canossa/master.blade.php");
    exit();
} ?>