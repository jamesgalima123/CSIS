<?php 
session_start();

if (isset($_SESSION['username'])) {

include_once '../adminlayout/head.admin.php' ?>
<table class="table">
    <thead class="bg-primary text-light ">
        <tr>
            <th>Name</th>
            <th>Type</th>
            <th>Reason</th>

            
        </tr>
    </thead>
    <tbody>
    <?php
                    include_once '../database/dbconnection.db.php';

                    $sql = "SELECT * from requests";
                    $result = $conn-> query($sql);
                   
                    if($result-> num_rows > 0 ){
                        while($row = $result-> fetch_assoc()){
                            $del = "<a class='btn btn-danger' name='del' data-toggle='modal' data-target='#del'>
                            <i class='fas fa-user-minus'></i></a>";
                            echo "<tr><td>".$row['name']."</td>
                            <td>".$row['request_type']."</td>
                            <td>".$row['reason']."</td>";
                        }
                    }
                    else{
                        echo "<tr><td>No records</td></tr>";
                    }
                    
                ?>
            
              
              
        
    </tbody>
</table>
       
       

<?php include_once '../adminlayout/footer.admin.php';
 }else{
    header("Location: ../canossa/master.blade.php");
    exit();
} ?>