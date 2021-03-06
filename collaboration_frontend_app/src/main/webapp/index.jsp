<!DOCTYPE html>

<html ng-app="myApp">
<head>
<meta charset="ISO-8859-1">
<title>NIIT ChatBook</title>
<link rel="stylesheet" href="resources/css/bootstrap.min.css" />
<link rel="stylesheet" href="resources/css/custom.css" />
<script src="resources/js/jquery.js"></script>
<script src="resources/js/bootstrap.min.js"></script>
<script src="resources/js/angular.min.js"></script>
<script src="resources/js/angular-route.min.js"></script>
<script src="resources/js/angular-cookies.min.js"></script>
</head>
<body ng-app="myApp">
	<div ng-controller="UserProfileController as ctrl">
		<nav class="navbar navbar-inverse navbar-fixed-top" role="navigation">
			<div class="container">
				<div class="navbar-header">
					<a class="navbar-brand" href="#/home">NIIT ChatBook</a>
				</div>
				<ul class="nav navbar-nav" >
					<li>
						<a ng-show="currentUser.useremail==undefined" href="#/login">Login</a>
					</li>
					<li><a ng-show="currentUser.useremail==undefined" href="#/userprofile">Register</a></li>
				<!-- <li><a ng-hide="currentUser.useremail==undefined" href="#/userrole">User Role</a></li> -->
					
					<li><a ng-show="currentUser.currentrole==Role_Admin" href="#/listusersadmin">Approve User</a></li>
					<li class="dropdown"><a class="dropdown-toggle"
						data-toggle="dropdown" href="#">Job<span class="caret"></span></a>
						<ul class="dropdown-menu">
							<li><a ng-show="currentUser.currentrole==Role_Admin" href="#/addjob">Add Job</a></li>
							<li><a href="#/viewjobs">List Jobs</a></li>
							<li><a href="#/viewappliedjobs">List Applied Jobs</a></li>
						</ul></li>
					<li class="dropdown"><a class="dropdown-toggle"
						data-toggle="dropdown" href="#">Event<span class="caret"></span></a>
						<ul class="dropdown-menu">
							<li><a href="#/addevent">Add Event</a></li>
							<li><a href="#/viewevents">List Events</a></li>
						</ul>
					</li>
					<li class="dropdown"><a class="dropdown-toggle"
						data-toggle="dropdown" href="#">Bulletin<span class="caret"></span></a>
						<ul class="dropdown-menu">
							<li><a href="#/addbulletin">Add Bulletin</a></li>
							<li><a href="#/viewbulletin">List Bulletin</a></li>
						</ul></li>
					<li class="dropdown"><a class="dropdown-toggle"
						data-toggle="dropdown" href="#">Blog<span class="caret"></span></a>
						<ul class="dropdown-menu">
							<li><a href="#/addblog">Add Blog</a></li>
							<li><a href="#/viewblogs">List Blogs</a></li>
							<li><a href="#/approveblogs">Approve Blog</a></li>
						</ul></li>
					<li class="dropdown"><a class="dropdown-toggle"
						data-toggle="dropdown" href="#">Forum<span class="caret"></span></a>
						<ul class="dropdown-menu">
							<li><a href="#/addforum">Add Forum</a></li>
							<li><a href="#/viewforums">List Forums</a></li>
							<li><a href="#/approveforums">Approve Forum</a></li>
						</ul>
					</li>
					<li>
						<a ng-hide="currentUser.useremail==undefined" href="#/home" 
							ng-click="ctrl.logoutuser()">Logout</a>
					</li>
				</ul>
			</div>
		</nav>
		<div ng-include="'home/slider.html'" style="height: 250"></div>
		<a ng-hide="currentUser.useremail==undefined" href="#/listallusers">View Friends</a>
		<div class="jumbotran">
			<div class="container">
			<div ng-view></div>
			</div>
		</div>
	</div>
	<script src="app.js"></script>
	<script src="home/HomeController.js"></script>
	<script src="usertype/UserTypeController.js"></script>
	<script src="usertype/UserTypeService.js"></script>
	<script src="userrole/UserRoleController.js"></script>
	<script src="userrole/UserRoleService.js"></script>
	<script src="user/UserProfileController.js"></script>
	<script src="user/UserProfileService.js"></script>
	<script src="job/JobController.js"></script>
	<script src="job/JobService.js"></script>
	<script src="event/EventController.js"></script>
	<script src="event/EventService.js"></script>
	<script src="bulletin/BulletinController.js"></script>
	<script src="bulletin/BulletinService.js"></script>
	<script src="blog/BlogController.js"></script>
	<script src="blog/BlogService.js"></script>
	<script src="forum/ForumController.js"></script>
	<script src="forum/ForumService.js"></script>
	<script src="friend/FriendController.js"></script>
	<script src="friend/FriendService.js"></script>

	<script src="chat/ChatController.js"></script>
	<script src="chat/ChatService.js"></script>
	<script src="chat/sockjs.min.js"></script>
	<script src="chat/stomp-node.js"></script>
    <script src="chat/stomp.min.js"></script>
    <script src="chat/lodash.min.js"></script>
</body>
</html>