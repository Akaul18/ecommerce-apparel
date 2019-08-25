<?php 
$url = substr($_SERVER['PHP_SELF'],10,-4);
if($url == 'shopOnline'){
		// $query = "SELECT prod_id,prod_name,prod_mrp,prod_type FROM product WHERE cover='1' ORDER BY RAND()";
		$query = "SELECT prod_id,prod_name,prod_mrp,prod_type FROM product WHERE cover='1' ORDER BY id DESC";
		$res = mysqli_query($con,$query);
	}else if ($url == 'bestsellers') {
		$query = "SELECT prod_id,prod_name,prod_mrp,prod_type,bestseller FROM product WHERE bestseller='1' AND cover='1'";
		$res = mysqli_query($con,$query);
	}
	else{
		$query = "SELECT prod_id,prod_name,prod_mrp,prod_type FROM product WHERE prod_type='{$url}' AND cover='1'";
		$res = mysqli_query($con,$query);
	}
?>