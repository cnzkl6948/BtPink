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


</head>

<body class="body-wrapper">

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
	<c:if test="${User!=null}">
		<p class="space-bottom"
			style="float: right; margin-right: 5%; margin-top: 3%;">
			<button type="button" class="btn btn-sm btn-primary "
				onclick="location.href='writeNotice'">글쓰기</button>
		</p>
	</c:if>
	<!-- MAIN SECTION -->
	<section class="mainContent full-width clearfix coursesSection">
		<div class="container">
			<div class="row col-sm-12 "  >
				<c:forEach var="board" items="${boardlist}">
					<div class="col-md-3 col-sm-6 col-xs-12 block">
						<div class="thumbnail thumbnailContent">

							<a href="readNotice?boardnum=${board.boardnum}"><img
								src="./resources/img/home/courses/course-${board.boardnum%4 + 1}.jpg"
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


							<div class="caption border-color-${board.boardnum%6 + 1} ">
								<h3>
									<a href="readNotice?boardnum=${board.boardnum}"
										class="color-${board.boardnum%6 + 1}">${board.title}</a>
								</h3>
								<ul class="list-unstyled">
									<li><i class="fa fa-clock-o" aria-hidden="true"></i>${board.inputdate}</li>
								</ul>
								<p >
									<c:choose>
										<c:when test="${fn:length(board.content) > 50}">
											<c:out value="${fn:substring(board.content,0,50)}" />....
           							</c:when>
										<c:otherwise>
											<c:out value="${board.content}" /><br>
											　
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
	<%@ include file="MainFooter.jsp"%>
</body>
</html>