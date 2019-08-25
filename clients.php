<?php 
include_once('header.php');
include_once('./server_files/select_client.php');
?>
<div class="row">
	<div class="col menu letspace" style="margin-top:2em;margin-bottom:2em;"><h6>CLIENTS</h6></div>
</div>
<div class="container" style="padding-left:70px;padding-right:70px;">
<div class="row menu">
<?php while($row = mysqli_fetch_assoc($res)){
	echo'
	<div class="col-xs-3 menu grid">
		<figure class="effect-sadie" style="cursor:default;">
			<img src="images/clientimages/'.$row['img_name'].'" alt="img14"/>
		</figure>
	</div>';}?>
</div>
</div>





<?php include_once('footer.php'); ?>