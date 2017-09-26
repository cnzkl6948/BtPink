<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="split/Head.jsp"%>
<link rel="stylesheet" href="./resources/css/imghere.css">
<%@ include file="split/Header.jsp"%>
<%@ include file="split/Sidebar.jsp"%>

<!-- Content Wrapper. Contains page content -->
<div class="content-wrapper">
	<!-- Content Header (Page header) -->
	<section class="content-header">
		<h1>
			출석체크 <small>Control panel</small>
		</h1>
		<ol class="breadcrumb">
			<li><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>
			<li class="active">출석체크</li>
		</ol>
	</section>
	<!-- Main row -->
      <div class="row">
      <div class="col-lg-12">
      <!-- left col -->
        <section class="col-lg-6 col-md-12">
          	<div style="position:relative">
       	 		<div style="position:relative">
        		<form id="formId" style="font-size:0">
					<div id="img_here"></div>
					<input type="hidden" id="image" name="image"> <br>
					<canvas id="store" style="display: none;"></canvas>
				</form>
	          	<video autoplay="autoplay" id="myVideo" width="100%"></video><!-- width:100% 추가 -->
        		</div>
			</div>
		</section>
		<!-- /.left col -->
		<!-- right col -->
		<section class="col-lg-6 col-md-12" style="padding-left:0">
			<div class="box box-solid">
				<div class="box-header with-border">
					<h3 class="box-title">사용 방법</h3>
				</div>
				<!-- /.box-header -->
				<div class="box-body">
					<div class="box-group" id="accordion">
						<!-- we are adding the .panel class so bootstrap.js collapse plugin detects it -->
						<div class="panel box box-primary">
							<div class="box-header with-border">
								<h4 class="box-title">
									<a data-toggle="collapse" data-parent="#accordion"> 출석 체크
										메뉴에 대하여 </a>
								</h4>
							</div>
							<div id="collapseOne" class="panel-collapse collapse in">
								<div class="box-body">&nbsp이 메뉴는 사진을 촬영하여 출석 체크 및 감정을 저장하는
									메뉴입니다.</div>
							</div>
						</div>
						<div class="panel box box-danger">
							<div class="box-header with-border">
								<h4 class="box-title">
									<a data-toggle="collapse" data-parent="#accordion"> 사용 방법 </a>
								</h4>
							</div>
							<div id="collapseTwo" class="panel-collapse collapse in">
								<div class="box-body">
									1. 출석체크 버튼을 누릅니다.<br> 2. 출석된 학생의 이름을 확인합니다.<br> 3. 닫기
									버튼을 누르고 빠져나옵니다.
								</div>
							</div>
						</div>
						<div class="panel box box-success">
							<div class="box-header with-border">
								<h4 class="box-title">
									<a data-toggle="collapse" data-parent="#accordion"> 특이사항 </a>
								</h4>
							</div>
							<div id="collapseThree" class="panel-collapse collapse in">
								<div class="box-body">
									◎ 동시에 여러명 출석이 가능합니다.<br> ◎ 학생등록 메뉴로 등록한 학생만 출석이 가능합니다.<br>
									◎ 1회 체크에 3초 정도의 시간이 필요합니다.<br> ◎ 이 메뉴를 통한 출석은 하루에 1회만
									가능합니다.
								</div>
							</div>
						</div>
					</div>
				</div>
				<!-- /.box-body -->
			</div>
			<!-- /.box -->
			<button type="button" class="btn btn-block btn-danger"
				data-toggle="modal" data-target="#modal-danger" onclick="snapshot()">
				출석체크</button>
			<div class="modal modal-danger fade" id="modal-danger">
				<div class="modal-dialog">
					<div class="modal-content">
						<div class="modal-header">
							<button type="button" class="btn btn-outline pull-right"
								data-dismiss="modal" onclick="closeModal()">닫기</button>
							<h4 class="modal-title">출석 체크</h4>
						</div>
						<div class="modal-body">
							<p id="chulcheck">출석 체크 중&hellip;</p>
						</div>
					</div>
					<!-- /.modal-content -->
				</div>
				<!-- /.modal-dialog -->
			</div>
			<!-- /.modal -->
		</section>
		<!-- /.right col -->
	</div>
	<!-- /.row (main row) -->
	</div>
</div>
<!-- /.content-wrapper -->
<%@ include file="split/Footer.jsp"%>
<!-- Face API 자바스크립트 -->
<script src="./resources/js/acheck.js"></script>
</body>
</html>