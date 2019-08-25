<?php
require_once('./includes/connection.php');
include_once('./server_files/retrieve_cart.php');
// if($_SESSION['product_id'] == '')
// {
// 	$query = "TRUNCATE table cart";
// 	$res = mysqli_query($con,$query);
// 	if($res) {echo('del');}
// }
?>
<!DOCTYPE html>
<html lang="en">
<head>
	<title>Esha Koul</title>
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<meta charset="utf-8">
	<meta name="keywords" content="esha koul fashion brand">
	<!-- <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous"> -->
	
	<link rel="stylesheet" type="text/css" href="./bootstrap/bootstrap4_compiled/css/bootstrap.min.css">
	
	<!-- <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script> -->

	<script type="text/javascript" src="./js/jquery.js"></script>

	<!-- <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script> -->
	
	<script type="text/javascript" src="./bootstrap/bootstrap4_compiled/js/bootstrap.min.js"></script>

	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
	<!-- Add icon library -->
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
	<!-- Add icon library end-->
	<!-- Add links and js files self -->
	<link rel="stylesheet" type="text/css" href="./css/style.css">
	<link rel="stylesheet" type="text/css" href="./css/set1.css">
	<link rel="stylesheet" type="text/css" href="./css/quantity-box.css">
	<link rel="stylesheet" type="text/css" href="./css/cart.css">
	<script type="text/javascript" src="./js/codes.js"></script>
	<script type="text/javascript" src="./js/elevatezoom.js"></script>
	<script type="text/javascript" src="./js/cart.js"></script>
	<!-- Add links and js files self end-->
	<style type="text/css">
		@media only screen and (max-width:1000px){
			ul li{
				box-sizing: border-box;
			}
			.pad{
				padding-left:9em;
			}
			.cen{
				padding-right: 9em;
			}
/*			ul li ul.dropdown-menu{
				max-width:100px;
			}*/
		}
		@media only screen and (max-height:500px){
			.im{
				width:20%;
				height:300px;
				float:left;
			}
			div img#cover{
				width:20%;
				height:300px;
			}
			.nim{
				float:right;
			}
			.continueshop{
				padding-left:0.5em;
			}
		}
	</style>
</head>
<body>
<div class="container-fluid slide">
	<div class="row">
		<div class="col-sm-12">
			<h1 align="center"><a class="font" href="index.php" style="text-decoration:none;">Esha Koul</a></h1>
		</div>
		<!-- <div class="col-sm-1 fa" style="padding-top:20px;color:#777;font-size:24px;">&#xf07a;
		</div> -->
	</div>
		<!-- <div class="row"> -->
			<nav class="navbar navbar-expand-lg navbar-light">
				<button class="navbar-toggler al" type="button" data-toggle="collapse" data-target="#navmenu" aria-controls="navmenu" aria-expanded="false" aria-label="Toggle navigation"><span class="navbar-toggler-icon"></span>
        		</button>
        		<div class="collapse navbar-collapse justify-content-md-center" id="navmenu">
					<ul class="navbar-nav menu cen">
						<li class="nav-item sub-menu pad" onclick="about()">About</li>
						<li class="nav-item sub-menu sub-menupad1 dropdown">
							<a id="shop" class="dropdown-toggle" data-toggle="dropdown" onclick="gotolink(this.id)" style="color:#333;">Shop Online
							</a>
							<ul class="dropdown-menu">
								<!-- <li id="aww" onclick="gotolink(this.id)" style="padding-top:1em;">All Women's wear</li><hr color="#0d9"> -->
								<li id="bestsellers" onclick="gotolink(this.id)">Bestsellers</li><hr color="#0d9">
								<li id="lehenga" onclick="gotolink(this.id)">Lehenga</li><hr color="#0d9">
								<li id="anarkali" onclick="gotolink(this.id)">Anarkali</li><hr color="#0d9">
								<li id="croptop" onclick="gotolink(this.id)">Crop top &amp; skirt</li><hr color="#0d9">
								<li id="jumpsuits" onclick="gotolink(this.id)">Jumpsuits</li><hr color="#0d9">
								<li id="sharara" onclick="gotolink(this.id)" style="padding-bottom:1em;">sharara</li>
							</ul>
						</li>
						<li class="nav-item sub-menu sub-menupad1" onclick="storeLocator()">Store Locator</li>
						<li class="nav-item sub-menu sub-menupad1" onclick="clients()">Clients</li>
						<li class="nav-item sub-menu sub-menupad1" onclick="Cart()">Cart</li><span id="count">(<?php echo $count; ?>)</span>
					</ul>
				</div>
			</nav>
		<!-- </div> -->
	<!-- </div> -->
</div>
<div class="row">
	<hr class="style1" align="center" width="60%">
</div>