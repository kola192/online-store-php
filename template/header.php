<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <title><?php echo $title; ?></title>

    <link href="./bootstrap/css/bootstrap.min.css" rel="stylesheet">
    <link href="./bootstrap/css/bootstrap-theme.min.css" rel="stylesheet">
    <style>
      body {
        padding-top: 50px;
      }
      .padding-top {
        padding-top: 1.5rem;
      }
      .custom-nav {
        background-color: skyblue
      }
      .custom-anchors {
        color: #fff;
      }
      .logo-container {
        overflow: hidden;
        display: flex;
        justify-content: center;
        align-items: center;
        padding: .5rem;
      }
      .logo {
        height: 100%;
        max-width: 100%;
      }
      .logo-text {
        color: #252525;
        margin-left: .5rem;
        font-weight: bold;
      }
      .hero {
        background-image: url("./bootstrap/assets/hero.jpg");
        background-size: cover;
        background-repeat: no-repeat;
        background-color: rgba(0,0,0,.7);
        background-blend-mode: multiply;
        min-height: 450px;
        color: #fff;
      }
      .hero-content {
        height: 450px;
        display: flex;
        justify-content: center;
        flex-direction: column;

      }
      .main-title {
        font-size: 3.8em;
      }
      .main-desc {
        max-width: 500px;
        font-weight: light;
        font-size: 1.7rem;
        line-height: 1.7;
      }
      .main-btn {
        width: 150px;
      }
    </style>
  </head>

  <body>

    <nav class="navbar navbar navbar-fixed-top  custom-nav">
      <div class="container">
        <div class="navbar-header">
          <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
            <span class="sr-only">Toggle navigation</span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </button>
          <a class="logo-container navbar-brand custom-anchors" href="index.php">
            <img src="./bootstrap/assets/book2.png" class="logo" alt="logo" />
            <span class="logo-text">Awesome Books</span>
          </a>
        </div>

        <!--/.navbar-collapse -->
        <div id="navbar" class="navbar-collapse collapse">
          <ul class="nav navbar-nav navbar-right">
              <!-- link to publiser_list.php -->
              <li><a href="publisher_list.php"><span class="glyphicon glyphicon-paperclip custom-anchors"></span>&nbsp; Publisher</a></li>
              <!-- link to books.php -->
              <li><a href="books.php"><span class="glyphicon glyphicon-book custom-anchors"></span>&nbsp; Books</a></li>
              <!-- link to shopping cart -->
              <li><a href="cart.php"><span class="glyphicon glyphicon-shopping-cart custom-anchors"></span>&nbsp; My Cart</a></li>
              <!-- link to admin -->
              <li><a href="admin.php" class="text-primary">Admin Login</a></li>
            </ul>
          </div>
        </div>
    </nav>
    <?php
      if(isset($title) && $title == "Index") {
    ?>
    <!-- Main hero section -->
    <div class="hero">
      <div class="container hero-content">
        <h1 class="main-title">Awesome Books Store</h1>
        <p class="main-desc">Awesome books is the best place to find any book you are looking for whether it was a science book or even just some chile story book.</p>
        <a href="books.php" class="btn btn-primary main-btn">All Books</a>
      </div>
    </div>
    
    <?php } ?>

    <div class="container" id="main">