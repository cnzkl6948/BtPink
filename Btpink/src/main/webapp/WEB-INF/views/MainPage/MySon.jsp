<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="../MainPage/MainHead.jsp"%>
<link rel="stylesheet"
	href="./resources/AdminLTE/bower_components/bootstrap-datepicker/dist/css/bootstrap-datepicker.min.css">
<link rel="stylesheet"
	href="./resources/AdminLTE/bower_components/bootstrap-daterangepicker/daterangepicker.css">

<%@include file="../MainPage/MainHeader.jsp"%>

<!-- WHITE SECTION -->
<section class="whiteSection full-width clearfix p-t-n">
	<div class="container col-sm-12 col-xs-12" style="margin-top: 10%;">
		<div class="row">
			<div class="col-sm-2 col-xs-12"></div>
			<div class="col-sm-10 col-xs-12">
				<div class="tabCommon tabLeft">
					<ul class="nav nav-tabs">
						<li class="active"><a data-toggle="tab" href="#leftHome">Kaleder</a></li>
						<li><a data-toggle="tab" href="#leftMenu1">Message</a></li>
					</ul>
					<div class="tab-content">
						<div id="leftHome" class="tab-pane fade in active">
							<div class="media ">
								<div class="media-body">
									<div class="col-sm-12 col-xs-12">
										<!-- /.col md-3 -->


										MAIN SECTION
										<section class="mainContent full-width clearfix">
											<div class="container">
												<div class="sectionTitle text-center">
													<h2>
														<span class="shape shape-left bg-color-4"></span> <span>글쓰기</span>
														<span class="shape shape-right bg-color-4"></span>
													</h2>
												</div>

												<h4 class="text-center">Write form</h4>
												<div class="space-50">&nbsp;</div>
												Start contact form 2
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
																				<option value="" disabled selected>choose
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
																				value="${User.name}">
																		</div>
																	</div>


																	<div class="col-sm-6 col-xs-12">
																		<div class="form-group">
																			    <i class="fa fa-book"></i>
																			<input type="text"
																				class="form-control border-color-3" name="dateRange"
																				id="dateRange" placeholder="Date input">
																		</div>
																	</div>


																	<div class="col-sm-6 col-xs-12">
																		<div class="form-group">
																			<i class="fa fa-phone" aria-hidden="true"></i>

																			<select id="attend"
																				class="form-control border-color-6" name="attend"
																				disabled="disabled">
																				<option value="" disabled selected>출결...</option>
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
												Ends contact form 2

											</div>
										</section>
									</div>
								</div>
							</div>
						</div>
						<div id="leftMenu1" class="tab-pane fade">
							<div class="media">
								<div class="media-body">
									<div class="col-sm-12 col-xs-12" id ="cal">
										<input type="button" onclick="javascript:calender()" value="클릭">
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</section>


<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<!-- <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script> -->
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
<script src="./resources/js/mySon.js"></script>
<script src="./resources/js/calender.js"></script>
<%-- <%@ include file="../MainPage/MainFooter.jsp"%> --%>
</body>
</html>