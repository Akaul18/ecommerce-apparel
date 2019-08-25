<?php
include_once('header.php');
include_once('server_files/retrieve_cart.php');
include_once('server_files/retrieve_cart_total.php');
?>
<div class="container" style="margin-top:2em;">
	<div class="row nocart">
	<table class="table">
		<thead>
            <tr>
                <th style="border-top:none;"><h3 class="op">My Cart <span id="count">(<?php echo $count; ?>)</span></h3></th>
                <th class="op" style="padding-left:1em;border-top:none;">Price</th>
                <th class="op" style="border-top:none;">Qty</th>
                <th class="op" style="border-top:none;">total</th>
            </tr>
        </thead>
        <tbody>
        	<?php while($rows = mysqli_fetch_assoc($res)){
	        	echo '<tr id="cart_'.$rows['id'].'">
	        		<td width="60%">
	        			<div class="row" style="text-overflow:ellipsis;">
	        				<a href="product-page.php?ref='.base64_encode($rows['prod_id']).'" style="color:#333;text-decoration:none;">
	        				<div class="col" style="max-width:200px;min-width:150px;height:200px;">
	        					<img style="width:100%;height:100%;" src="images/collection/'.$rows['prod_id'].'.jpg" alt="img14"/>
	        				</div>
	        				</a>
	        				<div class="col" style="">
	        					<p><i>'.$rows['prod_name'].'</i></p>
	        					<p class="op"><i>Size: '.$rows['size'].'<br>Color: '.$rows['color'].'<br>Custom color: '.$rows['custom_color'].'<br>Other details: '.$rows['other_details'].'</i></p>
	        					<p id="remove" onclick="removeItem('.$rows['id'].')"><br><i><u>Remove</u></i></p>
	        				</div>
	        			</div>
	        		</td>
	        		<td><i>&#8377; '.$rows['prod_mrp'].'</i></td>
	        		<td width="9%">
	        			<div class="input-group input-number-group">
							<input disabled id="" class="input-number form-control" type="number" value="'.$rows['quantity'].'">
						</div>
					</td>
	        		<td><i>&#8377; '.$rows['total'].'</i></td>
	        	</tr>';
	        } ?>
	        <tr id="subtotal">
	        	<td></td>
	        	<td colspan="3">
	        		<div class="row">
	        			<div class="col" style="opacity:0.9;"><i>Subtotal</i></div>
	        			<div class="col menu" style="opacity:0.9;">&#8377; <span id="total"><?php echo $total; ?></span>
	        			</div>
	        		</div>
	        	</td>
	        </tr>
	        <tr id="hide_empty">
	        	<td></td>
	        	<td colspan="3">
		        	<div class="row">
		        		<div class="col op">
		        			<h2 style="margin-top:2em;">CART IS EMPTY</h2>
		        		</div>
		        	</div>
		        	<div class="row">
		        		<div class="col continueshop" style="opacity: 0.8;">
		        			<u><a href="shopOnline.php" style="color:#0d9;padding-left:2.5em;cursor:pointer;">Continue Shopping</a></u>
		        		</div>
		        	</div>
	        	</td>
	        </tr>
	        <tr id="hidecheckout">
	        	<td></td>
	        	<td colspan="3">
	        		<div class="row" style="width:100%;">
	        			<button type="button" class="btn form-control" style="background:#333;color:#eee;height:60px;cursor:pointer;letter-spacing:5px;"><a style="text-decoration:none;"><i style="font-size:24px" class="fa">&#xf023;</i> Checkout</a></button>
	        		</div>
	        	</td>
	        </tr>
        </tbody>
	</table>
	</div>
</div>
<?php include_once('footer.php'); ?>