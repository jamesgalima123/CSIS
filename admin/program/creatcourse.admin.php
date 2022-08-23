<div class="modal fade" id="AddcourseModal" tabindex="-1" role="dialog" aria-hidden="true">
    <div class="modal-dialog modal-dialog-centered" role="document">
        <div class="modal-content">
            <!-- modal header -->
            <div class="modal-header bg-primary">
                <h5 class="modal-title text-light" id="exampleModalLabel">Add New Course</h5>
                <button class="close text-light" type="button" data-dismiss="modal" aria-label="Close">
                <i class="fa fa-window-close" aria-hidden="true"></i>
                </button>
            </div>
            <!-- end of modal header -->
            <form action="../../database/addrecord/addcourse.db.php" method="post">
                <!-- modal body -->
                <div class="modal-body">
                    <!-- text box student id -->
                    <div class="form-group">
                        <input type="text" class="form-control" name="description" autocomplete="off"
                            placeholder="Program Title" required>
                    </div>
                    <!-- end student id -->      
                    <!-- end of course selection -->
                </div>
                <!-- end of modal body -->

                <!-- modal footer -->
                <div class="modal-footer">
                    <button class="btn btn-sm btn-outline-secondary" type="button" data-dismiss="modal">Cancel</button>
                    <button class="btn btn-sm btn-outline-primary" type="submit" name="ok">Add</button>
                </div>
               
                    <!-- end of modal footer -->
            </form>
        </div>
    </div>
</div>

