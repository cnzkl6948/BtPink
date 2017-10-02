<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ include file="MainPage/MainHead.jsp"%>
<style>
.desc_notice {overflow:hidden;text-overflow:ellipsis;white-space:nowrap}
.teamImage .maskingContent{background-color: rgba(248, 248, 248, 0);}
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
							data-easing="Back.easeInOut" data-endspeed="300">双葉幼稚園にようこそ
							</div>

						<div class="tp-caption rs-caption-2 sft" data-hoffset="0"
							data-x="0" data-y="265" data-speed="1000" data-start="1500"
							data-easing="Power4.easeOut" data-endspeed="300"
							data-endeasing="Power1.easeIn" data-captionhidden="off">子供たちのための完璧な幼稚園</div>
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
							data-endspeed="300">夢と希望の幼稚園</div>

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
							data-endspeed="300">悪童たちの楽しい遊び場</div>

						<div class="tp-caption rs-caption-2 sft text-right"
							data-hoffset="0" data-x="0" data-y="265" data-x="right" data-speed="1000"
							data-start="1500" data-easing="Power4.easeOut"
							data-endspeed="300" data-endeasing="Power1.easeIn"
							data-captionhidden="off">存分に遊んで幼稚園</div>
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
						aria-hidden="true"></i> <span class="linkText">お知らせ</span> <i
						class="fa fa-chevron-down locateArrow" aria-hidden="true"></i>
					</a>
				</div>
				<div class="col-sm-4">
					<a href="#ourTeam" class="sectionLink bg-color-2" id="teamLink">
						<i class="fa fa-calendar-o linkIcon border-color-2"
						aria-hidden="true"></i> <span class="linkText">先生の紹介</span> <i
						class="fa fa-chevron-down locateArrow" aria-hidden="true"></i>
					</a>
				</div>
				<div class="col-sm-4">
					<a href="#ourCourses" class="sectionLink bg-color-1"
						id="coursesLink"> <i
						class="fa fa-file-text-o linkIcon border-color-1"
						aria-hidden="true"></i> <span class="linkText">コースの紹介</span> <i
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
				<span class="shape shape-left bg-color-4"></span> <span>うちの幼稚園は
					</span> <span class="shape shape-right bg-color-4"></span>
			</h2>
		</div>

		<div class="row">
			<div class="col-sm-4 col-xs-12">
				<div class="media featuresContent">
					<span class="media-left bg-color-1"> <i
						class="fa fa-graduation-cap bg-color-1" aria-hidden="true"></i>
					</span>
					<div class="media-body">
						<h3 class="media-heading color-1">素晴らしい先生</h3>
						<p>すべての先生が豊富な経歴を持っており、子供たちの前途を正しく引き出します。</p>
					</div>
				</div>
			</div>
			<div class="col-sm-4 col-xs-12">
				<div class="media featuresContent">
					<span class="media-left bg-color-2"> <i
						class="fa fa-leaf bg-color-2" aria-hidden="true"></i>
					</span>
					<div class="media-body">
						<h3 class="media-heading color-2">健康と安全</h3>
						<p>双葉幼稚園はゆっくり遊べる庭で子供たちの体力を育ててくれます。</p>
					</div>
				</div>
			</div>
			<div class="col-sm-4 col-xs-12">
				<div class="media featuresContent">
					<span class="media-left bg-color-3"> <i
						class="fa fa-car bg-color-3" aria-hidden="true"></i>
					</span>
					<div class="media-body">
						<h3 class="media-heading color-3">思いやりと尊重</h3>
						<p>友達と遊びながら、立派な人間関係を学ぶように指導します。</p>
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
				<span class="shape shape-left bg-color-4"></span> <span>お知らせ</span>
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
				<span class="shape shape-left bg-color-3"></span> <span>
先生を紹介します</span> <span class="shape shape-right bg-color-3"></span>
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
								<p>院長先生</p>
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
								<p>ばら組の担任の先生</p>
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
								<p>ひまわり半教師</p>
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
								<p>さくら組の担任の先生</p>
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
								<p>会計部</p>
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
								<p>幼稚園バスの補助の先生</p>
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
								<p>調理実装</p>
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
								<p>環境美化部長</p>
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
				<span class="shape shape-left bg-color-4"></span> <span>コースの紹介</span> <span class="shape shape-right bg-color-4"></span>
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
							<div class="color-1">午前クラス</div>
						</h3>
						<ul class="list-unstyled">
							<li><i class="fa fa-calendar-o" aria-hidden="true"></i>年齢 :
								 4 ~ 6歳 </li>
							<li><i class="fa fa-clock-o" aria-hidden="true"></i>9.00AM-12.30PM</li>
						</ul>
						<p>午前中の授業だけ進みます。</p>
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
							<div class="color-2">午後クラス</div>
						</h3>
						<ul class="list-unstyled">
							<li><i class="fa fa-calendar-o" aria-hidden="true"></i>年齢 :
								 4 ~ 6 歳</li>
							<li><i class="fa fa-clock-o" aria-hidden="true"></i>12.30PM-05.30PM</li>
						</ul>
						<p>午後の授業や野外学習活動を進めています。</p>
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
							<div class="color-3">全日クラス</div>
						</h3>
						<ul class="list-unstyled">
							<li><i class="fa fa-calendar-o" aria-hidden="true"></i>年齢 :
								 4 ~ 6 歳</li>
							<li><i class="fa fa-clock-o" aria-hidden="true"></i>9.00AM-05.30PM</li>
						</ul>
						<p>午前から午後の授業まで、すべての過程を学習します。</p>
					</div>
				</div>
			</div>
		</div>
	</div>
</section>

<%@ include file="MainPage/MainFooter.jsp"%>
</body>
</html>