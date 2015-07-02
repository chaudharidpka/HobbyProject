<%@ page language="java" contentType="text/html; charset=windows-1256"
	pageEncoding="windows-1256"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
"http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
<meta http-equiv="Content-Type"
	content="text/html; charset=windows-1256">
<title>Login Page</title>
<script src="javascripts/angular.min.js"></script>
<script src="javascripts/jquery-2.1.4.min.js"></script>
<script src="javascripts/jquery-ui.js"></script>
<script src="javascripts/angular-animate.min.js"></script>
<script src="javascripts/bootstrap-modal.js"></script>
<link href="css/bootstrap.min.css" rel="stylesheet">
<link href="css/mainstyle.css" rel="stylesheet" />
<link href="css/style.css" rel="stylesheet" />
<link rel='stylesheet prefetch'	href='http://daneden.github.io/animate.css/animate.min.css'>

<script>
	$(document).ready(function() {
		$("#loginBtn").click(function() {
			$("#loginModal").modal();
			$('.switch1').click() == true;
		});

		$("#regBtn").click(function() {
			$("#loginModal").modal();
			$('.switch2').click() == true;
		});

		$('.switch1').click(function() {
			$(this).css('background', 'white');
			$(this).css('color', '#33b5e5');
			$('.switch2').css('background', '#33b5e5');
			$('.switch2').css('color', '#ffffff');
		});

		$('.switch2').click(function() {
			$(this).css('background', 'white');
			$(this).css('color', '#33b5e5');
			$('.switch1').css('background', '#33b5e5');
			$('.switch1').css('color', '#ffffff');
		});

		$('.regFooter').click(function() {
			$('.switch1').css('background', 'white');
			$('.switch1').css('color', '#33b5e5');
			$('.switch2').css('background', '#33b5e5');
			$('.switch2').css('color', '#ffffff');
		});
	});
</script>
</head>
<body>
	<div id="nav">
		<ul>
			<li><a href="LoginPage.jsp">Home</a></li>
			<li><a href="#news">News</a>
				<ul>
					<li><a href="#">Global Tall News</a></li>
					<li><a href="#">Newsletter</a></li>
					<li><a href="#">CTBUH in media</a></li>
					<li><a href="#">Chinese Coverage</a></li>
				</ul>
			</li>
			<li><a href="#about">About</a>
			<ul>
					<li><a href="#">Organization and People</a></li>
					<li><a href="#">Membership</a></li>
					<li><a href="#">History</a></li>
					<li><a href="#">Contact Us</a></li>
				</ul>
			</li>
			<li><a href="#contact">Shop</a></li>
			
			<div id="loginBtns">
			<div><button type="button" class="btn btn-primary" id="loginBtn">SIGN IN</button></div>
			<div><button type="button" class="btn btn-info" id="regBtn">REGISTER</button></div>
			</div>
		</ul>
	</div>

	<br>
	<br />

	<div id="filter" ng-app="myApp" ng-controller="personCtrl">
		<p align=center>
			<button type="button" id="filter_button" ng-mouseover="toggle()">FILTER</button>
		</p>
		<div id="menu" ng-show="myVar" ng-mouseleave="toggleoff()">
			<div id="col1" style="float: left; width: 32%;">
				<h3>Filter By</h3>
				<ul>
					<li><a href="#" ng-mouseover="dispCol2_1()">Skyscrapers</a></li>
					<li><a href="#" ng-mouseover="dispCol2_2()">Large Buildings</a></li>
					<li><a href="#" ng-mouseover="dispCol2_3()">Mansions</a></li>
				</ul>
			</div>

			<div
				style="border-left: 1px solid #FFFFFF; height: 195px; width: 1%; float: left"></div>

			<div id="col2" style="float: left; width: 33%;">
				<h3>{{filter}}</h3>
				<ul>
					<li ng-repeat="list in lists"><a id="myAnchor{{$index}}" href="#" ng-click="dispCol3($index)">{{list}}</a></li>
				</ul>
			</div>

			<div
				style="border-left: 1px solid #FFFFFF; height: 195px; width: 1%; float: left"></div>

			<div id="col3" style="float: left; width: 32%;">
				<div id="col3_1" style="float: left; width: 50%;">
					<h3>My Filters</h3>
					<li ng-repeat="anchor in anchors">
<!-- 					<a href="#" id="remBtn">x</a> -->
					<button type="button" id="remBtn" ng-click="remFilter($index)">X</button>
					<a href="#">{{anchor}}</a>
					</li>
				</div>
				<div id="col3_2" style="float: right; width: 50%;">
					<h3>&nbsp;</h3>
					<li ng-repeat="anchor1 in anchor1s">
					<button type="button" id="remBtn1" ng-click="remFilter1($index)">X</button>
					<a href="#">{{anchor1}}</a>
					</li>
				</div>
			</div>
		</div>
		
		<div class="modal fade" id="loginModal" role="dialog">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class='form' ng-app="" ng-init="tab=1">
					<div class='modal-header'>
						<div class="modalClose" data-dismiss="modal">&times;</div>
						<div id='tab1' class='switch1' ng-click="tab=1">
							<!-- <i class='fa fa-pencil fa-times'></i> -->
							SIGN IN
							<!-- <div class='tooltip'>Click Me</div> -->
						</div>
						<div id='tab2' class='switch2' ng-click="tab=2">
							<!-- <i class='fa fa-pencil fa-times'></i> -->
							REGISTER
							<!-- <div class='tooltip'>Click Me</div> -->
						</div>
					</div>
					<div class='modal-tabs'>
						<div class='login' ng-show="tab==1">
						<h2>Sign in to your CTBUH Account</h2>
							<form role="form" action="LoginServlet" id="login-nav">
								<input name="un" id="email" placeholder="Username" type="text"> 
								<input name="pw" id="password" placeholder="Password" type="password"> 
								<button>Sign In</button>
							</form>
						</div>
						<div class='register' ng-show="tab==2">
							<h2>Create An Account</h2>
							<form>
								<div class="divRegister">
									<div class="c2">
										<input placeholder='First Name' type='text'> <input
											placeholder='Last Name' type='text'>
									</div>
									<div class="c1">
										<input placeholder='Email Address' type='email'>
									</div>
									<div class="c2">
										<input placeholder='Password' type='password'> <input
											placeholder='Confirm Password' type='password'>
									</div>
									<button style="width: 97%; margin: 5px">Register</button>
								</div>
							</form>
						</div>
					</div>
					<footer>
					<div class="login" ng-show="tab==1">
						<a href='#'>Forgot Password?</a>
					</div>
					<div class="register" ng-show="tab==2">
						<div class="regFooter" ng-click="tab=1">Already on CTBUH?
							Sign in</div>
					</div>
					</footer>
				</div>
			</div>
		</div>
	</div>
		
	</div>
	<div id="clear"></div>
	<br>
	<br />
	<div id="boxes">
		<table id="table1" align="center">
			<tr>
				<td><img src="images/1.jpg"></td>
				<td><img src="images/2.jpg"></td>
				<td><img src="images/3.jpg"></td>
				<td><img src="images/4.jpg"></td>
			</tr>
			<tr>
				<td><img src="images/5.jpg"></td>
				<td><img src="images/6.jpg"></td>
				<td><img src="images/7.png"></td>
				<td><img src="images/8.jpg"></td>
			</tr>
			<tr>
				<td><img src="images/1.jpg"></td>
				<td><img src="images/2.jpg"></td>
				<td><img src="images/3.jpg"></td>
				<td><img src="images/4.jpg"></td>
			</tr>
			<tr>
				<td><img src="images/5.jpg"></td>
				<td><img src="images/6.jpg"></td>
				<td><img src="images/7.png"></td>
				<td><img src="images/8.jpg"></td>
			</tr>
		</table>
	</div>
		<script>
		var app = angular.module('myApp', []);
		app.controller('personCtrl', function($scope) {
			$scope.check = false;
			$scope.anchors = [];
			$scope.anchor1s = [];
			$scope.myVar = false;
			$scope.filter = "Category"
			$scope.toggle = function() {
				$scope.myVar = !$scope.myVar;
			};
			$scope.toggleoff = function() {
				$scope.myVar = false;
			};
			$scope.dispCol2_1 = function() {
				$scope.filter = "SkyScrapers";
				$scope.lists = [ 'Willis', 'Burj Khalifa', 'Petronas Towers', 'Trump' ];
			};
			$scope.dispCol2_2 = function() {
				$scope.filter = "Large Buildings";
				$scope.lists = [ 'Boeing Everett Factory', 'Aerium', 'Target Import Warehouse', 'The O2', 'Austal USA' ];
			};
			$scope.dispCol2_3 = function() {
				$scope.filter = "Mansions";
				$scope.lists = [ 'Biltmore Mansion', 'Vizcaya', 'Lyndhurst', 'Rough Point'];
			};
			$scope.dispCol3 = function(index) {
				$scope.tmp = document.getElementById("myAnchor" + index).text;
				if ($scope.anchors.length < 5) {
					for (i = 0; i < 5; i++) {
						if (angular.equals($scope.tmp, $scope.anchors[i]) || angular.equals($scope.tmp, $scope.anchor1s[i]))
							$scope.check = true;
					}
					if ($scope.check == false)
						$scope.anchors.push($scope.tmp);
					$scope.check = false;
				} else if($scope.anchors.length < 10){
					for (i = 0; i < 5; i++) {
						if (angular.equals($scope.tmp, $scope.anchors[i]) || angular.equals($scope.tmp, $scope.anchor1s[i]))
							$scope.check = true;
					}
					if ($scope.check == false) {
						$scope.anchor1s.push($scope.tmp);
					}
					$scope.check = false;
				}
				else{}
			};
			$scope.remFilter = function(index){
				$scope.anchors.splice(index,1);
			};
			$scope.remFilter1 = function(index){
				$scope.anchor1s.splice(index,1);
			};
		});
	</script>
</body>
</html>