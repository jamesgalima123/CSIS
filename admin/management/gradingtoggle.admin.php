<style>
* {
    margin: 0;
    padding: 0;
}

.container {
    position: absolute;
    top: 50%;
    left: 50%;
    transform: translate(-50%, -50%);
    text-align: center;
}

.switch {
    position: relative;
    display: inline-block;
    width: 55px;
    height: 30px;
    margin: 0 10px;
}

.slider {
    position: absolute;
    cursor: pointer;
    top: 0;
    left: 0;
    right: 0;
    bottom: 0;
    background-color: #ccc;
    transition: .4s;
    border-radius: 34px;
}

h1 {
    margin-bottom: 40px;
    font-family: sans-serif;
}

.switch input {
    display: none
}

.slider:before {
    position: absolute;
    content: "";
    height: 25px;
    width: 25px;
    left: 5px;
    bottom: 3px;
    background-color: white;
    transition: 0.4s;
    border-radius: 50px;
}

input:checked+.slider {
    background-color: #0d72b5;
}

input:checked+.slider:before {
    transform: translateX(20px);

}

input::-webkit-outer-spin-button,
input::-webkit-inner-spin-button {
  -webkit-appearance: none;
  margin: 0;
}
</style>

<?php


 $sql = "SELECT * from gradingstatus";
 $result = $conn->query($sql);

 if ($result->num_rows > 0) {
     while ($row = $result->fetch_assoc()) {
$term = $row['term'];
$stat = $row['status'];

     }
 }
 $page ="grading";
?>
<div class="modal fade" id="grading" tabindex="-1" role="dialog" aria-hidden="true">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <!-- modal header -->
            <div class="modal-header bg-primary">
                <h5 class="modal-title text-light" id="exampleModalLabel">Activate Grading Period</h5>
                <button class="close text-light" type="button" data-dismiss="modal" aria-label="Close">
                    <i class="fa fa-window-close" aria-hidden="true"></i>
                </button>
            </div>
            <!-- end of modal header -->
            <form action="../../database/addrecord/gradingstatus.db.php" method="post" id="loginForm">
                <!-- modal body -->
                <div class="modal-body ">

                    <!-- text box student id -->
                    <div class=" row">
                        <label class="switch mt-2">
                            <input type="checkbox" name="status" <?php  if ($stat == 'open') {?> checked <?php } ?>>
                            <span class="slider"></span>
                        </label>
                        <h1 class="">Open Grade Record</h1>
                    </div>
                    <div class="row d-flex ">
                        <hr class="divider bg-info" style="width: 40%;">
                        <a class="" style="size: 200px;">Choose Term</a>
                        <hr class="divider bg-info" style="width: 40%;">
                    </div>

                   

                    <div class="form-check ">
                        <input class="form-check-input " type="radio" name="term" value="prelim"  <?php if ($term == 'prelim') {?> checked <?php } ?>>
                        <label class="form-check-label" for="flexRadioDefault1">
                            Prelim
                        </label>
                    </div>

                 

                    <div class="form-check">
                        <input class="form-check-input" type="radio" name="term" value="midterm" <?php  if ( $term == 'midterm' ) {?> checked <?php }?>>
                        <label class="form-check-label" for="flexRadioDefault2">
                            Midterm
                        </label>
                    </div>
                  
                    <div class="form-check">
                        <input class="form-check-input" type="radio" name="term" value="final"  <?php  if ( $term == 'final' ) {?> checked <?php }?>>
                        <label class="form-check-label" for="flexRadioDefault2">
                            Finals
                        </label>
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