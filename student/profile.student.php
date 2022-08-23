<?php
session_start();
$page ="profile";
if (isset($_SESSION['user_id'])) {

    include "../layout/head.layout.php";

    $sql = "SELECT * from studentrecords where student_id = '$_SESSION[user_id]'";
    $result = $conn->query($sql);

    if ($result->num_rows > 0) {
        while ($row = $result->fetch_assoc()) {
            $name = $row['name'];
            $course = $row['course'];
            $gender = $row['gender'];
            $cellphone = $row['cellphone'];
            $bday = $row['bday'];
            $bplace = $row['bplace'];
            $address = $row['address'];
        }
    }
?>

    <nav class="navbar navbar-expand navbar-light  topbar mb-4 static-top ">
        <!-- Topbar Search -->
        <h1 class="h3 mb-5 text-gray-800 mr-auto">Profile</h1>
    </nav>
    <hr class="sidebar-divider bg-info">
    <form action="../database/editprofile/editprofile.db.php?id=<?php echo $_SESSION['user_id']; ?>" method="post">
    <div class="row">
        <div class="col">
            <table>
                <tr>
                    <th class="p-2">Student ID </th>
                    <td class="p-2"><i class="text-dark font-weight-bold mr-5"><?php echo $id; ?></i></td>
                </tr>
                <tr>
                    <th class="p-2">Name </th>
                    <td class="p-2"><i class="text-dark font-weight-bold "><?php echo $name; ?></i></td>
                </tr>
                <tr>
                    <th class="p-2">Gender </th>
                    <td class="p-2"><i class="text-dark font-weight-bold "><?php echo $gender; ?></i></td>
                </tr>
                <tr>
                    <th class="p-2">Date of Birth </th>
                    <td class="p-2"><i class="text-dark font-weight-bold "><?php echo $bday; ?></i></td>
                </tr>
                <tr>
                    <th class="p-2">Place of Birth </th>
                    <td class="p-2"><i class="text-dark font-weight-bold "><?php echo $bplace; ?></i></td>
                </tr>
            </table>
        </div>

        <div class="col">
            
                <table>
                    <tr>
                        <th class="p-2">Course </th>
                        <td class="p-2"><i class="text-dark font-weight-bold mr-5"><?php echo $course; ?></i></td>
                    </tr>
                    <tr>
                        <th class="p-2">Address </th>
                        <td class="p-2"><input type="text" name="address" value="<?php echo $address; ?>" class="form-control"></td>
                    </tr>
                    <tr>
                        <th class="p-2">Mobile No. </th>
                        <td class="p-2"><input type="text" name="cellphone" value="<?php echo $cellphone; ?>" class="form-control"></td>
                    </tr>

                </table>
                
            

        </div>
        
    </div>
    <hr class="sidebar-divider bg-info">
    <center><button class="btn btn-sm btn-outline-primary"> Save</button></center>
    
    </form>
    <?php if (isset($_GET['success'])) { ?>
  <div class="alert alert-success text-center d-none d-sm-block">
    <strong>Saved!</strong>
  </div><?php } ?>

<?php include "../layout/footer.layout.php";
} else {
    header("Location: ../canossa/master.blade.php");
    exit();
}
?>