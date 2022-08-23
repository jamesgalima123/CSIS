<ul class="navbar-nav bg-gradient-primary sidebar sidebar-dark accordion" id="accordionSidebar">

    <!-- Sidebar - Brand -->
    <a class="sidebar-brand d-flex align-items-center justify-content-center" href="#">
        <div class="sidebar-brand-icon">
            <img class="img-profile rounded-circle" src="../../assets/img/logo.PNG" width="90%">
        </div>
        <div class="sidebar-brand-text mx-5" style='font-size:18px';>CSIS</sup></div>
    </a>
    <!-- Divider -->
    <hr class="sidebar-divider my-0">
    <!-- Heading -->
    <div class="sidebar-heading">
        Menu
    </div>
    <!-- Nav Item - Schedule Menu -->
    <!-- <li class="nav-item">
        <a class="nav-link" href="../teacher/request.teacher.php">
        <i class="fas fa-comment"></i>
            <span>Make Request</span></a>
    </li> -->
    <!-- Nav Item - Grade Menu -->
    <li class="nav-item">
        <a class="nav-link collapsed active <?php if($page == 'student'){echo"bg-light text-primary active";}?>" href="#" data-toggle="collapse" data-target="#collapsestudentlist"
            aria-expanded="true" aria-controls="collapseTwo">
            <i class="fas fa-users <?php if($page == 'student'){echo"text-primary";}?>"></i>
            <span style='font-size:18px';>Student List</span>
        </a>
        <div id="collapsestudentlist" class="collapse" aria-labelledby="headingstudentlist"
            data-parent="#accordionSidebar">
            <div class="bg-white py-2 collapse-inner rounded">
                <h6 class="collapse-header">Subjects:</h6>
                <?php
                    include_once '../../database/dbconnection.db.php';
                    $tid = $_SESSION['user_id'];
                    $sql = "SELECT * from subjects where teacher_id = '$tid'";
                    $result = $conn-> query($sql);
                    if($result-> num_rows > 0 ){
                        while($row = $result-> fetch_assoc()){
                            echo "<a class='collapse-item' href='../programs/studentlist.teacher.php?sub=$row[description]'>".$row['subcode']."</a>";
                        }
                    }
                    
                ?>
            </div>
        </div>
    </li>
    <li class="nav-item">
        <button class="nav-link collapsed border-0 <?php if($page == 'grade'){echo"bg-light text-primary active";}else{echo"bg-transparent";}?>" disabled="disabled" id="gradingBtn" href="#" data-toggle="collapse"
            data-target="#collapseinputgrade" aria-expanded="true" aria-controls="collapseTwo">
            <i class="far fa-address-card <?php if($page == 'grade'){echo"text-primary";}?>"></i>
            <span style='font-size:18px';>Students Grade</span>
        </button>
        <div id="collapseinputgrade" class="collapse" aria-labelledby="headinginputgrade"
            data-parent="#accordionSidebar">
            <div class="bg-white py-2 collapse-inner rounded">
                <h6 class="collapse-header">Subjects:</h6>
                <?php
                    $tid = $_SESSION['user_id'];
                    $sql = "SELECT * from subjects where teacher_id = '$tid'";
                    $result = $conn-> query($sql);
                    if($result-> num_rows > 0 ){
                        while($row = $result-> fetch_assoc()){
                            echo "<a class='collapse-item' href='../programs/course.teacher.php?sub=$row[description]'>".$row['subcode']."</a>";
                        }
                    } 
                ?>
            </div>
        </div>
    </li>

    <li class="nav-item">
        <button class="nav-link collapsed border-0 <?php if($page == 'gradesummary'){echo"bg-light text-primary active";}else{echo"bg-transparent";}?>" disabled="disabled" id="summaryBtn" href="#" data-toggle="collapse"
            data-target="#collapsegradesummary " aria-expanded="true" aria-controls="collapseTwo">
            <i class="fas fa-address-card <?php if($page == 'gradesummary'){echo"text-primary";}?>"></i>
            <span style='font-size:18px';>Grade Summary</span>
        </button>
        <div id="collapsegradesummary" class="collapse" aria-labelledby="headinggradesummary"
            data-parent="#accordionSidebar">
            <div class="bg-white py-2 collapse-inner rounded">
                <h6 class="collapse-header">Subjects:</h6>
                <?php
                    
                    $tid = $_SESSION['user_id'];
                    $sql = "SELECT * from subjects where teacher_id = '$tid'";
                    $result = $conn-> query($sql);
                    if($result-> num_rows > 0 ){
                        while($row = $result-> fetch_assoc()){
                            echo "<a class='collapse-item' href='../programs/gradesummary.teacher.php?sub=$row[description]'>".$row['subcode']."</a>";
                        }
                    } 
                ?>
            </div>
        </div>
    </li>

    <div class="sidebar-heading">
        Class Records
    </div>
<!-- attendance -->


<li class="nav-item">
        <a class="nav-link <?php if($page == 'attendance'){echo"bg-light text-primary active";}?>" href="../programs/attendance.teacher.php">
        <i class=" fas fa-tasks <?php if($page == 'attendance'){echo"text-primary";}?>"></i>
        <span style='font-size:18px';>Attendance</span></a>
</li>  
    
<!-- class standing -->

<li class="nav-item">
        <a class="nav-link <?php if($page == 'cs'){echo"bg-light text-primary active";}?>" href="../programs/CS.teacher.php">
        <i class=" fas fa-chalkboard <?php if($page == 'cs'){echo"text-primary";}?>"></i>
        <span style='font-size:18px';>Class Standing</span></a>
</li>

<!-- reporting -->

<li class="nav-item">
        <a class="nav-link <?php if($page == 'rep'){echo"bg-light text-primary active";}?>" href="../programs/reporting.teacher.php">
        <i class=" fas fa-tasks <?php if($page == 'rep'){echo"text-primary";}?>"></i>
        <span style='font-size:18px';>Reporting</span></a>
</li>
    
<!-- exam -->

<li class="nav-item">
        <a class="nav-link <?php if($page == 'exam'){echo"bg-light text-primary active";}?>" href="../programs/exam.teacher.php">
        <i class=" fas fa-user-edit <?php if($page == 'exam'){echo"text-primary";}?>"></i>
        <span style='font-size:18px';>Exam</span></a>
</li>

<li class="nav-item">
        <a class="nav-link <?php if($page == 'ovall'){echo"bg-light text-primary active";}?>" href="../programs/ov.teacher.php">
        <i class=" far fa-list-alt <?php if($page == 'ovall'){echo"text-primary";}?>"></i>
        <span style='font-size:18px';>Overall View</span></a>
</li>
    
    <!-- Divider -->
    <hr class="sidebar-divider">
    <div class="sidebar-heading">
        Account Settings
    </div>

    <li class="nav-item">
        <a class="nav-link <?php if($page == 'changepass'){echo"bg-light text-primary active";}?>" href="../profile/changepass.teacher.php" ">
        <i class=" fas fa-key <?php if($page == 'changepass'){echo"text-primary";}?>"></i>
            <span style='font-size:18px';>Change Password</span></a>
    </li>

    <li class="nav-item">
        <a class="nav-link" data-toggle="modal" data-target="#logoutModal" href="#">
            <i class="fas fa-sign-out-alt"></i>
            <span style='font-size:18px';>Logout</span></a>
    </li>
    <!-- Divider -->
    <hr class="sidebar-divider d-none d-md-block">
    <!-- Sidebar Toggler (Sidebar) -->
    <div class="text-center d-none d-md-inline">
        <button class="rounded-circle border-0" id="sidebarToggle"></button>
    </div>
</ul>