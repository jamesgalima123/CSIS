<?php
session_start();

if (isset($_SESSION['username'])) {

    include "../adminlayout/head.admin.php"; 
    
    
    $sql = "SELECT * from teacherrecords where teacher_id = '$_GET[tid]'";
    $result = $conn->query($sql);
    if ($result->num_rows > 0) {
        while ($row = $result->fetch_assoc()) {
            $name = $row['name'];
            $id = $row['teacher_id'];
            $gender = $row['gender'];
            $address = $row['address'];
            $cp = $row['cellphone'];
        }
    }
    ?>
    <!-- content here -->
    <nav class="navbar navbar-expand navbar-light  topbar  static-top ">
        <!-- Topbar Search -->
        <h1 class="h3 text-gray-800 mr-auto">Edit Teacher Record</h1>
    </nav>
    <form class="needs-validation" action="../../database/editprofile/teacher.db.php" method="post" novalidate>
                <div class="w-75 m-auto">
                    
                    <div class="form-group d-flex" >
                        <label for="studentid" style="width: 50%; padding:1px">Teacher ID
                        <input type="text" class="form-control" name="teacherid" autocomplete="off" value="<?php echo $id ?>">                
                        </label>
                        
                        <label for="studentid" style="width: 50%; padding:1px">Name
                        <input type="text" class="form-control" name="name" autocomplete="off"  value="<?php echo $name ?>">
                        </label>
                        <input type="text" class="form-control" name="id" autocomplete="off" value="<?php echo $_GET['tid']; ?>" hidden>                
                        
                    </div>
                   

                    <!-- selection for gender -->
                    <div class="form-group d-flex">
                        <label for="contact" style="width: 40%; padding:1px">Contact
                            <input type="tel" class="form-control" name="contact" autocomplete="off" pattern="[0-9]{11}"  value="<?php echo $cp ?>">
                        </label>

                        <label for="gender" style="width: 20%; padding:1px">Gender
                            <select name="gender" id="gender" class="form-control "  value="<?php echo $gender ?>">
                                <option value="male">M</option>
                                <option value="female">F</option>
                            </select>
                        </label>

                        <label for="address" style="width: 100%; padding:1px">Address
                        <input type="text" class="form-control" name="address" autocomplete="off"  value="<?php echo $address ?>">
                        </label>
                    </div>
                   
                    <!-- end of course selection -->
                </div>
                <!-- end of modal body -->
                <?php if (isset($_GET['success'])) { ?>
                    <div class="alert alert-success text-center">
                        <strong>Success!</strong> <?php echo $_GET['success'];?> 
                        </div> <?php } ?>
                <!-- modal footer -->
                <div class="modal-footer">
                   
                    <button class="btn btn-sm btn-outline-success" type="submit" name="ok">Edit</button>
                </div>
                <!-- end of modal footer -->
            </form>



    
            <h5 class="modal-title" id="exampleModalLabel">Subject Listed To - <?php echo $name; ?></h5>
       
        <!-- end of modal header -->
        <form action="../../database/addrecord/addsub.db.php" method="post">
            <!-- modal body -->
            <div class="modal-body">
                <!-- text box student id -->
                <div>
                    <div class="table-responsive">
                        <table class="table table table-striped table-hover table-borderless" >
                            <thead class="">
                                <tr>
                                    <th>Subject Code</th>
                                    <th>Subject Title</th>
                                    <th>Units</th>
                                    <th>Action</th>
                                </tr>
                            </thead>
                            <tbody>


                                <?php
                                $sql = "SELECT * from subjects where teacher_id = '$_GET[tid]'";
                                $result = $conn->query($sql);

                                if ($result->num_rows > 0) {
                                    while ($row = $result->fetch_assoc()) {
                                        $subcode = $row['subcode'];
                                        $description = $row['description'];
                                        $units = $row['units'];

                                        $del = "<a class='btn btn-sm btn-outline-danger' href='../../database/deleterecord/sub.db.php?subcode=$subcode'>
                                        <i class='fas fa-minus'></i></a>";

                                        echo "<tr><td>" . $subcode . "</td>
                                                <td>" . $description . "</td>
                                                <td>" . $units . "</td>
                                                <td>. $del .</td></tr>";
                                    }
                                }else{
                                    echo"<td>No Subject</td>";
                                }
                                ?>
                            </tbody>
                        </table>
                        <hr class="sidebar-divider bg-info mb-0 mt-3">       
                        <div class="form-group">
                        Select subject want to add in into Teacher
                            <select name="subject" id="subject" class="form-control" required>
                            <option selected disabled value="">Choose...</option>
                                <?php

                                $sql = "SELECT * from sublists where description != '$description'";
                                $result = $conn->query($sql);

                                if ($result->num_rows > 0) {
                                    while ($row = $result->fetch_assoc()) {
                                        echo "<option value='" . $row['description'] . "'>Subject Code-" 
                                        . $row['subject_code'] ." | Description-". $row['description'] 
                                        ." | Units-".$row['units']."</option>";
                                    }
                                } else {
                                    echo "<tr><td>No records</td></tr>";
                                }
                                ?>
                            </select>
                            <input type="hidden" name="tid" value="<?php echo $_GET['tid']; ?>">
                        </div>
                    </div>
                </div>

                <!-- end student id -->
                <!-- end of course selection -->
            </div>
            <!-- end of modal body -->

            <!-- modal footer -->
            <div class="modal-footer">
                <a class="btn btn-sm btn-outline-secondary" type="button" href="teacherlist.admin.php">Cancel</a>
                <button class="btn btn-sm btn-outline-primary" type="submit" name="ok">Add</button>
            </div>
            <!-- end of modal footer -->
        </form>
    
    <!-- end of content here -->
<?php include "../adminlayout/footer.admin.php";
} else {
    header("Location: ../canossa/master.blade.php");
    exit();
}
?>