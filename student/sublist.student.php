<?php
session_start();
$page ="subject";
if (isset($_SESSION['user_id'])) {
    include_once '../database/dbconnection.db.php';
    include "../layout/head.layout.php"; 
    
    $sq = "SELECT * from studentrecords where student_id = '$id'";
    $resul = $conn->query($sq);
    echo $_SESSION['user_id'];
    if ($resul->num_rows > 0) {
        while ($row = $resul->fetch_assoc()) {
            $name = $row['name'];
            $course = $row['course'];
        }
    }

    ?>

    <nav class="navbar navbar-expand navbar-light  topbar mb-4 static-top ">
        <!-- Topbar Search -->
        <h1 class="h3 mb-4 text-gray-800 mr-auto">Subject List</h1>
    </nav>
    <div>
    <table class="table">
    <h6 class="text-gray-800 mr-auto text-uppercase"><?php echo $course?></h6>
    <h6 class="text-gray-800 mr-auto text-uppercase"><?php echo $id. ", ".$name?></h6>
    
        <thead class="bg-primary text-light">
            <tr>
                <th>Subject code</th>
                <th>Description</th>
                <th>Units</th>
            </tr>
        </thead>
        <tbody>
            <?php
            $sq = "SELECT * from studentsubs where student_id = '$id'";
            $resul = $conn->query($sq);

            if ($resul->num_rows > 0) {
                while ($row = $resul->fetch_assoc()) {
                    $name = $row['subject'];

                    $sql = "SELECT * from sublists where description = '$name'";
                    $result = $conn->query($sql);

                    if ($result->num_rows > 0) {
                        while ($row = $result->fetch_assoc()) {
                            echo "<tr>
                                        <td>" . $row['subject_code'] . "</td>
                                        <td>" . $name . "</td>
                                        <td>" . $row['units'] . "</td>
                                </tr>";
                        }
                    }
                }
            }
            ?>

        </tbody>
    </table>
    </div>
    

<?php include "../layout/footer.layout.php";
} else {
    header("Location: ../canossa/master.blade.php");
    exit();
}
?>