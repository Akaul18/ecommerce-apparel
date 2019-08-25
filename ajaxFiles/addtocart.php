<?php 
require_once('../includes/connection.php');
if(is_array($_POST))
{
	foreach($_POST as $key=>$value)
	{
		$key = $key;
		$$key = mysqli_real_escape_string($con,(htmlentities($value)));
	}
	$mrp = str_replace(",", "", $_SESSION['product_mrp']);
	$t = $total = $mrp*$quantity;
	$total_len = strlen($total);
	if($total_len <= 5)
	{
		$total = substr_replace($total, ",", 2, 0);
	}else{
		$total = substr_replace($total, ",", 3, 0);
		$total = substr_replace($total, ",", 1, 0);
	}
	$q = "INSERT INTO cart(prod_id,size,color,custom_color,other_details,quantity,total,total_c) VALUES('{$_SESSION['product_id']}','{$size}','{$color}','{$custom_color}','{$other_details}','{$quantity}','{$total}','{$t}')";
	$r = mysqli_query($con,$q);
	if($r)
	{
		echo 1;
	}else{
		echo 0;
	}
}
?>