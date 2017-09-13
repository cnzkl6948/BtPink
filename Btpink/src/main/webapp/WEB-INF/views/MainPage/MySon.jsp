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
<body class="sidebar-mini skin-green-light"
	style="height: auto; min-height: 100%;">
	<%@ include file="MainHeader.jsp"%>

	<!-- Main content -->
	<div  style="height: auto; min-height: 90%;">
		<div style="margin-top: 10%" >
		<section class="content">
		<div class="col-xs-12">
			<div class="tabCommon tabLeft">
				<ul class="nav nav-tabs">
					<li class="active"><a data-toggle="tab" href="#leftHome"
						aria-expanded="true">View All</a></li>
					<li class=""><a data-toggle="tab" href="#leftMenu1"
						aria-expanded="false">Charity</a></li>
					<li class=""><a data-toggle="tab" href="#leftMenu2"
						aria-expanded="false">nature</a></li>
					<li><a data-toggle="tab" href="#leftMenu3">Children</a></li>
				</ul>
				<div class="tab-content">
					<div id="leftHome" class="tab-pane fade active in">
						<div class="media">
							<div style="margin-left:7%;width:80%; ">
								<div class="row">
									<!-- /.col -->
									<div>
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
														<div>
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
																										<td
																											class="fc-day fc-widget-content fc-fri fc-past"
																											data-date="2017-09-01"></td>
																										<td
																											class="fc-day fc-widget-content fc-sat fc-past"
																											data-date="2017-09-02"></td>
																									</tr>
																								</tbody>
																							</table>
																						</div>
																						<div class="fc-content-skeleton">
																							<table>
																								<thead>
																									<tr>
																										<td
																											class="fc-day-top fc-sun fc-other-month fc-past"
																											data-date="2017-08-27"><span
																											class="fc-day-number">27</span></td>
																										<td
																											class="fc-day-top fc-mon fc-other-month fc-past"
																											data-date="2017-08-28"><span
																											class="fc-day-number">28</span></td>
																										<td
																											class="fc-day-top fc-tue fc-other-month fc-past"
																											data-date="2017-08-29"><span
																											class="fc-day-number">29</span></td>
																										<td
																											class="fc-day-top fc-wed fc-other-month fc-past"
																											data-date="2017-08-30"><span
																											class="fc-day-number">30</span></td>
																										<td
																											class="fc-day-top fc-thu fc-other-month fc-past"
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
																										<td
																											class="fc-day fc-widget-content fc-sun fc-past"
																											data-date="2017-09-03"></td>
																										<td
																											class="fc-day fc-widget-content fc-mon fc-past"
																											data-date="2017-09-04"></td>
																										<td
																											class="fc-day fc-widget-content fc-tue fc-past"
																											data-date="2017-09-05"></td>
																										<td
																											class="fc-day fc-widget-content fc-wed fc-past"
																											data-date="2017-09-06"></td>
																										<td
																											class="fc-day fc-widget-content fc-thu fc-past"
																											data-date="2017-09-07"></td>
																										<td
																											class="fc-day fc-widget-content fc-fri fc-past"
																											data-date="2017-09-08"></td>
																										<td
																											class="fc-day fc-widget-content fc-sat fc-past"
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
																					<div class="fc-row fc-week fc-widget-content"
																						style="">
																						<div class="fc-bg">
																							<table>
																								<tbody>
																									<tr>
																										<td
																											class="fc-day fc-widget-content fc-sun fc-past"
																											data-date="2017-09-10"></td>
																										<td
																											class="fc-day fc-widget-content fc-mon fc-past"
																											data-date="2017-09-11"></td>
																										<td
																											class="fc-day fc-widget-content fc-tue fc-past"
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
							</div>
						</div>
					</div>
					<div id="leftMenu1" class="tab-pane fade">
						<div class="media">
							<a class="media-left" href="#"> <img
								class="media-object img-rounded" src="img/home/about-school.png"
								alt="Image">
							</a>
							<div class="media-body">
								<h3 class="media-heading">Wellcome to kidz school</h3>
								<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit,
									sed do eiusmod tempor incididunt ut labore et dolore magna
									aliqua. Ut enim ad minim veniam, quis nostrud exercitation
									ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis
									aute irure dolor in repre henderit in voluptate.</p>
								<p>Excepteur sint occaecat cupidatat non proident, sunt in
									culpa qui officia deserunt mollit anim id est laborum. Sed ut
									perspiciatis unde omnis iste natus error sit voluptatem accu
									santium doloremque laudantium.</p>
								<a href="#" class="btn btn-primary">read more</a>
							</div>
						</div>
					</div>
					<div id="leftMenu2" class="tab-pane fade">
						<div class="media">
							<a class="media-left" href="#"> <img
								class="media-object img-rounded" src="img/home/about-school.png"
								alt="Image">
							</a>
							<div class="media-body">
								<h3 class="media-heading">Wellcome to kidz school</h3>
								<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit,
									sed do eiusmod tempor incididunt ut labore et dolore magna
									aliqua. Ut enim ad minim veniam, quis nostrud exercitation
									ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis
									aute irure dolor in repre henderit in voluptate.</p>
								<p>Excepteur sint occaecat cupidatat non proident, sunt in
									culpa qui officia deserunt mollit anim id est laborum. Sed ut
									perspiciatis unde omnis iste natus error sit voluptatem accu
									santium doloremque laudantium.</p>
								<a href="#" class="btn btn-primary">read more</a>
							</div>
						</div>
					</div>
					<div id="leftMenu3" class="tab-pane fade">
						<div class="media">
							<a class="media-left" href="#"> <img
								class="media-object img-rounded" src="img/home/about-school.png"
								alt="Image">
							</a>
							<div class="media-body">
								<h3 class="media-heading">Wellcome to kidz school</h3>
								<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit,
									sed do eiusmod tempor incididunt ut labore et dolore magna
									aliqua. Ut enim ad minim veniam, quis nostrud exercitation
									ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis
									aute irure dolor in repre henderit in voluptate.</p>
								<p>Excepteur sint occaecat cupidatat non proident, sunt in
									culpa qui officia deserunt mollit anim id est laborum. Sed ut
									perspiciatis unde omnis iste natus error sit voluptatem accu
									santium doloremque laudantium.</p>
								<a href="#" class="btn btn-primary">read more</a>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!-- /.row --> </section>
		<!-- /.content -->
		</div>
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