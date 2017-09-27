<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ include file="MainPage/MainHead.jsp"%>
<style>
.desc_notice {overflow:hidden;text-overflow:ellipsis;white-space:nowrap}
</style>
<%@ include file="MainPage/MainHeader.jsp"%>
<!-- BANNER -->
<section class="bannercontainer bannercontainerV1">
	<div class="fullscreenbanner-container">
		<div class="fullscreenbanner">
			<ul>
				<li data-transition="fade" data-slotamount="3"
					data-masterspeed="700" data-title="Slide 1"><img
					src="./resources/img/kindergarten_pic/main_pc2.png" alt="slidebg1"
					data-bgfit="cover" data-bgposition="center center"
					data-bgrepeat="no-repeat">
					<div class="slider-caption container">
						<div class="tp-caption rs-caption-1 sft start" data-hoffset="0"
							data-x="0" data-y="200" data-speed="800" data-start="1000"
							data-easing="Back.easeInOut" data-endspeed="300">요괴유치원에
							어서오세요</div>

						<div class="tp-caption rs-caption-2 sft" data-hoffset="0"
							data-x="0" data-y="265" data-speed="1000" data-start="1500"
							data-easing="Power4.easeOut" data-endspeed="300"
							data-endeasing="Power1.easeIn" data-captionhidden="off">우리
							아이들을 위한 완벽한 유치원</div>
					</div>
				</li>
				<li data-transition="fade" data-slotamount="3"
					data-masterspeed="1000" data-title="Slide 2"><img
					
					src="./resources/img/kindergarten_pic/girl.png" alt="slidebg1"
					data-bgfit="cover" data-bgposition="center center"
					data-bgrepeat="no-repeat">
					<div class="slider-caption container">
						<div class="tp-caption rs-caption-1 sft start text-center"
							data-hoffset="0" data-x="center" data-y="200" data-speed="800"
							data-start="1000" data-easing="Back.easeInOut"
							data-endspeed="300">꿈과 희망의 유치원</div>

						<div class="tp-caption rs-caption-2 sft text-center"
							data-hoffset="0" data-x="center" data-y="265" data-speed="1000"
							data-start="1500" data-easing="Power4.easeOut"
							data-endspeed="300" data-endeasing="Power1.easeIn"
							data-captionhidden="off"></div>
					</div></li>
				<li data-transition="fade" data-slotamount="3"
					data-masterspeed="700" data-title="Slide 3"><img
					src="./resources/img/kindergarten_pic/picnic3.png" alt="slidebg1"
					data-bgfit="cover" data-bgposition="center center"
					data-bgrepeat="no-repeat">
					<div class="slider-caption container">
						<div class="tp-caption rs-caption-1 sft start text-right"
							data-x="0" data-hoffset="0" data-y="200" data-x="right" data-speed="800"
							data-start="1000" data-easing="Back.easeInOut"
							data-endspeed="300">악동들의 즐거운 배움터</div>

						<div class="tp-caption rs-caption-2 sft text-right"
							data-hoffset="0" data-x="0" data-y="265" data-x="right" data-speed="1000"
							data-start="1500" data-easing="Power4.easeOut"
							data-endspeed="300" data-endeasing="Power1.easeIn"
							data-captionhidden="off">마음 껏 뛰어노는 유치원</div>
					</div></li>
			</ul>
		</div>
	</div>
</section>

<!-- MAIN CONTENT -->
<section class="clearfix linkSection hidden-xs">
	<div class="sectionLinkArea hidden-xs scrolling">
		<div class="container">
			<div class="row">
				<div class="col-sm-4">
					<a href="#latestNews" class="sectionLink bg-color-4" id="newsLink">
						<i class="fa fa-files-o linkIcon border-color-4"
						aria-hidden="true"></i> <span class="linkText">공지사항</span> <i
						class="fa fa-chevron-down locateArrow" aria-hidden="true"></i>
					</a>
				</div>
				<div class="col-sm-4">
					<a href="#ourTeam" class="sectionLink bg-color-2" id="teamLink">
						<i class="fa fa-calendar-o linkIcon border-color-2"
						aria-hidden="true"></i> <span class="linkText">선생님 소개</span> <i
						class="fa fa-chevron-down locateArrow" aria-hidden="true"></i>
					</a>
				</div>
				<div class="col-sm-4">
					<a href="#ourCourses" class="sectionLink bg-color-1"
						id="coursesLink"> <i
						class="fa fa-file-text-o linkIcon border-color-1"
						aria-hidden="true"></i> <span class="linkText">교육 과정 소개</span> <i
						class="fa fa-chevron-down locateArrow" aria-hidden="true"></i>
					</a>
				</div>
			</div>
		</div>
	</div>
</section>

<!-- FEATURE SECTION -->
<section class="mainContent full-width clearfix featureSection">
	<div class="container">
		<div class="sectionTitle text-center">
			<h2>
				<span class="shape shape-left bg-color-4"></span> <span>우리
					유치원은</span> <span class="shape shape-right bg-color-4"></span>
			</h2>
		</div>

		<div class="row">
			<div class="col-sm-4 col-xs-12">
				<div class="media featuresContent">
					<span class="media-left bg-color-1"> <i
						class="fa fa-graduation-cap bg-color-1" aria-hidden="true"></i>
					</span>
					<div class="media-body">
						<h3 class="media-heading color-1">훌륭한 선생님</h3>
						<p>모든 선생님들이 풍부한 경력을 가지고 있어 아이들의 앞길을 바르게 이끌어줍니다.</p>
					</div>
				</div>
			</div>
			<div class="col-sm-4 col-xs-12">
				<div class="media featuresContent">
					<span class="media-left bg-color-2"> <i
						class="fa fa-leaf bg-color-2" aria-hidden="true"></i>
					</span>
					<div class="media-body">
						<h3 class="media-heading color-2">건강과 안전</h3>
						<p>우리 유치원은 마음 껏 뛰어놀 수 있는 마당에서 아이들의 체력을 키워줍니다.</p>
					</div>
				</div>
			</div>
			<div class="col-sm-4 col-xs-12">
				<div class="media featuresContent">
					<span class="media-left bg-color-3"> <i
						class="fa fa-car bg-color-3" aria-hidden="true"></i>
					</span>
					<div class="media-body">
						<h3 class="media-heading color-3">배려와 존중</h3>
						<p>친구들과 어울리며 올바른 인간관계를 가지도록 지도합니다.</p>
					</div>
				</div>
			</div>
		</div>
	</div>
</section>

<!-- PROMOTION SECTION-->
<section class="promotionWrapper"
	style="background-image: url(/www/resources/img/home/promotion-1.jpg);">
	<div class="container">
		<div class="promotionInfo"></div>
	</div>
</section>

<!-- WHITE SECTION -->
<section class="whiteSection full-width clearfix newsSection"
	id="latestNews">
	<div class="container">
		<div class="sectionTitle text-center">
			<h2>
				<span class="shape shape-left bg-color-4"></span> <span>공지사항</span>
				<span class="shape shape-right bg-color-4"></span>
			</h2>
		</div>

			<div class="row">
			<c:forEach var="board" items="${boardlist}">
				<div class="col-sm-4 col-xs-12 block">
					<div class="thumbnail thumbnailContent">
						<a href="readNotice?boardnum=${board.boardnum}"> <c:choose>
								<c:when test="${board.boardImage == null }">
									<img src="./resources/img/kindergarten_child/kids_0${board.boardnum%6 + 1}.jpg" alt="image"
										class="img-responsive" style="height: 300px;">
								</c:when>
								<c:otherwise>
									<img src="./resources/NoticeImage/${board.boardImage}.jpg"
										alt="image" class="img-responsive" style="height:300px;">
								</c:otherwise>
							</c:choose>
						</a>
						<div class="sticker bg-color-${board.boardnum%6 + 1}">new</div>
						<div class="caption border-color-${board.boardnum%6 + 1}">
							<h3>
								<a href="readNotice?boardnum=${board.boardnum}" class="color-${board.boardnum%6 + 1}">${board.title}</a>
							</h3>
							<ul class="list-inline">
								<li><a href="single-blog-left-sidebar.html"><i
										class="fa fa-user" aria-hidden="true"></i>${board.id}</a></li>
							</ul>
							<p class="desc_notice">${board.content}</p>
							<ul class="list-inline btn-yellow">
								<li><a href="listNotice" class="btn btn-link"><i
										class="fa fa-angle-double-right" aria-hidden="true"></i> Read
										More</a></li>
							</ul>
						</div>
					</div>
				</div>
			</c:forEach>
		</div>

		<div class="btnArea">
			<a href="listNotice" class="btn btn-primary">View more</a>
		</div>

	</div>
</section>

<!-- COLOR SECTION -->
<section class="colorSection full-width clearfix bg-color-5 teamSection"
	id="ourTeam">
	<div class="container">
		<div class="sectionTitle text-center alt">
			<h2>
				<span class="shape shape-left bg-color-3"></span> <span>우리
					선생님을 소개합니다</span> <span class="shape shape-right bg-color-3"></span>
			</h2>
		</div>

		<div class="row">
			<div class="col-xs-12">
				<div class="owl-carousel teamSlider">
					<div class="slide">
						<div class="teamContent">
							<div class="teamImage">
								<img src="./resources/img/teachers/teacher1.png" alt="img"
									class="img-circle">
								<div class="maskingContent">
								</div>
							</div>
							<div class="teamInfo">
								<h3>
									<a href="teachers">園長先生</a>
								</h3>
								<p>원장선생님</p>
							</div>
						</div>
					</div>
					<div class="slide">
						<div class="teamContent">
							<div class="teamImage">
								<img src="./resources/img/teachers/teacher2.png" alt="img"
									class="img-circle">
								<div class="maskingContent">
								</div>
							</div>
							<div class="teamInfo">
								<h3>
									<a href="teachers">よしなが先生</a>
								</h3>
								<p>장미반 선생님</p>
							</div>
						</div>
					</div>
					<div class="slide">
						<div class="teamContent">
							<div class="teamImage">
								<img src="./resources/img/teachers/teacher3.png" alt="img"
									class="img-circle">
								<div class="maskingContent">
								</div>
							</div>
							<div class="teamInfo">
								<h3>
									<a href="teachers">まつざか先生</a>
								</h3>
								<p>해바라기반 선생님</p>
							</div>
						</div>
					</div>
					<div class="slide">
						<div class="teamContent">
							<div class="teamImage">
								<img src="./resources/img/teachers/teacher4.png" alt="img"
									class="img-circle">
								<div class="maskingContent">
								</div>
							</div>
							<div class="teamInfo">
								<h3>
									<a href="teachers">上尾先生</a>
								</h3>
								<p>벚꽃반 선생님</p>
							</div>
						</div>
					</div>
					<div class="slide">
						<div class="teamContent">
							<div class="teamImage">
								<img src="./resources/img/teachers/kodomo1.png" alt="img"
									class="img-circle">
								<div class="maskingContent">
								</div>
							</div>
							<div class="teamInfo">
								<h3>
									<a href="teachers">風間くん</a>
								</h3>
								<p>회계부</p>
							</div>
						</div>
					</div>
					<div class="slide">
						<div class="teamContent">
							<div class="teamImage">
								<img src="./resources/img/teachers/kodomo2.png" alt="img"
									class="img-circle">
								<div class="maskingContent">
								</div>
							</div>
							<div class="teamInfo">
								<h3>
									<a href="teachers-details.html">ネネちゃん</a>
								</h3>
								<p>유치원버스 보조선생님</p>
							</div>
						</div>
					</div>
					<div class="slide">
						<div class="teamContent">
							<div class="teamImage">
								<img src="./resources/img/teachers/kodomo3.png" alt="img"
									class="img-circle">
								<div class="maskingContent">
								</div>
							</div>
							<div class="teamInfo">
								<h3>
									<a href="teachers">マサオくん</a>
								</h3>
								<p>조리실장</p>
							</div>
						</div>
					</div>
					<div class="slide">
						<div class="teamContent">
							<div class="teamImage">
								<img src="./resources/img/teachers/kodomo4.png" alt="img"
									class="img-circle">
								<div class="maskingContent">
								</div>
							</div>
							<div class="teamInfo">
								<h3>
									<a href="teachers">ボーちゃん</a>
								</h3>
								<p>환경미화 부장</p>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</section>
<!-- WHITE SECTION -->
<section class="whiteSection full-width clearfix coursesSection"
	id="ourCourses">
	<div class="container">
		<div class="sectionTitle text-center">
			<h2>
				<span class="shape shape-left bg-color-4"></span> <span>교육 과정
					소개</span> <span class="shape shape-right bg-color-4"></span>
			</h2>
		</div>

		<div class="row">
			<div class="col-sm-4 col-xs-12 block">
				<div class="thumbnail thumbnailContent">
					<a href="course-single"><img
						src="./resources/img/kindergarten_child/timeTable1.jpg" alt="image"
						class="img-responsive" style="height: 300px"></a>
					<div class="caption border-color-1">
						<h3>
							<div class="color-1">오전반</div>
						</h3>
						<ul class="list-unstyled">
							<li><i class="fa fa-calendar-o" aria-hidden="true"></i>나이 :
								만 4 ~ 6 세</li>
							<li><i class="fa fa-clock-o" aria-hidden="true"></i>9.00AM-12.30PM</li>
						</ul>
						<p>오전 수업만 진행합니다.</p>
					</div>
				</div>
			</div>
			<div class="col-sm-4 col-xs-12 block">
				<div class="thumbnail thumbnailContent">
					<a href="course-single"><img
						src="./resources/img/kindergarten_child/timeTable2.jpg" alt="image"
						class="img-responsive" style="height: 300px"></a>
					<div class="caption border-color-2">
						<h3>
							<div class="color-2">오후반</div>
						</h3>
						<ul class="list-unstyled">
							<li><i class="fa fa-calendar-o" aria-hidden="true"></i>나이 :
								만 4 ~ 6 세</li>
							<li><i class="fa fa-clock-o" aria-hidden="true"></i>12.30PM-05.30PM</li>
						</ul>
						<p>오후 수업 및 방화 후 학습활동을 진행합니다.</p>
					</div>
				</div>
			</div>
			<div class="col-sm-4 col-xs-12 block">
				<div class="thumbnail thumbnailContent">
					<a href="course-single"><img
						src="./resources/img/kindergarten_child/timeTable3.png" alt="image"
						class="img-responsive" style="height: 300px"></a>
					<div class="caption border-color-3">
						<h3>
							<div class="color-3">종일반</div>
						</h3>
						<ul class="list-unstyled">
							<li><i class="fa fa-calendar-o" aria-hidden="true"></i>나이 :
								만 4 ~ 6 세</li>
							<li><i class="fa fa-clock-o" aria-hidden="true"></i>9.00AM-05.30PM</li>
						</ul>
						<p>오전부터 방과후 수업까지 모든 과정을 학습합니다.</p>
					</div>
				</div>
			</div>
		</div>
	</div>
</section>

<%@ include file="MainPage/MainFooter.jsp"%>
</body>
</html>