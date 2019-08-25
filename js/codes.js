// $(document).ready(function(){
// 	$(".slide").slideToggle(2000);
// });
function indexp()
{
	// alert("heyy");return false;
	window.location='index.php';
}
function about()
{
	window.location='about.php';
}
function storeLocator()
{
	window.location='storeLocator.php';
}
function clients()
{
	window.location='clients.php';
}
function contact()
{
	window.location='contact.php';
}
function maps()
{
	window.location='maps.php';
}
function leh(){
	window.location='leh.php';
}
function shopOnline(){
	window.location='shopOnline.php';
}
function Cart(){
	window.location='cart.php';
}
function gotolink(id)
{
	if(id=='shop'){
		window.location='shopOnline.php';
	}else if(id=='bestsellers'){
		window.location='bestsellers.php';
	}else if(id=='lehenga'){
		window.location='lehenga.php';
	}else if(id=='anarkali'){
		window.location='anarkali.php';
	}else if(id=='croptop'){
		window.location='croptop&skirt.php';
	}else if(id=='jumpsuits'){
		window.location='jumpsuits.php';
	}else if(id=='sharara'){
		window.location='sharara.php';
	}
}
function checkid(id){
	alert(id);return false;
	// alert('success');return false;
}
function check(){
	alert('success');return false;
}