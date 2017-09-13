<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<html lang="en">
<head>
<!-- SITE TITTLE -->
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Course Grid - KIDZ SCHOOL</title>


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

<!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
<!--[if lt IE 9]>
  <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
  <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
  <![endif]-->

</head>
<script type="text/javascript">
	function pagingFormSubmit(currentPage) {
		var form = document.getElementById('pagingForm');
		var page = document.getElementById('page');
		page.value = currentPage;
		form.submit();
	}
</script>
<body class="body-wrapper">


	<div class="main-wrapper">
		<!-- HEADER -->
		<%@ include file="MainHeader.jsp"%>
		<!-- PAGE TITLE SECTION-->
		<section class="pageTitleSection">
			<div class="container">
				<div class="pageTitleInfo">
					<h2>All Courses</h2>
					<ol class="breadcrumb">
						<li><a href="index.html">Home</a></li>
						<li class="active">Notices</li>
					</ol>
				</div>
			</div>
		</section>

		<!-- MAIN SECTION -->
		<section class="mainContent full-width clearfix coursesSection">
			<div class="container">
				<div class="row">
					<c:forEach var="board" items="${boardlist}">
						<div class="col-md-3 col-sm-6 col-xs-12 block">
							<div class="thumbnail thumbnailContent">

								<a href="readNotice?boardnum=${board.boardnum}"><img
									src="./resources/img/home/courses/course-${board.boardnum%6 + 1}.jpg"
									alt="image" class="img-responsive"></a>
								<c:if test="${latestnum1==board.boardnum}">
									<div class="sticker bg-color-${board.boardnum%6 + 1}">new</div>
								</c:if>
								<c:if test="${latestnum2==board.boardnum}">
									<div class="sticker bg-color-${board.boardnum%6 + 1}">new</div>
								</c:if>
								<c:if test="${latestnum3==board.boardnum}">
									<div class="sticker bg-color-${board.boardnum%6 + 1}">new</div>
								</c:if>


								<div class="caption border-color-${board.boardnum%6 + 1}">
									<h3>
										<a href="readNotice?boardnum=${board.boardnum}"
											class="color-${board.boardnum%6 + 1}">${board.title}</a>
									</h3>
									<ul class="list-unstyled">
										<li><i class="fa fa-clock-o" aria-hidden="true"></i>${board.inputdate}</li>
									</ul>
									<p>
										<c:choose>
											<c:when test="${fn:length(board.content) > 50}">
												<c:out value="${fn:substring(board.content,0,49)}" />....
           				</c:when>
											<c:otherwise>
												<c:out value="${board.content}" />
											</c:otherwise>
										</c:choose>
									</p>
									<ul class="list-inline btn-yellow">
										<li><a href="readNotice?boardnum=${board.boardnum}"
											class="btn btn-link"><i class="fa fa-angle-double-right"
												aria-hidden="true"></i> More</a></li>
									</ul>
								</div>
							</div>
						</div>

					</c:forEach>
				</div>

				<!-- 페이지 이동 부분 -->
				<div id="navigator" class="pagerArea text-center">
					<ul class="pager">
						<li class="prev"><a
							href="javascript:pagingFormSubmit(${navi.currentPage - navi.pagePerGroup})">Prev<i
								class="fa fa-arrow-left" aria-hidden="true"></i></a></li>

						<c:forEach var="counter" begin="${navi.startPageGroup}"
							end="${navi.endPageGroup}">
							<c:if test="${counter == navi.currentPage}">
								<b>
							</c:if>
							<li><a href="javascript:pagingFormSubmit(${counter})">${counter}</a></li>
							<c:if test="${counter == navi.currentPage}">
								</b>
							</c:if>
						</c:forEach>

						<li class="next"><a
							href="javascript:pagingFormSubmit(${navi.currentPage + navi.pagePerGroup})">Next<i
								class="fa fa-arrow-right" aria-hidden="true"></i></a></li>
					</ul>
				</div>


				<!-- list 재귀 -->
				<form id="pagingForm" method="get" action="listNotice">
					<input type="hidden" name="page" id="page" />
				</form>
				<!-- /list 재귀-->
				<!-- /페이지 이동 끝 -->
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
				style="background-image: url(/www/resources/img/footer/footer-bg-1.png);">
				<div class="container">
					<div class="row">
						<div class="col-sm-3 col-xs-12">
							<div class="footerTitle">
								<a href="index.html"><img src="./resources/img/logo-footer.png"></a>
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
												src="./resources/img/footer/footer-img-1.png" alt="Image">
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
												src="./resources/img/footer/footer-img-2.png" alt="Image">
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
												src="./resources/img/footer/footer-img-3.png" alt="Image">
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

