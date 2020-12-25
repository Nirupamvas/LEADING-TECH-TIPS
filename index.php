 <?php
session_start();
include 'includes/config.php';
include 'includes/weather.php';
?>
<!DOCTYPE html>
<html lang="en">
<head>
<title>LTT</title>
 <!-- add icon link -->
<link rel = "icon" href =  "images/Capture4.svg" type = "image/x-icon"> 
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="description" content="Demo project">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" type="text/css" href="styles/bootstrap4/bootstrap.min.css">
<link href="plugins/font-awesome-4.7.0/css/font-awesome.min.css" rel="stylesheet" type="text/css">
<link rel="stylesheet" type="text/css" href="plugins/OwlCarousel2-2.2.1/owl.carousel.css">
<link rel="stylesheet" type="text/css" href="plugins/OwlCarousel2-2.2.1/owl.theme.default.css">
<link rel="stylesheet" type="text/css" href="plugins/OwlCarousel2-2.2.1/animate.css">
<link rel="stylesheet" type="text/css" href="plugins/jquery.mb.YTPlayer-3.1.12/jquery.mb.YTPlayer.css">
<link rel="stylesheet" type="text/css" href="styles/main_styles.css">
<link rel="stylesheet" type="text/css" href="styles/responsive.css">

<!-- jQuery library -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>

<!-- Popper JS -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>


</head>
<style type="text/css">
.dropbtn {
  background-color: #4CAF50;
  color: white;
  padding: 16px;
  font-size: 16px;
  border: none;
}

/* The container <div> - needed to position the dropdown content */
.dropdown {
  position: relative;
  display: inline-block;
}

/* Dropdown Content (Hidden by Default) */
.dropdown-content {
  display: none;
  position: absolute;
  background-color: #000000;
  min-width: 50px;
  box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);
  z-index: 1;
}

/* Links inside the dropdown */
.dropdown-content a {
  color: black;
  padding: 12px 16px;
  text-decoration: none;
  display: block;
}

/* Change color of dropdown links on hover */
.dropdown-content a:hover {background-color: #2C0A03;}

/* Show the dropdown menu on hover */
.dropdown:hover .dropdown-content {display: block;}

/* Change the background color of the dropdown button when the dropdown content is shown */
.dropdown:hover .dropbtn {background-color: #2C0A03;}
</style>

<body>

<div class="super_container">

	<!-- Header -->

		<header class="header">
		<div class="container">
			<div class="row">
				<div class="col">
					<div class="header_content d-flex flex-row align-items-center justify-content-start">
						<div class="logo"><a href="index.php">LTT</a></div>
						<nav class="main_nav">
							<ul>
							<li class="menu_mm"><a href="news.php">News</a></li>
							<li class="menu_mm"><a href="howto.php">HowTo</a></li>
							<li class="menu_mm">
								<div class="dropdown">
									<a href="best.php">BestOf</a>
  								<div class="dropdown-content">
						    		<a href="best.php?cat_id=1">Andriod</a>
						    		<a href="best.php?cat_id=2">IOS</a>
						  		</div>
								</div>
							</li>
							<li class="menu_mm">
								<div class="dropdown">
									<a href="apps.php">Apps</a>
  								<div class="dropdown-content">
						    		<a href="apps.php?cat_id=1">Andriod</a>
						    		<a href="apps.php?cat_id=2">IOS</a>
						    		<a href="apps.php?cat_id=3">Windows</a>
						    		<a href="apps.php?cat_id=4">Linux</a>
						  		</div>
								</div>
							</li>
							<li class="menu_mm">
								<div class="dropdown">
									<a href="accessories.php">Accessories</a>
  								<div class="dropdown-content">
						    		<a href="accessories.php?cat_id=5">Laptops</a>
						    		<a href="accessories.php?cat_id=6">Desktops</a>
						    		<a href="accessories.php?cat_id=7">Mobiles</a>
						  		</div>
								</div>
							</li>
							<li class="menu_mm">
								<div class="dropdown">
									<a href="#">More</a>
  								<div class="dropdown-content">
						    		<a href="contact.php">Contact</a>
						    		<a href="about.php">Aboutus</a>
						  		</div>
								</div>
							</li>
							<?php
							if(!isset($_SESSION['username'])){
								?>
								<li class="menu_mm"><a href="login.php">Login</a></li>
								<?php
							}
							else{
								?>
								<li class="menu_mm"><a href="#">
								<div class="dropdown">
									<a href="#"><?php echo $_SESSION['username'] ;?></a>
  								<div class="dropdown-content">
						    		<a href="logout.php">Logout</a>
						  		</div>
								</div>
								</a></li>
								<?php
							}
							?>
							</ul>
						</nav>
						<div class="search_container ml-auto">
							<div class="weather">
								<div class="temperature"> <?php echo $data->main->temp_max; ?>°C</div>
								<img class="weather_icon" src="images/cloud.png" alt="">
							</div>
							<form id="searchForm" class="form-inline p-3">
								<input type="search" autocomplete="off"  id="search" class="header_search_input"  required="required" placeholder="Type to Search...">
								<img class="header_search_icon" src="images/search.png" alt="">
								<input type="submit" id="submit"  class="btn btn-info btn-lg rounded-0" style="height: 43px; border-radius: 10px;">
								<img class="header_search_icon" src="images/search.png" alt="">
								<div id="output"></div>
							</form>
						</div>
						<div class="col-md-3" style="position: absolute;margin-top: 450px; margin-left:65%;">
							<div class="list-group" id="show-list">
							</div>
						</div>
						<div class="hamburger ml-auto menu_mm">
							<i class="fa fa-bars trans_200 menu_mm" aria-hidden="true"></i>
						</div>
					</div>
				</div>
			</div>
		</div>
	</header>

	<!-- Menu -->

	<div class="menu d-flex flex-column align-items-end justify-content-start text-right menu_mm trans_400">
		<div class="menu_close_container"><div class="menu_close"><div></div><div></div></div></div>
		<div class="logo menu_mm"><a href="index.php">LTT<sub>Leading Tech Tips</sub></a></div>
		<div class="search">
			<form id="searchForm">
				<input type="search" id="search" class="header_search_input menu_mm" required="required" placeholder="Type to Search...">
				<img class="header_search_icon menu_mm" src="images/search_2.png" alt="">
				<div id="output"></div>
			</form>
		</div>
		<div class="col-md-3" style="position: relative;margin-top: 50px;">
							<div class="list-group" id="show-list">
							</div>
		</div>
		<nav class="menu_nav">
			<ul class="menu_mm">
			<li class="menu_mm"><a href="#">News &nbsp;&nbsp;&nbsp;&nbsp;</a></li>
			<li class="menu_mm"><a href="#">HowTo &nbsp;&nbsp;&nbsp;&nbsp;</a></li>
			<li class="nav-item dropdown">
        		<a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown">Best Of</a>
        		<div class="dropdown-menu" aria-labelledby="navbarDropdown">
          			<a class="dropdown-item" href="best.php?cat_id=1">Andriod</a>
          			<div class="dropdown-divider"></div>
          			<a class="dropdown-item" href="best.php?cat_id=2">IOS</a>
        		</div>
      		</li><br>
      		<li class="nav-item dropdown">
        		<a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown">Apps</a>
        		<div class="dropdown-menu" aria-labelledby="navbarDropdown">
          			<a class="dropdown-item" href="apps.php?cat_id=1">Andriod</a>
          			<div class="dropdown-divider"></div>
          			<a class="dropdown-item" href="apps.php?cat_id=2">IOS</a>
          			 <div class="dropdown-divider"></div>
          			<a class="dropdown-item" href="apps.php?cat_id=3">Windows</a>
          			<div class="dropdown-divider"></div>
          			<a class="dropdown-item" href="apps.php?cat_id=4">Linux</a>
        		</div>
      		</li><br>
      		<li class="nav-item dropdown">
        		<a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown">Accessories</a>
        		<div class="dropdown-menu" aria-labelledby="navbarDropdown">
          			<a class="dropdown-item" href="accessories.php?cat_id=5">Laptops</a>
          			<div class="dropdown-divider"></div>
          			<a class="dropdown-item" href="accessories.php?cat_id=6">Destops</a>
          			 <div class="dropdown-divider"></div>
          			<a class="dropdown-item" href="accessories.php?cat_id=7">Mobiles</a>
        		</div>
      		</li><br>
      		<li class="nav-item dropdown">
        		<a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown">More</a>
        		<div class="dropdown-menu" aria-labelledby="navbarDropdown">
          			<a class="dropdown-item" href="contact.php">Contact</a>
          			<div class="dropdown-divider"></div>
          			<a class="dropdown-item" href="about.php">About</a>
        		</div>
      		</li><br>
			<?php
			if(!isset($_SESSION['username'])){
				?>
				<li class="menu_mm"><a href="login.php">Login&nbsp;&nbsp;&nbsp;&nbsp;</a></li>
				<?php
			}
			else{
				?>
      		<li class="nav-item dropdown">
        		<a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown">Welcome <?php echo $_SESSION['username'] ;?></a>
  				 <div class="dropdown-menu" aria-labelledby="navbarDropdown">
          			<a class="dropdown-item" href="logout.php">Logout&nbsp;&nbsp;&nbsp;&nbsp;</a>
						</div>
				</div>
				</a></li>
				<?php
			}
			?>
			</ul>
		</nav>
	</div>
	
	<!-- Home -->

	<div class="home">
		
		<!-- Home Slider -->

		<div class="home_slider_container">
			<div class="owl-carousel owl-theme home_slider">
				
				<?php
				$sql = "select * from post order by 1 DESC limit 3";
				$results = mysqli_query($con, $sql);
				while($row_slider =  $results->fetch_assoc())
				{
				?>
				<!-- Slider Item -->
				<div class="owl-item">
					<div class="home_slider_background" style="background-image:url(<?php echo $row_slider['slider_img']; ?>)"></div>
					<div class="home_slider_content_container">
						<div class="container">
							<div class="row">
								<div class="col">
									<div class="home_slider_content">
										<div class="home_slider_item_category trans_200"><a href="post-tag.php?post_tag=<?php echo $row_slider['post_tag'];?>" class="trans_200"><?php print $row_slider['post_tag']; ?></a></div>
										<div class="home_slider_item_title">
											<a href="post.php"><?php echo $row_slider['post_title']; ?></a>
										</div>
										<div class="home_slider_item_link">
											<a href="post.php?post_id=<?php echo $row_slider['post_id']; ?>" class="trans_200">Continue Reading
												<svg version="1.1" id="link_arrow_1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px"
													 width="19px" height="13px" viewBox="0 0 19 13" enable-background="new 0 0 19 13" xml:space="preserve">
													<polygon fill="#FFFFFF" points="12.475,0 11.061,0 17.081,6.021 0,6.021 0,7.021 17.038,7.021 11.06,13 12.474,13 18.974,6.5 "/>
												</svg>
											</a>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>

					<!-- Similar Posts 
					<div class="similar_posts_container">
						<div class="container">
							<div class="row d-flex flex-row align-items-end">
								<-- Similar Post --
								<div class="col-lg-3 col-md-6 similar_post_col">
									<div class="similar_post trans_200">
										<a href="post.php"><?php //echo $row_slider['post_title']; ?></a>
									</div>
								</div>

								-- Similar Post --
								<div class="col-lg-3 col-md-6 similar_post_col">
									<div class="similar_post trans_200">
										<a href="post.php"><?php //echo $row_slider['post_title']; ?></a>
									</div>
								</div>

								<-- Similar Post --
								<div class="col-lg-3 col-md-6 similar_post_col">
									<div class="similar_post trans_200">
										<a href="post.php"><?php //echo $row_slider['post_title']; ?></a>
									</div>
								</div>

							</div>
						</div>

						<-- End of similar_posts_container->
					</div> -->
					<!--End of owl-item -->



				</div>
				<!--End of owl-carousel owl-theme home_slider-->
				<?php
			}
			?>
			</div>

			<div class="custom_nav_container home_slider_nav_container">
				<div class="custom_prev custom_prev_home_slider">
					<svg version="1.1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px"
						 width="7px" height="12px" viewBox="0 0 7 12" enable-background="new 0 0 7 12" xml:space="preserve">
						<polyline fill="#FFFFFF" points="0,5.61 5.609,0 7,0 7,1.438 2.438,6 7,10.563 7,12 5.609,12 -0.002,6.39 "/>
					</svg>
				</div>
		        <ul id="custom_dots" class="custom_dots custom_dots_home_slider">
					<li class="custom_dot custom_dot_home_slider active"><span></span></li>
					<li class="custom_dot custom_dot_home_slider"><span></span></li>
					<li class="custom_dot custom_dot_home_slider"><span></span></li>
				</ul>
				<div class="custom_next custom_next_home_slider">
					<svg version="1.1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px"
						 width="7px" height="12px" viewBox="0 0 7 12" enable-background="new 0 0 7 12" xml:space="preserve">
						<polyline fill="#FFFFFF" points="6.998,6.39 1.389,12 -0.002,12 -0.002,10.562 4.561,6 -0.002,1.438 -0.002,0 1.389,0 7,5.61 "/>
					</svg>
				</div>
			</div>

		</div>
	</div>
	<!-- Page Content -->

	<div class="page_content">
		<div class="container">
			<div class="row row-lg-eq-height">

				<!-- Main Content -->

				<div class="col-lg-9">
					<div class="main_content">

						<!-- Blog Section - Don't Miss -->

						<div class="blog_section">
							<div class="section_panel d-flex flex-row align-items-center justify-content-start">
								<div class="section_title">Don't Miss</div>
								<!--
								<div class="section_tags ml-auto">
									<ul>
										<li class="active"><a href="category.php">all</a></li>
										<li><a href="category.php">Windows</a></li>
										<li><a href="category.php">IOS</a></li>
										<li><a href="category.php">Andriod</a></li>
										<li><a href="category.php">Linux</a></li>
									</ul>
								</div> 
								<div class="section_panel_more">
									<ul>
										<li>more
											<ul>
												<li><a href="category.php">AMD</a></li>
												<li><a href="category.php">Intel</a></li>
												<li><a href="category.php">Qualcom</a></li>
												<li><a href="category.php">G2</a></li>
												<li><a href="category.php">Razer</a></li>
												<li><a href="category.php">Smart Lights</a></li>
											</ul>
										</li>
									</ul>
								</div>
								-->
							</div>
							<div class="section_content">
								<div class="grid clearfix">

									<!-- Largest Card With Image -->
									<?php
									    $get_post = "select * from post where p_cat_id= 1 order by post_id  DESC LIMIT 0,1";
    
    									$run_post = mysqli_query($con,$get_post);
    
    									while($row_post=mysqli_fetch_array($run_post)){
    										$post_id = $row_post['post_id'];
    										$post_cat = $row_post['p_cat_id'];
    										$cat = $row_post['cat_id'];
    										$date = $row_post['date'];
    										$admin_name = $row_post['admin_name'];
											$post_title = $row_post['post_title'];
											$post_tag = $row_post['post_tag'];
											$slider_img = $row_post['slider_img'];
											$mini_slider_img = $row_post['mini_slider_img'];
											$post_mini_desc = $row_post['post_mini_desc'];
										    $post_desc = $row_post['post_desc'];
									?>
									<div class="card card_largest_with_image grid-item">
										<img class="card-img-top" src="<?php echo $mini_slider_img; ?>" alt="LTT">
										<div class="card-body">
											<div class="card-title"><a href="post.php?post_id=<?php echo $post_id; ?>"><?php echo $post_title; ?></a></div>
											<p class="card-text"><?php echo $post_mini_desc; ?></p>
											<small class="post_meta"><a href="#"><?php echo $admin_name; ?></a><span><?php echo $date; ?></span></small>
										</div>
									</div>
								<?php
								}
								
								?>
									<!-- Small Card Without Image -->
									<?php
									    $get_post = "select * from post where p_cat_id= 2  order by 1 DESC LIMIT 0,1";
    
    									$run_post = mysqli_query($con,$get_post);
    
    									while($row_post=mysqli_fetch_array($run_post)){
    										$post_id = $row_post['post_id'];
    										$post_cat = $row_post['p_cat_id'];
    										$cat = $row_post['cat_id'];
    										$date = $row_post['date'];
    										$admin_name = $row_post['admin_name'];
											$post_title = $row_post['post_title'];
											$post_tag = $row_post['post_tag'];
											$slider_img = $row_post['slider_img'];
											$mini_slider_img = $row_post['mini_slider_img'];
											$post_mini_desc = $row_post['post_mini_desc'];
										    $post_desc = $row_post['post_desc'];
									?>
									<div class="card card_default card_small_no_image grid-item">
										<div class="card-body">
											<div class="card-title card-title-small"><a href="post.php?post_id=<?php echo $post_id; ?>"><?php echo $post_title; ?></a></div>
											<small class="post_meta"><a href="#"><?php echo $admin_name; ?></a><span><?php echo $date; ?></span></small>
										</div>
									</div>
									<?php
								}
								
								?>
									<!-- Small Card With Background -->
									<?php
									    $get_post = "select * from post  LIMIT 1,2";
    
    									$run_post = mysqli_query($con,$get_post);
    
    									while($row_post=mysqli_fetch_array($run_post)){
    										$post_id = $row_post['post_id'];
    										$post_cat = $row_post['p_cat_id'];
    										$cat = $row_post['cat_id'];
    										$date = $row_post['date'];
    										$admin_name = $row_post['admin_name'];
											$post_title = $row_post['post_title'];
											$post_tag = $row_post['post_tag'];
											$slider_img = $row_post['slider_img'];
											$mini_slider_img = $row_post['mini_slider_img'];
											$post_mini_desc = $row_post['post_mini_desc'];
										    $post_desc = $row_post['post_desc'];
									?>
									<div class="card card_default card_small_with_background grid-item">
										<div class="card_background" style="background-image:url(<?php echo $slider_img; ?>)"></div>
										<div class="card-body">
											<div class="card-title card-title-small"><a href="post.php?post_id=<?php echo $post_id; ?>"><?php echo $post_title; ?></a></div>
											<small class="post_meta"><a href="#"><?php echo $admin_name ?></a><span><?php echo $date; ?></span></small>
										</div>
									</div>
									<?php
								}
								?>

									<!-- Small Card With Image -->
									<?php
									    $get_post = "select * from post order by 1 DESC LIMIT 2,3";
    
    									$run_post = mysqli_query($con,$get_post);
    
    									while($row_post=mysqli_fetch_array($run_post)){
    										$post_id = $row_post['post_id'];
    										$post_cat = $row_post['p_cat_id'];
    										$cat = $row_post['cat_id'];
    										$date = $row_post['date'];
    										$admin_name = $row_post['admin_name'];
											$post_title = $row_post['post_title'];
											$post_tag = $row_post['post_tag'];
											$slider_img = $row_post['slider_img'];
											$mini_slider_img = $row_post['mini_slider_img'];
											$post_mini_desc = $row_post['post_mini_desc'];
										    $post_desc = $row_post['post_desc'];
									?>
									<div class="card card_small_with_image grid-item">
										<img class="card-img-top" src="<?php echo $slider_img; ?>" alt="https://unsplash.com/@jakobowens1">
										<div class="card-body">
											<div class="card-title card-title-small"><a href="post.php?post_id=<?php echo $post_id; ?>"><?php echo $post_title; ?></a></div>
											<small class="post_meta"><a href="#"><?php echo $admin_name ?></a><span><?php echo $date; ?></span></small>
										</div>
									</div>
								<?php
								}
								?>




								</div>
							</div>
						</div>

						<!-- Blog Section - What's Trending -->

						<div class="blog_section">
							<div class="section_panel d-flex flex-row align-items-center justify-content-start">
								<div class="section_title">What's Trending</div>
								<!--
								<div class="section_tags ml-auto">
									<ul>
										<li class="active"><a href="category.php">all</a></li>
										<li><a href="category.php">Windows</a></li>
										<li><a href="category.php">IOS</a></li>
										<li><a href="category.php">Andriod</a></li>
										<li><a href="category.php">Linux</a></li>
									</ul>
								</div>
								<div class="section_panel_more">
										<ul>
										<li>more
											<ul>
												<li><a href="category.php">AMD</a></li>
												<li><a href="category.php">Intel</a></li>
												<li><a href="category.php">Qualcom</a></li>
												<li><a href="category.php">G2</a></li>
												<li><a href="category.php">Razer</a></li>
												<li><a href="category.php">Smart Lights</a></li>
											</ul>
										</li>
									</ul>
								</div> -->
							</div>
							<div class="section_content">
								<div class="grid clearfix">
									
									<!-- Large Card With Background -->
									<?php
									    $get_post = "select * from post order by 1 DESC LIMIT 2,3";
    
    									$run_post = mysqli_query($con,$get_post);
    
    									while($row_post=mysqli_fetch_array($run_post)){
    										$post_id = $row_post['post_id'];
    										$post_cat = $row_post['p_cat_id'];
    										$cat = $row_post['cat_id'];
    										$date = $row_post['date'];
    										$admin_name = $row_post['admin_name'];
											$post_title = $row_post['post_title'];
											$post_tag = $row_post['post_tag'];
											$slider_img = $row_post['slider_img'];
											$mini_slider_img = $row_post['mini_slider_img'];
											$post_mini_desc = $row_post['post_mini_desc'];
										    $post_desc = $row_post['post_desc'];
									?>
									<div class="card card_large_with_background grid-item">
										<div class="card_background" style="background-image:url(<?php echo $slider_img;?>)"></div>
										<div class="card-body">
											<div class="card-title"><a href="post.php?post_id=<?php echo $post_id; ?>"><?php echo $post_title; ?></a></div>
											<small class="post_meta"><a href="#"><?php echo $admin_name; ?></a><span><?php echo $date; ?></span></small>
										</div>
									</div>
									<?php
									}  ?>
									<!-- Large Card With Image 

									<div class="card grid-item card_large_with_image">
										<img class="card-img-top" src="images/post_9.jpg" alt="">
										<div class="card-body">
											<div class="card-title"><a href="post.php">How Did van Gogh’s Turbulent Mind Depict One of the Most Complex Concepts in Physics?</a></div>
											<p class="card-text">Pick the yellow peach that looks like a sunset with its red, orange, and pink coat skin, peel it off with your teeth. Sink them into unripened...</p>
											<small class="post_meta"><a href="#">Katy Liu</a><span>Sep 29, 2017 at 9:48 am</span></small>
										</div>
									</div>
								-->
									<!-- Default Card With Image -->
									<div class="card card_small_with_image grid-item">
										<img class="card-img-top" src="images/post_5.jpg" alt="">
										<div class="card-body">
											<div class="card-title card-title-small"><a href="post.php">How Did van Gogh’s Turbulent Mind Depict One of the Most Complex Concepts in Physics?</a></div>
											<small class="post_meta"><a href="#">Katy Liu</a><span>Sep 29, 2017 at 9:48 am</span></small>
										</div>
									</div>
									
									<!-- Default Card With Background -->

									<div class="card card_default card_default_with_background grid-item">
										<div class="card_background" style="background-image:url(images/post_6.jpg)"></div>
										<div class="card-body">
											<div class="card-title card-title-small"><a href="post.php">How Did van Gogh’s Turbulent Mind Depict One of the Most</a></div>
										</div>
									</div>

									<!-- Default Card No Image -->
									<div class="card card_default card_default_no_image grid-item">
										<div class="card-body">
											<div class="card-title card-title-small"><a href="post.php">How Did van Gogh’s Turbulent Mind Depict One of the Most</a></div>
										</div>
									</div>

									<!-- Default Card No Image -->
									<div class="card card_default card_default_no_image grid-item">
										<div class="card-body">
											<div class="card-title card-title-small"><a href="post.php">How Did van Gogh’s Turbulent Mind Depict One of the Most</a></div>
										</div>
									</div>

									<!-- Default Card With Background -->

									<div class="card card_default card_default_with_background grid-item">
										<div class="card_background" style="background-image:url(images/post_7.jpg)"></div>
										<div class="card-body">
											<div class="card-title card-title-small"><a href="post.php">How Did van Gogh’s Turbulent Mind Depict One of the Most</a></div>
										</div>
									</div>

								</div>
								
							</div>
						</div>



						<!-- Blog Section - Latest -->

						<div class="blog_section">
							<div class="section_panel d-flex flex-row align-items-center justify-content-start">
								<div class="section_title">Latest Articles</div>
							</div>
							<div class="section_content">
								<div class="grid clearfix">
									

									<!-- Small Card With Image -->
									<div class="card card_small_with_image grid-item">
										<img class="card-img-top" src="images/post_15.jpg" alt="">
										<div class="card-body">
											<div class="card-title card-title-small"><a href="post.php">How Did van Gogh’s Turbulent Mind Depict One of the Most Complex Concepts in Physics?</a></div>
											<small class="post_meta"><a href="#">Katy Liu</a><span>Sep 29, 2017 at 9:48 am</span></small>
										</div>
									</div>

									<!-- Small Card With Image -->
									<div class="card card_small_with_image grid-item">
										<img class="card-img-top" src="images/post_13.jpg" alt="https://unsplash.com/@jakobowens1">
										<div class="card-body">
											<div class="card-title card-title-small"><a href="post.php">How Did van Gogh’s Turbulent Mind Depict One of the Most Complex Concepts in Physics?</a></div>
											<small class="post_meta"><a href="#">Katy Liu</a><span>Sep 29, 2017 at 9:48 am</span></small>
										</div>
									</div>

									<!-- Small Card With Background -->
									<div class="card card_default card_small_with_background grid-item">
										<div class="card_background" style="background-image:url(images/post_11.jpg)"></div>
										<div class="card-body">
											<div class="card-title card-title-small"><a href="post.php">How Did van Gogh’s Turbulent Mind Depict One of the Most Complex Concepts in Physics?</a></div>
											<small class="post_meta"><a href="#">Katy Liu</a><span>Sep 29, 2017 at 9:48 am</span></small>
										</div>
									</div>

									<!-- Small Card With Background -->
									<div class="card card_default card_small_with_background grid-item">
										<div class="card_background" style="background-image:url(images/post_16.jpg)"></div>
										<div class="card-body">
											<div class="card-title card-title-small"><a href="post.php">How Did van Gogh’s Turbulent Mind Depict One of the Most Complex Concepts in Physics?</a></div>
											<small class="post_meta"><a href="#">Katy Liu</a><span>Sep 29, 2017 at 9:48 am</span></small>
										</div>
									</div>

											<!-- Small Card With Image -->
									<?php
									    $get_post = "select * from post order by post_id DESC";
    
    									$run_post = mysqli_query($con,$get_post);
    
    									while($row_post=mysqli_fetch_array($run_post)){
    										$post_id = $row_post['post_id'];
    										$post_cat = $row_post['p_cat_id'];
    										$cat = $row_post['cat_id'];
    										$date = $row_post['date'];
    										$admin_name = $row_post['admin_name'];
											$post_title = $row_post['post_title'];
											$post_tag = $row_post['post_tag'];
											$slider_img = $row_post['slider_img'];
											$mini_slider_img = $row_post['mini_slider_img'];
											$post_mini_desc = $row_post['post_mini_desc'];
										    $post_desc = $row_post['post_desc'];
									?>
									<div class="card card_small_with_image grid-item">
										<img class="card-img-top" src="<?php echo $slider_img; ?>" alt="https://unsplash.com/@jakobowens1">
										<div class="card-body">
											<div class="card-title card-title-small"><a href="post.php?post_id=<?php echo $post_id; ?>"><?php echo $post_title; ?></a></div>
											<small class="post_meta"><a href="#"><?php echo $admin_name ?></a><span><?php echo $date; ?></span></small>
										</div>
									</div>
								<?php
								}
								?>


								</div>
								
							</div>
						</div>

					</div>
					<div class="load_more">
						<div id="load_more" class="load_more_button text-center trans_200">Load More</div>
					</div>
				</div>

				<!-- Sidebar -->

				<div class="col-lg-3">
					<div class="sidebar">
						<div class="sidebar_background"></div>

						<!-- Top Stories -->

						<div class="sidebar_section">
							<div class="sidebar_title_container">
								<div class="sidebar_title">Top Stories</div>
								<div class="sidebar_slider_nav">
									<div class="custom_nav_container sidebar_slider_nav_container">
										<div class="custom_prev custom_prev_top">
											<svg version="1.1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px"
												 width="7px" height="12px" viewBox="0 0 7 12" enable-background="new 0 0 7 12" xml:space="preserve">
												<polyline fill="#bebebe" points="0,5.61 5.609,0 7,0 7,1.438 2.438,6 7,10.563 7,12 5.609,12 -0.002,6.39 "/>
											</svg>
										</div>
								        <ul id="custom_dots" class="custom_dots custom_dots_top">
											<li class="custom_dot custom_dot_top active"><span></span></li>
											<li class="custom_dot custom_dot_top"><span></span></li>
											<li class="custom_dot custom_dot_top"><span></span></li>
										</ul>
										<div class="custom_next custom_next_top">
											<svg version="1.1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px"
												 width="7px" height="12px" viewBox="0 0 7 12" enable-background="new 0 0 7 12" xml:space="preserve">
												<polyline fill="#bebebe" points="6.998,6.39 1.389,12 -0.002,12 -0.002,10.562 4.561,6 -0.002,1.438 -0.002,0 1.389,0 7,5.61 "/>
											</svg>
										</div>
									</div>
								</div>
							</div>
							<div class="sidebar_section_content">

								<!-- Top Stories Slider -->
								<div class="sidebar_slider_container">
									<div class="owl-carousel owl-theme sidebar_slider_top">

										<!-- Top Stories Slider Item -->
										<div class="owl-item">

											<!-- Sidebar Post -->
											<div class="side_post">
												<a href="post.php">
													<div class="d-flex flex-row align-items-xl-center align-items-start justify-content-start">
														<div class="side_post_image"><div><img src="images/top_1.jpg" alt=""></div></div>
														<div class="side_post_content">
															<div class="side_post_title">How Did van Gogh’s Turbulent Mind</div>
															<small class="post_meta">Katy Liu<span>Sep 29</span></small>
														</div>
													</div>
												</a>
											</div>

											<!-- Sidebar Post -->
											<div class="side_post">
												<a href="post.php">
													<div class="d-flex flex-row align-items-xl-center align-items-start justify-content-start">
														<div class="side_post_image"><div><img src="images/top_2.jpg" alt=""></div></div>
														<div class="side_post_content">
															<div class="side_post_title">How Did van Gogh’s Turbulent Mind</div>
															<small class="post_meta">Katy Liu<span>Sep 29</span></small>
														</div>
													</div>
												</a>
											</div>

											<!-- Sidebar Post -->
											<div class="side_post">
												<a href="post.php">
													<div class="d-flex flex-row align-items-xl-center align-items-start justify-content-start">
														<div class="side_post_image"><div><img src="images/top_3.jpg" alt=""></div></div>
														<div class="side_post_content">
															<div class="side_post_title">How Did van Gogh’s Turbulent Mind</div>
															<small class="post_meta">Katy Liu<span>Sep 29</span></small>
														</div>
													</div>
												</a>
											</div>

											<!-- Sidebar Post -->
											<div class="side_post">
												<a href="post.php">
													<div class="d-flex flex-row align-items-xl-center align-items-start justify-content-start">
														<div class="side_post_image"><div><img src="images/top_4.jpg" alt=""></div></div>
														<div class="side_post_content">
															<div class="side_post_title">How Did van Gogh’s Turbulent Mind</div>
															<small class="post_meta">Katy Liu<span>Sep 29</span></small>
														</div>
													</div>
												</a>
											</div>

										</div>

										<!-- Top Stories Slider Item -->
										<div class="owl-item">

											<!-- Sidebar Post -->
											<div class="side_post">
												<a href="post.php">
													<div class="d-flex flex-row align-items-xl-center align-items-start justify-content-start">
														<div class="side_post_image"><div><img src="images/top_1.jpg" alt=""></div></div>
														<div class="side_post_content">
															<div class="side_post_title">How Did van Gogh’s Turbulent Mind</div>
															<small class="post_meta">Katy Liu<span>Sep 29</span></small>
														</div>
													</div>
												</a>
											</div>

											<!-- Sidebar Post -->
											<div class="side_post">
												<a href="post.php">
													<div class="d-flex flex-row align-items-xl-center align-items-start justify-content-start">
														<div class="side_post_image"><div><img src="images/top_2.jpg" alt=""></div></div>
														<div class="side_post_content">
															<div class="side_post_title">How Did van Gogh’s Turbulent Mind</div>
															<small class="post_meta">Katy Liu<span>Sep 29</span></small>
														</div>
													</div>
												</a>
											</div>

											<!-- Sidebar Post -->
											<div class="side_post">
												<a href="post.php">
													<div class="d-flex flex-row align-items-xl-center align-items-start justify-content-start">
														<div class="side_post_image"><div><img src="images/top_3.jpg" alt=""></div></div>
														<div class="side_post_content">
															<div class="side_post_title">How Did van Gogh’s Turbulent Mind</div>
															<small class="post_meta">Katy Liu<span>Sep 29</span></small>
														</div>
													</div>
												</a>
											</div>

											<!-- Sidebar Post -->
											<div class="side_post">
												<a href="post.php">
													<div class="d-flex flex-row align-items-xl-center align-items-start justify-content-start">
														<div class="side_post_image"><div><img src="images/top_4.jpg" alt=""></div></div>
														<div class="side_post_content">
															<div class="side_post_title">How Did van Gogh’s Turbulent Mind</div>
															<small class="post_meta">Katy Liu<span>Sep 29</span></small>
														</div>
													</div>
												</a>
											</div>

										</div>

										<!-- Top Stories Slider Item -->
										<div class="owl-item">

											<!-- Sidebar Post -->
											<div class="side_post">
												<a href="post.php">
													<div class="d-flex flex-row align-items-xl-center align-items-start justify-content-start">
														<div class="side_post_image"><div><img src="images/top_1.jpg" alt=""></div></div>
														<div class="side_post_content">
															<div class="side_post_title">How Did van Gogh’s Turbulent Mind</div>
															<small class="post_meta">Katy Liu<span>Sep 29</span></small>
														</div>
													</div>
												</a>
											</div>

											<!-- Sidebar Post -->
											<div class="side_post">
												<a href="post.php">
													<div class="d-flex flex-row align-items-xl-center align-items-start justify-content-start">
														<div class="side_post_image"><div><img src="images/top_2.jpg" alt=""></div></div>
														<div class="side_post_content">
															<div class="side_post_title">How Did van Gogh’s Turbulent Mind</div>
															<small class="post_meta">Katy Liu<span>Sep 29</span></small>
														</div>
													</div>
												</a>
											</div>

											<!-- Sidebar Post -->
											<div class="side_post">
												<a href="post.php">
													<div class="d-flex flex-row align-items-xl-center align-items-start justify-content-start">
														<div class="side_post_image"><div><img src="images/top_3.jpg" alt=""></div></div>
														<div class="side_post_content">
															<div class="side_post_title">How Did van Gogh’s Turbulent Mind</div>
															<small class="post_meta">Katy Liu<span>Sep 29</span></small>
														</div>
													</div>
												</a>
											</div>

											<!-- Sidebar Post -->
											<div class="side_post">
												<a href="post.php">
													<div class="d-flex flex-row align-items-xl-center align-items-start justify-content-start">
														<div class="side_post_image"><div><img src="images/top_4.jpg" alt=""></div></div>
														<div class="side_post_content">
															<div class="side_post_title">How Did van Gogh’s Turbulent Mind</div>
															<small class="post_meta">Katy Liu<span>Sep 29</span></small>
														</div>
													</div>
												</a>
											</div>

										</div>

									</div>
								</div>
							</div>
						</div>

						<!-- Future Events -->

						<div class="sidebar_section future_events">
							<div class="sidebar_title_container">
								<div class="sidebar_title">Future Events</div>
								<div class="sidebar_slider_nav">
									<div class="custom_nav_container sidebar_slider_nav_container">
										<div class="custom_prev custom_prev_events">
											<svg version="1.1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px"
												 width="7px" height="12px" viewBox="0 0 7 12" enable-background="new 0 0 7 12" xml:space="preserve">
												<polyline fill="#bebebe" points="0,5.61 5.609,0 7,0 7,1.438 2.438,6 7,10.563 7,12 5.609,12 -0.002,6.39 "/>
											</svg>
										</div>
								        <ul id="custom_dots" class="custom_dots custom_dots_events">
											<li class="custom_dot custom_dot_events active"><span></span></li>
											<li class="custom_dot custom_dot_events"><span></span></li>
											<li class="custom_dot custom_dot_events"><span></span></li>
										</ul>
										<div class="custom_next custom_next_events">
											<svg version="1.1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px"
												 width="7px" height="12px" viewBox="0 0 7 12" enable-background="new 0 0 7 12" xml:space="preserve">
												<polyline fill="#bebebe" points="6.998,6.39 1.389,12 -0.002,12 -0.002,10.562 4.561,6 -0.002,1.438 -0.002,0 1.389,0 7,5.61 "/>
											</svg>
										</div>
									</div>
								</div>
							</div>
							<div class="sidebar_section_content">

								<!-- Sidebar Slider -->
								<div class="sidebar_slider_container">
									<div class="owl-carousel owl-theme sidebar_slider_events">

										<!-- Future Events Slider Item -->
										<div class="owl-item">
										<?php
										$get_post = "select * from future_events LIMIT 0,5";
    
    									$run_post = mysqli_query($con,$get_post);

    									while($row_post=mysqli_fetch_array($run_post)){
    												$future_event = $row_post['future_event'];
    												$future_month = $row_post['future_month'];
    												$future_day = $row_post['future_day'];
													$admin_name = $row_post['admin_name'];
													$future_date = $row_post['future_date'];
											?>
											<!-- Future Events Post -->
											<div class="side_post">
												<a href="post.php">
													<div class="d-flex flex-row align-items-xl-center align-items-start justify-content-start">
														<div class="event_date d-flex flex-column align-items-center justify-content-center">
															<div class="event_day"><?php echo $future_day; ?></div>
															<div class="event_month"><?php echo $future_month; ?></div>
														</div>
														<div class="side_post_content">
															<div class="side_post_title"><?php echo $future_event; ?></div>
															<small class="post_meta"><?php echo $admin_name; ?><span><?php echo $future_date; ?></span></small>
														</div>
													</div>
												</a>
											</div>
										<?php } ?>
									</div>

										<!-- Future Events Slider Item -->
										<div class="owl-item">
										<?php
										$get_post = "select * from future_events LIMIT 5,7";
    
    									$run_post = mysqli_query($con,$get_post);
    
    									while($row_post=mysqli_fetch_array($run_post)){
    												$future_event = $row_post['future_event'];
    												$future_month = $row_post['future_month'];
    												$future_day = $row_post['future_day'];
													$admin_name = $row_post['admin_name'];
													$future_date = $row_post['future_date'];
											?>
											<!-- Future Events Post -->
											<div class="side_post">
												<a href="post.php">
													<div class="d-flex flex-row align-items-xl-center align-items-start justify-content-start">
														<div class="event_date d-flex flex-column align-items-center justify-content-center">
															<div class="event_day"><?php echo $future_day; ?></div>
															<div class="event_month"><?php echo $future_month; ?></div>
														</div>
														<div class="side_post_content">
															<div class="side_post_title"><?php echo $future_event; ?></div>
															<small class="post_meta"><?php echo $admin_name; ?><span><?php echo $future_date; ?></span></small>
														</div>
													</div>
												</a>
											</div>
										<?php } ?>
									</div>

										<!-- Future Events Slider Item -->
										<div class="owl-item">
										<?php
										$get_post = "select * from future_events LIMIT 8,12";
    
    									$run_post = mysqli_query($con,$get_post);
    
    									while($row_post=mysqli_fetch_array($run_post)){
    												$future_event = $row_post['future_event'];
    												$future_month = $row_post['future_month'];
    												$future_day = $row_post['future_day'];
													$admin_name = $row_post['admin_name'];
													$future_date = $row_post['future_date'];
											?>
											<!-- Future Events Post -->
											<div class="side_post">
												<a href="post.php">
													<div class="d-flex flex-row align-items-xl-center align-items-start justify-content-start">
														<div class="event_date d-flex flex-column align-items-center justify-content-center">
															<div class="event_day"><?php echo $future_day; ?></div>
															<div class="event_month"><?php echo $future_month; ?></div>
														</div>
														<div class="side_post_content">
															<div class="side_post_title"><?php echo $future_event; ?></div>
															<small class="post_meta"><?php echo $admin_name; ?><span><?php echo $future_date; ?></span></small>
														</div>
													</div>
												</a>
											</div>
										<?php } ?>
									</div>


									</div>
								</div>
							</div>
						</div>

					</div>
				</div>

			</div>
		</div>
	</div>

	<!-- Footer -->

	<footer class="footer">
		<div class="container">
			<div class="row row-lg-eq-height">
				<div class="col-lg-9 order-lg-1 order-2">
					<div class="footer_content">
						<div class="footer_logo"><a href="index.php">LTT<sub>Leading Tech Tips</sub></a></div>
						<div class="footer_social">
							<ul>
								<li class="footer_social_facebook"><a href="#"><i class="fa fa-facebook" aria-hidden="true"></i></a></li>
								<li class="footer_social_twitter"><a href="#"><i class="fa fa-twitter" aria-hidden="true"></i></a></li>
								<li class="footer_social_pinterest"><a href="#"><i class="fa fa-pinterest" aria-hidden="true"></i></a></li>
								<li class="footer_social_vimeo"><a href="#"><i class="fa fa-vimeo" aria-hidden="true"></i></a></li>
								<li class="footer_social_instagram"><a href="#"><i class="fa fa-instagram" aria-hidden="true"></i></a></li>
								<li class="footer_social_google"><a href="#"><i class="fa fa-google" aria-hidden="true"></i></a></li>
							</ul>
						</div>
						<div class="copyright">
						Copyright &copy;<script>document.write(new Date().getFullYear());</script> All rights reserved by LTT
						</div>
					</div>
				</div>
				<div class="col-lg-3 order-lg-2 order-1">
					<div class="subscribe">
						<div class="subscribe_background"></div>
						<div class="subscribe_content">
							<div class="subscribe_title">Subscribe</div>
							<form action="https://feedburner.google.com/fb/a/mailverify" method="post" target="popupwindow" onsubmit="window.open('https://feedburner.google.com/fb/a/mailverify?uri=Nirupamvas', 'popupwindow', 'scrollbars=yes,width=550,height=520');return true" method="post">
								<input type="email" class="sub_input" placeholder="Your Email" required="required">
								<input type="hidden" value="Nirupamvas" name="uri"/><input type="hidden" name="loc" value="en_US"/>

								<button class="sub_button">
									<svg version="1.1" id="link_arrow_1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px"
										 width="19px" height="13px" viewBox="0 0 19 13" enable-background="new 0 0 19 13" xml:space="preserve">
										<polygon fill="#FFFFFF" points="12.475,0 11.061,0 17.081,6.021 0,6.021 0,7.021 17.038,7.021 11.06,13 12.474,13 18.974,6.5 "/>
									</svg>
								</button>
							</form>
						</div>
					</div>
				</div>

			</div>
		</div>
	</footer>
</div>

<script src="js/jquery-3.2.1.min.js"></script>
<script src="styles/bootstrap4/popper.js"></script>
<script src="styles/bootstrap4/bootstrap.min.js"></script>
<script src="plugins/OwlCarousel2-2.2.1/owl.carousel.js"></script>
<script src="plugins/jquery.mb.YTPlayer-3.1.12/jquery.mb.YTPlayer.js"></script>
<script src="plugins/easing/easing.js"></script>
<script src="plugins/masonry/masonry.js"></script>
<script src="plugins/masonry/images_loaded.js"></script>
<script src="js/custom.js"></script>
<script type="text/javascript">
$(document).ready(function () {
  // Send Search Text to the server
  $("#search").keyup(function () {
    let searchText = $(this).val();
    if (searchText != "") {
      $.ajax({
        url: "action.php",
        method: "post",
        data: {
          query: searchText,
        },
        success: function (response) {
          $("#show-list").html(response);
        },
      });
    } else {
      $("#show-list").html("");
    }
  });
  // Set searched text in input field on click of search button
  $(document).on("click", "a", function () {
    $("#search").val($(this).text());
    $("#show-list").html("");
  });
});
</script>

<script type="text/javascript">
      $(document).ready(function(){

      $("#submit").on("click",function(e){
      e.preventDefault();
      var name=$("#search").val();
      $.ajax({
        url : "php/search.php",
        type : "POST",
        data : {name : name},
        success : function(data){
          if(data){
            $("#searchForm").trigger("reset");
            $(location).attr('href', 'post.php?post_id='+data);      
        }
        else{
        	$(location).attr('href', 'login.php'); 
        }
    }
      })

    });
      });
    </script>

</body>
</html>