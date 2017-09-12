<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title>AdminLTE 2 | Calendar</title>
<!-- Tell the browser to be responsive to screen width -->
<meta
	content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no"
	name="viewport">
<!-- Bootstrap 3.3.7 -->
<link rel="stylesheet"
	href="./resources/AdminLTE/bower_components/bootstrap/dist/css/bootstrap.min.css">
<!-- Font Awesome -->
<link rel="stylesheet"
	href="./resources/AdminLTE/bower_components/font-awesome/css/font-awesome.min.css">
<!-- Ionicons -->
<link rel="stylesheet"
	href="./resources/AdminLTE/bower_components/Ionicons/css/ionicons.min.css">
<!-- fullCalendar -->
<link rel="stylesheet"
	href="./resources/AdminLTE/bower_components/fullcalendar/dist/fullcalendar.min.css">
<link rel="stylesheet"
	href="./resources/AdminLTE/bower_components/fullcalendar/dist/fullcalendar.print.min.css"
	media="print">
<!-- Theme style -->
<link rel="stylesheet"
	href="./resources/AdminLTE/dist/css/AdminLTE.min.css">
<!-- AdminLTE Skins. Choose a skin from the css/skins
       folder instead of downloading all of them to reduce the load. -->
<link rel="stylesheet"
	href="./resources/AdminLTE/dist/css/skins/_all-skins.min.css">
<!-- PLUGINS CSS STYLE -->
<link href="./resources/plugins/jquery-ui/jquery-ui.css"
	rel="stylesheet">
<link href="./resources/plugins/bootstrap/css/bootstrap.min.css"
	rel="stylesheet">
<link href="./resources/plugins/font-awesome/css/font-awesome.min.css"
	rel="stylesheet">
<link rel="stylesheet" type="text/css"
	href="./resources/plugins/rs-plugin/css/settings.css" media="screen">
<link rel="stylesheet" type="text/css"
	href="./resources/plugins/selectbox/select_option1.css">
<link rel="stylesheet" type="text/css"
	href="./resources/plugins/owl-carousel/owl.carousel.css" media="screen">
<link rel="stylesheet" type="text/css"
	href="./resources/plugins/isotope/jquery.fancybox.css">
<link rel="stylesheet" type="text/css"
	href="./resources/plugins/isotope/isotope.css">

<!-- GOOGLE FONT -->
<link
	href='https://fonts.googleapis.com/css?family=Open+Sans:400,300,600,700'
	rel='stylesheet' type='text/css'>
<link
	href='https://fonts.googleapis.com/css?family=Dosis:400,300,600,700'
	rel='stylesheet' type='text/css'>

<!-- CUSTOM CSS -->
<link href="./resources/css/style.css" rel="stylesheet">
<link rel="stylesheet" href="./resources/css/default.css"
	id="option_color">

<!-- Icons -->
<link rel="shortcut icon" href="./resources/img/favicon.png">

<!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
<!--[if lt IE 9]>
  <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
  <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
  <![endif]-->

<!-- Google Font -->
<link rel="stylesheet"
	href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,600,700,300italic,400italic,600italic">
</head>
</head>

<body class="sidebar-mini skin-green-light"
	style="height: auto; min-height: 100%;">


	<!--   <header class="main-header"> -->
	<!--     Logo -->
	<!--     <a href="../index2.html" class="logo"> -->
	<!--       mini logo for sidebar mini 50x50 pixels -->
	<!--       <span class="logo-mini"><b>A</b>LT</span> -->
	<!--       logo for regular state and mobile devices -->
	<!--       <span class="logo-lg"><b>Admin</b>LTE</span> -->
	<!--     </a> -->
	<!--     Header Navbar: style can be found in header.less -->
	<!--     <nav class="navbar navbar-static-top"> -->
	<!--       Sidebar toggle button -->
	<!--       <a href="#" class="sidebar-toggle" data-toggle="push-menu" -->
	<!-- 			role="button"> -->
	<!--         <span class="sr-only">Toggle navigation</span> -->
	<!--         <span class="icon-bar"></span> -->
	<!--         <span class="icon-bar"></span> -->
	<!--         <span class="icon-bar"></span> -->
	<!--       </a> -->

	<!--       <div class="navbar-custom-menu"> -->
	<!--         <ul class="nav navbar-nav"> -->
	<!--           Messages: style can be found in dropdown.less -->
	<!--           <li class="dropdown messages-menu"> -->
	<!--             <a href="#" class="dropdown-toggle" data-toggle="dropdown"> -->
	<!--               <i class="fa fa-envelope-o"></i> -->
	<!--               <span class="label label-success">4</span> -->
	<!--             </a> -->
	<!--             <ul class="dropdown-menu"> -->
	<!--               <li class="header">You have 4 messages</li> -->
	<!--               <li> -->
	<!--                 inner menu: contains the actual data -->
	<!--                 <ul class="menu"> -->
	<!--                   <li> -->
	<!-- 									start message -->
	<!--                     <a href="#"> -->
	<!--                       <div class="pull-left"> -->
	<!--                         <img src="../dist/img/user2-160x160.jpg" -->
	<!-- 												class="img-circle" alt="User Image"> -->
	<!--                       </div> -->
	<!--                       <h4> -->
	<!--                         Support Team -->
	<!--                         <small><i class="fa fa-clock-o"></i> 5 mins</small> -->
	<!--                       </h4> -->
	<!--                       <p>Why not buy a new awesome theme?</p> -->
	<!--                     </a> -->
	<!--                   </li> -->
	<!--                   end message -->
	<!--                   <li> -->
	<!--                     <a href="#"> -->
	<!--                       <div class="pull-left"> -->
	<!--                         <img src="../dist/img/user3-128x128.jpg" -->
	<!-- 												class="img-circle" alt="User Image"> -->
	<!--                       </div> -->
	<!--                       <h4> -->
	<!--                         AdminLTE Design Team -->
	<!--                         <small><i class="fa fa-clock-o"></i> 2 hours</small> -->
	<!--                       </h4> -->
	<!--                       <p>Why not buy a new awesome theme?</p> -->
	<!--                     </a> -->
	<!--                   </li> -->
	<!--                   <li> -->
	<!--                     <a href="#"> -->
	<!--                       <div class="pull-left"> -->
	<!--                         <img src="../dist/img/user4-128x128.jpg" -->
	<!-- 												class="img-circle" alt="User Image"> -->
	<!--                       </div> -->
	<!--                       <h4> -->
	<!--                         Developers -->
	<!--                         <small><i class="fa fa-clock-o"></i> Today</small> -->
	<!--                       </h4> -->
	<!--                       <p>Why not buy a new awesome theme?</p> -->
	<!--                     </a> -->
	<!--                   </li> -->
	<!--                   <li> -->
	<!--                     <a href="#"> -->
	<!--                       <div class="pull-left"> -->
	<!--                         <img src="../dist/img/user3-128x128.jpg" -->
	<!-- 												class="img-circle" alt="User Image"> -->
	<!--                       </div> -->
	<!--                       <h4> -->
	<!--                         Sales Department -->
	<!--                         <small><i class="fa fa-clock-o"></i> Yesterday</small> -->
	<!--                       </h4> -->
	<!--                       <p>Why not buy a new awesome theme?</p> -->
	<!--                     </a> -->
	<!--                   </li> -->
	<!--                   <li> -->
	<!--                     <a href="#"> -->
	<!--                       <div class="pull-left"> -->
	<!--                         <img src="../dist/img/user4-128x128.jpg" -->
	<!-- 												class="img-circle" alt="User Image"> -->
	<!--                       </div> -->
	<!--                       <h4> -->
	<!--                         Reviewers -->
	<!--                         <small><i class="fa fa-clock-o"></i> 2 days</small> -->
	<!--                       </h4> -->
	<!--                       <p>Why not buy a new awesome theme?</p> -->
	<!--                     </a> -->
	<!--                   </li> -->
	<!--                 </ul> -->
	<!--               </li> -->
	<!--               <li class="footer"><a href="#">See All Messages</a></li> -->
	<!--             </ul> -->
	<!--           </li> -->
	<!--           Notifications: style can be found in dropdown.less -->
	<!--           <li class="dropdown notifications-menu"> -->
	<!--             <a href="#" class="dropdown-toggle" data-toggle="dropdown"> -->
	<!--               <i class="fa fa-bell-o"></i> -->
	<!--               <span class="label label-warning">10</span> -->
	<!--             </a> -->
	<!--             <ul class="dropdown-menu"> -->
	<!--               <li class="header">You have 10 notifications</li> -->
	<!--               <li> -->
	<!--                 inner menu: contains the actual data -->
	<!--                 <ul class="menu"> -->
	<!--                   <li> -->
	<!--                     <a href="#"> -->
	<!--                       <i class="fa fa-users text-aqua"></i> 5 new members joined today -->
	<!--                     </a> -->
	<!--                   </li> -->
	<!--                   <li> -->
	<!--                     <a href="#"> -->
	<!--                       <i class="fa fa-warning text-yellow"></i> Very long description here that may not fit into the -->
	<!--                       page and may cause design problems -->
	<!--                     </a> -->
	<!--                   </li> -->
	<!--                   <li> -->
	<!--                     <a href="#"> -->
	<!--                       <i class="fa fa-users text-red"></i> 5 new members joined -->
	<!--                     </a> -->
	<!--                   </li> -->

	<!--                   <li> -->
	<!--                     <a href="#"> -->
	<!--                       <i class="fa fa-shopping-cart text-green"></i> 25 sales made -->
	<!--                     </a> -->
	<!--                   </li> -->
	<!--                   <li> -->
	<!--                     <a href="#"> -->
	<!--                       <i class="fa fa-user text-red"></i> You changed your username -->
	<!--                     </a> -->
	<!--                   </li> -->
	<!--                 </ul> -->
	<!--               </li> -->
	<!--               <li class="footer"><a href="#">View all</a></li> -->
	<!--             </ul> -->
	<!--           </li> -->
	<!--           Tasks: style can be found in dropdown.less -->
	<!--           <li class="dropdown tasks-menu"> -->
	<!--             <a href="#" class="dropdown-toggle" data-toggle="dropdown"> -->
	<!--               <i class="fa fa-flag-o"></i> -->
	<!--               <span class="label label-danger">9</span> -->
	<!--             </a> -->
	<!--             <ul class="dropdown-menu"> -->
	<!--               <li class="header">You have 9 tasks</li> -->
	<!--               <li> -->
	<!--                 inner menu: contains the actual data -->
	<!--                 <ul class="menu"> -->
	<!--                   <li> -->
	<!-- 									Task item -->
	<!--                     <a href="#"> -->
	<!--                       <h3> -->
	<!--                         Design some buttons -->
	<!--                         <small class="pull-right">20%</small> -->
	<!--                       </h3> -->
	<!--                       <div class="progress xs"> -->
	<!--                         <div class="progress-bar progress-bar-aqua" -->
	<!-- 												style="width: 20%" role="progressbar" aria-valuenow="20" -->
	<!-- 												aria-valuemin="0" aria-valuemax="100"> -->
	<!--                           <span class="sr-only">20% Complete</span> -->
	<!--                         </div> -->
	<!--                       </div> -->
	<!--                     </a> -->
	<!--                   </li> -->
	<!--                   end task item -->
	<!--                   <li> -->
	<!-- 									Task item -->
	<!--                     <a href="#"> -->
	<!--                       <h3> -->
	<!--                         Create a nice theme -->
	<!--                         <small class="pull-right">40%</small> -->
	<!--                       </h3> -->
	<!--                       <div class="progress xs"> -->
	<!--                         <div class="progress-bar progress-bar-green" -->
	<!-- 												style="width: 40%" role="progressbar" aria-valuenow="20" -->
	<!-- 												aria-valuemin="0" aria-valuemax="100"> -->
	<!--                           <span class="sr-only">40% Complete</span> -->
	<!--                         </div> -->
	<!--                       </div> -->
	<!--                     </a> -->
	<!--                   </li> -->
	<!--                   end task item -->
	<!--                   <li> -->
	<!-- 									Task item -->
	<!--                     <a href="#"> -->
	<!--                       <h3> -->
	<!--                         Some task I need to do -->
	<!--                         <small class="pull-right">60%</small> -->
	<!--                       </h3> -->
	<!--                       <div class="progress xs"> -->
	<!--                         <div class="progress-bar progress-bar-red" -->
	<!-- 												style="width: 60%" role="progressbar" aria-valuenow="20" -->
	<!-- 												aria-valuemin="0" aria-valuemax="100"> -->
	<!--                           <span class="sr-only">60% Complete</span> -->
	<!--                         </div> -->
	<!--                       </div> -->
	<!--                     </a> -->
	<!--                   </li> -->
	<!--                   end task item -->
	<!--                   <li> -->
	<!-- 									Task item -->
	<!--                     <a href="#"> -->
	<!--                       <h3> -->
	<!--                         Make beautiful transitions -->
	<!--                         <small class="pull-right">80%</small> -->
	<!--                       </h3> -->
	<!--                       <div class="progress xs"> -->
	<!--                         <div class="progress-bar progress-bar-yellow" -->
	<!-- 												style="width: 80%" role="progressbar" aria-valuenow="20" -->
	<!-- 												aria-valuemin="0" aria-valuemax="100"> -->
	<!--                           <span class="sr-only">80% Complete</span> -->
	<!--                         </div> -->
	<!--                       </div> -->
	<!--                     </a> -->
	<!--                   </li> -->
	<!--                   end task item -->
	<!--                 </ul> -->
	<!--               </li> -->
	<!--               <li class="footer"> -->
	<!--                 <a href="#">View all tasks</a> -->
	<!--               </li> -->
	<!--             </ul> -->
	<!--           </li> -->
	<!--           User Account: style can be found in dropdown.less -->
	<!--           <li class="dropdown user user-menu"> -->
	<!--             <a href="#" class="dropdown-toggle" data-toggle="dropdown"> -->
	<!--               <img src="../dist/img/user2-160x160.jpg" -->
	<!-- 						class="user-image" alt="User Image"> -->
	<!--               <span class="hidden-xs">Alexander Pierce</span> -->
	<!--             </a> -->
	<!--             <ul class="dropdown-menu"> -->
	<!--               User image -->
	<!--               <li class="user-header"> -->
	<!--                 <img src="../dist/img/user2-160x160.jpg" -->
	<!-- 							class="img-circle" alt="User Image"> -->

	<!--                 <p> -->
	<!--                   Alexander Pierce - Web Developer -->
	<!--                   <small>Member since Nov. 2012</small> -->
	<!--                 </p> -->
	<!--               </li> -->
	<!--               Menu Body -->
	<!--               <li class="user-body"> -->
	<!--                 <div class="row"> -->
	<!--                   <div class="col-xs-4 text-center"> -->
	<!--                     <a href="#">Followers</a> -->
	<!--                   </div> -->
	<!--                   <div class="col-xs-4 text-center"> -->
	<!--                     <a href="#">Sales</a> -->
	<!--                   </div> -->
	<!--                   <div class="col-xs-4 text-center"> -->
	<!--                     <a href="#">Friends</a> -->
	<!--                   </div> -->
	<!--                 </div> -->
	<!--                 /.row -->
	<!--               </li> -->
	<!--               Menu Footer -->
	<!--               <li class="user-footer"> -->
	<!--                 <div class="pull-left"> -->
	<!--                   <a href="#" class="btn btn-default btn-flat">Profile</a> -->
	<!--                 </div> -->
	<!--                 <div class="pull-right"> -->
	<!--                   <a href="#" class="btn btn-default btn-flat">Sign out</a> -->
	<!--                 </div> -->
	<!--               </li> -->
	<!--             </ul> -->
	<!--           </li> -->
	<!--         </ul> -->
	<!--       </div> -->
	<!--     </nav> -->
	<!--   </header> -->
	<%@ include file="MainHeader.jsp"%>
	<!--   <!-- Left side column. contains the logo and sidebar -->
	<!--   <aside class="main-sidebar"> -->
	<!--     sidebar: style can be found in sidebar.less -->
	<!--     <section class="sidebar" style="height: auto;"> -->
	<!--       Sidebar user panel -->
	<!--       <div class="user-panel"> -->
	<!--         <div class="pull-left image"> -->
	<!--           <img src="../dist/img/user2-160x160.jpg" class="img-circle" -->
	<!-- 					alt="User Image"> -->
	<!--         </div> -->
	<!--         <div class="pull-left info"> -->
	<!--           <p>Alexander Pierce</p> -->
	<!--           <a href="#"><i class="fa fa-circle text-success"></i> Online</a> -->
	<!--         </div> -->
	<!--       </div> -->
	<!--       search form -->
	<!--       <form action="#" method="get" class="sidebar-form"> -->
	<!--         <div class="input-group"> -->
	<!--           <input type="text" name="q" class="form-control" -->
	<!-- 					placeholder="Search..."> -->
	<!--           <span class="input-group-btn"> -->
	<!--                 <button type="submit" name="search" id="search-btn" -->
	<!-- 						class="btn btn-flat"> -->
	<!-- 						<i class="fa fa-search"></i> -->
	<!--                 </button> -->
	<!--               </span> -->
	<!--         </div> -->
	<!--       </form> -->
	<!--       /.search form -->
	<!--       sidebar menu: : style can be found in sidebar.less -->
	<!--       <ul class="sidebar-menu tree" data-widget="tree"> -->
	<!--         <li class="header">MAIN NAVIGATION</li> -->
	<!--         <li class="treeview"> -->
	<!--           <a href="#"> -->
	<!--             <i class="fa fa-dashboard"></i> <span>Dashboard</span> -->
	<!--             <span class="pull-right-container"> -->
	<!--               <i class="fa fa-angle-left pull-right"></i> -->
	<!--             </span> -->
	<!--           </a> -->
	<!--           <ul class="treeview-menu"> -->
	<!--             <li><a href="../index.html"><i -->
	<!-- 							class="fa fa-circle-o"></i> Dashboard v1</a></li> -->
	<!--             <li><a href="../index2.html"><i -->
	<!-- 							class="fa fa-circle-o"></i> Dashboard v2</a></li> -->
	<!--           </ul> -->
	<!--         </li> -->
	<!--         <li class="treeview"> -->
	<!--           <a href="#"> -->
	<!--             <i class="fa fa-files-o"></i> -->
	<!--             <span>Layout Options</span> -->
	<!--             <span class="pull-right-container"> -->
	<!--               <span class="label label-primary pull-right">4</span> -->
	<!--             </span> -->
	<!--           </a> -->
	<!--           <ul class="treeview-menu"> -->
	<!--             <li><a href="layout/top-nav.html"><i -->
	<!-- 							class="fa fa-circle-o"></i> Top Navigation</a></li> -->
	<!--             <li><a href="layout/boxed.html"><i -->
	<!-- 							class="fa fa-circle-o"></i> Boxed</a></li> -->
	<!--             <li><a href="layout/fixed.html"><i -->
	<!-- 							class="fa fa-circle-o"></i> Fixed</a></li> -->
	<!--             <li><a href="layout/collapsed-sidebar.html"><i -->
	<!-- 							class="fa fa-circle-o"></i> Collapsed Sidebar</a></li> -->
	<!--           </ul> -->
	<!--         </li> -->
	<!--         <li> -->
	<!--           <a href="widgets.html"> -->
	<!--             <i class="fa fa-th"></i> <span>Widgets</span> -->
	<!--             <span class="pull-right-container"> -->
	<!--               <small class="label pull-right bg-green">new</small> -->
	<!--             </span> -->
	<!--           </a> -->
	<!--         </li> -->
	<!--         <li class="treeview"> -->
	<!--           <a href="#"> -->
	<!--             <i class="fa fa-pie-chart"></i> -->
	<!--             <span>Charts</span> -->
	<!--             <span class="pull-right-container"> -->
	<!--               <i class="fa fa-angle-left pull-right"></i> -->
	<!--             </span> -->
	<!--           </a> -->
	<!--           <ul class="treeview-menu"> -->
	<!--             <li><a href="charts/chartjs.html"><i -->
	<!-- 							class="fa fa-circle-o"></i> ChartJS</a></li> -->
	<!--             <li><a href="charts/morris.html"><i -->
	<!-- 							class="fa fa-circle-o"></i> Morris</a></li> -->
	<!--             <li><a href="charts/flot.html"><i -->
	<!-- 							class="fa fa-circle-o"></i> Flot</a></li> -->
	<!--             <li><a href="charts/inline.html"><i -->
	<!-- 							class="fa fa-circle-o"></i> Inline charts</a></li> -->
	<!--           </ul> -->
	<!--         </li> -->
	<!--         <li class="treeview"> -->
	<!--           <a href="#"> -->
	<!--             <i class="fa fa-laptop"></i> -->
	<!--             <span>UI Elements</span> -->
	<!--             <span class="pull-right-container"> -->
	<!--               <i class="fa fa-angle-left pull-right"></i> -->
	<!--             </span> -->
	<!--           </a> -->
	<!--           <ul class="treeview-menu"> -->
	<!--             <li><a href="UI/general.html"><i -->
	<!-- 							class="fa fa-circle-o"></i> General</a></li> -->
	<!--             <li><a href="UI/icons.html"><i -->
	<!-- 							class="fa fa-circle-o"></i> Icons</a></li> -->
	<!--             <li><a href="UI/buttons.html"><i -->
	<!-- 							class="fa fa-circle-o"></i> Buttons</a></li> -->
	<!--             <li><a href="UI/sliders.html"><i -->
	<!-- 							class="fa fa-circle-o"></i> Sliders</a></li> -->
	<!--             <li><a href="UI/timeline.html"><i -->
	<!-- 							class="fa fa-circle-o"></i> Timeline</a></li> -->
	<!--             <li><a href="UI/modals.html"><i -->
	<!-- 							class="fa fa-circle-o"></i> Modals</a></li> -->
	<!--           </ul> -->
	<!--         </li> -->
	<!--         <li class="treeview"> -->
	<!--           <a href="#"> -->
	<!--             <i class="fa fa-edit"></i> <span>Forms</span> -->
	<!--             <span class="pull-right-container"> -->
	<!--               <i class="fa fa-angle-left pull-right"></i> -->
	<!--             </span> -->
	<!--           </a> -->
	<!--           <ul class="treeview-menu"> -->
	<!--             <li><a href="forms/general.html"><i -->
	<!-- 							class="fa fa-circle-o"></i> General Elements</a></li> -->
	<!--             <li><a href="forms/advanced.html"><i -->
	<!-- 							class="fa fa-circle-o"></i> Advanced Elements</a></li> -->
	<!--             <li><a href="forms/editors.html"><i -->
	<!-- 							class="fa fa-circle-o"></i> Editors</a></li> -->
	<!--           </ul> -->
	<!--         </li> -->
	<!--         <li class="treeview"> -->
	<!--           <a href="#"> -->
	<!--             <i class="fa fa-table"></i> <span>Tables</span> -->
	<!--             <span class="pull-right-container"> -->
	<!--               <i class="fa fa-angle-left pull-right"></i> -->
	<!--             </span> -->
	<!--           </a> -->
	<!--           <ul class="treeview-menu"> -->
	<!--             <li><a href="tables/simple.html"><i -->
	<!-- 							class="fa fa-circle-o"></i> Simple tables</a></li> -->
	<!--             <li><a href="tables/data.html"><i -->
	<!-- 							class="fa fa-circle-o"></i> Data tables</a></li> -->
	<!--           </ul> -->
	<!--         </li> -->
	<!--         <li class="active"> -->
	<!--           <a href="calendar.html"> -->
	<!--             <i class="fa fa-calendar"></i> <span>Calendar</span> -->
	<!--             <span class="pull-right-container"> -->
	<!--               <small class="label pull-right bg-red">3</small> -->
	<!--               <small class="label pull-right bg-blue">17</small> -->
	<!--             </span> -->
	<!--           </a> -->
	<!--         </li> -->
	<!--         <li> -->
	<!--           <a href="mailbox/mailbox.html"> -->
	<!--             <i class="fa fa-envelope"></i> <span>Mailbox</span> -->
	<!--             <span class="pull-right-container"> -->
	<!--               <small class="label pull-right bg-yellow">12</small> -->
	<!--               <small class="label pull-right bg-green">16</small> -->
	<!--               <small class="label pull-right bg-red">5</small> -->
	<!--             </span> -->
	<!--           </a> -->
	<!--         </li> -->
	<!--         <li class="treeview"> -->
	<!--           <a href="#"> -->
	<!--             <i class="fa fa-folder"></i> <span>Examples</span> -->
	<!--             <span class="pull-right-container"> -->
	<!--               <i class="fa fa-angle-left pull-right"></i> -->
	<!--             </span> -->
	<!--           </a> -->
	<!--           <ul class="treeview-menu"> -->
	<!--             <li><a href="examples/invoice.html"><i -->
	<!-- 							class="fa fa-circle-o"></i> Invoice</a></li> -->
	<!--             <li><a href="examples/profile.html"><i -->
	<!-- 							class="fa fa-circle-o"></i> Profile</a></li> -->
	<!--             <li><a href="examples/login.html"><i -->
	<!-- 							class="fa fa-circle-o"></i> Login</a></li> -->
	<!--             <li><a href="examples/register.html"><i -->
	<!-- 							class="fa fa-circle-o"></i> Register</a></li> -->
	<!--             <li><a href="examples/lockscreen.html"><i -->
	<!-- 							class="fa fa-circle-o"></i> Lockscreen</a></li> -->
	<!--             <li><a href="examples/404.html"><i -->
	<!-- 							class="fa fa-circle-o"></i> 404 Error</a></li> -->
	<!--             <li><a href="examples/500.html"><i -->
	<!-- 							class="fa fa-circle-o"></i> 500 Error</a></li> -->
	<!--             <li><a href="examples/blank.html"><i -->
	<!-- 							class="fa fa-circle-o"></i> Blank Page</a></li> -->
	<!--             <li><a href="examples/pace.html"><i -->
	<!-- 							class="fa fa-circle-o"></i> Pace Page</a></li> -->
	<!--           </ul> -->
	<!--         </li> -->
	<!--         <li class="treeview"> -->
	<!--           <a href="#"> -->
	<!--             <i class="fa fa-share"></i> <span>Multilevel</span> -->
	<!--             <span class="pull-right-container"> -->
	<!--               <i class="fa fa-angle-left pull-right"></i> -->
	<!--             </span> -->
	<!--           </a> -->
	<!--           <ul class="treeview-menu"> -->
	<!--             <li><a href="#"><i class="fa fa-circle-o"></i> Level One</a></li> -->
	<!--             <li class="treeview"> -->
	<!--               <a href="#"><i class="fa fa-circle-o"></i> Level One -->
	<!--                 <span class="pull-right-container"> -->
	<!--                   <i class="fa fa-angle-left pull-right"></i> -->
	<!--                 </span> -->
	<!--               </a> -->
	<!--               <ul class="treeview-menu"> -->
	<!--                 <li><a href="#"><i class="fa fa-circle-o"></i> Level Two</a></li> -->
	<!--                 <li class="treeview"> -->
	<!--                   <a href="#"><i class="fa fa-circle-o"></i> Level Two -->
	<!--                     <span class="pull-right-container"> -->
	<!--                       <i class="fa fa-angle-left pull-right"></i> -->
	<!--                     </span> -->
	<!--                   </a> -->
	<!--                   <ul class="treeview-menu"> -->
	<!--                     <li><a href="#"><i class="fa fa-circle-o"></i> Level Three</a></li> -->
	<!--                     <li><a href="#"><i class="fa fa-circle-o"></i> Level Three</a></li> -->
	<!--                   </ul> -->
	<!--                 </li> -->
	<!--               </ul> -->
	<!--             </li> -->
	<!--             <li><a href="#"><i class="fa fa-circle-o"></i> Level One</a></li> -->
	<!--           </ul> -->
	<!--         </li> -->
	<!--         <li><a href="https://adminlte.io/docs"><i -->
	<!-- 					class="fa fa-book"></i> <span>Documentation</span></a></li> -->
	<!--         <li class="header">LABELS</li> -->
	<!--         <li><a href="#"><i class="fa fa-circle-o text-red"></i> <span>Important</span></a></li> -->
	<!--         <li><a href="#"><i class="fa fa-circle-o text-yellow"></i> <span>Warning</span></a></li> -->
	<!--         <li><a href="#"><i class="fa fa-circle-o text-aqua"></i> <span>Information</span></a></li> -->
	<!--       </ul> -->
	<!--     </section> -->
	<!--     /.sidebar -->
	<!--   </aside> -->

	<!--   <!-- Content Wrapper. Contains page content -->
	-->
	<!--   <div class="content-wrapper" style="min-height: 901.2px;"> -->
	<!--     Content Header (Page header) -->
	<!--     <section class="content-header"> -->
	<!--       <h1> -->
	<!--         Calendar -->
	<!--         <small>Control panel</small> -->
	<!--       </h1> -->
	<!--       <ol class="breadcrumb"> -->
	<!--         <li><a href="#"><i class="fa fa-dashboard"></i> Home</a></li> -->
	<!--         <li class="active">Calendar</li> -->
	<!--       </ol> -->
	<!--     </section> -->

	<!-- Main content -->
	<div class="wrapper" style="margin: 10%">
		<section class="content">
		<div class="row">
			<div class="col-md-3">
				<div class="box box-solid">
					<div class="box-header with-border">
						<h4 class="box-title">Draggable Events</h4>
					</div>
					<div class="box-body">
						<!-- the events -->
						<div id="external-events">
							<div
								class="external-event bg-green ui-draggable ui-draggable-handle"
								style="position: relative;">Lunch</div>
							<div
								class="external-event bg-yellow ui-draggable ui-draggable-handle"
								style="position: relative;">Go home</div>
							<div
								class="external-event bg-aqua ui-draggable ui-draggable-handle"
								style="position: relative;">Do homework</div>
							<div
								class="external-event bg-light-blue ui-draggable ui-draggable-handle"
								style="position: relative;">Work on UI design</div>
							<div
								class="external-event bg-red ui-draggable ui-draggable-handle"
								style="position: relative;">Sleep tight</div>
							<div class="checkbox">
								<label for="drop-remove"> <input type="checkbox"
									id="drop-remove"> remove after drop
								</label>
							</div>
						</div>
					</div>
					<!-- /.box-body -->
				</div>
				<!-- /. box -->
				<div class="box box-solid">
					<div class="box-header with-border">
						<h3 class="box-title">Create Event</h3>
					</div>
					<div class="box-body">
						<div class="btn-group" style="width: 100%; margin-bottom: 10px;">
							<!--<button type="button" id="color-chooser-btn" class="btn btn-info btn-block dropdown-toggle" data-toggle="dropdown">Color <span class="caret"></span></button>-->
							<ul class="fc-color-picker" id="color-chooser">
								<li><a class="text-aqua" href="#"><i
										class="fa fa-square"></i></a></li>
								<li><a class="text-blue" href="#"><i
										class="fa fa-square"></i></a></li>
								<li><a class="text-light-blue" href="#"><i
										class="fa fa-square"></i></a></li>
								<li><a class="text-teal" href="#"><i
										class="fa fa-square"></i></a></li>
								<li><a class="text-yellow" href="#"><i
										class="fa fa-square"></i></a></li>
								<li><a class="text-orange" href="#"><i
										class="fa fa-square"></i></a></li>
								<li><a class="text-green" href="#"><i
										class="fa fa-square"></i></a></li>
								<li><a class="text-lime" href="#"><i
										class="fa fa-square"></i></a></li>
								<li><a class="text-red" href="#"><i
										class="fa fa-square"></i></a></li>
								<li><a class="text-purple" href="#"><i
										class="fa fa-square"></i></a></li>
								<li><a class="text-fuchsia" href="#"><i
										class="fa fa-square"></i></a></li>
								<li><a class="text-muted" href="#"><i
										class="fa fa-square"></i></a></li>
								<li><a class="text-navy" href="#"><i
										class="fa fa-square"></i></a></li>
							</ul>
						</div>
						<!-- /btn-group -->
						<div class="input-group">
							<input id="new-event" type="text" class="form-control"
								placeholder="Event Title">

							<div class="input-group-btn">
								<button id="add-new-event" type="button"
									class="btn btn-primary btn-flat">Add</button>
							</div>
							<!-- /btn-group -->
						</div>
						<!-- /input-group -->
					</div>
				</div>
			</div>
			<!-- /.col -->
			<div class="col-md-9">
				<div class="box box-primary">
					<div class="box-body no-padding">
						<!-- THE CALENDAR -->
						<div id="calendar" class="fc fc-unthemed fc-ltr">
							<div class="fc-toolbar fc-header-toolbar">
								<div class="fc-left">
									<div class="fc-button-group">
										<button type="button"
											class="fc-prev-button fc-button fc-state-default fc-corner-left">
											<span class="fc-icon fc-icon-left-single-arrow"></span>
										</button>
										<button type="button"
											class="fc-next-button fc-button fc-state-default fc-corner-right">
											<span class="fc-icon fc-icon-right-single-arrow"></span>
										</button>
									</div>
									<button type="button"
										class="fc-today-button fc-button fc-state-default fc-corner-left fc-corner-right fc-state-disabled"
										disabled="">today</button>
								</div>
								<div class="fc-right">
									<div class="fc-button-group">
										<button type="button"
											class="fc-month-button fc-button fc-state-default fc-corner-left fc-state-active">month</button>
										<button type="button"
											class="fc-agendaWeek-button fc-button fc-state-default">week</button>
										<button type="button"
											class="fc-agendaDay-button fc-button fc-state-default fc-corner-right">day</button>
									</div>
								</div>
								<div class="fc-center">
									<h2>September 2017</h2>
								</div>
								<div class="fc-clear"></div>
							</div>
							<div class="fc-view-container" style="">
								<div class="fc-view fc-month-view fc-basic-view" style="">
									<table>
										<thead class="fc-head">
											<tr>
												<td class="fc-head-container fc-widget-header"><div
														class="fc-row fc-widget-header">
														<table>
															<thead>
																<tr>
																	<th class="fc-day-header fc-widget-header fc-sun"><span>Sun</span></th>
																	<th class="fc-day-header fc-widget-header fc-mon"><span>Mon</span></th>
																	<th class="fc-day-header fc-widget-header fc-tue"><span>Tue</span></th>
																	<th class="fc-day-header fc-widget-header fc-wed"><span>Wed</span></th>
																	<th class="fc-day-header fc-widget-header fc-thu"><span>Thu</span></th>
																	<th class="fc-day-header fc-widget-header fc-fri"><span>Fri</span></th>
																	<th class="fc-day-header fc-widget-header fc-sat"><span>Sat</span></th>
																</tr>
															</thead>
														</table>
													</div></td>
											</tr>
										</thead>
										<tbody class="fc-body">
											<tr>
												<td class="fc-widget-content"><div
														class="fc-scroller fc-day-grid-container"
														style="overflow: hidden; height: 431.2px;">
														<div class="fc-day-grid fc-unselectable">
															<div class="fc-row fc-week fc-widget-content"
																style="height: 71px;">
																<div class="fc-bg">
																	<table>
																		<tbody>
																			<tr>
																				<td
																					class="fc-day fc-widget-content fc-sun fc-other-month fc-past"
																					data-date="2017-08-27"></td>
																				<td
																					class="fc-day fc-widget-content fc-mon fc-other-month fc-past"
																					data-date="2017-08-28"></td>
																				<td
																					class="fc-day fc-widget-content fc-tue fc-other-month fc-past"
																					data-date="2017-08-29"></td>
																				<td
																					class="fc-day fc-widget-content fc-wed fc-other-month fc-past"
																					data-date="2017-08-30"></td>
																				<td
																					class="fc-day fc-widget-content fc-thu fc-other-month fc-past"
																					data-date="2017-08-31"></td>
																				<td class="fc-day fc-widget-content fc-fri fc-past"
																					data-date="2017-09-01"></td>
																				<td class="fc-day fc-widget-content fc-sat fc-past"
																					data-date="2017-09-02"></td>
																			</tr>
																		</tbody>
																	</table>
																</div>
																<div class="fc-content-skeleton">
																	<table>
																		<thead>
																			<tr>
																				<td class="fc-day-top fc-sun fc-other-month fc-past"
																					data-date="2017-08-27"><span
																					class="fc-day-number">27</span></td>
																				<td class="fc-day-top fc-mon fc-other-month fc-past"
																					data-date="2017-08-28"><span
																					class="fc-day-number">28</span></td>
																				<td class="fc-day-top fc-tue fc-other-month fc-past"
																					data-date="2017-08-29"><span
																					class="fc-day-number">29</span></td>
																				<td class="fc-day-top fc-wed fc-other-month fc-past"
																					data-date="2017-08-30"><span
																					class="fc-day-number">30</span></td>
																				<td class="fc-day-top fc-thu fc-other-month fc-past"
																					data-date="2017-08-31"><span
																					class="fc-day-number">31</span></td>
																				<td class="fc-day-top fc-fri fc-past"
																					data-date="2017-09-01"><span
																					class="fc-day-number">1</span></td>
																				<td class="fc-day-top fc-sat fc-past"
																					data-date="2017-09-02"><span
																					class="fc-day-number">2</span></td>
																			</tr>
																		</thead>
																		<tbody>
																			<tr>
																				<td></td>
																				<td></td>
																				<td></td>
																				<td></td>
																				<td></td>
																				<td class="fc-event-container"><a
																					class="fc-day-grid-event fc-h-event fc-event fc-start fc-end fc-draggable"
																					style="background-color: #f56954; border-color: #f56954"><div
																							class="fc-content">
																							<span class="fc-time">12a</span> <span
																								class="fc-title">All Day Event</span>
																						</div></a></td>
																				<td></td>
																			</tr>
																		</tbody>
																	</table>
																</div>
															</div>
															<div class="fc-row fc-week fc-widget-content"
																style="height: 71px;">
																<div class="fc-bg">
																	<table>
																		<tbody>
																			<tr>
																				<td class="fc-day fc-widget-content fc-sun fc-past"
																					data-date="2017-09-03"></td>
																				<td class="fc-day fc-widget-content fc-mon fc-past"
																					data-date="2017-09-04"></td>
																				<td class="fc-day fc-widget-content fc-tue fc-past"
																					data-date="2017-09-05"></td>
																				<td class="fc-day fc-widget-content fc-wed fc-past"
																					data-date="2017-09-06"></td>
																				<td class="fc-day fc-widget-content fc-thu fc-past"
																					data-date="2017-09-07"></td>
																				<td class="fc-day fc-widget-content fc-fri fc-past"
																					data-date="2017-09-08"></td>
																				<td class="fc-day fc-widget-content fc-sat fc-past"
																					data-date="2017-09-09"></td>
																			</tr>
																		</tbody>
																	</table>
																</div>
																<div class="fc-content-skeleton">
																	<table>
																		<thead>
																			<tr>
																				<td class="fc-day-top fc-sun fc-past"
																					data-date="2017-09-03"><span
																					class="fc-day-number">3</span></td>
																				<td class="fc-day-top fc-mon fc-past"
																					data-date="2017-09-04"><span
																					class="fc-day-number">4</span></td>
																				<td class="fc-day-top fc-tue fc-past"
																					data-date="2017-09-05"><span
																					class="fc-day-number">5</span></td>
																				<td class="fc-day-top fc-wed fc-past"
																					data-date="2017-09-06"><span
																					class="fc-day-number">6</span></td>
																				<td class="fc-day-top fc-thu fc-past"
																					data-date="2017-09-07"><span
																					class="fc-day-number">7</span></td>
																				<td class="fc-day-top fc-fri fc-past"
																					data-date="2017-09-08"><span
																					class="fc-day-number">8</span></td>
																				<td class="fc-day-top fc-sat fc-past"
																					data-date="2017-09-09"><span
																					class="fc-day-number">9</span></td>
																			</tr>
																		</thead>
																		<tbody>
																			<tr>
																				<td></td>
																				<td></td>
																				<td></td>
																				<td></td>
																				<td></td>
																				<td class="fc-event-container" colspan="2"><a
																					class="fc-day-grid-event fc-h-event fc-event fc-start fc-not-end fc-draggable"
																					style="background-color: #f39c12; border-color: #f39c12"><div
																							class="fc-content">
																							<span class="fc-time">12a</span> <span
																								class="fc-title">Long Event</span>
																						</div></a></td>
																			</tr>
																		</tbody>
																	</table>
																</div>
															</div>
															<div class="fc-row fc-week fc-widget-content" style="">
																<div class="fc-bg">
																	<table>
																		<tbody>
																			<tr>
																				<td class="fc-day fc-widget-content fc-sun fc-past"
																					data-date="2017-09-10"></td>
																				<td class="fc-day fc-widget-content fc-mon fc-past"
																					data-date="2017-09-11"></td>
																				<td class="fc-day fc-widget-content fc-tue fc-past"
																					data-date="2017-09-12"></td>
																				<td
																					class="fc-day fc-widget-content fc-wed fc-today fc-state-highlight"
																					data-date="2017-09-13"></td>
																				<td
																					class="fc-day fc-widget-content fc-thu fc-future"
																					data-date="2017-09-14"></td>
																				<td
																					class="fc-day fc-widget-content fc-fri fc-future"
																					data-date="2017-09-15"></td>
																				<td
																					class="fc-day fc-widget-content fc-sat fc-future"
																					data-date="2017-09-16"></td>
																			</tr>
																		</tbody>
																	</table>
																</div>
																<div class="fc-content-skeleton">
																	<table>
																		<thead>
																			<tr>
																				<td class="fc-day-top fc-sun fc-past"
																					data-date="2017-09-10"><span
																					class="fc-day-number">10</span></td>
																				<td class="fc-day-top fc-mon fc-past"
																					data-date="2017-09-11"><span
																					class="fc-day-number">11</span></td>
																				<td class="fc-day-top fc-tue fc-past"
																					data-date="2017-09-12"><span
																					class="fc-day-number">12</span></td>
																				<td
																					class="fc-day-top fc-wed fc-today fc-state-highlight"
																					data-date="2017-09-13"><span
																					class="fc-day-number">13</span></td>
																				<td class="fc-day-top fc-thu fc-future"
																					data-date="2017-09-14"><span
																					class="fc-day-number">14</span></td>
																				<td class="fc-day-top fc-fri fc-future"
																					data-date="2017-09-15"><span
																					class="fc-day-number">15</span></td>
																				<td class="fc-day-top fc-sat fc-future"
																					data-date="2017-09-16"><span
																					class="fc-day-number">16</span></td>
																			</tr>
																		</thead>
																		<tbody>
																			<tr>
																				<td class="fc-event-container" rowspan="2"><a
																					class="fc-day-grid-event fc-h-event fc-event fc-not-start fc-end fc-draggable"
																					style="background-color: #f39c12; border-color: #f39c12"><div
																							class="fc-content">
																							<span class="fc-title">Long Event</span>
																						</div></a></td>
																				<td rowspan="2"></td>
																				<td rowspan="2"></td>
																				<td class="fc-event-container"><a
																					class="fc-day-grid-event fc-h-event fc-event fc-start fc-end fc-draggable"
																					style="background-color: #0073b7; border-color: #0073b7"><div
																							class="fc-content">
																							<span class="fc-time">10:30a</span> <span
																								class="fc-title">Meeting</span>
																						</div></a></td>
																				<td class="fc-event-container" rowspan="2"><a
																					class="fc-day-grid-event fc-h-event fc-event fc-start fc-end fc-draggable"
																					style="background-color: #00a65a; border-color: #00a65a"><div
																							class="fc-content">
																							<span class="fc-time">7p</span> <span
																								class="fc-title">Birthday Party</span>
																						</div></a></td>
																				<td rowspan="2"></td>
																				<td rowspan="2"></td>
																			</tr>
																			<tr>
																				<td class="fc-event-container"><a
																					class="fc-day-grid-event fc-h-event fc-event fc-start fc-end fc-draggable"
																					style="background-color: #00c0ef; border-color: #00c0ef"><div
																							class="fc-content">
																							<span class="fc-time">12p</span> <span
																								class="fc-title">Lunch</span>
																						</div></a></td>
																			</tr>
																		</tbody>
																	</table>
																</div>
															</div>
															<div class="fc-row fc-week fc-widget-content"
																style="height: 71px;">
																<div class="fc-bg">
																	<table>
																		<tbody>
																			<tr>
																				<td
																					class="fc-day fc-widget-content fc-sun fc-future"
																					data-date="2017-09-17"></td>
																				<td
																					class="fc-day fc-widget-content fc-mon fc-future"
																					data-date="2017-09-18"></td>
																				<td
																					class="fc-day fc-widget-content fc-tue fc-future"
																					data-date="2017-09-19"></td>
																				<td
																					class="fc-day fc-widget-content fc-wed fc-future"
																					data-date="2017-09-20"></td>
																				<td
																					class="fc-day fc-widget-content fc-thu fc-future"
																					data-date="2017-09-21"></td>
																				<td
																					class="fc-day fc-widget-content fc-fri fc-future"
																					data-date="2017-09-22"></td>
																				<td
																					class="fc-day fc-widget-content fc-sat fc-future"
																					data-date="2017-09-23"></td>
																			</tr>
																		</tbody>
																	</table>
																</div>
																<div class="fc-content-skeleton">
																	<table>
																		<thead>
																			<tr>
																				<td class="fc-day-top fc-sun fc-future"
																					data-date="2017-09-17"><span
																					class="fc-day-number">17</span></td>
																				<td class="fc-day-top fc-mon fc-future"
																					data-date="2017-09-18"><span
																					class="fc-day-number">18</span></td>
																				<td class="fc-day-top fc-tue fc-future"
																					data-date="2017-09-19"><span
																					class="fc-day-number">19</span></td>
																				<td class="fc-day-top fc-wed fc-future"
																					data-date="2017-09-20"><span
																					class="fc-day-number">20</span></td>
																				<td class="fc-day-top fc-thu fc-future"
																					data-date="2017-09-21"><span
																					class="fc-day-number">21</span></td>
																				<td class="fc-day-top fc-fri fc-future"
																					data-date="2017-09-22"><span
																					class="fc-day-number">22</span></td>
																				<td class="fc-day-top fc-sat fc-future"
																					data-date="2017-09-23"><span
																					class="fc-day-number">23</span></td>
																			</tr>
																		</thead>
																		<tbody>
																			<tr>
																				<td></td>
																				<td></td>
																				<td></td>
																				<td></td>
																				<td></td>
																				<td></td>
																				<td></td>
																			</tr>
																		</tbody>
																	</table>
																</div>
															</div>
															<div class="fc-row fc-week fc-widget-content"
																style="height: 71px;">
																<div class="fc-bg">
																	<table>
																		<tbody>
																			<tr>
																				<td
																					class="fc-day fc-widget-content fc-sun fc-future"
																					data-date="2017-09-24"></td>
																				<td
																					class="fc-day fc-widget-content fc-mon fc-future"
																					data-date="2017-09-25"></td>
																				<td
																					class="fc-day fc-widget-content fc-tue fc-future"
																					data-date="2017-09-26"></td>
																				<td
																					class="fc-day fc-widget-content fc-wed fc-future"
																					data-date="2017-09-27"></td>
																				<td
																					class="fc-day fc-widget-content fc-thu fc-future"
																					data-date="2017-09-28"></td>
																				<td
																					class="fc-day fc-widget-content fc-fri fc-future"
																					data-date="2017-09-29"></td>
																				<td
																					class="fc-day fc-widget-content fc-sat fc-future"
																					data-date="2017-09-30"></td>
																			</tr>
																		</tbody>
																	</table>
																</div>
																<div class="fc-content-skeleton">
																	<table>
																		<thead>
																			<tr>
																				<td class="fc-day-top fc-sun fc-future"
																					data-date="2017-09-24"><span
																					class="fc-day-number">24</span></td>
																				<td class="fc-day-top fc-mon fc-future"
																					data-date="2017-09-25"><span
																					class="fc-day-number">25</span></td>
																				<td class="fc-day-top fc-tue fc-future"
																					data-date="2017-09-26"><span
																					class="fc-day-number">26</span></td>
																				<td class="fc-day-top fc-wed fc-future"
																					data-date="2017-09-27"><span
																					class="fc-day-number">27</span></td>
																				<td class="fc-day-top fc-thu fc-future"
																					data-date="2017-09-28"><span
																					class="fc-day-number">28</span></td>
																				<td class="fc-day-top fc-fri fc-future"
																					data-date="2017-09-29"><span
																					class="fc-day-number">29</span></td>
																				<td class="fc-day-top fc-sat fc-future"
																					data-date="2017-09-30"><span
																					class="fc-day-number">30</span></td>
																			</tr>
																		</thead>
																		<tbody>
																			<tr>
																				<td></td>
																				<td></td>
																				<td></td>
																				<td></td>
																				<td class="fc-event-container"><a
																					class="fc-day-grid-event fc-h-event fc-event fc-start fc-end fc-draggable"
																					href="http://google.com/"
																					style="background-color: #3c8dbc; border-color: #3c8dbc"><div
																							class="fc-content">
																							<span class="fc-time">12a</span> <span
																								class="fc-title">Click for Google</span>
																						</div></a></td>
																				<td></td>
																				<td></td>
																			</tr>
																		</tbody>
																	</table>
																</div>
															</div>
															<div class="fc-row fc-week fc-widget-content"
																style="height: 74px;">
																<div class="fc-bg">
																	<table>
																		<tbody>
																			<tr>
																				<td
																					class="fc-day fc-widget-content fc-sun fc-other-month fc-future"
																					data-date="2017-10-01"></td>
																				<td
																					class="fc-day fc-widget-content fc-mon fc-other-month fc-future"
																					data-date="2017-10-02"></td>
																				<td
																					class="fc-day fc-widget-content fc-tue fc-other-month fc-future"
																					data-date="2017-10-03"></td>
																				<td
																					class="fc-day fc-widget-content fc-wed fc-other-month fc-future"
																					data-date="2017-10-04"></td>
																				<td
																					class="fc-day fc-widget-content fc-thu fc-other-month fc-future"
																					data-date="2017-10-05"></td>
																				<td
																					class="fc-day fc-widget-content fc-fri fc-other-month fc-future"
																					data-date="2017-10-06"></td>
																				<td
																					class="fc-day fc-widget-content fc-sat fc-other-month fc-future"
																					data-date="2017-10-07"></td>
																			</tr>
																		</tbody>
																	</table>
																</div>
																<div class="fc-content-skeleton">
																	<table>
																		<thead>
																			<tr>
																				<td
																					class="fc-day-top fc-sun fc-other-month fc-future"
																					data-date="2017-10-01"><span
																					class="fc-day-number">1</span></td>
																				<td
																					class="fc-day-top fc-mon fc-other-month fc-future"
																					data-date="2017-10-02"><span
																					class="fc-day-number">2</span></td>
																				<td
																					class="fc-day-top fc-tue fc-other-month fc-future"
																					data-date="2017-10-03"><span
																					class="fc-day-number">3</span></td>
																				<td
																					class="fc-day-top fc-wed fc-other-month fc-future"
																					data-date="2017-10-04"><span
																					class="fc-day-number">4</span></td>
																				<td
																					class="fc-day-top fc-thu fc-other-month fc-future"
																					data-date="2017-10-05"><span
																					class="fc-day-number">5</span></td>
																				<td
																					class="fc-day-top fc-fri fc-other-month fc-future"
																					data-date="2017-10-06"><span
																					class="fc-day-number">6</span></td>
																				<td
																					class="fc-day-top fc-sat fc-other-month fc-future"
																					data-date="2017-10-07"><span
																					class="fc-day-number">7</span></td>
																			</tr>
																		</thead>
																		<tbody>
																			<tr>
																				<td></td>
																				<td></td>
																				<td></td>
																				<td></td>
																				<td></td>
																				<td></td>
																				<td></td>
																			</tr>
																		</tbody>
																	</table>
																</div>
															</div>
														</div>
													</div></td>
											</tr>
										</tbody>
									</table>
								</div>
							</div>
						</div>
					</div>
					<!-- /.box-body -->
				</div>
				<!-- /. box -->
			</div>
			<!-- /.col -->
		</div>
		<!-- /.row --> </section>
		<!-- /.content -->
	</div>
	<!-- /.content-wrapper -->

	<!--   <footer class="main-footer"> -->
	<!--     <div class="pull-right hidden-xs"> -->
	<!--       <b>Version</b> 2.4.0 -->
	<!--     </div> -->
	<!--     <strong>Copyright © 2014-2016 <a href="https://adminlte.io">Almsaeed Studio</a>.</strong> All rights -->
	<!--     reserved. -->
	<!--   </footer> -->

	<!-- Control Sidebar -->
	<aside class="control-sidebar control-sidebar-dark"> <!-- Create the tabs -->
	<ul class="nav nav-tabs nav-justified control-sidebar-tabs">
		<li class="active"><a
			href="#control-sidebar-theme-demo-options-tab" data-toggle="tab"><i
				class="fa fa-wrench"></i></a></li>
		<li><a href="#control-sidebar-home-tab" data-toggle="tab"><i
				class="fa fa-home"></i></a></li>
		<li><a href="#control-sidebar-settings-tab" data-toggle="tab"><i
				class="fa fa-gears"></i></a></li>
	</ul>
	<!-- Tab panes -->
	<div class="tab-content">
		<!-- Home tab content -->
		<div class="tab-pane" id="control-sidebar-home-tab">
			<h3 class="control-sidebar-heading">Recent Activity</h3>
			<ul class="control-sidebar-menu">
				<li><a href="javascript:void(0)"> <i
						class="menu-icon fa fa-birthday-cake bg-red"></i>

						<div class="menu-info">
							<h4 class="control-sidebar-subheading">Langdon's Birthday</h4>

							<p>Will be 23 on April 24th</p>
						</div>
				</a></li>
				<li><a href="javascript:void(0)"> <i
						class="menu-icon fa fa-user bg-yellow"></i>

						<div class="menu-info">
							<h4 class="control-sidebar-subheading">Frodo Updated His
								Profile</h4>

							<p>New phone +1(800)555-1234</p>
						</div>
				</a></li>
				<li><a href="javascript:void(0)"> <i
						class="menu-icon fa fa-envelope-o bg-light-blue"></i>

						<div class="menu-info">
							<h4 class="control-sidebar-subheading">Nora Joined Mailing
								List</h4>

							<p>nora@example.com</p>
						</div>
				</a></li>
				<li><a href="javascript:void(0)"> <i
						class="menu-icon fa fa-file-code-o bg-green"></i>

						<div class="menu-info">
							<h4 class="control-sidebar-subheading">Cron Job 254 Executed</h4>

							<p>Execution time 5 seconds</p>
						</div>
				</a></li>
			</ul>
			<!-- /.control-sidebar-menu -->

			<h3 class="control-sidebar-heading">Tasks Progress</h3>
			<ul class="control-sidebar-menu">
				<li><a href="javascript:void(0)">
						<h4 class="control-sidebar-subheading">
							Custom Template Design <span
								class="label label-danger pull-right">70%</span>
						</h4>

						<div class="progress progress-xxs">
							<div class="progress-bar progress-bar-danger" style="width: 70%"></div>
						</div>
				</a></li>
				<li><a href="javascript:void(0)">
						<h4 class="control-sidebar-subheading">
							Update Resume <span class="label label-success pull-right">95%</span>
						</h4>

						<div class="progress progress-xxs">
							<div class="progress-bar progress-bar-success" style="width: 95%"></div>
						</div>
				</a></li>
				<li><a href="javascript:void(0)">
						<h4 class="control-sidebar-subheading">
							Laravel Integration <span class="label label-warning pull-right">50%</span>
						</h4>

						<div class="progress progress-xxs">
							<div class="progress-bar progress-bar-warning" style="width: 50%"></div>
						</div>
				</a></li>
				<li><a href="javascript:void(0)">
						<h4 class="control-sidebar-subheading">
							Back End Framework <span class="label label-primary pull-right">68%</span>
						</h4>

						<div class="progress progress-xxs">
							<div class="progress-bar progress-bar-primary" style="width: 68%"></div>
						</div>
				</a></li>
			</ul>
			<!-- /.control-sidebar-menu -->

		</div>
		<div id="control-sidebar-theme-demo-options-tab"
			class="tab-pane active">
			<div>
				<h4 class="control-sidebar-heading">Layout Options</h4>
				<div class="form-group">
					<label class="control-sidebar-subheading"><input
						type="checkbox" data-layout="fixed" class="pull-right">
						Fixed layout</label>
					<p>Activate the fixed layout. You can't use fixed and boxed
						layouts together</p>
				</div>
				<div class="form-group">
					<label class="control-sidebar-subheading"><input
						type="checkbox" data-layout="layout-boxed" class="pull-right">
						Boxed Layout</label>
					<p>Activate the boxed layout</p>
				</div>
				<div class="form-group">
					<label class="control-sidebar-subheading"><input
						type="checkbox" data-layout="sidebar-collapse" class="pull-right">
						Toggle Sidebar</label>
					<p>Toggle the left sidebar's state (open or collapse)</p>
				</div>
				<div class="form-group">
					<label class="control-sidebar-subheading"><input
						type="checkbox" data-enable="expandOnHover" class="pull-right">
						Sidebar Expand on Hover</label>
					<p>Let the sidebar mini expand on hover</p>
				</div>
				<div class="form-group">
					<label class="control-sidebar-subheading"><input
						type="checkbox" data-controlsidebar="control-sidebar-open"
						class="pull-right"> Toggle Right Sidebar Slide</label>
					<p>Toggle between slide over content and push content effects</p>
				</div>
				<div class="form-group">
					<label class="control-sidebar-subheading"><input
						type="checkbox" data-sidebarskin="toggle" class="pull-right">
						Toggle Right Sidebar Skin</label>
					<p>Toggle between dark and light skins for the right sidebar</p>
				</div>
				<h4 class="control-sidebar-heading">Skins</h4>
				<ul class="list-unstyled clearfix">
					<li style="float: left; width: 33.33333%; padding: 5px;"><a
						href="javascript:void(0)" data-skin="skin-blue"
						style="display: block; box-shadow: 0 0 3px rgba(0, 0, 0, 0.4)"
						class="clearfix full-opacity-hover"><div>
								<span
									style="display: block; width: 20%; float: left; height: 7px; background: #367fa9"></span><span
									class="bg-light-blue"
									style="display: block; width: 80%; float: left; height: 7px;"></span>
							</div>
							<div>
								<span
									style="display: block; width: 20%; float: left; height: 20px; background: #222d32"></span><span
									style="display: block; width: 80%; float: left; height: 20px; background: #f4f5f7"></span>
							</div></a>
						<p class="text-center no-margin">Blue</p></li>
					<li style="float: left; width: 33.33333%; padding: 5px;"><a
						href="javascript:void(0)" data-skin="skin-black"
						style="display: block; box-shadow: 0 0 3px rgba(0, 0, 0, 0.4)"
						class="clearfix full-opacity-hover"><div
								style="box-shadow: 0 0 2px rgba(0, 0, 0, 0.1)" class="clearfix">
								<span
									style="display: block; width: 20%; float: left; height: 7px; background: #fefefe"></span><span
									style="display: block; width: 80%; float: left; height: 7px; background: #fefefe"></span>
							</div>
							<div>
								<span
									style="display: block; width: 20%; float: left; height: 20px; background: #222"></span><span
									style="display: block; width: 80%; float: left; height: 20px; background: #f4f5f7"></span>
							</div></a>
						<p class="text-center no-margin">Black</p></li>
					<li style="float: left; width: 33.33333%; padding: 5px;"><a
						href="javascript:void(0)" data-skin="skin-purple"
						style="display: block; box-shadow: 0 0 3px rgba(0, 0, 0, 0.4)"
						class="clearfix full-opacity-hover"><div>
								<span
									style="display: block; width: 20%; float: left; height: 7px;"
									class="bg-purple-active"></span><span class="bg-purple"
									style="display: block; width: 80%; float: left; height: 7px;"></span>
							</div>
							<div>
								<span
									style="display: block; width: 20%; float: left; height: 20px; background: #222d32"></span><span
									style="display: block; width: 80%; float: left; height: 20px; background: #f4f5f7"></span>
							</div></a>
						<p class="text-center no-margin">Purple</p></li>
					<li style="float: left; width: 33.33333%; padding: 5px;"><a
						href="javascript:void(0)" data-skin="skin-green"
						style="display: block; box-shadow: 0 0 3px rgba(0, 0, 0, 0.4)"
						class="clearfix full-opacity-hover"><div>
								<span
									style="display: block; width: 20%; float: left; height: 7px;"
									class="bg-green-active"></span><span class="bg-green"
									style="display: block; width: 80%; float: left; height: 7px;"></span>
							</div>
							<div>
								<span
									style="display: block; width: 20%; float: left; height: 20px; background: #222d32"></span><span
									style="display: block; width: 80%; float: left; height: 20px; background: #f4f5f7"></span>
							</div></a>
						<p class="text-center no-margin">Green</p></li>
					<li style="float: left; width: 33.33333%; padding: 5px;"><a
						href="javascript:void(0)" data-skin="skin-red"
						style="display: block; box-shadow: 0 0 3px rgba(0, 0, 0, 0.4)"
						class="clearfix full-opacity-hover"><div>
								<span
									style="display: block; width: 20%; float: left; height: 7px;"
									class="bg-red-active"></span><span class="bg-red"
									style="display: block; width: 80%; float: left; height: 7px;"></span>
							</div>
							<div>
								<span
									style="display: block; width: 20%; float: left; height: 20px; background: #222d32"></span><span
									style="display: block; width: 80%; float: left; height: 20px; background: #f4f5f7"></span>
							</div></a>
						<p class="text-center no-margin">Red</p></li>
					<li style="float: left; width: 33.33333%; padding: 5px;"><a
						href="javascript:void(0)" data-skin="skin-yellow"
						style="display: block; box-shadow: 0 0 3px rgba(0, 0, 0, 0.4)"
						class="clearfix full-opacity-hover"><div>
								<span
									style="display: block; width: 20%; float: left; height: 7px;"
									class="bg-yellow-active"></span><span class="bg-yellow"
									style="display: block; width: 80%; float: left; height: 7px;"></span>
							</div>
							<div>
								<span
									style="display: block; width: 20%; float: left; height: 20px; background: #222d32"></span><span
									style="display: block; width: 80%; float: left; height: 20px; background: #f4f5f7"></span>
							</div></a>
						<p class="text-center no-margin">Yellow</p></li>
					<li style="float: left; width: 33.33333%; padding: 5px;"><a
						href="javascript:void(0)" data-skin="skin-blue-light"
						style="display: block; box-shadow: 0 0 3px rgba(0, 0, 0, 0.4)"
						class="clearfix full-opacity-hover"><div>
								<span
									style="display: block; width: 20%; float: left; height: 7px; background: #367fa9"></span><span
									class="bg-light-blue"
									style="display: block; width: 80%; float: left; height: 7px;"></span>
							</div>
							<div>
								<span
									style="display: block; width: 20%; float: left; height: 20px; background: #f9fafc"></span><span
									style="display: block; width: 80%; float: left; height: 20px; background: #f4f5f7"></span>
							</div></a>
						<p class="text-center no-margin" style="font-size: 12px">Blue
							Light</p></li>
					<li style="float: left; width: 33.33333%; padding: 5px;"><a
						href="javascript:void(0)" data-skin="skin-black-light"
						style="display: block; box-shadow: 0 0 3px rgba(0, 0, 0, 0.4)"
						class="clearfix full-opacity-hover"><div
								style="box-shadow: 0 0 2px rgba(0, 0, 0, 0.1)" class="clearfix">
								<span
									style="display: block; width: 20%; float: left; height: 7px; background: #fefefe"></span><span
									style="display: block; width: 80%; float: left; height: 7px; background: #fefefe"></span>
							</div>
							<div>
								<span
									style="display: block; width: 20%; float: left; height: 20px; background: #f9fafc"></span><span
									style="display: block; width: 80%; float: left; height: 20px; background: #f4f5f7"></span>
							</div></a>
						<p class="text-center no-margin" style="font-size: 12px">Black
							Light</p></li>
					<li style="float: left; width: 33.33333%; padding: 5px;"><a
						href="javascript:void(0)" data-skin="skin-purple-light"
						style="display: block; box-shadow: 0 0 3px rgba(0, 0, 0, 0.4)"
						class="clearfix full-opacity-hover"><div>
								<span
									style="display: block; width: 20%; float: left; height: 7px;"
									class="bg-purple-active"></span><span class="bg-purple"
									style="display: block; width: 80%; float: left; height: 7px;"></span>
							</div>
							<div>
								<span
									style="display: block; width: 20%; float: left; height: 20px; background: #f9fafc"></span><span
									style="display: block; width: 80%; float: left; height: 20px; background: #f4f5f7"></span>
							</div></a>
						<p class="text-center no-margin" style="font-size: 12px">Purple
							Light</p></li>
					<li style="float: left; width: 33.33333%; padding: 5px;"><a
						href="javascript:void(0)" data-skin="skin-green-light"
						style="display: block; box-shadow: 0 0 3px rgba(0, 0, 0, 0.4)"
						class="clearfix full-opacity-hover"><div>
								<span
									style="display: block; width: 20%; float: left; height: 7px;"
									class="bg-green-active"></span><span class="bg-green"
									style="display: block; width: 80%; float: left; height: 7px;"></span>
							</div>
							<div>
								<span
									style="display: block; width: 20%; float: left; height: 20px; background: #f9fafc"></span><span
									style="display: block; width: 80%; float: left; height: 20px; background: #f4f5f7"></span>
							</div></a>
						<p class="text-center no-margin" style="font-size: 12px">Green
							Light</p></li>
					<li style="float: left; width: 33.33333%; padding: 5px;"><a
						href="javascript:void(0)" data-skin="skin-red-light"
						style="display: block; box-shadow: 0 0 3px rgba(0, 0, 0, 0.4)"
						class="clearfix full-opacity-hover"><div>
								<span
									style="display: block; width: 20%; float: left; height: 7px;"
									class="bg-red-active"></span><span class="bg-red"
									style="display: block; width: 80%; float: left; height: 7px;"></span>
							</div>
							<div>
								<span
									style="display: block; width: 20%; float: left; height: 20px; background: #f9fafc"></span><span
									style="display: block; width: 80%; float: left; height: 20px; background: #f4f5f7"></span>
							</div></a>
						<p class="text-center no-margin" style="font-size: 12px">Red
							Light</p></li>
					<li style="float: left; width: 33.33333%; padding: 5px;"><a
						href="javascript:void(0)" data-skin="skin-yellow-light"
						style="display: block; box-shadow: 0 0 3px rgba(0, 0, 0, 0.4)"
						class="clearfix full-opacity-hover"><div>
								<span
									style="display: block; width: 20%; float: left; height: 7px;"
									class="bg-yellow-active"></span><span class="bg-yellow"
									style="display: block; width: 80%; float: left; height: 7px;"></span>
							</div>
							<div>
								<span
									style="display: block; width: 20%; float: left; height: 20px; background: #f9fafc"></span><span
									style="display: block; width: 80%; float: left; height: 20px; background: #f4f5f7"></span>
							</div></a>
						<p class="text-center no-margin" style="font-size: 12px">Yellow
							Light</p></li>
				</ul>
			</div>
		</div>
		<!-- /.tab-pane -->
		<!-- Stats tab content -->
		<div class="tab-pane" id="control-sidebar-stats-tab">Stats Tab
			Content</div>
		<!-- /.tab-pane -->
		<!-- Settings tab content -->
		<div class="tab-pane" id="control-sidebar-settings-tab">
			<form method="post">
				<h3 class="control-sidebar-heading">General Settings</h3>

				<div class="form-group">
					<label class="control-sidebar-subheading"> Report panel
						usage <input type="checkbox" class="pull-right" checked="">
					</label>

					<p>Some information about this general settings option</p>
				</div>
				<!-- /.form-group -->

				<div class="form-group">
					<label class="control-sidebar-subheading"> Allow mail
						redirect <input type="checkbox" class="pull-right" checked="">
					</label>

					<p>Other sets of options are available</p>
				</div>
				<!-- /.form-group -->

				<div class="form-group">
					<label class="control-sidebar-subheading"> Expose author
						name in posts <input type="checkbox" class="pull-right" checked="">
					</label>

					<p>Allow the user to show his name in blog posts</p>
				</div>
				<!-- /.form-group -->

				<h3 class="control-sidebar-heading">Chat Settings</h3>

				<div class="form-group">
					<label class="control-sidebar-subheading"> Show me as
						online <input type="checkbox" class="pull-right" checked="">
					</label>
				</div>
				<!-- /.form-group -->

				<div class="form-group">
					<label class="control-sidebar-subheading"> Turn off
						notifications <input type="checkbox" class="pull-right">
					</label>
				</div>
				<!-- /.form-group -->

				<div class="form-group">
					<label class="control-sidebar-subheading"> Delete chat
						history <a href="javascript:void(0)" class="text-red pull-right"><i
							class="fa fa-trash-o"></i></a>
					</label>
				</div>
				<!-- /.form-group -->
			</form>
		</div>
		<!-- /.tab-pane -->
	</div>
	</aside>
	<!-- /.control-sidebar -->
	<!-- Add the sidebar's background. This div must be placed
       immediately after the control sidebar -->
	<div class="control-sidebar-bg"></div>
	</div>
	<!-- ./wrapper -->

	<!-- jQuery 3 -->
	<script
		src="./resources/AdminLTE/bower_components/jquery/dist/jquery.min.js"></script>
	<!-- Bootstrap 3.3.7 -->
	<script
		src="./resources/AdminLTE/bower_components/bootstrap/dist/js/bootstrap.min.js"></script>
	<!-- jQuery UI 1.11.4 -->
	<script
		src="./resources/AdminLTE/bower_components/jquery-ui/jquery-ui.min.js"></script>
	<!-- Slimscroll -->
	<script
		src="./resources/AdminLTE/bower_components/jquery-slimscroll/jquery.slimscroll.min.js"></script>
	<!-- FastClick -->
	<script
		src="./resources/AdminLTE/bower_components/fastclick/lib/fastclick.js"></script>
	<!-- AdminLTE App -->
	<script src="./resources/AdminLTE/dist/js/adminlte.min.js"></script>
	<!-- AdminLTE for demo purposes -->
	<script src="./resources/AdminLTE/dist/js/demo.js"></script>
	<!-- fullCalendar -->
	<script src="./resources/AdminLTE/bower_components/moment/moment.js"></script>
	<script
		src="./resources/AdminLTE/bower_components/fullcalendar/dist/fullcalendar.min.js"></script>
	<!-- Page specific script -->
	<script>
  $(function () {

    /* initialize the external events
     -----------------------------------------------------------------*/
    function init_events(ele) {
      ele.each(function () {

        // create an Event Object (http://arshaw.com/fullcalendar/docs/event_data/Event_Object/)
        // it doesn't need to have a start or end
        var eventObject = {
          title: $.trim($(this).text()) // use the element's text as the event title
        }

        // store the Event Object in the DOM element so we can get to it later
        $(this).data('eventObject', eventObject)

        // make the event draggable using jQuery UI
        $(this).draggable({
          zIndex        : 1070,
          revert        : true, // will cause the event to go back to its
          revertDuration: 0  //  original position after the drag
        })

      })
    }

    init_events($('#external-events div.external-event'))

    /* initialize the calendar
     -----------------------------------------------------------------*/
    //Date for the calendar events (dummy data)
    var date = new Date()
    var d    = date.getDate(),
        m    = date.getMonth(),
        y    = date.getFullYear()
    $('#calendar').fullCalendar({
      header    : {
        left  : 'prev,next today',
        center: 'title',
        right : 'month,agendaWeek,agendaDay'
      },
      buttonText: {
        today: 'today',
        month: 'month',
        week : 'week',
        day  : 'day'
      },
      //Random default events
      events    : [
        {
          title          : 'All Day Event',
          start          : new Date(y, m, 1),
          backgroundColor: '#f56954', //red
          borderColor    : '#f56954' //red
        },
        {
          title          : 'Long Event',
          start          : new Date(y, m, d - 5),
          end            : new Date(y, m, d - 2),
          backgroundColor: '#f39c12', //yellow
          borderColor    : '#f39c12' //yellow
        },
        {
          title          : 'Meeting',
          start          : new Date(y, m, d, 10, 30),
          allDay         : false,
          backgroundColor: '#0073b7', //Blue
          borderColor    : '#0073b7' //Blue
        },
        {
          title          : 'Lunch',
          start          : new Date(y, m, d, 12, 0),
          end            : new Date(y, m, d, 14, 0),
          allDay         : false,
          backgroundColor: '#00c0ef', //Info (aqua)
          borderColor    : '#00c0ef' //Info (aqua)
        },
        {
          title          : 'Birthday Party',
          start          : new Date(y, m, d + 1, 19, 0),
          end            : new Date(y, m, d + 1, 22, 30),
          allDay         : false,
          backgroundColor: '#00a65a', //Success (green)
          borderColor    : '#00a65a' //Success (green)
        },
        {
          title          : 'Click for Google',
          start          : new Date(y, m, 28),
          end            : new Date(y, m, 29),
          url            : 'http://google.com/',
          backgroundColor: '#3c8dbc', //Primary (light-blue)
          borderColor    : '#3c8dbc' //Primary (light-blue)
        }
      ],
      editable  : true,
      droppable : true, // this allows things to be dropped onto the calendar !!!
      drop      : function (date, allDay) { // this function is called when something is dropped

        // retrieve the dropped element's stored Event Object
        var originalEventObject = $(this).data('eventObject')

        // we need to copy it, so that multiple events don't have a reference to the same object
        var copiedEventObject = $.extend({}, originalEventObject)

        // assign it the date that was reported
        copiedEventObject.start           = date
        copiedEventObject.allDay          = allDay
        copiedEventObject.backgroundColor = $(this).css('background-color')
        copiedEventObject.borderColor     = $(this).css('border-color')

        // render the event on the calendar
        // the last `true` argument determines if the event "sticks" (http://arshaw.com/fullcalendar/docs/event_rendering/renderEvent/)
        $('#calendar').fullCalendar('renderEvent', copiedEventObject, true)

        // is the "remove after drop" checkbox checked?
        if ($('#drop-remove').is(':checked')) {
          // if so, remove the element from the "Draggable Events" list
          $(this).remove()
        }

      }
    })

    /* ADDING EVENTS */
    var currColor = '#3c8dbc' //Red by default
    //Color chooser button
    var colorChooser = $('#color-chooser-btn')
    $('#color-chooser > li > a').click(function (e) {
      e.preventDefault()
      //Save color
      currColor = $(this).css('color')
      //Add color effect to button
      $('#add-new-event').css({ 'background-color': currColor, 'border-color': currColor })
    })
    $('#add-new-event').click(function (e) {
      e.preventDefault()
      //Get value and make sure it is not null
      var val = $('#new-event').val()
      if (val.length == 0) {
        return
      }

      //Create events
      var event = $('<div />')
      event.css({
        'background-color': currColor,
        'border-color'    : currColor,
        'color'           : '#fff'
      }).addClass('external-event')
      event.html(val)
      $('#external-events').prepend(event)

      //Add draggable funtionality
      init_events(event)

      //Remove event from text input
      $('#new-event').val('')
    })
  })
</script>
	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
	<script src="./resources/plugins/jquery-ui/jquery-ui.js"></script>
	<script src="./resources/plugins/bootstrap/js/bootstrap.min.js"></script>
	<script
		src="./resources/plugins/rs-plugin/js/jquery.themepunch.tools.min.js"></script>
	<script
		src="./resources/plugins/rs-plugin/js/jquery.themepunch.revolution.min.js"></script>
	<script
		src="./resources/plugins/selectbox/jquery.selectbox-0.1.3.min.js"></script>
	<script src="./resources/plugins/owl-carousel/owl.carousel.js"></script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/waypoints/2.0.3/waypoints.min.js"></script>
	<script src="./resources/plugins/counter-up/jquery.counterup.min.js"></script>
	<script src="./resources/plugins/isotope/isotope.min.js"></script>
	<script src="./resources/plugins/isotope/jquery.fancybox.pack.js"></script>
	<script src="./resources/plugins/isotope/isotope-triger.js"></script>
	<script src="./resources/plugins/countdown/jquery.syotimer.js"></script>
	<script src="./resources/plugins/velocity/velocity.min.js"></script>
	<script src="./resources/plugins/smoothscroll/SmoothScroll.js"></script>
	<script src="./resources/js/custom.js"></script>
	<script src="./resources/js/createJoin.js"></script>

</body>
</html>