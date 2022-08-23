<ul class="navbar-nav bg-gradient-primary sidebar sidebar-dark accordion" id="accordionSidebar">
    <!-- Sidebar - Brand -->
    <a class="sidebar-brand d-flex align-items-center justify-content-center">
        <div class="sidebar-brand-icon">
            <img class="img-profile rounded-circle w-50" src="../../assets/img/logo.PNG">
        </div>
        <div class="sidebar-brand-text mx-3 "style='font-size:18px';>CSIS </sup></div>
    </a>
    <!-- Divider -->
    <hr class="sidebar-divider my-0">
    <!-- Heading -->
    <!-- <div class="sidebar-heading">
        Menu
    </div> -->
    <!-- Nav Item - Schedule Menu -->
    <!-- <li class="nav-item">
        <a class="nav-link" href="../admin/requestlist.admin.php">
            <i class="fas fa-bell fa-fw"></i>
             Counter - Alerts

             <?php
            include_once '../../database/dbconnection.db.php';

            foreach ($conn->query('SELECT COUNT(*) FROM requests') as $row) {

                if ($row['COUNT(*)'] >= '1') {
                    echo " <span class='badge badge-danger badge-counter'>" . $row['COUNT(*)'] . "</span>";
                }
            }
            ?> 

            <span>Notification</span></a>
    </li> -->
    </li>
    <!-- Divider -->
    <hr class="sidebar-divider my-0">
    <!-- Heading -->
    <div class="sidebar-heading">
        registration
    </div>
    <!-- Nav Item - admit Student Menu -->
    <li class="nav-item">
        <a class="nav-link <?php if($page == 'student'){echo"bg-light text-primary active";}?>" href="../student/studentlist.admin.php">
            <i class="fas fa-users <?php if($page == 'student'){echo"text-primary";}?>"></i>
            <span style='font-size:18px';>Students</span></a>
    </li>
    <!-- Nav Item - admit Teachers Menu -->
    <li class="nav-item">
        <a class="nav-link <?php if($page == 'teacher'){echo"bg-light text-primary active";}?>" href="../teacher/teacherlist.admin.php">
            <i class="fas fa-users <?php if($page == 'teacher'){echo"text-primary";}?>"></i>
            <span style='font-size:18px';>Teachers</span></a>
    </li>
    <!-- Nav Item -reg subject Menu -->
    <li class="nav-item">
        <a class="nav-link <?php if($page == 'subject'){echo"bg-light text-primary active";}?>" href="../program/subjectlist.admin.php">
            <i class="fas fa-book <?php if($page == 'subject'){echo"text-primary";}?>"></i>
            <span style='font-size:18px';>Subjects</span></a>
    </li>
    <li class="nav-item">
        <a class="nav-link <?php if($page == 'course'){echo"bg-light text-primary active";}?>" href="../program/courselist.admin.php">
            <i class="fas fa-book <?php if($page == 'course'){echo"text-primary";}?>"></i>
            <span style='font-size:18px';>Courses</span></a>
    </li>
    <li class="nav-item">
        <a class="nav-link <?php if($page == 'irregstudent'){echo"bg-light text-primary active";}?>" href="../student/irregularlist.admin.php">
            <i class="fas fa-users <?php if($page == 'irregstudent'){echo"text-primary";}?>"></i>
            <span style='font-size:18px';>Irregular Students</span></a>
    </li>

     <!-- Divider -->
     <hr class="sidebar-divider my-0">

<div class="sidebar-heading">
    Grade Management
</div>

<li class="nav-item">
    <a class="nav-link <?php if($page == 'grading'){echo"bg-light text-primary active";}?>" data-toggle="modal" data-target="#grading">
    <i class="fas fa-toggle-on <?php if($page == 'grading'){echo"text-primary";}?>"></i>
        <span style='font-size:18px';>Activate Term</span></a>
</li>

<li class="nav-item">
    <a class="nav-link <?php if($page == 'grade'){echo"bg-light text-primary active";}?>" data-toggle="modal" data-target="#StudentGrade">
    <i class="fas fa-award <?php if($page == 'grade'){echo"text-primary";}?>"></i>
        <span style='font-size:18px';>Grades Summary</span></a>
</li>

<li class="nav-item">
        <a class="nav-link <?php if($page == 'gsheet'){echo"bg-light text-primary active";}?>" href="../program/sheet.admin.php">
        <i class=" far fa-list-alt <?php if($page == 'gsheet'){echo"text-primary";}?>"></i>
        <span style='font-size:18px';>Grading Sheet</span></a>
</li>

<li class="nav-item">
        <a class="nav-link <?php if($page == 'assessgrade'){echo"bg-light text-primary active";}?>" href="../program/coursesad.admin.php">
        <i class="fas fa-address-card <?php if($page == 'assessgrade'){echo"text-primary";}?>"></i>
        <span style='font-size:18px';>Assess Grade</span></a>
</li>


    <!-- <li class="nav-item"> -->
        <!-- <a class="nav-link" href="../student/irregularlist.admin.php"> -->
            <!-- <i class="fas fa-users"></i> -->
            <!-- <span>Regular Students</span></a> -->
    <!-- </li> -->
    
    

    <!-- Divider -->
    <hr class="sidebar-divider my-0">

    <div class="sidebar-heading">
        Others
    </div>

    <li class="nav-item">
        <a class="nav-link collapsed  <?php if($page == 'archive'){echo"bg-light text-primary active";}?>" href="#" data-toggle="collapse" data-target="#collapsestudentlist"
            aria-expanded="true" aria-controls="collapseTwo">
            <i class="fas fa-users-slash <?php if($page == 'archive'){echo"text-primary";}?>"></i>
            <span style='font-size:18px';>Archive</span>
        </a>
        <div id="collapsestudentlist" class="collapse" aria-labelledby="headingstudentlist"
            data-parent="#accordionSidebar">
            <div class="bg-white py-2 collapse-inner rounded">
                        <a class='collapse-item' href='../student/withdrawnlist.admin.php'><i class="fas fa-user"></i>Student</a>  
                        <a class='collapse-item' href='../teacher/resignlist.admin.php?sub=$row[description]'><i class="fas fa-user-tie"></i>Teacher</a>  
            </div>
        </div>
    </li>

    <!-- <li class="nav-item">
        <a class="nav-link" href="../student/withdrawnlist.admin.php">
        <i class="fas fa-users-slash"></i>
            <span>Withdrawn</span></a>
    </li> -->
    <li class="nav-item">
        <a class="nav-link <?php if($page == 'user'){echo"bg-light text-primary active";}?>" href="../management/userlist.admin.php">
            <i class="fas fa-users <?php if($page == 'user'){echo"text-primary";}?>"></i>
            <span style='font-size:18px';>Users</span></a>
    </li>
    <div class="sidebar-heading">Account Settings</div>
    <li class="nav-item">
        <a class="nav-link <?php if($page == 'changepass'){echo"bg-light text-primary active";}?>" href="../management/changepass.admin.php">
            <i class="fas fa-key <?php if($page == 'changepass'){echo"text-primary";}?>"></i>
            <span style='font-size:18px';>Change Password</span></a>
    </li>

    <li class="nav-item">
        <a class="nav-link" data-toggle="modal" data-target="#logoutModal" href="">
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


<!-- MODAL -->
<?php include "../management/gradingtoggle.admin.php"; 
 include "../management/studentgrade.admin.php"; ?>