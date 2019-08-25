<?php 
include_once('header.php');
include_once('server_files/select_cover.php');
?>
<div class="row">
	<div class="col menu letspace" style="margin-top:2em;margin-bottom:2em;"><h6>CROPTOP &amp; SKIRTS</h6></div>
</div>
<div class="container" style="padding-left:70px;padding-right:70px;">
<div class="row menu">
<?php while($row = mysqli_fetch_assoc($res)){
	echo'
	<div class="col-xs-3 menu grid">
	<a href="product-page.php?ref='.base64_encode($row['prod_id']).'" style="color:#333;text-decoration:none;" target="_blank">
		<figure class="effect-sadie">
			<img src="images/collection/'.$row['prod_id'].'.jpg" alt="img14"/>
			<figcaption>
				<p class="letspace">QUICK VIEW</p>
			</figcaption>
		</figure>
		<section align="left"><i>'.$row['prod_name'].'<br>Rs.'.$row['prod_mrp'].'</i></section>
	</a>
	</div>';}?>
</div>
</div>
<?php include_once('footer.php'); ?>