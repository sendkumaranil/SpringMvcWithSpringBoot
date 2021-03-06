<!DOCTYPE html>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html lang="en">
<head>
<title>Commute By Flight</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="google-signin-client_id" content="48687171789-b0j9ecudfmmefng9bs4sbqkj39bdvc8t.apps.googleusercontent.com">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Raleway">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
<link rel="stylesheet" href='https://fonts.googleapis.com/css?family=Akronim'>
<link rel="stylesheet" href='https://fonts.googleapis.com/css?family=Alex Brush'>
<link rel="stylesheet" href='https://fonts.googleapis.com/css?family=Aladin'>
<link rel="stylesheet" href='css/commutebyflight.css'>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
</head>
<body>
<nav class="navbar navbar-default navbar-fixed-top">
  <div class="container">
    <div class="navbar-header">
      <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span> 
      </button>      
       <div class="w3-padding w3-left-align acronim-font w3-text-white">CommuteByFlight
    		<i class="fa fa-plane"></i>   
  	   </div>     
    </div>
    <div class="collapse navbar-collapse" id="myNavbar">
      <ul class="nav navbar-nav navbar-right">
        <li><a href="#about">ABOUT</a></li>        
        <li><a href="#contact">CONTACT</a></li>        
        <li><a onclick="document.getElementById('idLogin').style.display='block'" id="login">LOGIN</a></li>
        <li><a onclick="signOut();" id="signout">SIGN OUT</a></li>      
      </ul>
    </div>
  </div>
</nav>
<div class="jumbotron text-center">
  <h1 class="acronim-font">Commute By Flight</h1> 
  <p class="aladin-font">Search your flight and feel better travel experience</p> 
</div>
<br><br><br>
<header class="w3-display-container w3-content w3-hide-small" style="max-width:1500px">
<div class="w3-display-middle" style="width:65%">
    <div class="w3-bar w3-black">
      <button class="w3-bar-item w3-button tablink" onclick="openLink(event, 'Flight');"><i class="fa fa-plane w3-margin-right"></i>Flight</button>
      <button class="w3-bar-item w3-button tablink" onclick="openLink(event, 'Hotel');"><i class="fa fa-bed w3-margin-right"></i>Hotel</button>
      <button class="w3-bar-item w3-button tablink" onclick="openLink(event, 'Car');"><i class="fa fa-car w3-margin-right"></i>Rental</button>
    </div>
    <div id="Flight" class="w3-container w3-orange w3-padding-16 myLink">
      <h3>Travel the India with Commute By Flight</h3>
      <div class="w3-row-padding" style="margin:0 -16px;">
        <div class="w3-half">
          <label>From</label>
          <input class="w3-input w3-border" id="IdSource" type="text" placeholder="Departing from" required>
        </div>
        <div class="w3-half">
          <label>To</label>
          <input class="w3-input w3-border" id="IdDestination" type="text" placeholder="Arriving at" required>
        </div>
        <div class="w3-half">
          <label>Travel Date</label>          
          <input class="w3-input w3-border" id="IdTravelDate" type="date" placeholder="dd-mm-yyyy" required>
        </div>
      </div>
      <p>&nbsp;</p>
      <p>
      	<button type="button" id="IdSearchbtn" class="btn btn-default btn-sm">
          <span class="glyphicon glyphicon-search"></span> Search 
        </button>
        </p>
         <div id="alertMessageId" class="alert alert-danger alert-dismissible">
    		<a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>
    		<strong>Stop!</strong><span id="fromBlankMsgId"></span> 
  		</div>       
    </div>
</div>
</header>
<br><br><br><br><br><br><br><br>
<div class="container-fluid text-center bg-grey">
<h2 class="aladin-font">What our customers say</h2>
<div id="myCarousel" class="carousel slide text-center" data-ride="carousel">
 <!-- Indicators -->
    <ol class="carousel-indicators">
      <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
      <li data-target="#myCarousel" data-slide-to="1"></li>
      <li data-target="#myCarousel" data-slide-to="2"></li>
    </ol>
    <div class="carousel-inner" role="listbox">
    	<div class="item active">
        	<h4 class="aladin-font">"This company is the best. I am so happy with the result!"<br><span>Smith Roe, Vice President, ABC Pvt. Ltd.</span></h4>
      	</div>
      	<div class="item">
        	<h4 class="aladin-font">"One word... WOW!!"<br><span>John Doe, Salesman, Rep Inc</span></h4>
      	</div>
      	<div class="item">
        	<h4 class="aladin-font">"Could I... BE any more happy with this company?"<br><span>Chandler Bing, Actor, FriendsAlot</span></h4>
      	</div>
      	 <!-- Left and right controls -->
	    <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
	      <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
	      <span class="sr-only">Previous</span>
	    </a>
	    <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
      		<span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
      		<span class="sr-only">Next</span>
    	</a>
    </div>
</div>
</div>
<br>
<div id="contact" class="container-fluid bg-gray">
  <div class="row">
    <div class="col-sm-5">
      <div class="w3-card-4" style="width:70%;">
	    <header class="w3-container w3-gray">
	      <h4 class="aladin-font">Contact us and we'll get back to you within 24 hours.</h4>
	    </header>
	    <div class="w3-container">
	      <p class="aladin-font"></p>
	      <p class="aladin-font"><span class="glyphicon glyphicon-map-marker"></span> Bengluru, India</p>
	      <p class="aladin-font"><span class="glyphicon glyphicon-phone"></span>1800 00 1400</p>
	      <p class="aladin-font"><span class="glyphicon glyphicon-envelope"></span> anil.verma4283@outlook.com</p> 
	    </div>
	    <footer class="w3-container w3-gray">
	      <h6 class="augufina-font">&copy; commutebyflight</h6>
	    </footer>
  	</div>
    </div>
    <div class="col-sm-7">
	    <div class="w3-card-4">
	    <div class="w3-container w3-gray">
	      	<ul class="w3-ul text-center">
				<li class="w3-xxlarge aladin-font w3-left-align"><i class="glyphicon glyphicon-user"></i> Contact</li>
			</ul>  
	    </div>
	
	    <form class="w3-container">
	      
			<p> <div class="input-group">
			  <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>        
			  <input class="form-control" id="name" name="name" placeholder="Name" type="text" required>
			</div></p>	      
	      <p> <div class="input-group">
          <span class="input-group-addon"><i class="glyphicon glyphicon-envelope"></i></span> 
          <input class="form-control" id="email" name="email" placeholder="Email" type="email" required>
        </div></p>		
		<p><div class="input-group">
          <span class="input-group-addon"><i class="glyphicon glyphicon-pencil"></i></span> 
          <textarea class="form-control" id="comments" name="comments" placeholder="Comment" rows="5"></textarea>
        </div></p>		
		<p><div class="input-group">
         <button type="button" class="btn btn-default btn-sm">
          <span class="glyphicon glyphicon-send"></span> Send 
        </button>
        </div></p>		
	    </form>
	  </div>
    </div>
  </div>
</div>
<br>
<!-- Add Google Maps Start-->
<div id="googleMap" style="height:400px;width:100%;"></div>
<script>
function myMap() {
var myCenter = new google.maps.LatLng(12.9065048, 77.6249732);
var mapProp = {center:myCenter, zoom:12, scrollwheel:false, draggable:false, mapTypeId:google.maps.MapTypeId.ROADMAP};
var map = new google.maps.Map(document.getElementById("googleMap"),mapProp);
var marker = new google.maps.Marker({position:myCenter});
marker.setMap(map);
}
</script>
<script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyCKeMc5Vsq9nnjwmaraEFUPChqWIZMc0dU&callback=myMap"></script>
<!-- Add Google Maps End-->

<div id="about" class="container-fluid">
  <div class="row">
    <div class="col-sm-8">
      <h2 class="aladin-font">About</h2>
      <h4 class="aladin-font">Commute By Flight</h4> 
      <p class="aladin-font">The Commute By Flight provides better your travel journey by flight across India.</p>
      <button class="w3-button w3-black w3-round-xlarge" id="IdGetInTouchBtn">Get In Touch</button>
    </div>    
    <div class="col-sm-4">
      <img src="moryalogo.jpg" alt="commutebyflight"  class="logo-medium">
    </div>
  </div>
</div>
<!-- Login Modal Start-->
<div id="idLogin" class="w3-modal">
<div class="w3-modal-content w3-card-4 w3-animate-zoom" style="max-width:400px">
	<div class="w3-center"><br>
        <span onclick="document.getElementById('idLogin').style.display='none'" class="w3-button w3-xlarge w3-hover-red w3-display-topright" title="Close Login">&times;</span>
        <img src="avatar.png" alt="Avatar" style="width:20%" class="w3-circle w3-margin-top">
     </div>
     <form class="w3-container" action="/action_page.php">
     	<div class="w3-section">
          <label><b>Email</b></label>
          <input class="w3-input w3-border w3-margin-bottom" type="text" placeholder="Enter Registered Email" name="usrname" required>
          <label><b>Password</b></label>
          <input class="w3-input w3-border" type="password" placeholder="Enter Password" name="psw" required>
          <button class="w3-button w3-block w3-green w3-section w3-padding" type="submit">Login</button>
          <input class="w3-check w3-margin-top" type="checkbox" checked="checked"> Remember me
        </div>
     </form>
     <div class="g-signin2" data-onsuccess="onSignIn"></div>
     <div class="w3-container w3-border-top w3-padding-16 w3-light-grey">
        <button onclick="document.getElementById('idLogin').style.display='none'" type="button" class="w3-button w3-red">Cancel</button>
        <button onclick="registerNewUser();" type="button" class="w3-button w3-blue">Sign Up</button>
        <span class="w3-right w3-padding w3-hide-small">Forgot <a href="#" onclick="resetPassword();">password?</a></span>
      </div>
</div>
</div>
<!-- Login Modal End-->
<!-- Register Modal Start-->
<div id="idRegister" class="w3-modal">
	<div class="w3-modal-content w3-animate-zoom" style="max-width:500px">
		<header class="w3-container w3-teal"> 
		        <span onclick="document.getElementById('idRegister').style.display='none'" 
		        class="w3-button w3-display-topright">&times;</span>
		        <h3>Register New user</h3>
		</header>
		<form class="w3-container" action="/action_page.php">
	     	<div class="w3-section">
	          <label><b>Email</b></label>
	          <input class="w3-input w3-border w3-margin-bottom" type="email" placeholder="Enter Email Id" name="email" required>
	          <label><b>Password</b></label>
	          <input class="w3-input w3-border" type="password" placeholder="Enter Password" name="psw" required>
	          <label><b>Re-Enter Password</b></label>
	          <input class="w3-input w3-border" type="password" placeholder="Re-Enter Password" name="psw" required>
	          <button class="w3-button w3-block w3-blue w3-section w3-padding" type="submit">Register</button>          
	        </div>
     	</form>     	
     	<footer class="w3-container w3-teal">
        	<p>Commute By Flight</p>
      	</footer>
	</div>
</div>
<!-- Register Modal End-->
<!-- Forgot Password Modal -->
<div id="idForgotPassword" class="w3-modal">
	<div class="w3-modal-content w3-animate-zoom" style="max-width:400px">
		<header class="w3-container w3-teal"> 
		        <span onclick="document.getElementById('idForgotPassword').style.display='none'" 
		        class="w3-button w3-display-topright">&times;</span>
		        <h3>Reset Password</h3>
		</header>
		<form class="w3-container" action="/action_page.php">
	     	<div class="w3-section">
	          <label><b>Email</b></label>
	          <input class="w3-input w3-border w3-margin-bottom" type="email" placeholder="Enter Registered Email Id" name="email" required>	          
	          <button class="w3-button w3-block w3-blue w3-section w3-padding" type="submit">Reset</button>          
	        </div>
     	</form>     	
     	<footer class="w3-container w3-teal">
        	<p>Please check your email for reset password</p>
      	</footer>
	</div>
</div>
<!-- Forgot Password Modal End-->
<!-- Get In Touch Modal -->
<div id="idGetInTouchModal" class="w3-modal">
	<div class="w3-modal-content w3-animate-zoom" style="max-width:400px">
		<header class="w3-container w3-teal"> 
		        <span onclick="document.getElementById('idGetInTouchModal').style.display='none'" 
		        class="w3-button w3-display-topright">&times;</span>
		        <h3>Get In Touch</h3>
		</header>
		<form class="w3-container" action="/action_page.php">
	     	<div class="w3-section">
	          <label><b>Email</b></label>
	          <input class="w3-input w3-border w3-margin-bottom" type="email" placeholder="Enter Email Id" name="email" required>	          
	          <button class="w3-button w3-block w3-red w3-section w3-padding" type="submit">Subscribe</button>          
	        </div>
     	</form>     	
     	<footer class="w3-container w3-teal">
        	<p>We will send you latest offer and flight details</p>
      	</footer>
	</div>
</div>
<!-- Get In Touch Modal End-->
<script src="https://apis.google.com/js/platform.js" async defer></script>
<script>
document.getElementById('signout').style.display='none';
function onSignIn(googleUser) {
	  var profile = googleUser.getBasicProfile();
	  console.log('ID: ' + profile.getId()); // Do not send to your backend! Use an ID token instead.
	  console.log('Name: ' + profile.getName());
	  console.log('Image URL: ' + profile.getImageUrl());
	  console.log('Email: ' + profile.getEmail()); // This is null if the 'email' scope is not present.
	  document.getElementById('idLogin').style.display='none';
	  document.getElementById("login").text=profile.getName();
	  document.getElementById("login").onclick = function() {
		   //do nothing;
	  }
	  document.getElementById('signout').style.display='block';
	}
function signOut() {
    var auth2 = gapi.auth2.getAuthInstance();
    auth2.signOut().then(function () {
      console.log('User signed out.');
    });
    document.getElementById("login").text='LOGIN';
    document.getElementById('signout').style.display='none';
    document.getElementById("login").onclick = function() {
    	document.getElementById('idLogin').style.display='block';
	}
  }
 function resetPassword(){
	 document.getElementById('idLogin').style.display='none';
	 document.getElementById('idForgotPassword').style.display='block';	 
 }
 function registerNewUser(){
	 document.getElementById('idRegister').style.display='block';
	 document.getElementById('idLogin').style.display='none';
 }
 
 $("#IdSearchbtn").click(function(){
	 
	    var from=document.getElementById('IdSource').value;
		var to=document.getElementById('IdDestination').value;
		var tDate=document.getElementById('IdTravelDate').value;
		if(from==''){
			$("#fromBlankMsgId").text(" From field is mandatory");
			$("#alertMessageId").show();
			return;
		}
		if(to==''){
			$("#fromBlankMsgId").text(" To field is mandatory");
			$("#alertMessageId").show();
			return;
		}
		if(tDate==''){
			$("#fromBlankMsgId").text(" Travel Date field is mandatory");
			$("#alertMessageId").show();
			return;
		}
		
		var date = new Date($('#IdTravelDate').val());
	    day = date.getDate();
	    month = date.getMonth() + 1;
	    year = date.getFullYear();
	    traveldate=[day, month, year].join('-');
	    
		console.log('From: ' + from);
		console.log('To: ' + to);
		console.log('Travle On: ' + traveldate);
			
 });
 
 $("#IdGetInTouchBtn").click(function(){
	 document.getElementById('idGetInTouchModal').style.display='block';	
 });
 
 $( function() {
	 var sources = ["Delhi","Bangalore","Mumbai","Pune","Hydrabad","Patna","Bhubneshwar","Bhopal"];
	    $( "#IdSource" ).autocomplete({
	      source: sources
	    });
	 var destinations = ["Delhi","Bangalore","Mumbai","Pune","Hydrabad","Patna","Bhubneshwar","Bhopal"];
	 $( "#IdDestination" ).autocomplete({
	      source: destinations
	    });
	  } );
 
 $("#IdSource").focus(function(){
	 $("#alertMessageId").hide();	 
 });
 $("#IdDestination").focus(function(){
	 $("#alertMessageId").hide();	 
 });
 $("#IdTravelDate").focus(function(){
	 $("#alertMessageId").hide();	 
 });
 $("#alertMessageId").hide();
</script>
</body>

</html>