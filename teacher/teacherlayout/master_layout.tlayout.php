<?php 
session_start();

if (isset($_SESSION['user_id'])) {
 
 include "head.tlayout.php"; ?>

<?php if(isset($_GET['success'])){ ?> <div class="alert alert-success text-center">
                        <strong>Success!</strong> <?php echo $_GET['success'];?> 
                        </div> <?php } ?>
                        <div class="brand-icon text-center">
            <img class="img-fluid rounded m-auto d-block w-50" alt="Responsive image" src="../../assets/img/logo.png">
        </div> 
<?php include "footer.tlayout.php";
    }else{
        header("Location: ../../canossa/master.blade.php");
        exit();
   }
?>