<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@include file="MainHead.jsp"%>
<%@include file="MainHeader.jsp"%>
<body class="body-wrapper">

	<!-- HEADER -->
	<!-- PAGE TITLE SECTION-->
	<section class="pageTitleSection">
		<div class="container">
			<div class="pageTitleInfo">
				<h2>お知らせ</h2>
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
							<a href="readNotice?boardnum=${board.boardnum}"> <c:choose>
									<c:when test="${board.boardImage == null }">
										<img 
											src="./resources/img/kindergarten_child/kids_0${board.boardnum%6 + 1}.jpg"
											alt="image" class="img-responsive" style="height:250px;">
									</c:when>
									<c:otherwise>
										<img src="./resources/NoticeImage/${board.boardImage}.jpg"
											alt="image" class="img-responsive" style="height:250px;">
									</c:otherwise>
								</c:choose>
							</a> 
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
								<p>
									<c:choose>
										<c:when test="${fn:length(board.content) > 10}">
											<c:out value="${fn:substring(board.content,0,10)}" />....
           							</c:when>
										<c:otherwise>
											<c:out value="${board.content}" />
											<br>

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
			<c:if test="${User!=null and User.type != 'p'}">
			<div class="clearfix">
				<button type="button" class="btn btn-primary pull-right" onclick="location.href='writeNotice'">ライト</button>
			</div>
			</c:if>

			<!-- 페이지 이동 부분 -->
			<div id="navigator" class="pagerArea text-center">
				<ul class="pager" style="margin:30px auto 20px">
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