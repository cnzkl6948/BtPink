<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

</head>

<body>
	<!-- HEADER -->
	<header id="pageTop" class="header-wrapper">
		<!-- COLOR BAR -->
		<div class="container-fluid color-bar top-fixed clearfix">
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

		<!-- TOP INFO BAR -->
		<div class="top-info-bar bg-color-7 hidden-xs">
			<div class="container">
				<div class="row">
					<div class="col-sm-9">
						<ul class="list-inline topList">
							<li><i class="fa fa-envelope bg-color-1" aria-hidden="true"></i>
								info@yourdomain.com</li>
							<li><i class="fa fa-phone bg-color-2" aria-hidden="true"></i>
								02-6000-7138</li>
							<li><i class="fa fa-clock-o bg-color-6" aria-hidden="true"></i>
								Open: 9am - 6pm</li>
						</ul>
					</div>
					<div class="col-sm-3">
						<ul class="list-inline functionList pull-right" style="width:auto">
							<c:choose>
								<c:when test="${User != null }">
									<li>
										<i i class="fa fa-globe bg-color-4" aria-hidden="true"></i><a href="logout"><span>로그아웃</span></a>
									</li>
								</c:when>
								<c:otherwise>
									<li>
										<i class="fa fa-unlock-alt bg-color-5" aria-hidden="true"></i> <a href='#loginModal' data-toggle="modal">로그인</a>
									</li>
									<li style="margin-left:20px">
										<i class="fa fa-sign-in bg-color-4" aria-hidden="true" style="margin-right:0px"></i> <a href='javascript:className()'>회원가입</a>
									</li>
								</c:otherwise>
							</c:choose>
						</ul>
					</div>
				</div>
			</div>
		</div>

		<!-- NAVBAR -->
		<nav id="menuBar" class="navbar navbar-default lightHeader"
			role="navigation">
			<div class="container">
				<!-- Brand and toggle get grouped for better mobile display -->
				<div class="navbar-header">
					<button type="button" class="navbar-toggle" data-toggle="collapse"
						data-target=".navbar-ex1-collapse">
						<span class="sr-only">Toggle navigation</span> <span
							class="icon-bar"></span> <span class="icon-bar"></span> <span
							class="icon-bar"></span>
					</button>
					<a class="navbar-brand" href="/www"><img src="./resources/img/logo/mainLogo2.png" alt="떡잎 유치원" style="width: 200px; height: auto;"></a>
<!-- 					<a class="navbar-brand" href="/www"><img src="./resources/img/main-logo.png" alt="떡잎 유치원"></a> -->
				</div>

				<!-- Collect the nav links, forms, and other content for toggling -->
				<div class="collapse navbar-collapse navbar-ex1-collapse">
					<ul class="nav navbar-nav navbar-right">
						<li class="dropdown singleDrop color-3 "><a href="teachers"
							class="dropdown-toggle"><i class="fa fa-list-ul bg-color-3"
								aria-hidden="true"></i> <span>先生の紹介</span></a>
						<li class=" dropdown megaDropMenu color-2 "><a
							href="course-single" class="dropdown-toggle"> <i
								class="fa fa-file-text-o bg-color-2" aria-hidden="true"></i> <span>
									コースの紹介</span>
						</a></li>
						<li class="dropdown singleDrop color-4 "><a href="listNotice"
							class="dropdown-toggle"> <i
								class="fa fa-pencil-square-o bg-color-4" aria-hidden="true"></i>
								<span>お知らせ</span>
						</a></li>

						<c:if test="${User.type == 'p' or User.type == 'admin' }">
							<li class="dropdown singleDrop color-5  "><a href="getBus"
								class="dropdown-toggle"> <i
									class="fa fa-calendar bg-color-5" aria-hidden="true"></i> <span>バス
										の位置</span>
							</a></li>
						</c:if>
						<c:if test="${User.type == 'p' }">
							<li class="dropdown singleDrop color-1   active "><a href="MySon" class="dropdown-toggle"> <i class="fa fa-home bg-color-1" aria-hidden="true"></i> <span>家の子の情報</span>
							</a></li>
						</c:if>	
						<c:if test="${User.type == 't' or User.type == 'admin'}">
							<li class="dropdown singleDrop color-6 "><a href="adminPage"
								class="dropdown-toggle"> <i class="fa fa-gg bg-color-6"
									aria-hidden="true"></i> <span>先生のページ</span></a></li>
						</c:if>
					</ul>
				</div>
			</div>
		</nav>
	</header>
	<!-- CREATE ACCOUNT MODAL -->
	<div class="modal fade customModal" id="createAccount" tabindex="-1"
		role="dialog" onkeypress=" if(event.keyCode==13) {join();}">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="panel panel-default formPanel">
					<div class="panel-heading bg-color-1 border-color-1">
						<h3 class="panel-title">会員登録</h3>
					</div>
					<div class="panel-body">
						<form action="join" method="POST" id="createSubmit" role="form">
							<div class="form-group formField" style="margin-top: -3%">
								<div class="tabCommon" style="margin-bottom: 15px;">
									<ul class="nav nav-tabs">
										<li class="active"><a data-toggle="tab"
											href="#create_parent" aria-expanded="true">親</a></li>
										<li class=""><a data-toggle="tab" href="#create_teacher"
											id="SelectTeacher" aria-expanded="false">先生</a></li>
									</ul>
									<div class="tab-content">
										<!--학부모 -->
										<div id="create_parent" class="tab-pane fade in active">


											<div class="form-group formField" id="stduentNameCheck">
												<input type="text" class="form-control" id="studentName"
													placeholder="StudentName">
											</div>
											<!-- 학생목록 / 반 목록 불러오는 영역 -->
											<div id="SelectStudent">
												<div class="col-sm-8 col-xs-12">
												</div>
											</div>
											<div class="col-sm-4 col-xs-12" style="margin-top: 3%;"
												id="studentSelectButton">
												<button type="button" class="btn btn-xs btn-primary"
													onclick="javascript:studentCheck()">学生確認</button>
											</div> 
										</div>
										<!-- 선생님  -->
										<div id="create_teacher" class="tab-pane fade "></div>

									</div>
								</div>
							</div>

							<!--공통-->
							<div class="form-group formField">
								<div class="footerInfo ">
									<div class="input-group col-sm-12 col-xs-12 ">
										<input type="text" class="form-control" id="id" name="id"
											placeholder="UserId(중복을 확인해 주세요)" 
											aria-describedby="basic-addon21">
										<button type="button" class="input-group-addon"
											onclick="javascript:idOverlap()" id="basic-addon21">
											<i class="fa fa-check" aria-hidden="true"></i>
										</button>
									</div>
								</div>
							</div>
							<div class="form-group formField">
								<input type="hidden" id="idCheck" value="false">
								<div style="text-align: center;"></div>
							</div>
							<div class="form-group formField">
								<input type="text" class="form-control" id="name" name="name"
									placeholder="이름">
							</div>

							<div class="form-group formField">
								<input type="password" class="form-control" id="pw" name="pw"
									placeholder="비밀번호">
							</div>
							<div class="form-group formField">
								<input type="password" class="form-control" id="pwCk"
									placeholder="비밀번호">
							</div>
							<div class="form-group formField">
								<input type="text" class="form-control" id="email" name="email"
									placeholder="이메일">
							</div>
							<div class="form-group formField">
								<input type="text" class="form-control" name="phone" id="phone"
									placeholder="전화번호">
							</div>
							<input type="hidden" id="type" name="type" value="t">
							<div class="form-group formField">
								<input type="button"
									class="btn btn-primary btn-block bg-color-3 border-color-3"
									value="가입 정보 등록" onclick="javascript:join()">
							</div>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- LOGIN MODAL -->

	<div class="modal fade customModal" id="loginModal" tabindex="-1"
		role="dialog" onkeypress=" if(event.keyCode==13) {login();}">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="panel panel-default formPanel">
					<div class="panel-heading bg-color-1 border-color-1">
						<h3 class="panel-title">ログイン</h3>
					</div>
					<div class="panel-body">
						<form action="login" method="POST" role="form" id="joinSubmit">
							<div class="form-group formField">
								<input type="text" class="form-control" id="loginId" name="id"
									placeholder="ID">
							</div>
							<div class="form-group formField">
								<input type="password" class="form-control" id="loginPw" name=pw
									placeholder="비밀번호">
							</div>
							<div class="form-group formField">
								<input type="button"
									class="btn btn-primary btn-block bg-color-3 border-color-3"
									onclick="javascript:login()" id="btnLogin" value="유치원 입장">
							</div>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>
<!-- 	<script type="text/javascript"> -->
<!-- // 		$(document).ready(function() { -->
<!-- // 			$.ajax({ -->
<!-- // 				url : "classCheck", -->
<!-- // 				type : "post", -->
<!-- // 				success : function(result) { -->
<!-- // 				} -->
<!-- // 			}); -->
<!-- // 		}); -->
<!-- 	</script> -->