<?php 
$query = "SELECT cart.id,cart.prod_id,cart.color,cart.size,cart.custom_color,cart.other_details,cart.quantity,cart.total,product.prod_mrp,product.prod_name FROM cart INNER JOIN product ON cart.prod_id = product.prod_id ORDER BY cart.id DESC";
$res = mysqli_query($con,$query);
$count = mysqli_num_rows($res);
?>
