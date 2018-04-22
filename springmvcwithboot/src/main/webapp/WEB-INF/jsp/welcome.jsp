<!DOCTYPE html>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html lang="en">
<head>
	
	<%-- <link rel="stylesheet" type="text/css" href="webjars/bootstrap/3.3.7/css/bootstrap.min.css" />
	<c:url value="/css/main.css" var="jstlCss" />
	<link href="${jstlCss}" rel="stylesheet" /> --%>
<title>Commute By Flight</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="google-signin-client_id" content="48687171789-b0j9ecudfmmefng9bs4sbqkj39bdvc8t.apps.googleusercontent.com">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Raleway">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<style>
.jumbotron { 
   	background-color:  #800080; 
   	color: #ffffff;
   	font-family: Impact, Charcoal, sans-serif;
}
.carousel-control.right, .carousel-control.left {
    background-image: none;
    color: #f4511e;
}
.carousel-indicators li {
    border-color: #f4511e;
}
.carousel-indicators li.active {
    background-color: #f4511e;
}
.item h4 {
    font-size: 19px;
    line-height: 1.375em;
    font-weight: 400;
    font-style: italic;
    margin: 70px 0;
}
.item span {
    font-style: normal;
}
hr{
	height: 10px;
	width:80%;
	border: 0;
	margin-left: auto;
	margin-right: auto;
	box-shadow: 0 10px 10px -10px #8c8b8b inset;
}
.navbar {
    margin-bottom: 0;
    background-color: #f4511e;
    z-index: 9999;
    border: 0;
    font-size: 12px !important;
    line-height: 1.42857143 !important;
    letter-spacing: 4px;
    border-radius: 0;
}

.navbar li a, .navbar .navbar-brand {
    color: #fff !important;
}

.navbar-nav li a:hover, .navbar-nav li.active a {
    color: #f4511e !important;
    background-color: #fff !important;
}

.navbar-default .navbar-toggle {
    border-color: transparent;
    color: #fff !important;
}
.logo-small {
    color: #f4511e;
    font-size: 50px;
}
.logo-medium {
    color: #f4511e;
    font-size: 100px;
}
.logo {
    color: #f4511e;
    font-size: 200px;
}
</style>
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
      <a class="navbar-brand" href="#">
      <img src="moryalogo.jpg" alt="commutebyflight" style="width:25%" class="w3-circle" style="margin-top">
      </a>
    </div>
    <div class="collapse navbar-collapse" id="myNavbar">
      <ul class="nav navbar-nav navbar-right">
        <li><a href="#about">ABOUT</a></li>        
        <li><a href="#contact">CONTACT</a></li>
        <li><a onclick="document.getElementById('idRegister').style.display='block'" id="register">REGISTER</a></li>
        <li><a onclick="document.getElementById('idLogin').style.display='block'" id="login">LOGIN</a></li>
        <li><a onclick="signOut();" id="signout">SIGN OUT</a></li>      
      </ul>
    </div>
  </div>
</nav>
<div class="jumbotron text-center">
  <h1>Commute By Flight</h1> 
  <p>Search your flight and feel better travel experience</p> 
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
          <input class="w3-input w3-border" type="text" placeholder="Departing from">
        </div>
        <div class="w3-half">
          <label>To</label>
          <input class="w3-input w3-border" type="text" placeholder="Arriving at">
        </div>
        <div class="w3-half">
          <label>Travel Date</label>          
          <input class="w3-input w3-border" type="date" placeholder="dd-mm-yyyy">
        </div>
      </div>
      <p>&nbsp;</p>
      <p>
      	<button type="button" class="btn btn-default btn-sm">
          <span class="glyphicon glyphicon-search"></span> Search 
        </button>
       </p>
    </div>
</div>
</header>
<br><br><br><br><br><br><br><br>
<div class="container-fluid text-center bg-grey">
<h2>What our customers say</h2>
<div id="myCarousel" class="carousel slide text-center" data-ride="carousel">
 <!-- Indicators -->
    <ol class="carousel-indicators">
      <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
      <li data-target="#myCarousel" data-slide-to="1"></li>
      <li data-target="#myCarousel" data-slide-to="2"></li>
    </ol>
    <div class="carousel-inner" role="listbox">
    	<div class="item active">
        	<h4>"This company is the best. I am so happy with the result!"<br><span>Smith Roe, Vice President, ABC Pvt. Ltd.</span></h4>
      	</div>
      	<div class="item">
        	<h4>"One word... WOW!!"<br><span>John Doe, Salesman, Rep Inc</span></h4>
      	</div>
      	<div class="item">
        	<h4>"Could I... BE any more happy with this company?"<br><span>Chandler Bing, Actor, FriendsAlot</span></h4>
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
<hr>
<div id="contact" class="container-fluid bg-grey">
  <h2 class="text-center">CONTACT</h2>
  <div class="row">
    <div class="col-sm-5">
      <p>Contact us and we'll get back to you within 24 hours.</p>
      <p><span class="glyphicon glyphicon-map-marker"></span> Benguluru, India</p>
      <p><span class="glyphicon glyphicon-phone"></span>1800 00 1400</p>
      <p><span class="glyphicon glyphicon-envelope"></span> anil.verma4283@outlook.com</p> 
    </div>
    <div class="col-sm-7">
      <div class="row">
        <div class="col-sm-6 form-group">
          <input class="form-control" id="name" name="name" placeholder="Name" type="text" required>
        </div>
        <div class="col-sm-6 form-group">
          <input class="form-control" id="email" name="email" placeholder="Email" type="email" required>
        </div>
      </div>
      <textarea class="form-control" id="comments" name="comments" placeholder="Comment" rows="5"></textarea><br>
      <div class="row">
        <div class="col-sm-12 form-group">
          <button class="btn btn-default pull-right" type="submit">Send</button>
        </div>
      </div> 
    </div>
  </div>
</div>
<br>
<!-- Add Google Maps -->
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

<div id="about" class="container-fluid">
  <div class="row">
    <div class="col-sm-8">
      <h2>About</h2>
      <h4>Commute By Flight</h4> 
      <p>The Commute By Flight provides better your travel jouney by flight across India.</p>
      <button class="btn btn-default btn-lg">Get in Touch</button>
    </div>    
    <div class="col-sm-4">
      <img src="moryalogo.jpg" alt="commutebyflight"  class="logo-medium">
    </div>
  </div>
</div>
<!-- Login Modal -->
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
        <span class="w3-right w3-padding w3-hide-small">Forgot <a href="#" onclick="resetPassword();">password?</a></span>
      </div>
</div>
</div>
<!-- Register Modal -->
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
<!-- Forgot Password Modal -->
<!-- Register Modal -->
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
	  document.getElementById('signout').style.display='block';
	}
function signOut() {
    var auth2 = gapi.auth2.getAuthInstance();
    auth2.signOut().then(function () {
      console.log('User signed out.');
    });
    document.getElementById("login").text='LOGIN';
    document.getElementById('signout').style.display='none';
  }
 function resetPassword(){
	 document.getElementById('idLogin').style.display='none';
	 document.getElementById('idForgotPassword').style.display='block';	 
 }
</script>
</body>

</html>