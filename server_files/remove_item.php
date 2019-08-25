<?php
require_once('../includes/connection.php');
$id = $_POST['id'];
$cart_id = 'cart_'.$id;
$query = "DELETE FROM cart where id={$id}";
$res = mysqli_query($con,$query);
include_once('retrieve_cart.php');
if($res)
{
	echo $cart_id."/".$count;
}else{
	echo 'nope';
}
// require_once('../includes/connection.php');
// include_once('retrieve_cart.php');
// $id = $_POST['id'];
// $cart_id = 'cart_'.$id;
// 	echo $cart_id."/".$count;
?>

