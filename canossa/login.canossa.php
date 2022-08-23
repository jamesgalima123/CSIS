<div class="container">
    <h3 style="font-weight: 600">Welcome</h3>
    <div id="carouselExampleSlidesOnly" class="carousel slide carousel-fade w-100 p-0 m-0" data-ride="carousel">
          <div class="carousel-inner" style="40hm">
            <div class="carousel-item active">
            <h3 class="text-wrap">Our Mission</h3>
            <p>Guided by the Spirit of Jesus Crucified and inspired by St. Magdalene of Canossa
                and rooted in filipino traditions and Catholic identity, we commit ourselves to nurture
                learners through an education centered on the formation of the heart that listens, thinks,
                discerns, and shares.</p>
            </div>
            <div class="carousel-item">
            <h3>Our Vision</h3>
            <p>Canossa College in the City of San Pablo is a nurturing community of learners
                 who develop the fullest capacity of their hearts for the service of the family,
                community, the church, nation and Mother Earth.</p><br>
            </div>
          </div>
        </div>
      </div>
    </div>
    <?php if (isset($_GET['error'])) { ?>
    <div class="alert alert-danger text-center">
 <?php echo $_GET['error']; ?>
    </div><?php } ?>
<div class="continer w-100 p-lg-2 mb-0 footer">

    <form method="POST" action="database/login/userlogin.php" class="w-100">
    
   
        <div class="form-group row">
            <div class="col-md-12">
                <input type="text" name="id" placeholder="User ID" class="form-control" autofocus>
            </div>
        </div>

        <div class="form-group row">
            <div class="col-md-12">
                <input type="password" placeholder="Password" class="form-control" name="pass" required>
            </div>
        </div>

        <div class="form-group row mb-0 w-100">
            <div class="col-md-8">
                <button type="submit" class="btn btn-sm btn-primary">
                    Login
                </button>
            </div>
        </div>
    </form>
</div>
