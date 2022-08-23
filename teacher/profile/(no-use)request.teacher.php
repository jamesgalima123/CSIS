<?php 
session_start();

if (isset($_SESSION['user_id'])) {
 
 include "../teacherlayout/head.tlayout.php"; ?>

<h5 class="title text-dark mb-5">Make Request</h5>
            <!-- end of modal header -->
            <form action="../database/addrecord/request.db.php" method="post">
                <!-- modal body -->
                <div class="body w-75 m-auto">
                    
                    <div class="form-group row">
                        <div class="col">
                            <input type="text" class="form-control col" name="name" 
                            placeholder="Name" required>
                        </div>

                        <div class="col">
                            <input type="text" class="form-control col" name="reqtype"
                            placeholder="Type of request" required>
                        </div>
                    </div>
                  
            

                    <!-- text box con-password name -->
                    <div class="form-group">
                        <textarea class="form-control" name="reason"
                            placeholder="Reason of request" row="3" id="exampleFormControlTextarea1" required></textarea>
                    </div>
                    <!-- end con-password name -->
                    <div class="form-group ml-auto">
                    <button class="btn btn-primary ml-auto" type="submit" name="ok">Submit</button>
                    </div>
                    
                </div>
            </form>

                 
<?php include "../teacherlayout/footer.tlayout.php";
    }else{
        header("Location: ../canossa/master.blade.php");
        exit();
   }
?>