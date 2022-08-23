
<div class="modal fade" id="AddsubjectModal" tabindex="-1" role="dialog" 
    aria-hidden="true">
    <div class="modal-dialog modal-dialog-centered" role="document">
        <div class="modal-content">
            <!-- modal header -->
            <div class="modal-header bg-primary">
                <h5 class="modal-title text-light" id="exampleModalLabel">Add New Subject</h5>
                <button class="close text-light" type="button" data-dismiss="modal" aria-label="Close">
                <i class="fa fa-window-close" aria-hidden="true"></i>
                </button>
            </div>
            <!-- end of modal header -->
            <form action="../../database/addrecord/registersubject.db.php" method="post" novalidate class="needs-validation">
                <!-- modal body -->
                <div class="modal-body">
                    <!-- text box student id -->
                    <div class="form-group">
                        <input type="text" class="form-control" name="subcode" autocomplete="off"
                            placeholder="Subject Code" required>
                    </div>
                    <!-- end student id -->
                    <!-- text box student id -->
                    <div class="form-group">
                        <input type="text" class="form-control" name="des" autocomplete="off"
                            placeholder="Subject Title" required>
                    </div>
                    <!-- end student id -->
                    <!-- text box student id -->
                    <div class="form-group">
                        <input type="number" class="form-control" name="unit" autocomplete="off"
                            placeholder="Units" required>
                    </div>        
                    <!-- end of course selection -->
                </div>
                <!-- end of modal body -->

                <!-- modal footer -->
                <div class="modal-footer">
                    <button class="btn btn-sm btn-outline-secondary" type="button" data-dismiss="modal">Cancel</button>
                    <button class="btn btn-sm btn-outline-primary" type="submit">Add</button>
                </div>
                    <!-- end of modal footer -->
            </form>
        </div>
    </div>
</div>