<?php 
session_start();
$page ="changepass";
if (isset($_SESSION['username'])) {
 
 include "../adminlayout/head.admin.php"; ?>
       <!-- content here -->
       <h5 class="title text-dark mb-5">Change Password</h5>
            <?php if (isset($_GET['error'])) { ?>
                        <div class="alert alert-danger text-center ">
                            <strong>Error!</strong> <?php echo $_GET['error']; ?>
                        </div>
                <?php }elseif(isset($_GET['success'])){ ?> <div class="alert alert-success text-center">
                        <strong>Success!</strong> <?php echo $_GET['success'];?> 
                        </div> <?php } ?>
            <!-- end of modal header -->
            <form action="../../database/changepass/adminpass.db.php" method="post">
                <!-- modal body -->
                <div class="body w-75 m-auto">
                    <!-- text box username -->
                    <div class="form-group">
                        <input type="text" class="form-control"
                            placeholder="Username" value="<?php echo $_SESSION['username']; ?>" disabled required>
                            <input type="hidden" class="form-control" name="username"
                            placeholder="Username" value="<?php echo $_SESSION['username']; ?>" required>
                    </div>
                    <!-- end username -->

                     <!-- text box old-password -->
                     <div class="form-group">
                        <input type="password" class="form-control" name="pass" autocomplete="off"
                            placeholder="Current-Password" required>
                    </div>
                    <!-- end old-password -->
                    
                    <!-- text box password -->
                    <div class="form-group">
                        <input type="password" class="form-control" name="npass" autocomplete="off"
                            placeholder="New-Password" required>
                    </div>
                    <!-- end password-->

                    <!-- text box confirm-password -->
                    <div class="form-group">
                        <input type="password" class="form-control" name="cpass" autocomplete="off"
                            placeholder="Confirm-Password" required>
                    </div>
                    <!-- end confirm-password name -->
                    <div class="form-group ml-auto">
                    <button class="btn btn-sm btn-outline-success ml-auto" name="submit" type="submit">Save</button>
                    </div>  
                </div>
            </form>
       <!-- end of content here -->
<?php include "../adminlayout/footer.admin.php";
    }else{
        header("Location: ../canossa/master.blade.php");
        exit();
   }
?>
