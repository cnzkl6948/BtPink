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
		<%@ include file="MainHeader.jsp"%>
		<!-- WHITE SECTION -->

		<div class="col-md-9 col-sm-12 col-xs-12 block pull-right">
			<div class="col-md-9 col-sm-12 col-xs-12 block pull-left">
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
										<div class="media-body">
												<table class="table table-curved text-center">
													<thead>
														<tr>
															<th class="bg-color-1">Time <i
																class="fa fa-arrow-down" aria-hidden="true"></i></th>
															<th class="bg-color-2">Monday</th>
															<th class=" bg-color-3">Tuesday</th>
															<th class="bg-color-4">Wednesday</th>
															<th class=" bg-color-5">Thursday</th>
															<th class=" bg-color-6">Friday</th>
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
								<div id="leftMenu1" class="tab-pane fade">
									<div class="media">
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
<%@ include file="MainFooter.jsp"%>