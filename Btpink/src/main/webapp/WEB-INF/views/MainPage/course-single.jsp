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
<link rel="shortcut icon" href="img/favicon.png">

<!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
<!--[if lt IE 9]>
  <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
  <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
  <![endif]-->

</head>

<body class="body-wrapper">
	<div class="main-wrapper">
		<%@ include file="MainHeader.html"%>
		<!-- WHITE SECTION -->

		<div class="col-md-9 col-sm-3 col-xs-12 block pull-right">
			<div class="col-md-9 col-sm-3 col-xs-12 block pull-left">
				<div class="thumbnail thumbnailContent alt">
					<img src="./resources/img/course-single/course-single-title.jpg"
						alt="image" class="img-responsive" width="10" height="100"
						style="width: 700px;">
					<div class="caption border-color-1">
						<h3 class="color-1">Phasellus convallis eros.</h3>
						<p>Contrary to popular belief, Lorem Ipsum is not simply
							random text. It has roots in a piece of classical Latin
							literature from 45 BC, making it over 2000 years old. Richard
							McClintock, a Latin professor at Hampden-Sydney College in
							Virginia, looked up one of the more obscure Latin words,
							consectetur, from a Lorem Ipsum passage, and going through the
							cites of the word in classical literature, discovered the
							undoubtable source. Lorem Ipsum comes from sections 1.10.32 and
							1.10.33 of "de Finibus Bonorum et Malorum" (The Extremes of Good
							and Evil) by Cicero, written in 45 BC. This book is a treatise on
							the theory of ethics, very popular during the Renaissance. The
							first line of Lorem Ipsum, "Lorem ipsum dolor sit amet..", comes
							from a line in section 1.10.32.</p>
						<p>There are many variations of passages of Lorem Ipsum
							available, but the majority have suffered alteration in some
							form, by injected humour, or randomised words which don't look
							even slightly believable. If you are going to use a passage of
							Lorem Ipsum, you need to be sure there isn't anything
							embarrassing hidden in the middle of text. All the Lorem Ipsum
							generators on the Internet tend to repeat predefined chunks as
							necessary.</p>
						<h3 class="color-1">Course Schedule</h3>
					</div>
				</div>
			</div>
		</div>

		<section class="whiteSection full-width clearfix p-t-n">
			<div class="container">
				<div class="row">
					<div class="col-xs-12">
						<div class="tabCommon tabLeft">
							<ul class="nav nav-tabs">
								<li><a data-toggle="tab" href="#leftHome"
									style="width: 132px;">Morning</a></li>
								<li><a data-toggle="tab" href="#leftMenu1"
									style="width: 132px;">Afternoon</a></li>
								<li><a data-toggle="tab" href="#leftMenu2"
									style="width: 132px;">All Day</a></li>
							</ul>
							<div class="tab-content">
								<div id="leftHome" class="tab-pane fade in active">
									<div class="media">
										<a class="media-left" href="#"> <img
											class="media-object img-rounded"
											src="img/home/about-school.png" alt="Image">
										</a>
										<div class="media-body">
											<div class="table-responsive">
												<table class="table table-curved">
													<thead>
														<tr>
															<th class="col-sm-2 bg-color-1">Time <i
																class="fa fa-arrow-down" aria-hidden="true"></i></th>
															<th class="col-sm-2 bg-color-2">Monday</th>
															<th class="col-sm-2 bg-color-3">Tuesday</th>
															<th class="col-sm-2 bg-color-4">Wednesday</th>
															<th class="col-sm-2 bg-color-5">Thursday</th>
															<th class="col-sm-2 bg-color-6">Friday</th>
														</tr>
													</thead>
													<tbody>
														<tr>
															<td>9.00 - 10.00 AM</td>
															<td><span class="color-2">History</span> School
																History</td>
															<td><span class="color-3">Math</span> Larning
																Numbers</td>
															<td><span class="color-4">Geography</span> Making a
																Map</td>
															<td><span class="color-5">English</span> Speaking
																English</td>
															<td><span class="color-6">Art</span> Art</td>
														</tr>
														<tr>
															<td>10.00 - 11.00 AM</td>
															<td><span class="color-2">Geography</span> Making a
																Map</td>
															<td><span class="color-3">English</span> Speaking
																English</td>
															<td><span class="color-4">Art</span> Art</td>
															<td><span class="color-5">Math</span> Larning
																Numbers</td>
															<td><span class="color-6">History</span> School
																History</td>
														</tr>
														<tr>
															<td>11.00 - 11.30 AM</td>
															<td><span class="color-2">Break</span> Lunch</td>
															<td><span class="color-3">Break</span> Lunch</td>
															<td><span class="color-4">Break</span> Lunch</td>
															<td><span class="color-5">Break</span> Lunch</td>
															<td><span class="color-6">Break</span> Lunch</td>
														</tr>
														<tr>
															<td>11.30 - 12.30 PM</td>
															<td><span class="color-2">English</span> Speaking
																English</td>
															<td><span class="color-3">Art</span> Art</td>
															<td><span class="color-4">History</span> School
																History</td>
															<td><span class="color-5">Geography</span> Making a
																Map</td>
															<td><span class="color-6">Math</span> Larning
																Numbers</td>
														</tr>
													</tbody>
												</table>
											</div>
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
											<table class="table table-curved">
												<thead>
													<tr>
														<th class="col-sm-2 bg-color-1">Time <i
															class="fa fa-arrow-down" aria-hidden="true"></i></th>
														<th class="col-sm-2 bg-color-2">Monday</th>
														<th class="col-sm-2 bg-color-3">Tuesday</th>
														<th class="col-sm-2 bg-color-4">Wednesday</th>
														<th class="col-sm-2 bg-color-5">Thursday</th>
														<th class="col-sm-2 bg-color-6">Friday</th>
													</tr>
												</thead>
												<tbody>
													<tr>
														<td>12.30 - 1.30 PM</td>
														<td><span class="color-2">Geography</span> Making a
															Map</td>
														<td><span class="color-3">English</span> Speaking
															English</td>
														<td><span class="color-4">Art</span> Art</td>
														<td><span class="color-5">Math</span> Larning Numbers</td>
														<td><span class="color-6">History</span> School
															History</td>
													</tr>
													<tr>
														<td>1.30 - 2.30  PM</td>
														<td><span class="color-2">History</span> School
															History</td>
														<td><span class="color-3">Math</span> Larning Numbers</td>
														<td><span class="color-4">Geography</span> Making a
															Map</td>
														<td><span class="color-5">English</span> Speaking
															English</td>
														<td><span class="color-6">Art</span> Art</td>
													</tr>
													<tr>
														<td>2.30 - 3.30 PM</td>
														<td><span class="color-2">Geography</span> Making a
															Map</td>
														<td><span class="color-3">English</span> Speaking
															English</td>
														<td><span class="color-4">Art</span> Art</td>
														<td><span class="color-5">Math</span> Larning Numbers</td>
														<td><span class="color-6">History</span> School
															History</td>
													</tr>
													<tr>
														<td>3.30 - 4.30 PM</td>
														<td><span class="color-2">Break</span> Lunch</td>
														<td><span class="color-3">Break</span> Lunch</td>
														<td><span class="color-4">Break</span> Lunch</td>
														<td><span class="color-5">Break</span> Lunch</td>
														<td><span class="color-6">Break</span> Lunch</td>
													</tr>
													<tr>
														<td>4.30 - 5.30 PM</td>
														<td><span class="color-2">English</span> Speaking
															English</td>
														<td><span class="color-3">Art</span> Art</td>
														<td><span class="color-4">History</span> School
															History</td>
														<td><span class="color-5">Geography</span> Making a
															Map</td>
														<td><span class="color-6">Math</span> Larning Numbers</td>
													</tr>
												</tbody>
											</table>
										</div>
									</div>
								</div>
								<div id="leftMenu2" class="tab-pane fade">
									<div class="media">
										<a class="media-left" href="#"> <img
											class="media-object img-rounded"
											src="img/home/about-school.png" alt="Image">
										</a>
										<div class="media-body">
											<table class="table table-curved">
												<thead>
													<tr>
														<th class="col-sm-2 bg-color-1">Time <i
															class="fa fa-arrow-down" aria-hidden="true"></i></th>
														<th class="col-sm-2 bg-color-2">Monday</th>
														<th class="col-sm-2 bg-color-3">Tuesday</th>
														<th class="col-sm-2 bg-color-4">Wednesday</th>
														<th class="col-sm-2 bg-color-5">Thursday</th>
														<th class="col-sm-2 bg-color-6">Friday</th>
													</tr>
												</thead>
												<tbody>
													<tr>
														<td>9.00 - 10.00 AM</td>
														<td><span class="color-2">History</span> School
															History</td>
														<td><span class="color-3">Math</span> Larning Numbers</td>
														<td><span class="color-4">Geography</span> Making a
															Map</td>
														<td><span class="color-5">English</span> Speaking
															English</td>
														<td><span class="color-6">Art</span> Art</td>
													</tr>
													<tr>
														<td>10.00 - 11.00 AM</td>
														<td><span class="color-2">Geography</span> Making a
															Map</td>
														<td><span class="color-3">English</span> Speaking
															English</td>
														<td><span class="color-4">Art</span> Art</td>
														<td><span class="color-5">Math</span> Larning Numbers</td>
														<td><span class="color-6">History</span> School
															History</td>
													</tr>
													<tr>
														<td>11.00 - 11.30 AM</td>
														<td><span class="color-2">Break</span> Lunch</td>
														<td><span class="color-3">Break</span> Lunch</td>
														<td><span class="color-4">Break</span> Lunch</td>
														<td><span class="color-5">Break</span> Lunch</td>
														<td><span class="color-6">Break</span> Lunch</td>
													</tr>
													<tr>
														<td>11.30 - 12.30 PM</td>
														<td><span class="color-2">English</span> Speaking
															English</td>
														<td><span class="color-3">Art</span> Art</td>
														<td><span class="color-4">History</span> School
															History</td>
														<td><span class="color-5">Geography</span> Making a
															Map</td>
														<td><span class="color-6">Math</span> Larning Numbers</td>
													</tr>
													<tr>
														<td>12.30 - 1.30 PM</td>
														<td><span class="color-2">Geography</span> Making a
															Map</td>
														<td><span class="color-3">English</span> Speaking
															English</td>
														<td><span class="color-4">Art</span> Art</td>
														<td><span class="color-5">Math</span> Larning Numbers</td>
														<td><span class="color-6">History</span> School
															History</td>
													</tr>
													<tr>
														<td>1.30 - 2.30  PM</td>
														<td><span class="color-2">History</span> School
															History</td>
														<td><span class="color-3">Math</span> Larning Numbers</td>
														<td><span class="color-4">Geography</span> Making a
															Map</td>
														<td><span class="color-5">English</span> Speaking
															English</td>
														<td><span class="color-6">Art</span> Art</td>
													</tr>
													<tr>
														<td>2.30 - 3.30 PM</td>
														<td><span class="color-2">Geography</span> Making a
															Map</td>
														<td><span class="color-3">English</span> Speaking
															English</td>
														<td><span class="color-4">Art</span> Art</td>
														<td><span class="color-5">Math</span> Larning Numbers</td>
														<td><span class="color-6">History</span> School
															History</td>
													</tr>
													<tr>
														<td>3.30 - 4.30 PM</td>
														<td><span class="color-2">Break</span> Lunch</td>
														<td><span class="color-3">Break</span> Lunch</td>
														<td><span class="color-4">Break</span> Lunch</td>
														<td><span class="color-5">Break</span> Lunch</td>
														<td><span class="color-6">Break</span> Lunch</td>
													</tr>
													<tr>
														<td>4.30 - 5.30 PM</td>
														<td><span class="color-2">English</span> Speaking
															English</td>
														<td><span class="color-3">Art</span> Art</td>
														<td><span class="color-4">History</span> School
															History</td>
														<td><span class="color-5">Geography</span> Making a
															Map</td>
														<td><span class="color-6">Math</span> Larning Numbers</td>
													</tr>
												</tbody>
											</table>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</section>
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
</body>
</html>

