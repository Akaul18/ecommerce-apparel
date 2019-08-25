$(document).ready(function(){
	$.post("./server_files/check_cart_count.php",{},function(data){
		if(data == 0)
		{
			$('#subtotal').css('display','none');
			$('#hidecheckout').css('display','none');
		}else{
			$('#hide_empty').css('display','none');
			// $('#subtotal').css('display','block');
		}
	});
	var isSafari = /^((?!chrome|android).)*safari/i.test(navigator.userAgent);
	var a = document.getElementById('nim');
	if(isSafari == true)
	{
		a.classList.add('heisafari');
	}else{
		a.classList.add('hei');
	}
});
function checkbox()
{
	var x = $('#color option:selected').val();
	var size = $('#size option:selected').val();
	var quant = $('#quantity').val();
	// alert(x+y);return false;
	if(x == 'Select' || size == 'Select')
	{
		var z = '*';
		if(x == 'Select' && size == 'Select')
		{
			document.getElementById('clr_err').innerHTML = z;
			document.getElementById('size_err').innerHTML = z;
			alert('Oops..!! Color and size cannot be empty..!!');return false;
		}else if(x == 'Select'){
			document.getElementById('size_err').innerHTML = "";
			document.getElementById('clr_err').innerHTML = z;
			alert('Oops..!! Color not selected');return false;
		}else{
			document.getElementById('clr_err').innerHTML = "";
			document.getElementById('size_err').innerHTML = z;
			alert('Oops..!! Size not selected');return false;
		}
	}else
	{
		if(x == 'Custom(fill in custom text)'){
			if($('#area1').val().length < 1)
			{
				alert('Please mention the color you want');return false;
			}else{
				var color = $('#area1').val();
				var other_details = $('#area2').val();
				$.post("./ajaxFiles/addtocart.php",{size:size,color:x,custom_color:color,other_details:other_details,quantity:quant},function(data){
					alert('Item added to cart');
					if(data == '1'){
						location.reload();
						// $('select').val('Select');
						// $('input[type=number]').val(1);
						// $('textarea').val("");
						// document.getElementById('size_err').innerHTML = "";
						// document.getElementById('clr_err').innerHTML = "";
					}else{
						alert('Cannot add to cart.Please try again after sometime');return false;
					}
				});
			}
		}else{
			var color1 = $('#area1').val();
			var other_details = $('#area2').val();
			$.post("./ajaxFiles/addtocart.php",{size:size,color:x,custom_color:color1,other_details:other_details,quantity:quant},function(data){
				alert('Item added to cart');
				if(data == '1'){
					location.reload();
					// $('select').val('Select');
					// $('input[type=number]').val(1);
					// $('textarea').val("");
					// document.getElementById('size_err').innerHTML = "";
					// document.getElementById('clr_err').innerHTML = "";
				}else{
					alert('Cannot add to cart.Please try again after sometime');return false;
				}
			});
		}
	}
}
function removeItem(id)
{
	$.post("./server_files/remove_item.php",{id:id},function(data){
		// alert(data);return false;
		index = data.indexOf("/");
		count = data.substr(index+1).trim();
		// alert(count+'1');return false;
		cart_id = data.substr(0,index);
		$('#'+cart_id).css('display','none');
		$('#count').html('('+count+')');
	});
	retrieveTotal();
	checkEmptyCart();
	setTimeout(function(){ location.reload() },1000);
}
function retrieveTotal()
{
	$.post("./server_files/get_total.php",{},function(data){
		// alert(data);return false;
		$('#total').html(data);
	});
}
function checkEmptyCart()
{
	$.post("./server_files/check_cart_count.php",{},function(data){
		if(data == 0)
		{
			$('#subtotal').css('display','none');
			$('#hidecheckout').css('display','none');
			$('#hide_empty').css('display','contents');
		}else{
			$('#hide_empty').css('display','none');
		}
	});
}
