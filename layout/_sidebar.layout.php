<ul class="navbar-nav bg-gradient-primary sidebar sidebar-dark accordion" id="accordionSidebar">
    <!-- Sidebar - Brand -->
    <a class="sidebar-brand d-flex align-items-center justify-content-center" href="index.html">
        <div class="sidebar-brand-icon">
        <img class="img-profile rounded-circle" src="../assets/img/logo.PNG" width="90%">
        </div>
        <div class="sidebar-brand-text mx-5">CSIS</sup></div>
    </a>    
    <!-- Divider -->
    <hr class="sidebar-divider my-0">
    <!-- Heading -->
    <div class="sidebar-heading">
        Menu
    </div>
     <!-- Nav Item - Enroll Menu -->
     <li class="nav-item">
     
        <a class="nav-link  <?php if($page == 'subject'){echo"bg-light text-primary active";}?>" href="../student/sublist.student.php">
        <i class="fas fa-list <?php if($page == 'subject'){echo"text-primary";}?>"></i>
        <span style='font-size:18px';>Subjects</span></a>
    </li>
    <!-- Nav Item - Grade Menu -->
  
    <!-- <li class="nav-item">
    <a class="nav-link" href="../student/grade.student.php">
    <i class="fas fa-chart-line" href="../student/grade.student.php"></i>
        <span>Grade</span></a>
</li> -->
<li class="nav-item">
                <a class="nav-link collapsed btn <?php if($page == 'grade'){echo" bg-light text-primary active";}?>" href="#" data-toggle="collapse" data-target="#collapsegrade"
                    aria-expanded="true" aria-controls="collapseTwo">
                    <i class="fas fa-chart-line <?php if($page == 'grade'){echo"text-primary";}?>"></i>
                    <span style='font-size:18px';>Grades</span></a>
                </a>
                <div id="collapsegrade" class="collapse" aria-labelledby="headingstudentlist" data-parent="#accordionSidebar">
                    <div class="bg-white py-2 collapse-inner rounded">
                        <h6 class="collapse-header">Year Level:</h6>
                  
                            <a class="collapse-item" href="../student/first.student.php">1st YEAR</a>
                            <a class="collapse-item" href="../student/second.student.php">2nd YEAR</a>
                            <a class="collapse-item" href="../student/third.student.php">3rd YEAR</a>
                            <a class="collapse-item" href="../student/forth.student.php">4th YEAR</a>
                    </div>
                </div>
            </li>
    <!-- Divider -->
    <hr class="sidebar-divider">
    <div class="sidebar-heading">
        Account Settings
    </div>
    
    <li class="nav-item">
        <a class="nav-link btn <?php if($page == 'profile'){echo" bg-light text-primary active";}?>" href="../student/profile.student.php">
        <i class="fas fa-users-cog <?php if($page == 'profile'){echo"text-primary";}?>"></i>
        <span style='font-size:18px';>Profile</span></a>
    </li>
    
    <li class="nav-item">
        <a class="nav-link btn <?php if($page == 'changepass'){echo" bg-light text-primary active";}?>" href="../student/changepass.student.php">
        <i class="fas fa-key <?php if($page == 'changepass'){echo"text-primary";}?>"></i>
        <span style='font-size:18px';>Change Password</span></a>
    </li>

    <li class="nav-item">
        <a class="nav-link" data-toggle="modal" data-target="#logoutModal">
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

