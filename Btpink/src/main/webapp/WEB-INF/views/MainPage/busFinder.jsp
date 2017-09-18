<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="MainHead.jsp"%>
<%@ include file="MainHeader.jsp"%>

<!-- PAGE TITLE SECTION-->
<section class="pageTitleSection">
	<div class="container">
		<div class="pageTitleInfo">
			<h2>Bus Finder</h2>
			<ol class="breadcrumb">
				<li><a href="index.html">Home</a></li>
				<li class="active">Contact Us</li>
			</ol>
		</div>
	</div>
</section>



<!-- MAIN SECTION -->
<section class="mainContent full-width clearfix conactSection">
	<div class="container">


		<div class="sectionTitle text-center">
			<h2>
				<span class="shape shape-left bg-color-4"></span> <span>Bus
					Current Location</span> <span class="shape shape-right bg-color-4"></span>
			</h2>
		</div>



		<div class="row">
			<div class="col-sm-4 col-xs-12">
				<div class="media addressContent">
					<span class="media-left bg-color-1" href="#"> <i
						class="fa fa-map-marker" aria-hidden="true"></i>
					</span>
					<div class="media-body">
						<h3 class="media-heading">유치원 위치:</h3>
						<p>서울특별시 강남구 영동대로 513 COEX Office Tel:1566-5114</p>
					</div>
				</div>
			</div>
			<div class="col-sm-4 col-xs-12">
				<div class="media addressContent">
					<span class="media-left bg-color-2" href="#"> <i
						class="fa fa-phone" aria-hidden="true"></i>
					</span>
					<div class="media-body">
						<h3 class="media-heading">기사님 전화번호:</h3>
						<p>954 124 2542 Or 546 235 4478</p>
					</div>
				</div>
			</div>
			<div class="col-sm-4 col-xs-12">
				<div class="media addressContent">
					<span class="media-left bg-color-3" href="writeDemand"> <i
						class="fa fa-envelope-o" aria-hidden="true"></i>
					</span>
					<div class="media-body">
						<h3 class="media-heading">출석변동사항:</h3>
						<p>
							<a href="writeDemand">writeDemand</a>
						</p>
					</div>
				</div>
			</div>
		</div>

		<!-- 
<div class="accordionCommon" id="accordionTwo">
							<div class="panel-group" id="accordionSecond">
								<div class="panel panel-default">
 -->

		<div class="row">
			<div class="col-sm-6 col-xs-12">

				<div id="maps" style="width: 100%; height: 500px;"></div>

			</div>

			<div class="col-sm-6 col-xs-12">
				<div class="accordionCommon" id="accordionTwo">
					<div class="panel-group" id="accordionSecond">
						<div class="panel panel-default">
							<a class="panel-heading accordion-toggle bg-color-1"
								data-toggle="collapse" data-parent="#accordionFirst"
								href="#collapse-aa"> <span>유치원차를 놓쳤을때 어떻게 하면 되나요?</span> <span
								class="iconBlock"><i class="fa fa-chevron-down"></i></span>
							</a>
							<div id="collapse-aa" class="panel-collapse collapse in">
								<div class="panel-body">
									<p>Contrary to popular belief, Lorem Ipsum is not simply
										random text. It has roots in a piece of classical Latin
										literature from 45 BC, making it over 2000 years old. Richard
										McClintock, a Latin professor at Hampden-Sydney College in
										Virginia, looked up one of the more obscure Latin words,
										consectetur, from a Lorem Ipsum passage, and going through the
										cites of the word in classical literature, discovered the
										undoubtable source.</p>
									<p>There are many variations of passages of Lorem Ipsum
										available, but the majority have suffered alteration in some
										form, by injected humour, or randomised words which don't look
										even slightly believable. If you are going to use a passage of
										Lorem</p>
								</div>
							</div>
						</div>
						<div class="panel panel-default">
							<a class="panel-heading accordion-toggle bg-color-2"
								data-toggle="collapse" data-parent="#accordionFirst"
								href="#collapse-bb"> <span>How do I list multiple
									rooms?</span> <span class="iconBlock"><i
									class="fa fa-chevron-up"></i></span>
							</a>
							<div id="collapse-bb" class="panel-collapse collapse">
								<div class="panel-body">
									<p>Contrary to popular belief, Lorem Ipsum is not simply
										random text. It has roots in a piece of classical Latin
										literature from 45 BC, making it over 2000 years old. Richard
										McClintock, a Latin professor at Hampden-Sydney College in
										Virginia, looked up one of the more obscure Latin words,
										consectetur, from a Lorem Ipsum passage, and going through the
										cites of the word in classical literature, discovered the
										undoubtable source.</p>
									<p>There are many variations of passages of Lorem Ipsum
										available, but the majority have suffered alteration in some
										form, by injected humour, or randomised words which don't look
										even slightly believable. If you are going to use a passage of
										Lorem</p>
								</div>
							</div>
						</div>
						<div class="panel panel-default">
							<a class="panel-heading accordion-toggle bg-color-3"
								data-toggle="collapse" data-parent="#accordionFirst"
								href="#collapse-cc"> <span>How do I list multiple
									rooms?</span> <span class="iconBlock"><i
									class="fa fa-chevron-up"></i></span>
							</a>
							<div id="collapse-cc" class="panel-collapse collapse">
								<div class="panel-body">
									<p>Contrary to popular belief, Lorem Ipsum is not simply
										random text. It has roots in a piece of classical Latin
										literature from 45 BC, making it over 2000 years old. Richard
										McClintock, a Latin professor at Hampden-Sydney College in
										Virginia, looked up one of the more obscure Latin words,
										consectetur, from a Lorem Ipsum passage, and going through the
										cites of the word in classical literature, discovered the
										undoubtable source.</p>
									<p>There are many variations of passages of Lorem Ipsum
										available, but the majority have suffered alteration in some
										form, by injected humour, or randomised words which don't look
										even slightly believable. If you are going to use a passage of
										Lorem</p>
								</div>
							</div>
						</div>
						<div class="panel panel-default">
							<a class="panel-heading accordion-toggle bg-color-4"
								data-toggle="collapse" data-parent="#accordionFirst"
								href="#collapse-dd"> <span>How do I list multiple
									rooms?</span> <span class="iconBlock"><i
									class="fa fa-chevron-up"></i></span>
							</a>
							<div id="collapse-dd" class="panel-collapse collapse">
								<div class="panel-body">
									<p>Contrary to popular belief, Lorem Ipsum is not simply
										random text. It has roots in a piece of classical Latin
										literature from 45 BC, making it over 2000 years old. Richard
										McClintock, a Latin professor at Hampden-Sydney College in
										Virginia, looked up one of the more obscure Latin words,
										consectetur, from a Lorem Ipsum passage, and going through the
										cites of the word in classical literature, discovered the
										undoubtable source.</p>
									<p>There are many variations of passages of Lorem Ipsum
										available, but the majority have suffered alteration in some
										form, by injected humour, or randomised words which don't look
										even slightly believable. If you are going to use a passage of
										Lorem</p>
								</div>
							</div>
						</div>
						<div class="panel panel-default">
							<a class="panel-heading accordion-toggle bg-color-5"
								data-toggle="collapse" data-parent="#accordionFirst"
								href="#collapse-ee"> <span>How do I list multiple
									rooms?</span> <span class="iconBlock"><i
									class="fa fa-chevron-up"></i></span>
							</a>
							<div id="collapse-ee" class="panel-collapse collapse">
								<div class="panel-body">
									<p>Contrary to popular belief, Lorem Ipsum is not simply
										random text. It has roots in a piece of classical Latin
										literature from 45 BC, making it over 2000 years old. Richard
										McClintock, a Latin professor at Hampden-Sydney College in
										Virginia, looked up one of the more obscure Latin words,
										consectetur, from a Lorem Ipsum passage, and going through the
										cites of the word in classical literature, discovered the
										undoubtable source.</p>
									<p>There are many variations of passages of Lorem Ipsum
										available, but the majority have suffered alteration in some
										form, by injected humour, or randomised words which don't look
										even slightly believable. If you are going to use a passage of
										Lorem</p>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
</section>
</div>
<%@ include file="MainFooter.jsp"%>
<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=0612d5a0dcb8c7608772061cd533bfa6"></script>
<script>
var lat = ${lat};  // 위도
var lon = ${lon}; // 경도
</script>
<script src="./resources/js/BusMap.js"></script>

</body>
</html>

