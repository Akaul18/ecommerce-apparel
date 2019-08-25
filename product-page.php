<?php 
session_start();
include_once('header.php');
$path = './images/collection/';
$img = base64_decode($_GET['ref']);
$ext = '.jpg';
$query1 = "SELECT prod_name,prod_mrp FROM product WHERE prod_id='{$img}'";
$res1 = mysqli_query($con,$query1);
?>
<div class="container pro_top">
	<div class="row" style="height:500px;margin-top:2em;margin-bottom:2em;">
		<?php while($row1 = mysqli_fetch_assoc($res1)){
			$_SESSION['product_id'] = $img;
			$_SESSION['product_mrp'] = $row1['prod_mrp'];
			$_SESSION['product_name'] = $row1['prod_name'];
		echo'
		<div class="col im" align="center">
			<img id="cover" src="'.$path.$img.$ext.'" data-zoom-image="'.$path.$img.$ext.'" style="width:65%;height:100%;"/>
		</div>
		<div class="col nim" id="nim" style="overflow:scroll;">
			<h3 id="top" style="text-align:left;"><i>'.$row1['prod_name'].'</i></h3>
			<p style="text-align:left;margin-top:1.5em;"><i>Rs. '.$row1['prod_mrp'].'</i></p>
			<div class="row" style="width:400px;">
				<div class="col form-group">
					<span id="clr_err" style="color:#f22;font-size:1.5em;"></span><label for="color" style="color:#bbb;">Color:</label>
			    	<select class="form-control" id="color">
				      	<option hidden >Select</option>
				      	<option>Same as sample</option>
				      	<option>Custom(fill in custom text)</option>
			    	</select>
				</div>
			</div>
			<div class="row" style="width:400px;">
				<div class="col form-group">
					<span id="size_err" style="color:#f22;font-size:1.5em;"></span><label for="size" style="margin-top:1em;color:#bbb;">Size:</label>
			    	<select class="form-control" id="size">
				      	<option hidden>Select</option>
				      	<option>XS</option>
				      	<option>S</option>
				      	<option>M</option>
				      	<option>L</option>
				      	<option>XL</option>
				      	<option>XXL</option>
			    	</select><span data-toggle="modal" data-target="#myModal" style="color:#0d9;margin-left:300px;cursor:pointer;">size chart</span>
				</div>
			</div>
			<div class="row" style="width:400px;">
				<div class="col form-group">
					<label for="customization" style="margin-top:1em;color:#bbb;">"For further customisations of colour or size please mention here". (optional):</label>
					<textarea id="area1" name="customization" class="form-control text" rows="3" maxlength="500"></textarea>
				</div>
			</div>
			<div class="row" style="width:400px;">
				<div class="col form-group">
					<label for="other" style="margin-top:1em;color:#bbb;">"For any other request please mention here" (optional):</label>
					<textarea id="area2" name="other" class="form-control text" rows="3" maxlength="500"></textarea>
				</div>
			</div>
			<div class="row" style="width:400px;">
				<div class="col form-group">
					<label for="quantity" style="margin-top:1em;color:#bbb;">Quantity:</label>
					<div class="input-group input-number-group">
					  	<div class="input-group-button">
					    	<span class="input-number-decrement">-</span>
					  	</div>
					  	<input disabled id="quantity" class="input-number form-control" type="number" value="1" min="1" max="100">
					  	<div class="input-group-button">
					    	<span class="input-number-increment">+</span>
					  	</div>
					</div>
				</div>
			</div>
			<div class="row" style="width:400px;">
				<div class="col form-group" style="margin-top:1em;">
					<button type="button" class="btn form-control" style="background:#333;color:#eee;height:60px;cursor:pointer;" onclick="checkbox()"><a href="#top" style="color:#0d9;text-decoration:none;">ADD TO CART</a></button>
				</div>
			</div>
		</div>';}?>
	</div>
</div>

<!-- modal start -->
<div class="container mod">

  <!-- Modal -->
  <div class="modal fade" id="myModal" role="dialog">
    <div class="modal-dialog">
    
      <!-- Modal content-->
      <div class="modal-content">
	        <div class="modal-header">
	        	<h5 class="modal-title" style="color:#0d9;">Size chart</h5>
	          	<button type="button" class="close" data-dismiss="modal">&times;</button>
	        </div>
	        <div class="modal-body" style="overflow:scroll;">
	          	<img src="./images/size-chart.png" alt="size-chart" class="img-responsive" style="min-width:100%;max-height:100%;">
	        </div>
	        <div class="modal-footer">
	          	<button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
	        </div>
      </div>
      
    </div>
  </div>
</div>
<!-- modal end -->

<script type="text/javascript">
	$("#cover").elevateZoom({
		zoomType:"inner",
		cursor: "crosshair"
	});
	
	$('.input-number-increment').click(function() {
	  var $input = $(this).parents('.input-number-group').find('.input-number');
	  var val = parseInt($input.val(), 10);
	  if($input.val() >= 100)
	  {
	  	$input.val() == 100;
	  }else{
	  	$input.val(val + 1);	
	  }
	});

	$('.input-number-decrement').click(function() {
	  var $input = $(this).parents('.input-number-group').find('.input-number');
	  var val = parseInt($input.val(), 10);
	  if($input.val() <= 1)
	  {
	  	$input.val() == 1;
	  }else{
	  	$input.val(val - 1);	
	  }
	});
</script>
<?php include_once('footer.php'); ?>