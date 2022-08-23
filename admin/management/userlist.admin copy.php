<?php
session_start();
$page ="user";
if (isset($_SESSION['username'])) {
  
    include_once '../adminlayout/head.admin.php' ?>


    <nav class="navbar navbar-expand navbar-light  topbar static-top ">
        <!-- Topbar Search -->
        <h1 class="h3 text-gray-800 mr-auto">Users List</h1>
        <div class="float-right">
        <!-- <button class="btn btn-sm btn-outline-info" type="submit" >
                          <i class="fas fa-edit"></i>Save</button> -->
    </div>
    </nav>
    <?php if(isset($_GET['success'])){ ?> <div class="alert alert-success text-center alert-dismissible fade show" >
                        <strong>Success!</strong> <?php echo $_GET['success'];?> 
                        <button type="button" class="close" data-dismiss="alert" aria-label="Close">
    <span aria-hidden="true">&times;</span>
  </button>
                    </div> <?php } ?>

    <div class="table-responsive">
    <table class="table table-striped table-hover table-borderless" id="datatableid">
        <thead class="bg-primary text-light ">
            <tr>
                <th scope="col">User ID</th>
                <th scope="col">Role</th>
                <th scope="col">Password</th>
                <th scope="col">Action</th>
            </tr>
        </thead>
        <tbody>
      
            <?php
            
            $sql = "SELECT * from users";
            $result = $conn->query($sql);

            if ($result->num_rows > 0) {
                while ($row = $result->fetch_assoc()) {
               
                ?>

                    <tr>
                            <td><?php echo $row['user_id']?></td>
                            <td><?php echo $row['role']?></td>
                            <td><?php echo $row['password']?></td>
                            <td><a type="button" class="btn btn-outline-info m-1 btn-sm editbtn" >
                            <i class="fas fa-edit"></i></a></td>

                <?php
                }
            } else {
                echo "<tr><td>No records</td></tr>";
            }
            ?>
         
        </tbody>
    </table>
    </div>
  

    <div class="modal fade" id="editmodal" tabindex="-1" role="dialog" aria-hidden="true">
    <div class="modal-dialog modal-dialog-centered" role="document">
        <div class="modal-content">
            <!-- modal header -->
            <div class="modal-header bg-primary">
                <h5 class="modal-title text-light" id="exampleModalLabel">Edit User Password</h5>
                <button class="close text-light closemodal" type="button" data-dismiss="modal" aria-label="Close">
                    <i class="fa fa-window-close" aria-hidden="true"></i>
                </button>
            </div>
            <!-- end of modal header -->
            <form class="needs-validation" novalidate action="../../database/changepass/user.db.php" method="post">
                <!-- modal body -->
                <div class="modal-body">
                    <!-- text box student id -->
                    <div class="form-group">
                    <input type="text" class="form-control" name="userid" id="userid" autocomplete="off" placeholder="User id">
                    </div>
                    <!-- end student id -->

                    <div class="form-group">
                        <input type="text" class="form-control" name="role" id="role" autocomplete="off" placeholder="Role" disabled required>
                    </div>

                    <!-- text box contact-->
                    <div class="form-group">
                        <input type="text" class="form-control" name="password" id="password" autocomplete="off" placeholder="Password" required>
                    </div>
            
                    <!-- end address -->
                </div>
                <!-- end of modal body -->

                <!-- modal footer -->
                <div class="modal-footer">
                    <button class="btn btn-sm btn-outline-secondary closemodal" type="button" data-dismiss="modal">Cancel</button>
                    <button class="btn btn-sm btn-outline-primary" type="submit" name="ok">Save</button>
                </div>
                <!-- end of modal footer -->
            </form>
        </div>
    </div>
</div>


<?php include_once '../adminlayout/footer.admin.php';
} else {
    header("Location: ../canossa/master.blade.php");
    exit();
} ?>




