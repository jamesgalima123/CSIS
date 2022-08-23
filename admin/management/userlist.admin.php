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
            
            $sql = "SELECT * from users where user_id NOT IN (SELECT student_id FROM withdrawns) and user_id NOT IN (SELECT teacher_id FROM resigns)";
            $result = $conn->query($sql);

            if ($result->num_rows > 0) {
                while ($row = $result->fetch_assoc()) {
               
                ?>

                    <tr>
                            <td><?php echo $row['user_id']?></td>
                            <td><?php echo $row['role']?></td>
                            <td><?php echo $row['password']?></td>
                            <!-- <td><a class="edit-employee text-dark" id="employeeEdit"
                        data-employeeid="{{ $employee->employee_id }}"
                        data-name="{{ $employee->name }}"
                        data-gender="{{ $employee->gender }}"
                        data-dob="{{ $employee->dob }}"
                        data-email="{{ $employee->email }}"
                        data-nationality="{{ $employee->nationality }}"
                        data-mobile="{{ $employee->mobile_number }}"
                        data-bs-toggle="modal" data-bs-target="#editModal">
                        <i class="far fa-edit"></i>
                    </a>
                </td> -->
                            <!-- <td><a type="button" class="btn btn-outline-info m-1 btn-sm editbtn" >
                            <i class="fas fa-edit"></i></a></td> -->

                            <td><a class="btn btn-outline-info m-1 btn-sm edit-user" id="userEdit"  onclick = "editUser(<?php echo $row['id'] ?>)">
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
  

    <div style = "background:rgba(0,0,0,0.5)" class="modal" id="editUser" tabindex="-1" aria-labelledby="editModalLabel" aria-hidden="true">
      <div class="modal-dialog modal-dialog-centered">
        <div class="modal-content">
        <div class="modal-header bg-primary">
                <h5 class="modal-title text-light" id="exampleModalLabel">Edit User Password</h5>
                <button class="close text-light closemodal" type="button" data-dismiss="modal" onclick = "closeEditUser()" aria-label="Close">
                    <i class="fa fa-window-close" aria-hidden="true"></i>
                </button>
            </div>
            <div class="modal-body">
            <form  method="POST" id="userUpdateForm" action = "../../database/changepass/user.db.php"> 
            <div class="form-group">
                    <input disabled type="text" class="form-control" name="userid" id="userid" autocomplete="off" placeholder="User id">
                    </div>
                    <!-- end student id -->

                    <div class="form-group">
                        <input type="text" class="form-control" name="role" id="userrole" autocomplete="off" placeholder="Role" disabled required>
                    </div>

                    <!-- text box contact-->
                    <div class="form-group">
                        <input type="text" class="form-control" name="password" id="userpassword" autocomplete="off" placeholder="Password" required>
                    </div>
                    <input type="text" class="form-control" name="id" id="id" autocomplete="off" placeholder="Password" hidden>
            </form>
                    <!-- text box student id -->
                    <!-- end address -->
                </div>
          <div class="modal-footer">
            <button type="button" class="btn btn-outline-secondary btn-sm" data-dismiss="modal" onclick = "closeEditUser()">Close</button>
            <button type="button" class="btn btn-outline-primary btn-sm" onclick="document.getElementById('userUpdateForm').submit()">Update</button>
          </div>
        </div>
      </div>
    </div>

    <script>
        function editUser(id){
        $.get('../../database/userlist',{
            id: id
        },function (data, status){
            try {
                let editUser = $("#editUser");
                let User = JSON.parse(data)[0];
                $("#id").val(User.id);
                $("#userid").val(User.user_id);
                $("#userrole").val(User.role);
                $("#userpassword").val(User.password);
                editUser.show();
            } catch (error) {
                alert(error);
            }
        });
        
    }
    function closeEditUser(){
        try {
            let editSubject = $("#editUser");
            editSubject.hide();
        } catch (error) {
            alert(error);
        }
    }

    </script>

<?php include_once '../adminlayout/footer.admin.php';
} else {
    header("Location: ../canossa/master.blade.php");
    exit();
} ?>




