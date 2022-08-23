
<?php
session_start();
$page ="student";
if (isset($_SESSION['username'])) {

    include_once '../adminlayout/head.admin.php' ?>
<nav class="navbar navbar-expand navbar-light topbar static-top ">
<h1 class="h3 text-gray-800 ">Student List</h1>
<!-- Topbar Search -->
</nav>
<div class="float-right m-1">
<a class="btn btn-sm btn-outline-primary" data-toggle="modal" data-target="#AddStudentModal"><i class="fas fa-plus mr-2"></i>Add Student</i></a>

<a class="btn btn-sm btn-outline-primary" data-toggle="modal" data-target="#print"><i class="fas fa-print"></i>Print Records</i></a>
</div>

<div class="row d-flex justify-content-center">
<?php if (isset($_GET['error'])) { ?>
    <div class="alert alert-danger text-center alert-dismissible fade show col-4">
    <strong>Error!</strong> <?php echo $_GET['error']; ?>
      <button type="button" class="close" data-dismiss="alert" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
    </div>
    <?php } ?>
    
    <?php if (isset($_GET['success'])) { ?>
        <div class="alert alert-info text-center" role="alert" id="myAlert">
            <strong>Update!</strong> <?php echo $_GET['success'];?> 
        </div> <?php } ?>

</div>
  <div class="table-responsive">
    <table class="table table-striped table-hover table-borderless" id="datatableid">
        <thead class="bg-primary text-light ">
            <tr>
                <th>Student ID</th>
                <th>Name</th>
                <th>Sex</th>
                <th>Cell No.</th>
                <th>Birthday</th>
                <th>Birth place</th>
                <th>Address</th>
                <th>Program</th>
                <th>Status</th>
                <th>Year</th>
                <th>Action</th>
            </tr>
        </thead>
        <tbody>  
       
            <?php
                    include_once '../../database/dbconnection.db.php';

                   $sql = "SELECT *
                   FROM studentrecords
                   WHERE student_id NOT IN (SELECT student_id FROM withdrawns);";

                    $result = $conn-> query($sql);  
                    if($result-> num_rows > 0 ){
                        while($row = $result-> fetch_assoc()){
                            $del = "<a class='btn btn-outline-danger m-1 btn-sm' data-toggle='tooltip' data-placement='top' title='Withdraw' href='../../database/withdraws/student.db.php?stid=$row[student_id]'>
                            <i class='fas fa-user-minus'></i></a>";
                            //$edit = "<a class='btn btn-outline-info m-1 btn-sm' data-toggle='tooltip' data-placement='top' title='Edit' href='editstudentrecord.admin.php?stid=$row[student_id]'>
                            //<i class='fas fa-edit'></i></a>";
                            $hey = "fff";
                            if($row['student_id'] == "C-21000068"){
                                $hey = "aaa";
                            }
                            // $edit = "<a class='btn btn-sm btn-outline-info edit-student' id='studentEdit' 
                            //     data-studentid='$row[student_id] $hey'   data-name='$row[name]'
                            //     data-gender='$row[gender]'          data-cellphone='$row[cellphone]'
                            //     data-bday='$row[bday]'              data-bplace='$row[bplace]'
                            //     data-address='$row[address]'        data-course='$row[course]'
                            //     data-address='$row[address]'        data-id='$row[student_id]'
                            //     data-status='$row[status]'
                            //     data-toggle='modal' data-target='#editStudent'>
                            //     <i class='fas fa-edit'></i></i></a>";
                            $edit = "'<a class='btn btn-sm btn-outline-info edit-student' onclick = 'editStudent(`" . $row['id']  . "`)'>
                                <i class='fas fa-edit'></i></i></a>";
                            echo "<tr><td>".$row['student_id']."</td>
                            <td>".$row['name']."</td>
                            <td>".$row['gender']."</td>
                            <td>".$row['cellphone']."</td>
                            <td>".$row['bday']."</td>
                            <td>".$row['bplace']."</td>
                            <td>".$row['address']."</td>
                            <td class='text-wrap'>".$row['course']."</td>
                            <td>".$row['status']."</td>
                            <td>".$row['year']."</td>
                            <td>".$del."$edit"."</td></tr>";
                        }
                    }
                ?>  
        </tbody>
    </table>    
  </div>
  <?php include "create.admin.php" ?>  
  <?php include "edit.admin.php" ?>  

<?php include_once '../adminlayout/footer.admin.php';
} else {
    header("Location: ../adminlayout/master_layout.blade.php");
    exit();
} ?>



<div class="modal fade" id="print" tabindex="-1" role="dialog" 
    aria-hidden="true">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <!-- modal header -->
            <div class="modal-header bg-primary">
                <h5 class="modal-title text-light" id="exampleModalLabel">Print Student Records</h5>
                <button class="close text-light" type="button" data-dismiss="modal" aria-label="Close">
                <i class="fa fa-window-close" aria-hidden="true"></i>
                </button>
            </div>
            <!-- end of modal header -->
            <form action="../../print/student.print.php" method="post">
                <!-- modal body -->
                <div class="modal-body row">
                    <!-- text box student id -->
                <div class="mt-2 d-flex">
                <label >Select Program</label>
            <select name="filter"  class="form-control">
            <option value="all">All Programs</option>
            <?php
                                include_once '../database/dbconnection.db.php';

                                $sql = "SELECT * from course";
                                $result = $conn->query($sql);

                                if ($result->num_rows > 0) {
                                    while ($row = $result->fetch_assoc()) {

                                        echo "<option value='" . $row['description'] . "'>" . $row['description'] . "</option>";
                                    }
                                } else {
                                    echo "<tr><td>No records</td></tr>";
                                }
                                ?>

            </select>
            
                </div>
           
            
            
                    <!-- end student id -->      
                    <!-- end of course selection -->
                </div>
                <!-- end of modal body -->

                <!-- modal footer -->
                <div class="modal-footer">
                    <button class="btn btn-sm btn-outline-secondary" type="button" data-dismiss="modal">Cancel</button>
                    <button class="btn btn-sm btn-outline-primary" type="submit" name="ok">Done</button>
                </div>
               
                    <!-- end of modal footer -->
            </form>
        </div>
    </div>
</div>
<script>

    function editStudent(id){
        $.get('../../database/studentrecord',{
            id: id
        },function (data, status){
            try {
                let editStudent = $("#editStudent");
                let student = JSON.parse(data)[0];
                $("#studentid").val(student.student_id);
                $("#id").val(student.id);
                $("#name").val(student.name);
                $("#cellphone").val(student.cellphone);
                $("#sex").val(student.gender);
                $("#bday").val(student.bday);
                $("#bplace").val(student.bplace);
                $("#address").val(student.address);
                $("#course").val(student.course);
                $("#status").val(student.status);
                $("#year").val(student.year);

                editStudent.show();
            } catch (error) {
                alert(error);
            }
        });
        
    }
    function closeEditStudent(){
        try {
            let editStudent = $("#editStudent");
            editStudent.hide();
        } catch (error) {
            alert(error);
        }
    }
</script>