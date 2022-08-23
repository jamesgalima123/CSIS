<?php 
session_start();

if (isset($_SESSION['user_id'])) {

    $id = $_SESSION['user_id'];
    
    include "../teacherlayout/head.tlayout.php"; ?>
       <!-- content here -->
       <nav class="navbar navbar-expand navbar-light  topbar mb-4 static-top ">
<!-- Topbar Search -->
<h1 class="h3 mb-4 text-gray-800 mr-auto">Subject list</h1>
</nav>
<?php echo "<form action='../database/addrecord/apply.db.php?id=$id'method='post'>";?>
<table class="table">
    <thead class="bg-primary text-light ">
        <tr>
            <th>Subject Code</th>
            <th>Description</th>
            <th>Units</th>
            <th>Action</th>
        </tr>
    </thead>
    <tbody>
               <?php
                    include_once '../database/dbconnection.db.php';

                    $sql = "SELECT * from sublists order by subject_code asc";
                    $result = $conn-> query($sql);
                   $id = $_SESSION['user_id'];
                    if($result-> num_rows > 0 ){
                        
                        while($row = $result-> fetch_assoc()){
                           $des = $row['description'];
                           
                            echo "<tr><td>".$row['subject_code']."</td>
                            <td>".$row['description']."</td>
                            <td>".$row['units']."</td>
                            <td><input type='checkbox' name='subject[]' value='$des' require></td>
                            </tr>";
                        }
                    }
                ?>
    </tbody>
</table>
<input type="submit" value="Apply" name="submit" class="btn btn-primary">
</form>
<?php if (isset($_GET['error'])) { ?>
    <div class="alert alert-danger text-center">
  <strong>Error in Applying!</strong> <?php echo $_GET['error']; ?>
</div><?php }elseif(isset($_GET['success'])){ ?> <div class="alert alert-success text-center">
  <strong>Success!</strong> <?php echo $_GET['success'];?> </div> <?php } ?>
       <!-- end of content here -->
<?php include "../teacherlayout/footer.tlayout.php";
    }else{
        header("Location: ../canossa/master.blade.php");
        exit();
   }
  
?>