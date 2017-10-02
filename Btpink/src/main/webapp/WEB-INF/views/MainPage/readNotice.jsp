<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<%@include file="MainHead.jsp"%>
<%@include file="MainHeader.jsp"%>

<!-- PAGE TITLE SECTION-->
<section class="pageTitleSection">
	<div class="container">
		<div class="pageTitleInfo">
			<h2>상세 공지 사항</h2>
		</div>
	</div>
</section>
<!-- MAIN SECTION -->
<section class="mainContent full-width clearfix">
	<div class="container">
		<div class="row">
			<div class="col-xs-9 col-lg-offset-2 block">
				<div class="thumbnail thumbnailContent">
						<a> <c:choose>
									<c:when test="${board.boardImage == null }">
										<img 
											src="./resources/img/kindergarten_child/kids_0${board.boardnum%6 + 1}.jpg"
											alt="image" class="img-responsive"  width="500px">
									</c:when>
									<c:otherwise>
										<img src="./resources/NoticeImage/${board.boardImage}.jpg"
											alt="image" class="img-responsive" width="500px">
									</c:otherwise>
								</c:choose>
							</a> 	
					<div class="sticker-round bg-color-${board.boardnum%6 + 1}">
						<fmt:parseDate value="${board.inputdate}" var="dateFmt"
							pattern="yyyy-MM-dd HH:mm:ss" />
						<fmt:formatDate value="${dateFmt}" type="date" pattern="MMMMMM" />
						<br>
						<fmt:parseDate value="${board.inputdate}" var="dateFmt"
							pattern="yyyy-MM-dd HH:mm:ss" />
						<fmt:formatDate value="${dateFmt}" type="date" pattern="dd" />
					</div>
					<div
						class="caption border-color-${board.boardnum%4 + 1} singleBlog">
						<h3 class="color-${(board.boardnum+1)%4 + 1}">${board.title}</h3>
						<ul class="list-inline blogInfo">
							<li><i class="fa fa-user" aria-hidden="true"></i>${board.name}</li>
							<li><i class="fa fa-comments-o" aria-hidden="true"></i>${replyCount}
								Comments</li>
						</ul>
						<p>${board.content}</p>

						<ul class="list-inline socailLink">
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

						<!-- 본인 글인 경우에만 보이기 -->
						<c:if test="${User.id == board.id or User.id=='admin'}">
							<br>

							<!-- 현재글 수정하기-->
							<button type="button" class="btn btn-xl btn-success"
								onclick="location.href='editNotice?boardnum=${board.boardnum}'">edit</button>
					
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					<!-- 현재글 삭제하기-->
							<button type="button" class="btn btn-xl btn-primary "
								onclick="location.href='javascript:deleteCheck(${board.boardnum})'">delete</button>
						</c:if>
					</div>
				</div>


				<!-- 리플 목록 출력 시작 -->
				<div class="blogComments">
					<h3>${replyCount}Comments</h3>
					<ul class="media-list commentsList">
						<c:forEach var="reply" items="${replylist}">
							<li class="media">
								<div class="media-left">
									<img
										src="./resources/img/teachers/kodomo${reply.replynum%4 + 1}.png"
										alt="image" class="img-circle">
								</div>
								<div class="media-body">
									<h4 class="media-heading">${reply.name}</h4>
									<p>${reply.inputdate}</p>
									<p>${reply.text}</p>
									<c:if test="${User.id == reply.id}">
										<a
											href="javascript:replyEditForm(${reply.replynum}, ${reply.boardnum}, '${reply.text}')"
											class="btn btn-primary"><i class="fa fa-reply-all"
											aria-hidden="true"></i>Edit</a>
									</c:if>
									<c:if test="${User.id == reply.id}">
										<a
											href="javascript:replyDelete(${reply.replynum}, ${reply.boardnum })"
											class="btn btn-primary"><i class="fa fa-reply-all"
											aria-hidden="true"></i>Delete</a>
									</c:if>

									<div id="div${reply.replynum}"></div>
								</div>
							</li>
						</c:forEach>
					</ul>
				</div>

				<!-- /리플 목록 출력 끝 -->
				<c:if test="${User !=null}">
					<!-- 리플 작성 폼 시작 -->
					<div class="blogComments">
						<h3>Leave A Reply</h3>
						<div class="homeContactContent">

							<form id="replyform" action="replyWrite" method="post"
								onSubmit="return replyFormCheck();" role="form">
								<div class="row">
									<input type="hidden" name="boardnum" value="${board.boardnum}" />
									<div class="col-sm-4 col-xs-12">
										<div class="form-group">
											<i class="fa fa-user"></i> <input type="text"
												class="form-control border-color-6" readonly="readonly"
												value="${User.name}">
										</div>
									</div>

									<div class="col-xs-12">
										<div class="form-group">
											<i class="fa fa-comments" aria-hidden="true"></i>
											<textarea class="form-control border-color-5"
												placeholder="Write message" name="text" id="retext"></textarea>
										</div>
									</div>
									<div class="col-xs-12">
										<div class="formBtnArea pull-left">
											<button type="submit" class="btn btn-warning btn-pill">Submit</button>
										</div>
									</div>
								</div>
							</form>
							<!-- /리플 작성 폼 끝 -->
						</div>
					</div>
				</c:if>
			</div>
		</div>
	</div>
</section>

<%@ include file="MainFooter.jsp"%>
</body>
</html>