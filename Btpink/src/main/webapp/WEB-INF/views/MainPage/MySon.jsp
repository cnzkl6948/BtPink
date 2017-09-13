<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>

<!-- SITE TITTLE -->
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Tabs &amp; Dropdown - KIDZ</title>

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
<link rel="./resources/stylesheet" type="text/css"
	href="plugins/isotope/isotope.css">

<!-- GOOGLE FONT -->
<link
	href='https://fonts.googleapis.com/css?family=Open+Sans:400,300,600,700'
	rel='stylesheet' type='text/css'>
<link
	href='https://fonts.googleapis.com/css?family=Dosis:400,300,600,700'
	rel='stylesheet' type='text/css'>

<!-- CUSTOM CSS -->
<link href="./resources/css/style.css" rel="stylesheet">
<link rel="stylesheet" href="css/default.css" id="option_color">

<!-- Icons -->
<link rel="shortcut icon" href="./resources/img/favicon.png">

<!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
<!--[if lt IE 9]>
  <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
  <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
  <![endif]-->

</head>

<body class="body-wrapper">


	<div class="main-wrapper">
		<!-- PAGE TITLE SECTION-->
		<%@ include file="MainHeader.jsp"%>
		<section class="pageTitleSection">
			<div class="container">
				<div class="pageTitleInfo">
					<h2>Tabs &amp; Dropdown</h2>
					<ol class="breadcrumb">
						<li><a href="index.html">Home</a></li>
						<li class="active">Tabs &amp; Dropdown</li>
					</ol>
				</div>
			</div>
		</section>

		<!-- MAIN SECTION -->

		<!-- WHITE SECTION -->
		<section class="whiteSection full-width clearfix p-t-n">
			<div class="container" style="margin-top: 10%;">
				<div class="row">
					<div class="col-xs-12">
						<div class="sectionTitle text-center"></div>
					</div>
				</div>
				<div class="row">
					<div class="col-xs-12">
						<div class="tabCommon tabLeft">
							<div>
								<ul class="nav nav-tabs">
									<li class="active"><a data-toggle="tab" href="#leftHome">WriteDemand</a></li>
									<li><a data-toggle="tab" href="#leftMenu1">MySon</a></li>
								</ul>
							</div>
							<div class="tab-content">
								<div id="leftHome" class="tab-pane fade in active">
									<div class="media">
										<div class="container">
											<div class="sectionTitle text-center">
												<h2>
													<span class="shape shape-left bg-color-4"></span> <span>글쓰기</span>
													<span class="shape shape-right bg-color-4"></span>
												</h2>
											</div>

											<h4 class="text-center">Write form</h4>
											<div class="space-50">&nbsp;</div>
											<!-- Start contact form 2 -->
											<div class="row">
												<div class="col-xs-12">
													<div class="homeContactContent">
														<form action="writeDemand" method="post" role="form"
															id="writeform" enctype="multipart/form-data"
															onsubmit="return formCheck();">
															<div class="row">
																<div class="col-sm-6 col-xs-12">
																	<div class="form-group">
																		<i class="fa fa-book" aria-hidden="true"></i> <select
																			id="demandsubject"
																			class="form-control border-color-2"
																			name="demandsubject" onchange="subjectCheck();">
																			<option value="" disabled="" selected="">choose
																				your topic...</option>
																			<option value="food">음식</option>
																			<option value="medicine">약</option>
																			<option value="friends">교우관계</option>
																			<option value="attendence" id="attendence">출석</option>
																			<option value="etc">기타</option>
																		</select>
																	</div>
																</div>

																<div class="col-sm-6 col-xs-12">
																	<div class="form-group">
																		<i class="fa fa-user" aria-hidden="true"></i> <input
																			type="text" class="form-control border-color-1"
																			id="parentId" name="parentId" readonly="readonly"
																			value="${User.name }">
																	</div>
																</div>


																<div class="col-sm-6 col-xs-12">
																	<div class="form-group">
																		<!--     <i class="fa fa-book"></i> -->
																		<input type="text" class="form-control border-color-3"
																			name="dateRange" id="dateRange">
																	</div>
																</div>


																<div class="col-sm-6 col-xs-12">
																	<div class="form-group">
																		<!-- <i class="fa fa-phone" aria-hidden="true"></i> -->

																		<select id="attend"
																			class="form-control border-color-6" name="attend">
																			<option value="absent">결석</option>
																			<option value="early">조퇴</option>
																			<option value="sick">병결</option>
																			<option value="late">지각</option>
																			<option value="normal">정상등원</option>
																		</select>
																	</div>
																</div>


																<div class="col-xs-12">
																	<div class="form-group">
																		<i class="fa fa-comments" aria-hidden="true"></i>
																		<textarea class="form-control border-color-5"
																			placeholder="Write message" name="demandcontent"
																			id="demandcontent"></textarea>
																	</div>
																</div>
																<div class="col-xs-12">
																	<div class="formBtnArea">
																		<button type="submit" class="btn btn-primary">등록</button>
																	</div>
																</div>
															</div>
														</form>
													</div>
												</div>
											</div>
											<!-- Ends contact form 2-->

										</div>
									</div>
								</div>
								<div id="leftMenu1" class="tab-pane fade">
									<div class="media">
										<a class="media-left" href="#"> <img
											class="media-object img-rounded"
											src="img/home/about-school.png" alt="Image">
										</a>
										<div class="media-body">
											<h3 class="media-heading">Wellcome to kidz school</h3>
											<p>Lorem ipsum dolor sit amet, consectetur adipisicing
												elit, sed do eiusmod tempor incididunt ut labore et dolore
												magna aliqua. Ut enim ad minim veniam, quis nostrud
												exercitation ullamco laboris nisi ut aliquip ex ea commodo
												consequat. Duis aute irure dolor in repre henderit in
												voluptate.</p>
											<p>Excepteur sint occaecat cupidatat non proident, sunt
												in culpa qui officia deserunt mollit anim id est laborum.
												Sed ut perspiciatis unde omnis iste natus error sit
												voluptatem accu santium doloremque laudantium.</p>
											<a href="#" class="btn btn-primary">read more</a>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
		</section>


		<!-- FOOTER -->
		<footer>
			<!-- COLOR BAR -->
			<div class="container-fluid color-bar clearfix">
				<div class="row">
					<div class="col-sm-1 col-xs-2 bg-color-1">fix bar</div>
					<div class="col-sm-1 col-xs-2 bg-color-2">fix bar</div>
					<div class="col-sm-1 col-xs-2 bg-color-3">fix bar</div>
					<div class="col-sm-1 col-xs-2 bg-color-4">fix bar</div>
					<div class="col-sm-1 col-xs-2 bg-color-5">fix bar</div>
					<div class="col-sm-1 col-xs-2 bg-color-6">fix bar</div>
					<div class="col-sm-1 bg-color-1 hidden-xs">fix bar</div>
					<div class="col-sm-1 bg-color-2 hidden-xs">fix bar</div>
					<div class="col-sm-1 bg-color-3 hidden-xs">fix bar</div>
					<div class="col-sm-1 bg-color-4 hidden-xs">fix bar</div>
					<div class="col-sm-1 bg-color-5 hidden-xs">fix bar</div>
					<div class="col-sm-1 bg-color-6 hidden-xs">fix bar</div>
				</div>
			</div>
			<!-- FOOTER INFO AREA -->
			<div class="footerInfoArea full-width clearfix"
				style="background-image: url(img/footer/footer-bg-1.png);">
				<div class="container">
					<div class="row">
						<div class="col-sm-3 col-xs-12">
							<div class="footerTitle">
								<a href="index.html"><img src="img/logo-footer.png"></a>
							</div>
							<div class="footerInfo">
								<p>Excepteur sint occaecat cupidatat non proident, sunt in
									culpa officia.Lorem ipsum dolor sit amet.</p>
								<p>consectetur adipisicing elit, sed do eiusmod tempor
									incididunt ut labore et dolore magna aliqua.</p>
							</div>
						</div>
						<div class="col-sm-3 col-xs-12">
							<div class="footerTitle">
								<h4>Useful Links</h4>
							</div>
							<div class="footerInfo">
								<ul class="list-unstyled footerList">
									<li><a href="index.html"> <i
											class="fa fa-angle-double-right" aria-hidden="true"></i>Kidz
											School
									</a></li>
									<li><a href="about_us.html"> <i
											class="fa fa-angle-double-right" aria-hidden="true"></i>About
											Kidz School
									</a></li>
									<li><a href="index-v2.html"> <i
											class="fa fa-angle-double-right" aria-hidden="true"></i>Kidz
											Store
									</a></li>
									<li><a href="index-v3.html"> <i
											class="fa fa-angle-double-right" aria-hidden="true"></i>Kidz
											Daycare
									</a></li>
									<li><a href="photo-gallery.html"> <i
											class="fa fa-angle-double-right" aria-hidden="true"></i>
											Photo Gallery
									</a></li>
								</ul>
							</div>
						</div>
						<div class="col-sm-3 col-xs-12">
							<div class="footerTitle">
								<h4>Recent Post</h4>
							</div>
							<div class="footerInfo">
								<ul class="list-unstyled postLink">
									<li>
										<div class="media">
											<a class="media-left" href="single-blog.html"> <img
												class="media-object img-rounded border-color-1"
												src="img/footer/footer-img-1.png" alt="Image">
											</a>
											<div class="media-body">
												<h5 class="media-heading">
													<a href="single-blog.html">A Clean Website Gives More
														Experience To The Visitors</a>
												</h5>
												<p>July 7 - 2016</p>
											</div>
										</div>
									</li>
									<li>
										<div class="media">
											<a class="media-left" href="single-blog-left-sidebar.html">
												<img class="media-object img-rounded border-color-2"
												src="img/footer/footer-img-2.png" alt="Image">
											</a>
											<div class="media-body">
												<h5 class="media-heading">
													<a href="single-blog-left-sidebar.html">A Clean Website
														Gives More Experience To The Visitors</a>
												</h5>
												<p>July 7 - 2016</p>
											</div>
										</div>
									</li>
									<li>
										<div class="media">
											<a class="media-left" href="single-blog-left-sidebar.html">
												<img class="media-object img-rounded border-color-4"
												src="img/footer/footer-img-3.png" alt="Image">
											</a>
											<div class="media-body">
												<h5 class="media-heading">
													<a href="single-blog-left-sidebar.html">A Clean Website
														Gives More Experience To The Visitors</a>
												</h5>
												<p>July 7 - 2016</p>
											</div>
										</div>
									</li>
								</ul>
							</div>
						</div>
						<div class="col-sm-3 col-xs-12">
							<div class="footerTitle">
								<h4>Mailing List</h4>
							</div>
							<div class="footerInfo">
								<p>Sign up for our mailing list to get latest updates and
									offers.</p>
								<div class="input-group">
									<input type="text" class="form-control"
										placeholder="Email address" aria-describedby="basic-addon21">
									<button type="submit" class="input-group-addon"
										id="basic-addon21">
										<i class="fa fa-check" aria-hidden="true"></i>
									</button>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<!-- COPY RIGHT -->
			<div class="copyRight clearfix">
				<div class="container">
					<div class="row">
						<div class="col-sm-5 col-sm-push-7 col-xs-12">
							<ul class="list-inline">
								<li><a href="#" class="bg-color-1"><i
										class="fa fa-facebook" aria-hidden="true"></i></a></li>
								<li><a href="#" class="bg-color-2"><i
										class="fa fa-twitter" aria-hidden="true"></i></a></li>
								<li><a href="#" class="bg-color-3"><i
										class="fa fa-google-plus" aria-hidden="true"></i></a></li>
								<li><a href="#" class="bg-color-4"><i
										class="fa fa-pinterest-p" aria-hidden="true"></i></a></li>
								<li><a href="#" class="bg-color-5"><i
										class="fa fa-vimeo" aria-hidden="true"></i></a></li>
							</ul>
						</div>
						<div class="col-sm-7 col-sm-pull-5 col-xs-12">
							<div class="copyRightText">
								<p>
									© 2016 Copyright Kidz School Bootstrap Template by <a
										href="https://www.iamabdus.com/">Abdus</a>.
								</p>
							</div>
						</div>
					</div>
				</div>
			</div>
		</footer>
	</div>

	<div class="scrolling">
		<a href="#pageTop" class="backToTop hidden-xs" id="backToTop"><i
			class="fa fa-arrow-up" aria-hidden="true"></i></a>
	</div>

	<!-- LOGIN MODAL -->
	<div class="modal fade customModal" id="loginModal" tabindex="-1"
		role="dialog">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="panel panel-default formPanel">
					<div class="panel-heading bg-color-1 border-color-1">
						<h3 class="panel-title">Login</h3>
					</div>
					<div class="panel-body">
						<form action="#" method="POST" role="form">
							<div class="form-group formField">
								<input type="text" class="form-control" placeholder="User name">
							</div>
							<div class="form-group formField">
								<input type="password" class="form-control"
									placeholder="Password">
							</div>
							<div class="form-group formField">
								<input type="submit"
									class="btn btn-primary btn-block bg-color-3 border-color-3"
									value="Log in">
							</div>
							<div class="form-group formField">
								<p class="help-block">
									<a href="#">Forgot password?</a>
								</p>
							</div>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>

	<!-- CREATE ACCOUNT MODAL -->
	<div class="modal fade customModal" id="createAccount" tabindex="-1"
		role="dialog">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="panel panel-default formPanel">
					<div class="panel-heading bg-color-1 border-color-1">
						<h3 class="panel-title">Create an account</h3>
					</div>
					<div class="panel-body">
						<form action="#" method="POST" role="form">
							<div class="form-group formField">
								<input type="text" class="form-control" placeholder="Name">
							</div>
							<div class="form-group formField">
								<input type="text" class="form-control" placeholder="User name">
							</div>
							<div class="form-group formField">
								<input type="text" class="form-control" placeholder="Phone">
							</div>
							<div class="form-group formField">
								<input type="password" class="form-control"
									placeholder="Password">
							</div>
							<div class="form-group formField">
								<input type="password" class="form-control"
									placeholder="Re-Password">
							</div>
							<div class="form-group formField">
								<input type="submit"
									class="btn btn-primary btn-block bg-color-3 border-color-3"
									value="Register">
							</div>
							<div class="form-group formField">
								<p class="help-block">
									Allready have an account? <a href="#">Log in</a>
								</p>
							</div>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>
	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
	<!-- <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
 -->
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
	<script
		src="./resources/AdminLTE/bower_components/bootstrap-datepicker/dist/js/bootstrap-datepicker.min.js"></script>
	<script
		src="./resources/AdminLTE/bower_components/moment/min/moment.min.js"></script>
	<script
		src="./resources/AdminLTE/bower_components/bootstrap-daterangepicker/daterangepicker.js"></script>

	<script type="text/javascript">
		$(document).ready(function() {
			$('input').iCheck({
				checkboxClass : 'icheckbox_flat-red',
				radioClass : 'iradio_flat-red'
			});
		});

		$(function() {
			$('#dateRange').daterangepicker();
		});
		//글쓰기폼 확인
		function formCheck() {
			var title = document.getElementById('title');
			var content = document.getElementById('content');

			if (title.value.length < 5) {
				alert("제목을 입력하세요.");
				title.focus();
				title.select();
				return false;
			}
			if (content.value.length < 5) {
				alert("내용을 입력하세요.");
				title.focus();
				title.select();
				return false;
			}
			return true;
		}

// 				function subjectCheck() {
// 					var subject_selectBox = document.getElementById("demandsubject");
// 					var selectedValue = subject_selectBox.options[subject_selectBox.selectedIndex].value;

// 					if (selectedValue == "attendence") {
// 						$('#attend').removeAttr('disabled');
// 					} else {
// 						$('#attend').attr('disabled', 'disabled');
// 					}
// 				}
	</script>
</body>
</html>

