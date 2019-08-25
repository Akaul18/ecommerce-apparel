<?php 
$qu = "SELECT SUM(total_c) AS value FROM cart";
$re = mysqli_query($con,$qu);
if($re){
	$ro = mysqli_fetch_assoc($re);
	$total_len = strlen($ro['value']);
	if($total_len <= 5)
	{
		if($total_len == 5)
		{
			$total = substr_replace($ro['value'], ",", 2, 0);
		}else
		{
			$total = 0;
		}
	}else{
		$total = substr_replace($ro['value'], ",", 3, 0);
		$total = substr_replace($total, ",", 1, 0);
	}
}
?>